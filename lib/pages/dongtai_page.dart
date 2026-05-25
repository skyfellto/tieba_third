import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:share_plus/share_plus.dart';
import 'package:tieba_third/utils/toast_utils.dart';
import '../models/post_item.dart';
import '../network/tieba_api.dart';
import '../utils/auth_notifier.dart';
import '../utils/data_cache.dart';
import '../utils/like_manager.dart';
import '../utils/user_manager.dart';
import '../utils/user_browse_history_manager.dart';
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

  final LikeManager _likeManager = LikeManager();

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

      // Sync initial like state into manager
      for (final p in posts) {
        _likeManager.sync(
          p.tid,
          serverLiked: p.isLiked,
          serverAgreeNum: int.tryParse(p.agreeNum) ?? 0,
        );
      }

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

  Widget _buildHeader(BuildContext context) {
    final theme = Theme.of(context);
    final topPad = MediaQuery.of(context).padding.top;
    return Container(
      padding: EdgeInsets.fromLTRB(16, topPad + 8, 16, 8),
      color: theme.scaffoldBackgroundColor,
      child: Row(
        children: [
          Text(
            '动态',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 22,
              color: theme.textTheme.bodyLarge?.color,
            ),
          ),
          const Spacer(),
          GestureDetector(
            onTap: () => context.push('/search'),
            child: Icon(Icons.search, color: theme.iconTheme.color, size: 24),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return Column(
      children: [
        _buildHeader(context),
        Expanded(
          child: _posts.isEmpty && !_isLoading
              ? ListView()
              : Stack(
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
                                          child: CircularProgressIndicator(
                                            strokeWidth: 2,
                                          ),
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
                                isLiked: _likeManager.isLiked(tid),
                                onForumTap: () {
                                  context.push(
                                    '/forum/${p.forumId}?name=${Uri.encodeComponent(p.forumName)}&avatar=${Uri.encodeComponent(p.forumAvatar ?? '')}',
                                  );
                                },
                                onImageTap: (images, i) =>
                                    ImageViewer.show(context, images, index: i),
                                onReplyTap: (tid) {
                                  // TODO: 回复帖子
                                },
                                onBodyTap: (tid) {
                                  context.push('/post/$tid');
                                },
                                onLikeTap: (tid) async {
                                  if (!UserManager.isLogin) return;
                                  if (!mounted) return;
                                  if (await TiebaApi.isLikeOnCooldown()) {
                                    if (context.mounted) {
                                      showInfo(
                                        context,
                                        '由于点赞风控，请勿点赞太频繁，10分钟后再试吧',
                                      );
                                    }
                                    return;
                                  }
                                  final scaffold = ScaffoldMessenger.of(
                                    // ignore: use_build_context_synchronously
                                    context,
                                  );
                                  final pIdx = _posts.indexWhere(
                                    (x) => x.tid == tid,
                                  );
                                  if (pIdx < 0) return;
                                  final serverLiked = _posts[pIdx].isLiked;
                                  final serverAgree =
                                      int.tryParse(_posts[pIdx].agreeNum) ?? 0;
                                  setState(() {
                                    final (_, newAgree) = _likeManager.toggle(
                                      key: tid,
                                      serverLiked: serverLiked,
                                      serverAgreeNum: serverAgree,
                                      request: (opType) async {
                                        final score = await TiebaApi.likeAgree(
                                          bduss: UserManager.bduss!,
                                          stoken: UserManager.stoken!,
                                          tbs: UserManager.tbs ?? '',
                                          userId: UserManager.userId ?? '',
                                          threadId: tid,
                                          opType: opType,
                                          allowAlreadyLiked: true,
                                        );
                                        return score != null;
                                      },
                                      onUpdate: (isRollback) {
                                        if (!mounted) return;
                                        setState(() {
                                          final i = _posts.indexWhere(
                                            (x) => x.tid == tid,
                                          );
                                          if (i >= 0) {
                                            _posts[i].agreeNum = _likeManager
                                                .agreeNum(tid)
                                                .toString();
                                          }
                                        });
                                        if (isRollback) {
                                          final nowLiked = _likeManager.isLiked(
                                            tid,
                                          );
                                          scaffold.showSnackBar(
                                            SnackBar(
                                              content: Text(
                                                nowLiked
                                                    ? '取消点赞失败，请稍后重试'
                                                    : '点赞失败，请稍后重试',
                                              ),
                                              duration: const Duration(
                                                seconds: 2,
                                              ),
                                            ),
                                          );
                                        }
                                      },
                                    );
                                    final idx = _posts.indexWhere(
                                      (x) => x.tid == tid,
                                    );
                                    if (idx >= 0) {
                                      _posts[idx].agreeNum = newAgree
                                          .toString();
                                      _posts[idx].isLiked = _likeManager
                                          .isLiked(tid);
                                    }
                                  });
                                },
                                onShareTap: (tid) {
                                  SharePlus.instance.share(
                                    ShareParams(
                                      text: "https://tieba.baidu.com/p/$tid",
                                      title: "来自百度贴吧的帖子",
                                    ),
                                  );
                                },
                                onUserTap: (uid) {
                                  UserBrowseHistoryManager.saveRecord(
                                    uid: uid,
                                    userName: p.authorName,
                                    portrait: p.authorPortrait,
                                  );
                                  context.push('/user/$uid');
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
                            // backgroundColor: Theme.of(context).primaryColor,
                            // foregroundColor: Colors.white,
                            onPressed: _scrollToTop,
                            child: const Icon(Icons.arrow_upward),
                          ),
                        ),
                      ),
                    ),
                  ], // Stack children
                ), // Stack
        ), // Expanded
      ], // Column children
    ); // return Column
  }
}
