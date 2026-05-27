import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:share_plus/share_plus.dart';
import 'package:tieba_third/utils/toast_utils.dart';
import '../models/liked_item.dart';
import '../widgets/liked_item_card.dart';
import '../network/tieba_api.dart';
import '../utils/user_manager.dart';
import '../utils/like_manager.dart';

/// 我的点赞页面
class MyLikesPage extends StatefulWidget {
  const MyLikesPage({super.key});

  @override
  State<MyLikesPage> createState() => _MyLikesPageState();
}

class _MyLikesPageState extends State<MyLikesPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final _likeManager = LikeManager();

  static const _tabIds = [0, 1, 2];

  final List<_TabState> _tabStates = List.generate(3, (_) => _TabState());

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(_onTabChanged);
    _loadTab(0);
  }

  @override
  void dispose() {
    _tabController.removeListener(_onTabChanged);
    _tabController.dispose();
    super.dispose();
  }

  void _onTabChanged() {
    if (_tabController.indexIsChanging) return;
    final i = _tabController.index;
    final state = _tabStates[i];
    if (!state.loaded && !state.loading) {
      _loadTab(i);
    }
  }

  Future<void> _loadTab(
    int tabIndex, {
    bool refresh = false,
    bool loadMore = false,
  }) async {
    if (!UserManager.isLogin) return;
    final state = _tabStates[tabIndex];
    if (refresh) {
      state.reset();
    }
    if (state.loading && !loadMore) return;
    state.loading = true;
    if (mounted) setState(() {});

    final data = await TiebaApi.fetchLikedPosts(
      bduss: UserManager.bduss!,
      stoken: UserManager.stoken!,
      tbs: UserManager.tbs ?? '',
      tabId: _tabIds[tabIndex],
      page: state.page,
    );

    if (!mounted) return;
    state.loading = false;

    if (data != null) {
      final list = data['data']?['thread_list'] ?? data['store_thread'];
      if (list is List) {
        for (final item in list) {
          if (item is Map) {
            final tid = '${item['thread_id'] ?? item['tid'] ?? ''}';
            final isLiked =
                (item['agree'] is Map
                    ? item['agree']['has_agree']
                    : item['has_agree']) ==
                1;
            final agreeNum = int.tryParse('${item['agree_num'] ?? 0}') ?? 0;
            _likeManager.sync(
              'thread:$tid',
              serverLiked: isLiked,
              serverAgreeNum: agreeNum,
            );
            final likedItem = LikedItem.fromJson(item, tid);
            state.items.add(likedItem);
            // 如果有回复，同步回复的点赞状态
            if (likedItem.hasReply &&
                likedItem.reply != null &&
                likedItem.reply!.replyId.isNotEmpty) {
              final replyAgree = int.tryParse(likedItem.reply!.agreeNum) ?? 0;
              _likeManager.sync(
                'reply:${likedItem.reply!.replyId}',
                serverLiked: true,
                serverAgreeNum: replyAgree,
              );
            }
          }
        }
      }
      state.hasMore = data['data']?['has_more'] == 1;
      state.page++;
      state.loaded = true;
    } else {
      state.hasError = true;
      state.loaded = true;
    }
    if (mounted) setState(() {});
  }

  void _loadMore(int tabIndex) {
    final state = _tabStates[tabIndex];
    if (!state.hasMore || state.loading || state.loadingMore) return;
    state.loadingMore = true;
    _loadTab(tabIndex, loadMore: true).then((_) {
      state.loadingMore = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('我的点赞'),
        centerTitle: true,
        backgroundColor: theme.primaryColor,
      ),
      body: Column(
        children: [
          Container(
            color: theme.primaryColor,
            child: TabBar(
              controller: _tabController,
              labelColor: theme.brightness == Brightness.dark
                  ? Colors.white
                  : Colors.black,
              labelStyle: const TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 15,
              ),
              unselectedLabelColor: theme.brightness == Brightness.dark
                  ? Colors.grey
                  : Colors.grey[100],
              unselectedLabelStyle: const TextStyle(
                fontWeight: FontWeight.normal,
              ),
              indicatorColor: theme.primaryColor,
              tabs: const [
                Tab(text: '全部'),
                Tab(text: '主帖'),
                Tab(text: '回帖'),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: List.generate(3, (i) => _buildTabContent(i)),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTabContent(int tabIndex) {
    final state = _tabStates[tabIndex];
    if (!state.loaded && state.hasError) {
      return Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('加载失败', style: TextStyle(fontSize: 16)),
            const SizedBox(height: 12),
            TextButton(
              onPressed: () => _loadTab(tabIndex, refresh: true),
              child: const Text('重试'),
            ),
          ],
        ),
      );
    }
    if (!state.loaded) {
      return const Center(child: CircularProgressIndicator());
    }
    if (state.items.isEmpty) {
      return const Center(
        child: Text('暂无数据', style: TextStyle(color: Colors.grey, fontSize: 15)),
      );
    }
    return NotificationListener<ScrollNotification>(
      onNotification: (n) {
        if (n is ScrollUpdateNotification &&
            !state.loadingMore &&
            state.hasMore &&
            n.metrics.pixels >= n.metrics.maxScrollExtent - 200) {
          _loadMore(tabIndex);
        }
        return false;
      },
      child: RefreshIndicator(
        onRefresh: () => _loadTab(tabIndex, refresh: true),
        child: ListView.builder(
          padding: const EdgeInsets.all(12),
          itemCount:
              state.items.length +
              (state.loadingMore
                  ? 1
                  : state.hasMore
                  ? 0
                  : 1),
          itemBuilder: (context, index) {
            if (index >= state.items.length) {
              if (state.loadingMore) {
                return const Padding(
                  padding: EdgeInsets.all(16),
                  child: Center(
                    child: SizedBox(
                      width: 16,
                      height: 16,
                      child: CircularProgressIndicator(strokeWidth: 2),
                    ),
                  ),
                );
              }
              return const Padding(
                padding: EdgeInsets.all(16),
                child: Center(
                  child: Text(
                    '没有更多了',
                    style: TextStyle(color: Colors.grey, fontSize: 13),
                  ),
                ),
              );
            }
            final item = state.items[index];
            final isReply =
                item.hasReply &&
                item.reply != null &&
                item.reply!.replyId.isNotEmpty;
            final likeKey = isReply
                ? 'reply:${item.reply!.replyId}'
                : 'thread:${item.tid}';
            return LikedItemCard(
              item: item,
              likeManager: _likeManager,
              likeKey: likeKey,
              onForumTap: () {
                if (item.forumId.isNotEmpty) {
                  context.push(
                    '/forum/${item.forumId}'
                    '?name=${Uri.encodeComponent(item.forumName)}'
                    '&avatar=${Uri.encodeComponent(item.forumAvatar)}',
                  );
                }
              },
              onBodyTap: () {
                context.push('/post/${item.tid}');
              },
              onLikeTap: () => _handleLike(item, index, tabIndex),
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
    );
  }

  Future<void> _handleLike(LikedItem item, int index, int tabIndex) async {
    if (!UserManager.isLogin || !mounted) return;
    if (await TiebaApi.isLikeOnCooldown()) {
      if (mounted) {
        showLikeCooldownMessage(context);
      }
      return;
    }
    final scaffold = ScaffoldMessenger.of(context);

    // 有回复时赞的是回复本身，否则赞帖子
    final isReply =
        item.hasReply && item.reply != null && item.reply!.replyId.isNotEmpty;
    final likeKey = isReply
        ? 'reply:${item.reply!.replyId}'
        : 'thread:${item.tid}';
    final serverLiked = _likeManager.isLiked(likeKey);
    final serverAgree = _likeManager.agreeNum(likeKey);

    setState(() {
      _likeManager.toggle(
        key: likeKey,
        serverLiked: serverLiked,
        serverAgreeNum: serverAgree,
        request: (opType) async {
          late final bool ok;
          if (isReply) {
            final score = await TiebaApi.likeAgree(
              bduss: UserManager.bduss!,
              stoken: UserManager.stoken!,
              tbs: UserManager.tbs ?? '',
              userId: UserManager.userId ?? '',
              threadId: item.tid,
              postId: item.reply!.replyId,
              objType: 1,
              opType: opType,
            );
            ok = score != null;
          } else {
            final score = await TiebaApi.likeAgree(
              bduss: UserManager.bduss!,
              stoken: UserManager.stoken!,
              tbs: UserManager.tbs ?? '',
              userId: UserManager.userId ?? '',
              threadId: item.tid,
              opType: opType,
              allowAlreadyLiked: true,
            );
            ok = score != null;
          }
          return ok;
        },
        onUpdate: (isRollback) {
          if (!mounted) return;
          setState(() {});
          if (isRollback) {
            scaffold.showSnackBar(
              SnackBar(
                content: Text(
                  _likeManager.isLiked(likeKey) ? '取消点赞失败' : '点赞失败',
                ),
                duration: const Duration(seconds: 2),
              ),
            );
          }
        },
      );
    });
  }
}

class _TabState {
  List<LikedItem> items = [];
  int page = 1;
  bool hasMore = true;
  bool loading = false;
  bool loaded = false;
  bool loadingMore = false;
  bool hasError = false;

  void reset() {
    items.clear();
    page = 1;
    hasMore = true;
    loading = false;
    loaded = false;
    loadingMore = false;
  }
}
