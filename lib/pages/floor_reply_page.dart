import 'dart:convert';
import 'package:fixnum/fixnum.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tieba_third/utils/toast_utils.dart';
import '../generated/Agree.pb.dart';
import '../generated/PbContent.pb.dart';
import '../generated/PbFloor/PbFloorResponseData.pb.dart';
import '../generated/SubPostList.pb.dart';
import '../generated/User.pb.dart' as usermodel;
import '../network/tieba_api.dart';
import 'package:go_router/go_router.dart';
import '../utils/like_manager.dart';
import '../utils/user_manager.dart';
import '../utils/user_browse_history_manager.dart';
import '../widgets/post_detail_header.dart';
import '../widgets/floor_reply_item.dart';

/// 楼中楼回复详情页
class FloorReplyPage extends StatefulWidget {
  final String tid;
  final String pid;
  final int floor;
  final int replyCount;

  const FloorReplyPage({
    super.key,
    required this.tid,
    required this.pid,
    required this.floor,
    required this.replyCount,
  });

  @override
  State<FloorReplyPage> createState() => _FloorReplyPageState();
}

class _FloorReplyPageState extends State<FloorReplyPage> {
  PbFloorResponseData? _data;
  bool _isLoading = true;
  String? _error;

  bool _showBackToTop = false;
  double _lastScrollPosition = 0;
  bool _isAnimatingToTop = false;
  final LikeManager _likeManager = LikeManager();
  final Map<int, usermodel.User> _authorMap = {};

  int _currentPage = 1;
  bool _hasMore = true;
  bool _loadingMore = false;
  late ScrollController _scrollController;
  String? _forumId;
  String _lastSubPostId = '0';

  static const String _likedStorageKey = 'floor_reply_liked_cnt';

  Set<String> get _likedReplySet {
    if (_data == null) return {};
    return _data!.subpostList
        .where((s) => _likeManager.isLiked('floor:${s.id}'))
        .map((s) => s.id.toString())
        .toSet();
  }

  /// 从本地恢复点赞状态及点赞数，加载数据后由 _syncLikedFromData 调用
  // ignore: prefer_final_fields
  Map<String, int> _likedAgreeMap = {};

  Future<void> _initLikedData() async {
    final prefs = await SharedPreferences.getInstance();
    final raw = prefs.getString(_likedStorageKey);
    if (raw != null && raw.isNotEmpty) {
      try {
        _likedAgreeMap = (jsonDecode(raw) as Map<String, dynamic>).map(
          (k, v) => MapEntry(k, (v as num).toInt()),
        );
      } catch (_) {}
    }
  }

