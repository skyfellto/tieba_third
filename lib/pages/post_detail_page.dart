import 'dart:convert';
import 'package:fixnum/fixnum.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:share_plus/share_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../generated/PbPage/PbPageResponseData.pb.dart';
import '../generated/Post.pb.dart';
import '../generated/User.pb.dart' as usermodel;
import '../network/tieba_api.dart';
import '../utils/like_manager.dart';
import '../utils/user_manager.dart';
import '../utils/user_browse_history_manager.dart';
import '../utils/browse_history_manager.dart';
import '../models/browse_record.dart';
import '../models/forum_browse_record.dart';
import '../utils/forum_browse_history_manager.dart';
import '../widgets/post_detail_header.dart';
import '../widgets/post_reply_card.dart';
import '../widgets/vote_panel.dart';

class PostDetailPage extends StatefulWidget {
  final String tid;
  const PostDetailPage({super.key, required this.tid});

  @override
  State<PostDetailPage> createState() => _PostDetailPageState();
}

class _PostDetailPageState extends State<PostDetailPage> {
  PbPageResponseData? _data;
  bool _isLoading = true;
  String? _error;

  final ScrollController _scrollController = ScrollController();
  bool _showBackToTop = false;
  double _lastScrollPosition = 0;
  bool _isAnimatingToTop = false;

  bool _isBottomBarVisible = true;
  // 帖子级点赞
  final LikeManager _likeManager = LikeManager();
  // 收藏
  bool _isCollected = false;
  // int _threadStoreCount = 0;

  bool _seeLz = false;
  int _sortType = 0; // 0=正序, 1=倒序

  // 分页
  int _currentPage = 1;
  bool _loadingMore = false;
  bool _hasMore = true;

  // 已点赞的回复 pid 集合
  final Set<String> _likedReplySet = {};
  // ignore: prefer_final_fields
  Map<String, int> _likedAgreeMap = {};
  static const String _likedStorageKey = 'post_detail_liked_cnt';

  Future<void> _initLikedData() async {
    final prefs = await SharedPreferences.getInstance();
    final raw = prefs.getString(_likedStorageKey);
    if (raw != null && raw.isNotEmpty) {
      final map = jsonDecode(raw) as Map<String, dynamic>;
      for (final e in map.entries) {
        _likedReplySet.add(e.key);
        _likedAgreeMap[e.key] = (e.value as num).toInt();
      }
    }
  }

