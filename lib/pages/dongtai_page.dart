import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import '../models/post_item.dart';
import '../network/tieba_api.dart';
import '../utils/auth_notifier.dart';
import '../utils/data_cache.dart';
import '../utils/user_manager.dart';
import '../widgets/image_viewer.dart';
import '../widgets/post_card.dart';

class DongtaiPage extends StatefulWidget {
  const DongtaiPage({super.key});

  @override
  State<DongtaiPage> createState() => _DongtaiPageState();
}

class _DongtaiPageState extends State<DongtaiPage>
    with AutomaticKeepAliveClientMixin {
  List<PostItem> _posts = [];
  bool _isLoading = false;
  bool _loadingMore = false;
  bool _atBottom = false;
  int _page = 1;
  final int _maxPage = 30;

  final Set<String> _likedSet = {};

  final ScrollController _scrollController = ScrollController();
  bool _showBackToTop = false;
  double _lastScrollPosition = 0;
  bool _isAnimatingToTop = false;

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    AuthNotifier().addListener(_onAuthChanged);
    _loadFromCache();
    _loadData(refresh: true);
  }

  @override
  void dispose() {
    AuthNotifier().removeListener(_onAuthChanged);
    _scrollController.dispose();
    super.dispose();
  }

  void _onAuthChanged() {
    if (UserManager.isLogin && _posts.isEmpty) {
      _page = 1;
      _loadData(refresh: true);
    }
  }

  bool _onScrollNotification(ScrollNotification notification) {
    if (_loadingMore) return false;

    final maxScroll = notification.metrics.maxScrollExtent;
    final currentScroll = notification.metrics.pixels;
    final atBottom = currentScroll >= maxScroll - 50;

    if (_isAnimatingToTop) return false;

    if (notification is ScrollUpdateNotification) {
      // 判断滚动方向：currentScroll < _lastScrollPosition → 向上滚动
      if (currentScroll < _lastScrollPosition && currentScroll > 100) {
        // 向上滚动且超过 100px → 显示按钮
        if (!_showBackToTop) setState(() => _showBackToTop = true);
      } else if (currentScroll > _lastScrollPosition) {
        // 向下滚动 → 隐藏按钮
        if (_showBackToTop) setState(() => _showBackToTop = false);
      }
      _lastScrollPosition = currentScroll;
    }

    if (atBottom) {
      if (_atBottom) {
        // 已在底部再触发 → 加载更多
        _atBottom = false;
        _loadData(refresh: false);
      } else {
        // 第一次到底部 → 只标记
        _atBottom = true;
      }
    } else {
      _atBottom = false;
    }
    return false;
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
        _lastScrollPosition = 0; // 重置滚动位置记录
      }
    });
  }

  Future<void> _loadFromCache() async {
    final cached = await DataCache.posts;
    if (cached.isNotEmpty && mounted) {
      setState(() => _posts = cached);
    }
  }

  Future<void> _loadData({required bool refresh}) async {
    if (!UserManager.isLogin) return;

    final loading = refresh ? _isLoading : _loadingMore;
    if (loading) return;

    if (refresh) {
      setState(() => _isLoading = true);
    } else {
      setState(() => _loadingMore = true);
    }

    try {
      var posts = await TiebaApi.fetchPersonalizedThreads(
        bduss: UserManager.bduss!,
        stoken: UserManager.stoken!,
        page: refresh ? 1 : _page + 1,
        loadType: refresh ? 1 : 2,
      );
      posts = posts.where((p) => !p.isAd).toList();

      if (mounted) {
        setState(() {
          if (refresh) {
            _posts = posts;
            _page = 1;
            _isLoading = false;
          } else {
            _page++;
            final combined = [..._posts, ...posts];
            if (combined.length > _maxPage * 15) {
              _posts = combined.sublist(combined.length - _maxPage * 15);
            } else {
              _posts = combined;
            }
            _loadingMore = false;
          }
        });
      }
    } catch (_) {
      if (mounted) {
        setState(() {
          _isLoading = false;
          _loadingMore = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    if (_posts.isEmpty && !_isLoading) {
      return ListView();
    }

    return Stack(
      children: [
        Positioned.fill(
          child: RefreshIndicator(
            onRefresh: () => _loadData(refresh: true),
            child: NotificationListener<ScrollNotification>(
              onNotification: _onScrollNotification,
              child: ListView.builder(
                addAutomaticKeepAlives: false, // 不需要保持状态时设为 false
                addRepaintBoundaries: true, // 给每个 item 添加重绘边界
                controller: _scrollController,
                padding: const EdgeInsets.all(12),
                itemCount: _posts.length + (_loadingMore ? 1 : 0),
                itemBuilder: (context, index) {
                  if (index == _posts.length) {
                    return const Padding(
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
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }
                  final p = _posts[index];
                  final tid = p.tid;
                  return PostCard(
                    post: p,
                    isLiked: _likedSet.contains(tid),
                    onImageTap: (images, i) =>
                        ImageViewer.show(context, images, index: i),
                    onReplyTap: (tid) {
                      // TODO: 回复帖子
                    },
                    onBodyTap: (tid) {
                      // TODO: 跳转帖子详情页
                    },
                    onLikeTap: (tid) async {
                      if (!UserManager.isLogin) return;
                      final ok = await TiebaApi.likePost(
                        bduss: UserManager.bduss!,
                        stoken: UserManager.stoken!,
                        tbs: UserManager.tbs ?? '',
                        userId: UserManager.userId ?? '',
                        threadId: tid,
                      );
                      if (ok && mounted) {
                        setState(() {
                          _likedSet.add(tid);
                          // 点赞数 +1
                          final i = _posts.indexWhere((x) => x.tid == tid);
                          if (i >= 0) {
                            final cur = int.tryParse(_posts[i].agreeNum) ?? 0;
                            _posts[i].agreeNum = "${cur + 1}";
                          }
                        });
                      }
                    },
                    onShareTap: (tid) {
                      SharePlus.instance.share(
                        ShareParams(
                          text: "https://tieba.baidu.com/p/$tid",
                          title: "来自百度贴吧的帖子",
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 20,
          right: 20,
          child: AnimatedOpacity(
            opacity: _showBackToTop ? 1.0 : 0.0,
            duration: const Duration(milliseconds: 200),
            child: IgnorePointer(
              ignoring: !_showBackToTop,
              child: FloatingActionButton(
                mini: true,
                backgroundColor: Theme.of(context).primaryColor,
                foregroundColor: Colors.white,
                onPressed: _scrollToTop,
                child: const Icon(Icons.arrow_upward),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