  Future<void> _saveLikedData() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_likedStorageKey, jsonEncode(_likedAgreeMap));
  }

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController()..addListener(_onScroll);
    _loadData(refresh: true);
    _initLikedData();
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_isAnimatingToTop || _loadingMore) return;
    final current = _scrollController.position.pixels;

    // 回顶按钮
    if (current < _lastScrollPosition && current > 100) {
      if (!_showBackToTop) setState(() => _showBackToTop = true);
    } else if (current > _lastScrollPosition) {
      if (_showBackToTop) setState(() => _showBackToTop = false);
    }
    _lastScrollPosition = current;

    // 触底加载更多
    if (!_hasMore || _loadingMore || _scrollController.position.outOfRange) {
      return;
    }
    if (current >= _scrollController.position.maxScrollExtent - 100) {
      _loadMore();
    }
  }

  void _scrollToTop() {
    _isAnimatingToTop = true;
    if (_showBackToTop) setState(() => _showBackToTop = false);
    _scrollController.animateTo(
      0,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOutCubic,
    );
    Future.delayed(const Duration(milliseconds: 350), () {
      if (mounted) {
        _isAnimatingToTop = false;
        _lastScrollPosition = 0;
      }
    });
  }

  /// 将 JSON 子回复项转 SubPostList protobuf
  SubPostList _subPostFromJson(Map<String, dynamic> item) {
    final contentList =
        (item["content"] as List<dynamic>?)
            ?.map(
              (c) => PbContent(
                type: (c["type"] as num?)?.toInt() ?? 0,
                text: c["text"]?.toString() ?? '',
                src: c["src"]?.toString() ?? '',
                uid: Int64.parseInt(c["uid"]?.toString() ?? '0'),
              ),
            )
            .toList() ??
        [];
    final author = item["author"] as Map<String, dynamic>?;
    final agree = item["agree"] as Map<String, dynamic>?;
    return SubPostList(
      id: Int64.parseInt(item["id"]?.toString() ?? '0'),
      time: int.tryParse(item["time"]?.toString() ?? '0') ?? 0,
      content: contentList,
      authorId: Int64.parseInt(author?["id"]?.toString() ?? '0'),
      author: author != null
          ? usermodel.User(
              id: Int64.parseInt(author["id"]?.toString() ?? '0'),
              name: author["name"]?.toString() ?? '',
              nameShow: author["name_show"]?.toString() ?? '',
              portrait: author["portrait"]?.toString() ?? '',
              levelId: int.tryParse(author["level_id"]?.toString() ?? '0') ?? 0,
            )
          : null,
      agree: agree != null
          ? Agree(
              agreeNum: Int64.parseInt(agree["agree_num"]?.toString() ?? '0'),
              hasAgree:
                  int.tryParse(agree["has_agree"]?.toString() ?? '0') ?? 0,
            )
          : null,
    );
  }

  Future<void> _loadData({bool refresh = false}) async {
    if (!UserManager.isLogin) {
      if (mounted) setState(() => _error = '未登录');
      return;
    }

    if (refresh) {
      setState(() {
        _isLoading = true;
        _error = null;
        _currentPage = 1;
        _hasMore = true;
        _lastSubPostId = '0';
      });
    }

    // 第一页用 protobuf API，翻页用 JSON API（支持 rn 分页）
    Map<String, dynamic>? jsonData;
    PbFloorResponseData? pbData;

    if (refresh) {
      pbData = await TiebaApi.fetchSubReplies(
        bduss: UserManager.bduss!,
        stoken: UserManager.stoken!,
        threadId: widget.tid,
        postId: widget.pid,
        forumId: _forumId ?? '0',
        page: 1,
        subPostId: '0',
      );
    } else {
      jsonData = await TiebaApi.fetchFloorRepliesJson(
        bduss: UserManager.bduss!,
        stoken: UserManager.stoken!,
        tbs: UserManager.tbs ?? '',
        threadId: widget.tid,
        postId: widget.pid,
        page: _currentPage,
        subPostId: _lastSubPostId,
        rn: 30,
      );
    }

    if (!mounted) return;

    if (jsonData != null) {
      final subpostList = ((jsonData["subpost_list"] as List<dynamic>?) ?? [])
          .map((item) => _subPostFromJson(item as Map<String, dynamic>))
          .toList();
      final pageInfo = jsonData["page"] as Map<String, dynamic>?;
      final currentPg =
          int.tryParse(pageInfo?["current_page"]?.toString() ?? '0') ?? 0;
      final totalPg =
          int.tryParse(pageInfo?["total_page"]?.toString() ?? '0') ?? 0;
      final hasMore = _currentPage < totalPg;

      setState(() {
        _isLoading = false;
        _loadingMore = false;
        _data ??= PbFloorResponseData();
        for (final s in subpostList) {
          _data!.subpostList.add(s);
        }
        _currentPage = currentPg + 1;
        _hasMore = hasMore;
        if (subpostList.isNotEmpty) {
          _lastSubPostId = subpostList.last.id.toString();
        }
      });
      if (mounted) {
        _rebuildAuthorMap(subpostList);
        _syncLikedFromData();
        _checkAutoLoad();
      }
    } else if (pbData != null) {
      final p = pbData;
      if (_forumId == null && p.hasForum()) {
        _forumId = p.forum.id.toString();
      }
      _buildAuthorMap(p);

      setState(() {
        _isLoading = false;
        _loadingMore = false;
        _data = p;
        _currentPage = 2;
        // protobuf API hasMore 不可靠，用 JSON API 翻页替代
        _hasMore = p.subpostList.length >= 30;
        if (p.subpostList.isNotEmpty) {
          _lastSubPostId = p.subpostList.last.id.toString();
        }
      });
      if (mounted) {
        _syncLikedFromData();
        _checkAutoLoad();
      }
    } else {
      setState(() {
        _isLoading = false;
        _loadingMore = false;
        if (refresh) _error = '加载失败';
      });
    }
  }

  void _checkAutoLoad() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_hasMore && !_loadingMore && mounted) {
        final pos = _scrollController.position;
        if (pos.maxScrollExtent <= pos.viewportDimension + 50) _loadMore();
      }
    });
  }

  void _rebuildAuthorMap(List<SubPostList> subpostList) {
    for (final s in subpostList) {
      if (s.hasAuthor()) {
        _authorMap[s.author.id.toInt()] = s.author;
      }
    }
  }

  Future<void> _loadMore() async {
    if (_loadingMore || !_hasMore) return;
    setState(() => _loadingMore = true);
    await _loadData();
  }

  void _buildAuthorMap(PbFloorResponseData data) {
    _authorMap.clear();
    if (data.hasPost() && data.post.hasAuthor()) {
      final a = data.post.author;
      _authorMap[a.id.toInt()] = a;
    }
    for (final s in data.subpostList) {
      if (s.hasAuthor()) {
        _authorMap[s.author.id.toInt()] = s.author;
      }
    }
  }

  /// 从 API 响应中同步点赞状态（SubPostList.agree.hasAgree == 1）
  void _syncLikedFromData() {
    if (_data == null) return;
    for (final s in _data!.subpostList) {
      final pid = s.id.toString();
      final isLiked = s.hasAgree() && s.agree.hasAgree == 1;
      final agreeNum = s.hasAgree() ? s.agree.agreeNum.toInt() : 0;
      _likeManager.sync(
        'floor:$pid',
        serverLiked: isLiked,
        serverAgreeNum: agreeNum,
      );

      final saved = _likedAgreeMap[pid];
      if (saved != null && s.hasAgree()) {
        s.agree.agreeNum = Int64(saved);
      } else if (isLiked) {
        _likedAgreeMap[pid] = agreeNum;
      }
    }
  }

  Future<void> _handleLikeReply(SubPostList subReply) async {
    if (!UserManager.isLogin) return;
    if (!mounted) return;
    if (await TiebaApi.isLikeOnCooldown()) {
      if (mounted) {
        showLikeCooldownMessage(context);
      }
      return;
    }
    // ignore: use_build_context_synchronously
    final scaffold = ScaffoldMessenger.of(context);
    final pidStr = subReply.id.toString();
    final replyKey = 'floor:$pidStr';
    final serverLiked = subReply.hasAgree() && subReply.agree.hasAgree == 1;
    final serverAgree = subReply.hasAgree()
        ? subReply.agree.agreeNum.toInt()
        : 0;

    debugPrint(
      "\n【楼中楼点赞】开始 tid=${widget.tid} pid=$pidStr "
      "serverLiked=$serverLiked serverAgree=$serverAgree "
      "opType=${serverLiked ? 1 : 0}",
    );

    final (nowLiked, nowAgree) = _likeManager.toggle(
      key: replyKey,
      serverLiked: serverLiked,
      serverAgreeNum: serverAgree,
      request: (opType) async {
        debugPrint(
          "【楼中楼点赞】发起请求 opType=$opType "
          "tid=${widget.tid} pid=$pidStr objType=2",
        );
        final score = await TiebaApi.likeAgree(
          bduss: UserManager.bduss!,
          stoken: UserManager.stoken!,
          tbs: UserManager.tbs ?? '',
          userId: UserManager.userId ?? '',
          threadId: widget.tid,
          postId: pidStr,
          objType: 2,
          forumId: _forumId ?? '',
          opType: opType,
        );
        debugPrint(
          "【楼中楼点赞】请求结果 score=$score "
          "${score != null ? '成功' : '失败'}",
        );
        return score != null;
      },
      onUpdate: (isRollback) {
        if (!mounted) return;
        debugPrint(
          "【楼中楼点赞】onUpdate isRollback=$isRollback "
          "nowIsLiked=${_likeManager.isLiked(replyKey)} "
          "nowAgree=${_likeManager.agreeNum(replyKey)}",
        );
        setState(() {
          final newAgreeLocal = _likeManager.agreeNum(replyKey);
          if (subReply.hasAgree()) {
            subReply.agree.agreeNum = Int64(newAgreeLocal);
          }
          _likedAgreeMap[pidStr] = newAgreeLocal;
        });
        _saveLikedData();
        if (isRollback) {
          final nowLikedLocal = _likeManager.isLiked(replyKey);
          debugPrint("【楼中楼点赞】回滚！当前状态 isLiked=$nowLikedLocal");
          scaffold.showSnackBar(
            SnackBar(
              content: Text(nowLikedLocal ? '取消点赞失败，请稍后重试' : '点赞失败，请稍后重试'),
              duration: const Duration(seconds: 2),
            ),
          );
        }
      },
    );

    debugPrint("【楼中楼点赞】乐观更新结果 nowLiked=$nowLiked nowAgree=$nowAgree");

    setState(() {
      if (subReply.hasAgree()) {
        subReply.agree.agreeNum = Int64(nowAgree);
      }
      _likedAgreeMap[pidStr] = nowAgree;
    });
    _saveLikedData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.floor} 楼的回复'),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
        foregroundColor: Colors.white,
        actions: [
          if (_showBackToTop)
            IconButton(
              icon: const Icon(Icons.arrow_upward),
              onPressed: _scrollToTop,
            ),
          if (!_showBackToTop) const SizedBox(width: 48),
        ],
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    if (_isLoading) {
      return const Center(child: CircularProgressIndicator());
    }
    if (_error != null) {
      return Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(_error!, style: const TextStyle(color: Colors.grey)),
            const SizedBox(height: 8),
            TextButton(
              onPressed: () => _loadData(refresh: true),
              child: const Text('重试'),
            ),
          ],
        ),
      );
    }
    if (_data == null) {
      return const Center(
        child: Text('暂无数据', style: TextStyle(color: Colors.grey)),
      );
    }

    final totalItems = _data!.subpostList.length;
    // header + (分隔线 + 回复数 + 每项回复) + 底部加载指示器
    final itemCount = 2 + totalItems;

    return ListView.builder(
      controller: _scrollController,
      itemCount: _hasMore || totalItems == 0 ? itemCount : itemCount - 1,
      itemBuilder: (context, index) {
        if (index == 0) return _buildFloorPost();
        if (index <= totalItems) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: FloorReplyItem(
              subReply: _data!.subpostList[index - 1],
              authorMap: _authorMap,
              likedReplySet: _likedReplySet,
              tid: widget.tid,
              onLikeTap: _handleLikeReply,
              onUserTap: (uid) {
                final sr = _data!.subpostList[index - 1];
                final aid = sr.authorId.toInt();
                final author = sr.hasAuthor() ? sr.author : _authorMap[aid];
                final name = author?.nameShow.isNotEmpty == true
                    ? author!.nameShow
                    : (author?.name ?? '');
                UserBrowseHistoryManager.saveRecord(
                  uid: uid,
                  userName: name,
                  portrait: author?.portrait,
                );
                context.push('/user/$uid');
              },
            ),
          );
        }
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 16),
          child: Center(
            child: SizedBox(
              width: 16,
              height: 16,
              child: CircularProgressIndicator(strokeWidth: 2),
            ),
          ),
        );
      },
    );
  }

  Widget _buildFloorPost() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(14, 8, 14, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PostDetailHeader(
            // title: _data!.hasThread() ? _data!.thread.title : null,
            firstPost: _data!.post,
            opAuthor: _data!.post.hasAuthor() ? _data!.post.author : null,
            showLouZhuBadge: false,
            showIpLocation: false,
          ),
          const Divider(height: 24),
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Text(
              '${widget.replyCount}条回复',
              style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
            ),
          ),
        ],
      ),
    );
  }
}