  Future<void> _saveLikedData() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_likedStorageKey, jsonEncode(_likedAgreeMap));
  }

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
    _loadData(refresh: true);
    _initLikedData();
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  bool _atBottom = false;

  void _onScroll() {
    if (_isAnimatingToTop || _loadingMore) return;
    final current = _scrollController.position.pixels;
    final maxScroll = _scrollController.position.maxScrollExtent;

    // 到底部加载更多
    if (current >= maxScroll - 100) {
      if (_atBottom) {
        _atBottom = false;
        _loadData(refresh: false);
      } else {
        _atBottom = true;
      }
    } else {
      _atBottom = false;
    }

    // 上滑显示底部栏，下滑隐藏，顶部隐藏
    final diff = current - _lastScrollPosition;
    if (current <= 30) {
      if (_isBottomBarVisible) setState(() => _isBottomBarVisible = false);
    } else if (diff < -10) {
      if (!_isBottomBarVisible) setState(() => _isBottomBarVisible = true);
    } else if (diff > 10) {
      if (_isBottomBarVisible) setState(() => _isBottomBarVisible = false);
    }

    // 回顶按钮
    if (current < _lastScrollPosition && current > 100) {
      if (!_showBackToTop) setState(() => _showBackToTop = true);
    } else if (current > _lastScrollPosition) {
      if (_showBackToTop) setState(() => _showBackToTop = false);
    }
    _lastScrollPosition = current;
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

  Future<void> _loadData({bool refresh = false}) async {
    if (!UserManager.isLogin) {
      if (mounted) {
        setState(() {
          _isLoading = false;
          _error = "未登录";
        });
      }
      return;
    }
    if (refresh) {
      setState(() {
        _isLoading = true;
        _error = null;
        _currentPage = 1;
        _hasMore = true;
      });
    } else {
      if (_isLoading || _loadingMore || !_hasMore) return;
      setState(() => _loadingMore = true);
    }

    if (_sortType == 1) {
      // 倒序：pn=0 获取最后一页（最新帖子），然后往前翻页
      final int pageNum = refresh ? 0 : (_currentPage - 1).clamp(1, 999999);
      final data = await TiebaApi.fetchPostDetail(
        bduss: UserManager.bduss!,
        stoken: UserManager.stoken!,
        tbs: UserManager.tbs ?? '',
        threadId: widget.tid,
        page: pageNum,
        seeLz: _seeLz,
        sortType: _sortType,
        lastPid: '0',
      );
      if (!mounted) return;
      setState(() {
        _isLoading = false;
        _loadingMore = false;
        if (data != null) {
          if (refresh) {
            _data = data;
            _syncThreadState();
            _currentPage = data.hasPage() ? data.page.totalPage : 1;
            _hasMore = _currentPage > 1;
          } else if (_data != null) {
            final existIds = _data!.postList.map((e) => e.id.toInt()).toSet();
            for (final p in data.postList) {
              if (!existIds.contains(p.id.toInt())) _data!.postList.add(p);
            }
            for (final u in data.userList) {
              if (!_data!.userList
                  .map((e) => e.id.toInt())
                  .contains(u.id.toInt())) {
                _data!.userList.add(u);
              }
            }
            _currentPage = pageNum;
            _hasMore = _currentPage > 1;
          } else {
            _data = data;
            _syncThreadState();
            _currentPage = data.hasPage() ? data.page.totalPage : 1;
            _hasMore = _currentPage > 1;
          }
        } else {
          _hasMore = false;
        }
      });
      return;
    }

    // 正序：正常分页加载
    final page = refresh ? 1 : _currentPage + 1;
    final data = await TiebaApi.fetchPostDetail(
      bduss: UserManager.bduss!,
      stoken: UserManager.stoken!,
      tbs: UserManager.tbs ?? '',
      threadId: widget.tid,
      page: page,
      seeLz: _seeLz,
      sortType: _sortType,
      lastPid: '0',
    );

    if (mounted) {
      setState(() {
        _isLoading = false;
        _loadingMore = false;
        if (data != null) {
          _currentPage = page;
          if (refresh) {
            _data = data;
            _syncThreadState();
          } else if (_data != null) {
            final existIds = _data!.postList.map((e) => e.id.toInt()).toSet();
            for (final p in data.postList) {
              if (!existIds.contains(p.id.toInt())) _data!.postList.add(p);
            }
            for (final u in data.userList) {
              if (!_data!.userList
                  .map((e) => e.id.toInt())
                  .contains(u.id.toInt())) {
                _data!.userList.add(u);
              }
            }
          }
          _hasMore =
              data.hasPage() &&
              data.page.totalPage > 1 &&
              _currentPage < data.page.totalPage;
        } else {
          if (refresh) {
            _error = "加载失败";
          } else {
            _hasMore = false;
          }
        }
      });
      if (_data != null) {
        _syncLikedFromData();
        _saveBrowseRecord();
        _saveForumBrowseRecord();
      }
    }
  }

  void _syncThreadState() {
    if (_data?.hasThread() == true) {
      final t = _data!.thread;
      _isCollected = t.collectStatus != 0;
      final isLiked = t.hasAgree() && t.agree.hasAgree == 1;
      _likeManager.sync(
        'thread:${widget.tid}',
        serverLiked: isLiked,
        serverAgreeNum: t.agreeNum,
      );
    }
  }

  Future<void> _handleThreadLike() async {
    if (!UserManager.isLogin) return;
    if (!mounted) return;
    final scaffold = ScaffoldMessenger.of(context);
    final threadKey = 'thread:${widget.tid}';
    final serverLiked = _data?.hasThread() == true
        ? _data!.thread.hasAgree() && _data!.thread.agree.hasAgree == 1
        : false;
    final serverAgree = _data?.hasThread() == true ? _data!.thread.agreeNum : 0;
    setState(() {
      _likeManager.toggle(
        key: threadKey,
        serverLiked: serverLiked,
        serverAgreeNum: serverAgree,
        request: (opType) async {
          final score = await TiebaApi.likePost(
            bduss: UserManager.bduss!,
            stoken: UserManager.stoken!,
            tbs: UserManager.tbs ?? '',
            userId: UserManager.userId ?? '',
            threadId: widget.tid,
            opType: opType,
            allowAlreadyLiked: true,
          );
          return score != null;
        },
        onUpdate: (isRollback) {
          if (!mounted) return;
          setState(() {});
          if (isRollback) {
            final nowLiked = _likeManager.isLiked(threadKey);
            scaffold.showSnackBar(
              SnackBar(
                content: Text(nowLiked ? '取消点赞失败，请稍后重试' : '点赞失败，请稍后重试'),
                duration: const Duration(seconds: 2),
              ),
            );
          }
        },
      );
    });
  }

  Future<void> _handleCollect() async {
    if (!UserManager.isLogin) return;
    final tid = widget.tid;
    // debugPrint("【收藏】_handleCollect tid=$tid isCollected=$_isCollected");
    if (_isCollected) {
      final ok = await TiebaApi.removeStore(
        bduss: UserManager.bduss!,
        stoken: UserManager.stoken!,
        threadId: tid,
        userId: UserManager.userId ?? '',
        tbs: UserManager.tbs ?? '',
      );
      // debugPrint("【收藏】removeStore 返回 ok=$ok");
      if (ok && mounted) setState(() => _isCollected = false);
    } else {
      String pid;
      if (_data?.hasThread() == true &&
          _data!.thread.firstPostId > Int64.ZERO) {
        pid = _data!.thread.firstPostId.toInt().toString();
      } else if (_data?.postList.isNotEmpty == true) {
        pid = _data!.postList.first.id.toInt().toString();
      } else {
        pid = '0';
      }
      final ok = await TiebaApi.addStore(
        bduss: UserManager.bduss!,
        stoken: UserManager.stoken!,
        threadId: tid,
        userId: UserManager.userId ?? '',
        tbs: UserManager.tbs ?? '',
        postId: pid,
      );
      // debugPrint("【收藏】addStore 返回 ok=$ok");
      if (ok && mounted) setState(() => _isCollected = true);
    }
  }

  // 替换原有的 _buildBottomBar 方法
  Widget _buildBottomBar(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Positioned(
      left: 16, // 左右边距
      right: 16,
      bottom: MediaQuery.of(context).padding.bottom + 12, // 底部安全区+边距
      child: AnimatedSlide(
        duration: const Duration(milliseconds: 200),
        offset: _isBottomBarVisible ? Offset.zero : const Offset(0, 2),
        child: Container(
          height: 43, // 固定高度
          decoration: BoxDecoration(
            color: isDark ? Color(0xFF222436) : Colors.white,
            borderRadius: BorderRadius.circular(26), // 大圆角（高度的一半）
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.15),
                blurRadius: 10,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Row(
            children: [
              // 点赞按钮
              Expanded(
                child: GestureDetector(
                  onTap: _handleThreadLike,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          _likeManager.isLiked('thread:${widget.tid}')
                              ? Icons.favorite
                              : Icons.favorite_border,
                          size: 22,
                          color: _likeManager.isLiked('thread:${widget.tid}')
                              ? Colors.red
                              : theme.iconTheme.color,
                        ),
                        const SizedBox(width: 6),
                        Text(
                          '${_likeManager.agreeNum('thread:${widget.tid}')}',
                          style: TextStyle(
                            fontSize: 14,
                            color: _likeManager.isLiked('thread:${widget.tid}')
                                ? Colors.red
                                : theme.textTheme.bodyMedium?.color,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              // 收藏按钮
              Expanded(
                child: GestureDetector(
                  onTap: _handleCollect,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          _isCollected ? Icons.star : Icons.star_border,
                          size: 22,
                          color: _isCollected
                              ? Color(0xFFFF7043)
                              : theme.iconTheme.color,
                        ),
                        const SizedBox(width: 6),
                        Text(
                          _isCollected ? '已收藏' : '收藏',
                          style: TextStyle(
                            fontSize: 14,
                            color: _isCollected
                                ? Color(0xFFFF7043)
                                : theme.textTheme.bodyMedium?.color,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              // 分享按钮
              Expanded(
                child: GestureDetector(
                  onTap: () => SharePlus.instance.share(
                    ShareParams(
                      text: "https://tieba.baidu.com/p/${widget.tid}",
                      title: "来自百度贴吧的帖子",
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.share_outlined,
                          size: 22,
                          color: theme.iconTheme.color,
                        ),
                        const SizedBox(width: 6),
                        Text(
                          '分享',
                          style: TextStyle(
                            fontSize: 14,
                            color: theme.textTheme.bodyMedium?.color,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // ========== Build ==========

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: Stack(children: [_buildBody(), _buildBottomBar(context)]),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    final forum = _data?.forum;
    return AppBar(
      backgroundColor: Theme.of(context).primaryColor,
      // foregroundColor: Colors.white,
      titleSpacing: 0,
      // 固定左侧返回箭头的宽度，保证左侧占位永远一致
      leadingWidth: 56,
      title: SizedBox(
        // 让title占满AppBar分配的全部可用宽度
        width: double.infinity,
        // 强制内容在可用宽度内绝对居中
        child: Center(
          child: forum != null && forum.name.isNotEmpty
              ? GestureDetector(
                  onTap: () {
                    final fid = forum.id.toInt();
                    if (fid > 0) {
                      context.push(
                        '/forum/$fid?name=${Uri.encodeComponent(forum.name)}&avatar=${Uri.encodeComponent(forum.avatar)}',
                      );
                    }
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CircleAvatar(
                        radius: 14,
                        backgroundColor: Colors.white24,
                        backgroundImage: forum.avatar.isNotEmpty
                            ? NetworkImage(
                                forum.avatar,
                                headers: UserManager.avatarHeaders,
                              )
                            : null,
                      ),
                      const SizedBox(width: 8),
                      Flexible(
                        child: Text(
                          forum.name,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                )
              : const Text('帖子详情', style: TextStyle(fontSize: 15)),
        ),
      ),
      // 核心修复：固定右侧actions的宽度，无论按钮是否显示，占位永远一致
      actions: [
        if (_showBackToTop)
          IconButton(
            icon: const Icon(Icons.arrow_upward),
            onPressed: _scrollToTop,
          ),
        // 按钮隐藏时，用等宽的SizedBox占位，保证右侧宽度永远固定
        if (!_showBackToTop) const SizedBox(width: 48),
      ],
    );
  }

  Widget _buildBody() {
    if (_isLoading) {
      return const Center(child: CircularProgressIndicator());
    }
    final data = _data;
    if (data == null) {
      final err = _error;
      return Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(err ?? '暂无数据', style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 12),
            TextButton(
              onPressed: () => _loadData(refresh: true),
              child: const Text('重试'),
            ),
          ],
        ),
      );
    }
    // 构建作者映射
    final authorMap = <int, usermodel.User>{};
    usermodel.User? opAuthor;
    // thread.author 是楼主
    if (data.hasThread() && data.thread.hasAuthor()) {
      opAuthor = data.thread.author;
      // ignore: unnecessary_non_null_assertion
      authorMap[opAuthor!.id.toInt()] = opAuthor;
    }
    for (final u in data.userList) {
      authorMap[u.id.toInt()] = u;
    }

    // 楼主帖子内容
    Post? firstPost;
    if (data.hasFirstFloorPost()) {
      firstPost = data.firstFloorPost;
    }
    // debugPrint(
    //   "【投票】voteCrypt=${firstPost?.voteCrypt} isVote=${firstPost?.isVote}",
    // );

    // 回复列表（排除 floor=1 的楼主帖，楼主帖已在详情区展示）
    final replyPosts = <Post>[];
    for (final p in data.postList) {
      if (firstPost == null && p.floor <= 1) {
        firstPost = p;
      } else if (p.floor > 1) {
        replyPosts.add(p);
      }
    }
    // 倒序服务器已返回降序无需重排，正序升序排列
    if (_sortType == 0) {
      replyPosts.sort((a, b) => a.floor.compareTo(b.floor));
    }

    return ListView(
      controller: _scrollController,
      padding: const EdgeInsets.all(12),
      children: [
        // 帖子详情区
        if (data.hasThread())
          PostDetailHeader(
            title: data.thread.title,
            firstPost: firstPost,
            opAuthor: opAuthor,
            onUserTap: (uid, _) {
              final name = opAuthor?.nameShow.isNotEmpty == true
                  ? opAuthor!.nameShow
                  : (opAuthor?.name ?? '');
              UserBrowseHistoryManager.saveRecord(
                uid: uid,
                userName: name,
                portrait: opAuthor?.portrait,
              );
              context.push('/user/$uid');
            },
          ),
        // 投票展示区（需确认有实际投票数据）
        if (data.hasThread() &&
            data.thread.hasOriginThreadInfo() &&
            data.thread.originThreadInfo.hasPollInfo() &&
            data.thread.originThreadInfo.pollInfo.title.isNotEmpty &&
            data.thread.originThreadInfo.pollInfo.options.isNotEmpty)
          VotePanel(
            pollInfo: data.thread.originThreadInfo.pollInfo,
            tid: widget.tid,
            fid: data.forum.id.toInt().toString(),
          ),
        const Divider(height: 24),
        // 回复 Tab 栏（含楼主的总数）
        _buildReplyTabBar(
          data.hasThread() && data.thread.replyNum > 0
              ? data.thread.replyNum
              : data.postList.length,
        ),
        const SizedBox(height: 4),
        // 回复列表
        ...replyPosts.map(
          (p) => PostReplyCard(
            post: p,
            authorMap: authorMap,
            opAuthor: opAuthor,
            likedReplySet: _likedReplySet,
            tid: widget.tid,
            onLikeTap: (post) => _handleLikeReply(post),
            onShowAllReplies: (postId, floor, replyCount) {
              context.push(
                '/floor-replies/${widget.tid}?pid=$postId&floor=$floor&replyCount=$replyCount',
              );
            },
            onUserTap: (uid) {
              final aid = p.authorId.toInt();
              final author = authorMap[aid];
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
        ),
        // 底部状态：加载中 / 没有更多回复
        if (_loadingMore)
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Center(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    width: 16,
                    height: 16,
                    child: CircularProgressIndicator(strokeWidth: 2),
                  ),
                  SizedBox(width: 8),
                  Text(
                    "正在加载...",
                    style: TextStyle(color: Colors.grey, fontSize: 13),
                  ),
                ],
              ),
            ),
          )
        else if (!_hasMore && _data != null)
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Center(
              child: Text(
                "没有回复啦",
                style: TextStyle(color: Colors.grey, fontSize: 13),
              ),
            ),
          ),
        const SizedBox(height: 24),
      ],
    );
  }

  // ========== 回复 Tab 栏 ==========

  Widget _buildReplyTabBar(int totalReplies) {
    return Row(
      children: [
        // "回复 N"
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor.withValues(alpha: 0.1),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Text(
            '回复 $totalReplies',
            style: TextStyle(
              // color: Theme.of(context).primaryColor,
              fontWeight: FontWeight.w600,
              fontSize: 13,
            ),
          ),
        ),
        const SizedBox(width: 8),
        // "只看楼主" 预留
        GestureDetector(
          onTap: () {
            // 预留回调：只看楼主
            setState(() {
              _seeLz = !_seeLz;
              _loadData(refresh: true);
            });
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
            decoration: BoxDecoration(
              color: _seeLz ? Colors.orange[50] : Colors.grey[50],
              borderRadius: BorderRadius.circular(16),
            ),
            child: Text(
              '只看楼主',
              style: TextStyle(
                color: _seeLz ? Colors.orange[700] : Colors.grey[600],
                fontSize: 13,
              ),
            ),
          ),
        ),
        const Spacer(),
        // "正序" / "倒序"
        GestureDetector(
          onTap: () {
            _sortType = _sortType == 0 ? 1 : 0;
            _loadData(refresh: true);
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
            decoration: BoxDecoration(
              color: _sortType == 0 ? Colors.blue[50] : Colors.grey[50],
              borderRadius: BorderRadius.circular(16),
            ),
            child: Text(
              _sortType == 0 ? '正序' : '倒序',
              style: TextStyle(
                color: _sortType == 0 ? Colors.blue[700] : Colors.grey[600],
                fontSize: 13,
                fontWeight: _sortType == 0 ? FontWeight.w600 : null,
              ),
            ),
          ),
        ),
      ],
    );
  }

  // ========== 浏览记录 ==========

  void _saveBrowseRecord() {
    if (_data == null) return;
    final data = _data!;
    final title = data.hasThread() ? data.thread.title : '';
    if (title.isEmpty) return;

    // 尝试从多个来源获取作者信息
    final usermodel.User? author;
    if (data.hasFirstFloorPost() && data.firstFloorPost.hasAuthor()) {
      author = data.firstFloorPost.author;
    } else if (data.hasThread() && data.thread.hasAuthor()) {
      author = data.thread.author;
    } else if (data.userList.isNotEmpty) {
      author = data.userList.first;
    } else {
      author = null;
    }

    final forumName = data.hasForum() && data.forum.name.isNotEmpty
        ? data.forum.name
        : '';
    final threadAuthor = data.hasThread() && data.thread.hasAuthor()
        ? data.thread.author
        : null;

    BrowseHistoryManager.saveRecord(
      BrowseRecord(
        tid: widget.tid,
        title: title,
        authorName: author != null
            ? (author.nameShow.isNotEmpty ? author.nameShow : author.name)
            : (threadAuthor != null
                  ? (threadAuthor.nameShow.isNotEmpty
                        ? threadAuthor.nameShow
                        : threadAuthor.name)
                  : ''),
        authorPortrait:
            (author?.portrait.isNotEmpty == true ? author!.portrait : null) ??
            (threadAuthor?.portrait.isNotEmpty == true
                ? threadAuthor!.portrait
                : null),
        forumName: forumName,
        browseTime: DateTime.now().millisecondsSinceEpoch ~/ 1000,
      ),
    );
  }

  void _saveForumBrowseRecord() {
    if (_data == null) return;
    final data = _data!;
    if (!data.hasForum()) return;
    ForumBrowseHistoryManager.saveRecord(
      ForumBrowseRecord(
        fid: data.forum.id.toString(),
        forumName: data.forum.name,
        forumAvatar: data.forum.avatar.isNotEmpty ? data.forum.avatar : null,
        browseTime: DateTime.now().millisecondsSinceEpoch ~/ 1000,
      ),
    );
  }

  // ========== 回复点赞 ==========

  /// 从本地持久化 + API 响应恢复点赞状态
  void _syncLikedFromData() {
    if (_data == null) return;
    void syncPost(Post p) {
      final pid = p.id.toString();
      final isLiked = p.hasAgree() && p.agree.hasAgree == 1;
      final agreeNum = p.hasAgree() ? p.agree.agreeNum.toInt() : 0;
      _likeManager.sync(
        'reply:$pid',
        serverLiked: isLiked,
        serverAgreeNum: agreeNum,
      );

      if (_likedReplySet.contains(pid)) {
        final saved = _likedAgreeMap[pid];
        if (saved != null && p.hasAgree()) {
          p.agree.agreeNum = Int64(saved);
        }
      } else if (isLiked) {
        _likedReplySet.add(pid);
        _likedAgreeMap[pid] = agreeNum;
      }
    }

    for (final p in _data!.postList) {
      syncPost(p);
    }
    if (_data!.hasFirstFloorPost()) {
      syncPost(_data!.firstFloorPost);
    }
  }

  Future<void> _handleLikeReply(Post post) async {
    if (!UserManager.isLogin) return;
    if (!mounted) return;
    final scaffold = ScaffoldMessenger.of(context);

    final pidStr = post.id.toString();
    final replyKey = 'reply:$pidStr';
    final serverLiked = _likedReplySet.contains(pidStr);
    final serverAgree = post.hasAgree() ? post.agree.agreeNum.toInt() : 0;

    final (nowLiked, nowAgree) = _likeManager.toggle(
      key: replyKey,
      serverLiked: serverLiked,
      serverAgreeNum: serverAgree,
      request: (opType) async {
        final score = await TiebaApi.likeReply(
          bduss: UserManager.bduss!,
          stoken: UserManager.stoken!,
          tbs: UserManager.tbs ?? '',
          userId: UserManager.userId ?? '',
          threadId: widget.tid,
          postId: pidStr,
          opType: opType,
        );
        return score != null;
      },
      onUpdate: (isRollback) {
        if (!mounted) return;
        setState(() {
          if (isRollback) {
            // Rollback: sync _likedReplySet from LikeManager
            if (_likeManager.isLiked(replyKey)) {
              _likedReplySet.add(pidStr);
            } else {
              _likedReplySet.remove(pidStr);
            }
          }
          final newAgreeLocal = _likeManager.agreeNum(replyKey);
          if (post.hasAgree()) {
            post.agree.agreeNum = Int64(newAgreeLocal);
          }
          _likedAgreeMap[pidStr] = newAgreeLocal;
        });
        _saveLikedData();
        if (isRollback) {
          final nowLikedLocal = _likeManager.isLiked(replyKey);
          scaffold.showSnackBar(
            SnackBar(
              content: Text(nowLikedLocal ? '取消点赞失败，请稍后重试' : '点赞失败，请稍后重试'),
              duration: const Duration(seconds: 2),
            ),
          );
        }
      },
    );

    setState(() {
      if (nowLiked) {
        _likedReplySet.add(pidStr);
      } else {
        _likedReplySet.remove(pidStr);
      }
      if (post.hasAgree()) {
        post.agree.agreeNum = Int64(nowAgree);
      }
      _likedAgreeMap[pidStr] = nowAgree;
    });
    _saveLikedData();
  }
}
