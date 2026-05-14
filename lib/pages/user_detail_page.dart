import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:share_plus/share_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/post_item.dart';
import '../models/forum_item.dart';
import '../models/user_profile_data.dart';
import '../network/tieba_api.dart';
import '../utils/user_manager.dart';
import '../utils/auth_notifier.dart';
import '../utils/user_browse_history_manager.dart';
import '../widgets/post_card.dart';
import '../widgets/user_detail_header_delegate.dart';
import '../widgets/image_viewer.dart';

class UserDetailPage extends StatefulWidget {
  final String? uid;

  const UserDetailPage({super.key, this.uid});

  @override
  State<UserDetailPage> createState() => _UserDetailPageState();
}

class _UserDetailPageState extends State<UserDetailPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  UserProfileData? _profile;
  bool _loadingProfile = false;

  // 帖子列表
  List<PostItem> _posts = [];
  bool _loadingPosts = false;
  bool _loadingMorePosts = false;
  bool _hasMorePosts = true;
  int _postPage = 1;

  // 点赞状态追踪（参照 forum_detail_page 模式）
  final Map<String, int> _likedAgreeMap = {};
  final Set<String> _likedSet = {};

  // 贴吧头像缓存 forumId → avatarUrl
  final Map<String, String> _forumAvatarCache = {};

  // 关注吧列表
  List<ForumItem> _forums = [];
  bool _loadingForums = false;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    // 查看自己时，用 UserManager 数据预填防止闪动
    if (widget.uid == null && UserManager.isLogin) {
      _profile = UserProfileData(
        uid: UserManager.userId ?? '',
        name: UserManager.userName ?? '',
        nameShow: UserManager.nameShow ?? UserManager.userName ?? '',
        portrait: UserManager.portrait,
      );
    }
    _loadingProfile = true;
    _loadProfile();
    _loadPosts(refresh: true);
    _loadForums();
  }

  String get _targetUid => widget.uid ?? UserManager.userId ?? '';

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  Future<void> _loadProfile() async {
    if (!UserManager.isLogin || !mounted) return;
    final uid = _targetUid;
    // 查看其他用户时，进入骨架屏加载状态
    if (widget.uid != null && _profile == null) {
      setState(() => _loadingProfile = true);
    }
    if (uid.isEmpty) return;
    final (profile, _) = await TiebaApi.fetchUserProfilePb(
      bduss: UserManager.bduss!,
      stoken: UserManager.stoken!,
      uid: uid,
    );
    debugPrint(
      "【用户详情】_loadProfile uid=$uid profile=${profile != null} widget.uid=${widget.uid}",
    );
    if (mounted && profile != null) {
      // 查看自己时，同步 nameShow 到 UserManager
      if (widget.uid == null && profile.nameShow.isNotEmpty) {
        UserManager.nameShow = profile.nameShow;
        final sp = await SharedPreferences.getInstance();
        await sp.setString('name_show', profile.nameShow);
        AuthNotifier().notify();
      }
      // 更新浏览记录中的用户信息
      if (widget.uid != null && profile.name.isNotEmpty) {
        UserBrowseHistoryManager.saveRecord(
          uid: uid,
          userName: profile.name,
          nameShow: profile.nameShow,
          portrait: profile.portrait,
        );
      }
      setState(() {
        _profile = profile;
        _loadingProfile = false;
      });
    } else if (mounted) {
      setState(() => _loadingProfile = false);
    }
  }

  void _syncLikedFromPosts() {
    for (final p in _posts) {
      if (p.isLiked) {
        _likedSet.add(p.tid);
        if (!_likedAgreeMap.containsKey(p.tid)) {
          _likedAgreeMap[p.tid] = int.tryParse(p.agreeNum) ?? 0;
        }
      }
    }
  }

  Future<void> _loadPosts({bool refresh = false}) async {
    if (!UserManager.isLogin) return;
    final uid = _targetUid;
    if (uid.isEmpty) return;
    if (refresh) {
      if (_loadingPosts) return;
      setState(() => _loadingPosts = true);
    } else {
      if (_loadingMorePosts || !_hasMorePosts) return;
      setState(() => _loadingMorePosts = true);
    }

    final posts = await TiebaApi.fetchUserPostsPb(
      bduss: UserManager.bduss!,
      stoken: UserManager.stoken!,
      uid: uid,
      page: refresh ? 1 : _postPage + 1,
      rn: 15,
      isThread: 1,
      forumAvatarMap: _forumAvatarCache,
    );

    if (mounted) {
      setState(() {
        _loadingPosts = false;
        _loadingMorePosts = false;
        if (refresh) {
          _posts = posts;
          _postPage = 1;
        } else {
          _postPage++;
          _posts.addAll(posts);
        }
        _hasMorePosts = posts.length >= 15;
        _syncLikedFromPosts();
        _applyForumAvatars();
      });
      // 查看其他用户时，补抓未知的贴吧头像
      if (widget.uid != null) _lazyLoadForumAvatars(posts);
    }
  }

  Future<void> _lazyLoadForumAvatars(List<PostItem> posts) async {
    final unknown = <String>{};
    for (final p in posts) {
      if (p.forumId.isNotEmpty && !_forumAvatarCache.containsKey(p.forumId)) {
        unknown.add(p.forumId);
      }
    }
    for (final fid in unknown) {
      final detail = await TiebaApi.fetchForumDetail(
        bduss: UserManager.bduss!,
        stoken: UserManager.stoken!,
        forumId: fid,
        userId: UserManager.userId ?? '',
      );
      if (detail?.hasForumInfo() == true &&
          detail!.forumInfo.avatar.isNotEmpty &&
          mounted) {
        setState(() {
          _forumAvatarCache[fid] = detail.forumInfo.avatar;
          _applyForumAvatars();
        });
      }
    }
  }

  Future<void> _loadForums() async {
    if (!UserManager.isLogin) return;
    setState(() => _loadingForums = true);
    final List<ForumItem> forums;
    if (widget.uid == null) {
      // 查看自己：用 ForumGuide API
      forums = await TiebaApi.fetchForumRecommend(
        bduss: UserManager.bduss!,
        stoken: UserManager.stoken!,
      );
    } else {
      // 查看其他用户：用 /c/f/forum/like API
      debugPrint(
        "【用户详情】_loadForums 调用 fetchUserLikeForums uid=${UserManager.userId} friendUid=${widget.uid}",
      );
      forums = await TiebaApi.fetchUserLikeForums(
        bduss: UserManager.bduss!,
        stoken: UserManager.stoken!,
        uid: UserManager.userId ?? '',
        friendUid: widget.uid,
      );
      debugPrint(
        "【用户详情】_loadForums fetchUserLikeForums 返回 ${forums.length} 个贴吧",
      );
    }
    debugPrint("【用户详情】_loadForums 最终 forums=${forums.length} mounted=$mounted");
    if (mounted) {
      setState(() {
        _forums = forums;
        _loadingForums = false;
        // 填充贴吧头像缓存
        for (final f in forums) {
          if (f.forumId.isNotEmpty && f.avatar.isNotEmpty) {
            _forumAvatarCache[f.forumId] = f.avatar;
          }
        }
        // 用缓存更新已有帖子的贴吧头像
        _applyForumAvatars();
      });
    }
  }

  void _applyForumAvatars() {
    for (int i = 0; i < _posts.length; i++) {
      final p = _posts[i];
      if (p.forumAvatar == null && p.forumId.isNotEmpty) {
        final avatar = _forumAvatarCache[p.forumId];
        if (avatar != null) {
          _posts[i] = PostItem(
            tid: p.tid,
            title: p.title,
            authorId: p.authorId,
            authorName: p.authorName,
            authorPortrait: p.authorPortrait,
            forumId: p.forumId,
            forumName: p.forumName,
            forumAvatar: avatar,
            replyNum: p.replyNum,
            agreeNum: p.agreeNum,
            abstractText: p.abstractText,
            lastTime: p.lastTime,
            imageUrls: p.imageUrls,
            isAd: p.isAd,
            isTop: p.isTop,
            isLiked: p.isLiked,
            firstPostId: p.firstPostId,
          );
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final topPad = MediaQuery.of(context).padding.top;

    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverOverlapAbsorber(
              handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
              sliver: SliverPersistentHeader(
                pinned: true,
                delegate: UserDetailHeaderDelegate(
                  topPadding: topPad,
                  tabBar: _buildTabBar(context: context),
                  onPop: () => context.pop(),
                  profile: _profile,
                  isSkeleton: _loadingProfile && _profile == null,
                ),
              ),
            ),
          ];
        },
        body: TabBarView(
          controller: _tabController,
          children: [_buildPostList(), _buildForumList()],
        ),
      ),
    );
  }

  TabBar _buildTabBar({required BuildContext context}) {
    return TabBar(
      controller: _tabController,
      // labelColor: Theme.of(context).primaryColor,
      labelColor: Theme.of(context).brightness == Brightness.dark
          ? Colors.white
          : Colors.black,
      labelStyle: TextStyle(fontWeight: FontWeight.w800),
      unselectedLabelStyle: TextStyle(fontWeight: FontWeight.normal),
      unselectedLabelColor: Colors.grey,
      indicatorColor: Theme.of(context).primaryColor,
      tabs: const [
        Tab(text: '帖子'),
        Tab(text: '关注吧'),
      ],
    );
  }

  Widget _buildPostList() {
    return NotificationListener<ScrollNotification>(
      onNotification: (notification) {
        if (notification is ScrollUpdateNotification) {
          if (!_loadingMorePosts &&
              _hasMorePosts &&
              notification.metrics.pixels >=
                  notification.metrics.maxScrollExtent - 200) {
            _loadPosts();
          }
        }
        return false;
      },
      child: RefreshIndicator(
        onRefresh: () => _loadPosts(refresh: true),
        child: CustomScrollView(
          slivers: [
            Builder(
              builder: (ctx) => SliverOverlapInjector(
                handle: NestedScrollView.sliverOverlapAbsorberHandleFor(ctx),
              ),
            ),
            if (_loadingPosts)
              const SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.all(24),
                  child: Center(child: CircularProgressIndicator()),
                ),
              )
            else if (_posts.isEmpty)
              const SliverFillRemaining(
                child: Center(
                  child: Text('暂无帖子', style: TextStyle(color: Colors.grey)),
                ),
              )
            else
              SliverPadding(
                padding: const EdgeInsets.all(12),
                sliver: SliverList(
                  delegate: SliverChildBuilderDelegate((context, index) {
                    final p = _posts[index];
                    final tid = p.tid;
                    final isLiked = _likedSet.contains(tid);
                    return PostCard(
                      post: p,
                      showForum: true,
                      isLiked: isLiked,
                      onImageTap: (images, i) =>
                          ImageViewer.show(context, images, index: i),
                      onBodyTap: (_) => context.push('/post/$tid'),
                      onForumTap: p.forumId.isNotEmpty
                          ? () => context.push(
                              '/forum/${p.forumId}?name=${Uri.encodeComponent(p.forumName)}&avatar=${Uri.encodeComponent(p.forumAvatar ?? '')}',
                            )
                          : null,
                      onLikeTap: (_) async {
                        if (!UserManager.isLogin) return;
                        final score = await TiebaApi.likePost(
                          bduss: UserManager.bduss!,
                          stoken: UserManager.stoken!,
                          tbs: UserManager.tbs ?? '',
                          userId: UserManager.userId ?? '',
                          threadId: tid,
                          allowAlreadyLiked: true,
                        );
                        if (score == null || !mounted) return;
                        setState(() {
                          _likedSet.add(tid);
                          final idx = _posts.indexWhere((x) => x.tid == tid);
                          if (idx >= 0) {
                            if (score > 0) {
                              // 新点赞
                              final cur =
                                  int.tryParse(_posts[idx].agreeNum) ?? 0;
                              _posts[idx].agreeNum = "${cur + 1}";
                              _likedAgreeMap[tid] = cur + 1;
                            } else {
                              // 已经点过赞了（score == -1），只标记不增加
                              _likedAgreeMap[tid] =
                                  int.tryParse(_posts[idx].agreeNum) ?? 0;
                            }
                          }
                        });
                      },
                      onShareTap: (tid) => SharePlus.instance.share(
                        ShareParams(
                          text: "https://tieba.baidu.com/p/$tid",
                          title: "来自百度贴吧的帖子",
                        ),
                      ),
                      onUserTap: (uid) {
                        UserBrowseHistoryManager.saveRecord(
                          uid: uid,
                          userName: p.authorName,
                          portrait: p.authorPortrait,
                        );
                        context.push('/user/$uid');
                      },
                    );
                  }, childCount: _posts.length),
                ),
              ),
            if (_loadingMorePosts)
              const SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Center(
                    child: SizedBox(
                      width: 16,
                      height: 16,
                      child: CircularProgressIndicator(strokeWidth: 2),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildForumList() {
    if (_loadingForums) {
      return const Center(child: CircularProgressIndicator());
    }
    if (_forums.isEmpty) {
      return const Center(
        child: Text('暂未关注任何贴吧', style: TextStyle(color: Colors.grey)),
      );
    }
    return CustomScrollView(
      slivers: [
        Builder(
          builder: (ctx) => SliverOverlapInjector(
            handle: NestedScrollView.sliverOverlapAbsorberHandleFor(ctx),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.all(8),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              final f = _forums[index];
              return ListTile(
                leading: CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.grey[300],
                  backgroundImage: f.avatar.isNotEmpty
                      ? NetworkImage(f.avatar)
                      : null,
                ),
                title: Text(
                  f.forumName,
                  style: TextStyle(
                    color: Theme.of(context).textTheme.bodyLarge?.color,
                  ),
                ),
                trailing: Icon(
                  Icons.chevron_right,
                  color: Colors.grey[400],
                  size: 20,
                ),
                onTap: () => context.push(
                  '/forum/${f.forumId}?name=${Uri.encodeComponent(f.forumName)}&avatar=${Uri.encodeComponent(f.avatar)}',
                ),
              );
            }, childCount: _forums.length),
          ),
        ),
      ],
    );
  }
}
