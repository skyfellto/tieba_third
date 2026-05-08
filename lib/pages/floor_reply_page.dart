import 'package:flutter/material.dart';
import 'package:tieba_third/constants/app_colors.dart';
import '../generated/PbFloor/PbFloorResponseData.pb.dart';
import '../generated/SubPostList.pb.dart';
import '../generated/User.pb.dart' as usermodel;
import '../network/tieba_api.dart';
import '../utils/user_manager.dart';
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
  final Set<String> _likedReplySet = {};
  final Map<int, usermodel.User> _authorMap = {};

  int _currentPage = 1;
  bool _hasMore = true;
  bool _loadingMore = false;
  late ScrollController _scrollController;
  String? _forumId;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController()..addListener(_onScroll);
    _loadData(refresh: true);
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
      });
    }

    final data = await TiebaApi.fetchSubReplies(
      bduss: UserManager.bduss!,
      stoken: UserManager.stoken!,
      threadId: widget.tid,
      postId: widget.pid,
      forumId: _forumId ?? '0',
      page: _currentPage,
    );

    if (!mounted) return;

    if (data != null) {
      if (_forumId == null && data.hasForum()) {
        _forumId = data.forum.id.toString();
      }
      _buildAuthorMap(data);

      setState(() {
        _isLoading = false;
        _loadingMore = false;
        if (refresh) {
          _data = data;
        } else if (_data != null) {
          final existIds = _data!.subpostList.map((s) => s.id.toInt()).toSet();
          for (final s in data.subpostList) {
            if (!existIds.contains(s.id.toInt())) {
              _data!.subpostList.add(s);
            }
          }
          if (data.hasPost()) _data!.post = data.post;
        }
        _currentPage = data.hasPage() && data.page.currentPage > 0
            ? data.page.currentPage + 1
            : _currentPage + 1;
        _hasMore = data.hasPage() && data.page.hasMore == 1;
      });
    } else {
      setState(() {
        _isLoading = false;
        _loadingMore = false;
        if (refresh) _error = '加载失败';
      });
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

  Future<void> _handleLikeReply(SubPostList subReply) async {
    if (!UserManager.isLogin) return;
    final pidStr = subReply.id.toString();
    if (_likedReplySet.contains(pidStr)) return;

    final ok = await TiebaApi.likeReply(
      bduss: UserManager.bduss!,
      stoken: UserManager.stoken!,
      tbs: UserManager.tbs ?? '',
      userId: UserManager.userId ?? '',
      threadId: widget.tid,
      postId: pidStr,
    );

    if (ok && mounted) {
      setState(() => _likedReplySet.add(pidStr));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.floor} 楼的回复'),
        centerTitle: true,
        backgroundColor: AppColors.moonlightGradient[1],
        foregroundColor: Colors.white,
        actions: [
          if (_showBackToTop)
            IconButton(
              icon: const Icon(Icons.arrow_upward, color: Colors.white),
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
            title: _data!.hasThread() ? _data!.thread.title : null,
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
