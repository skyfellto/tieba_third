import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../generated/RecommendForumInfo.pb.dart';
import '../generated/GetForumDetail/GetForumDetailResponseData.pb.dart';
import '../generated/FrsPage/FrsPage.pb.dart';
import '../generated/ThreadList/ThreadList.pb.dart';
import '../generated/User.pb.dart' as usermodel;
import '../models/post_item.dart';
import '../network/tieba_api.dart';
import '../utils/like_manager.dart';
import '../utils/user_manager.dart';
import '../utils/user_browse_history_manager.dart';
import '../models/forum_browse_record.dart';
import '../utils/forum_browse_history_manager.dart';
import '../widgets/post_card.dart';
import '../widgets/forum_header_delegate.dart';
import '../widgets/image_viewer.dart';
import 'package:share_plus/share_plus.dart';

/// 贴吧详情页
class ForumDetailPage extends StatefulWidget {
  final String fid;
  final String? forumName;
  final String? forumAvatar;

  const ForumDetailPage({
    super.key,
    required this.fid,
    this.forumName,
    this.forumAvatar,
  });

  @override
  State<ForumDetailPage> createState() => _ForumDetailPageState();
}

class _ForumDetailPageState extends State<ForumDetailPage>
    with SingleTickerProviderStateMixin {
  RecommendForumInfo? _forumInfo;
  bool _isLoading = true;
  String? _error;
  // 来自 FrsPage 的用户等级信息
  int _userLevel = 0;
  String _levelName = '';
  int _curScore = 0;
  int _levelupScore = 0;
  bool _isLike = false;
  bool _isLiking = false;

  late TabController _tabController;
  int _currentTab = 0;

  // 排序菜单
  final _sortOptions = ["按回复时间查询", "按发帖时间查询"];
  int _selectedSort = 0; // 0=按回复时间查询(默认), 1=按发帖时间查询
  final ValueNotifier<int> _sortListenable = ValueNotifier<int>(0);

  // NestedScrollView overlap handle，在 headerSliverBuilder 中捕获
  SliverOverlapAbsorberHandle? _overlapHandle;

  // 帖子列表
  List<PostItem> _threads = [];
  bool _loadingMoreThreads = false;
  bool _hasMoreThreads = true;
  int _threadPage = 1;
  final LikeManager _likeManager = LikeManager();
  // 双接口触底加载相关
  List<int> _threadIdList = []; // 待加载的 threadId 列表
  final int _batchSize = 30; // 每次从 threadIdList 中批量加载的数量
  List<PostItem> _goodThreads = [];
  bool _loadingGoodThreads = false;
  bool _loadingMoreGoodThreads = false;
  bool _hasMoreGoodThreads = true;
  int _goodThreadPage = 1;
  // 回顶按钮
  bool _showBackToTop = false;
  double _lastScrollPos = 0;
  // ignore: unused_field
  ScrollPosition? _scrollPosition;
  bool _isAnimatingToTop = false;
  bool _isRefreshing = false;
  final GlobalKey _scrollTopKey0 = GlobalKey();
  final GlobalKey _scrollTopKey1 = GlobalKey();

  // ignore: prefer_final_fields
  Map<String, int> _likedAgreeMap = {};
  static const String _likedStorageKey = 'forum_detail_liked_cnt';

  /// 从本地持久化恢复点赞数据
  Future<void> _initLikedSet() async {
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

  void _syncLikedFromPosts(List<PostItem> posts) {
    for (final p in posts) {
      _likeManager.sync(
        p.tid,
        serverLiked: p.isLiked,
        serverAgreeNum: int.tryParse(p.agreeNum) ?? 0,
      );
      final saved = _likedAgreeMap[p.tid];
      if (saved != null) {
        final apiNum = int.tryParse(p.agreeNum) ?? 0;
        p.agreeNum = "${saved > apiNum ? saved : apiNum}";
      }
    }
  }

  Future<void> _saveLikedSet() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_likedStorageKey, jsonEncode(_likedAgreeMap));
  }

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(_onTabChanged);
    _loadData();
    _initLikedSet();
  }

  @override
  void dispose() {
    _tabController.removeListener(_onTabChanged);
    _tabController.dispose();
    super.dispose();
  }

  void _onTabChanged() {
    if (!_tabController.indexIsChanging) {
      setState(() => _currentTab = _tabController.index);
      if (_tabController.index == 1 && _goodThreads.isEmpty) {
        final info = _forumInfo;
        final name = info?.forumName ?? widget.forumName;
        if (name != null && name.isNotEmpty) {
          _loadGoodThreads(name);
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) {
              _overlapHandle = NestedScrollView.sliverOverlapAbsorberHandleFor(
                context,
              );
              return [
                SliverOverlapAbsorber(
                  handle: _overlapHandle!,
                  sliver: SliverPersistentHeader(
                    pinned: true,
                    delegate: ForumHeaderDelegate(
                      topPadding: MediaQuery.of(context).padding.top,
                      forumInfo: _forumInfo,
                      forumName: widget.forumName,
                      forumAvatar: widget.forumAvatar,
                      isLike: _isLike,
                      userLevel: _userLevel,
                      levelName: _levelName,
                      curScore: _curScore,
                      levelupScore: _levelupScore,
                      currentTab: _currentTab,
                      tabController: _tabController,
                      selectedSort: _selectedSort,
                      sortOptions: _sortOptions,
                      sortListenable: _sortListenable,
                      onSortChanged: _onSortChanged,
                      onLikeForum: _handleLikeForum,
                      onUnlikeForum: _handleUnlikeForum,
                      isLiking: _isLiking,
                      onTapFeatured: () => _tabController.animateTo(1),
                      onPop: () => context.pop(),
                      onSearchTap: () {
                        final name =
                            _forumInfo?.forumName ?? widget.forumName ?? '';
                        context.push(
                          '/search?forumName=${Uri.encodeComponent(name)}',
                        );
                      },
                    ),
                  ),
                ),
              ];
            },
            body: TabBarView(
              controller: _tabController,
              children: [_buildPostList(), _buildGoodThreads()],
            ),
          ),
          // 加载指示器（refresh 时显示在 tab 栏上方）
          if (_isRefreshing)
            Positioned(
              top: MediaQuery.of(context).padding.top + kToolbarHeight,
              left: 0,
              right: 0,
              child: const LinearProgressIndicator(
                backgroundColor: Colors.transparent,
                valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
              ),
            ),
          // 回顶按钮
          Positioned(
            right: 16,
            bottom: 80,
            child: AnimatedOpacity(
              opacity: _showBackToTop ? 1.0 : 0.0,
              duration: const Duration(milliseconds: 200),
              child: FloatingActionButton(
                mini: true,
                heroTag: null,
                onPressed: _scrollToTop,
                child: const Icon(Icons.arrow_upward),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _scrollToTop() {
    _isAnimatingToTop = true;
    if (_showBackToTop) setState(() => _showBackToTop = false);
    final key = _currentTab == 0 ? _scrollTopKey0 : _scrollTopKey1;
    final ctx = key.currentContext;
    if (ctx != null) {
      Scrollable.ensureVisible(
        ctx,
        alignment: 0.0,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOutCubic,
      );
    }
    Future.delayed(const Duration(milliseconds: 350), () {
      if (mounted) {
        _isAnimatingToTop = false;
        _lastScrollPos = 0;
      }
    });
  }

  // ===================== Data loading =====================

  Future<void> _loadData() async {
    if (!UserManager.isLogin) {
      if (mounted) {
        setState(() {
          _isLoading = false;
          _error = "未登录";
        });
      }
      return;
    }

    setState(() {
      _isLoading = true;
      _error = null;
    });

    // 先请求论坛详情获取名称，再请求 FrsPage
    final detailData = await TiebaApi.fetchForumDetail(
      bduss: UserManager.bduss!,
      stoken: UserManager.stoken!,
      forumId: widget.fid,
      userId: UserManager.userId ?? '',
    );

    // 获取论坛名称
    String? forumName;
    if (detailData != null &&
        // ignore: unnecessary_type_check
        detailData is GetForumDetailResponseData &&
        detailData.hasForumInfo()) {
      forumName = detailData.forumInfo.forumName;
    }
    forumName ??= widget.forumName;

    // 请求 FrsPage 获取等级/关注信息 + 帖子列表
    FrsPageResponseData? frsData;
    if (forumName != null && forumName.isNotEmpty) {
      frsData = await TiebaApi.fetchFrsPage(
        bduss: UserManager.bduss!,
        stoken: UserManager.stoken!,
        forumName: forumName,
        userId: UserManager.userId ?? '',
        page: 1,
        loadType: 1,
        sortType: _selectedSort,
      );
    }

    if (mounted) {
      setState(() {
        _isLoading = false;
        // ignore: unnecessary_type_check
        if (detailData != null &&
            // ignore: unnecessary_type_check
            detailData is GetForumDetailResponseData &&
            detailData.hasForumInfo()) {
          _forumInfo = detailData.forumInfo;
        }
        // 从 FrsPage 获取等级/关注信息 + 帖子
        if (frsData != null && frsData.hasForum()) {
          final fi = frsData.forum;
          _isLike = fi.isLike == 1;
          _userLevel = fi.userLevel;
          _levelName = fi.levelName;
          _curScore = fi.curScore;
          _levelupScore = fi.levelupScore;
        }
        if (frsData != null) {
          _threads = _processThreadData(frsData);
          _syncLikedFromPosts(_threads);
          _threadPage = 1;
          _hasMoreThreads = frsData.hasPage() && frsData.page.hasMore == 1;
          _threadIdList = frsData.threadIdList.map((e) => e.toInt()).toList();
          debugPrint("【初始加载】threadIdList=${_threadIdList.length}条");
        }
        if (_forumInfo == null && frsData == null) {
          _error = "加载失败";
        }
      });
      _saveForumBrowseRecord();
    }
  }

  void _saveForumBrowseRecord() {
    final name = _forumInfo?.forumName ?? widget.forumName;
    if (name == null || name.isEmpty) return;
    ForumBrowseHistoryManager.saveRecord(
      ForumBrowseRecord(
        fid: widget.fid,
        forumName: name,
        forumAvatar: _forumInfo?.avatar.isNotEmpty == true
            ? _forumInfo!.avatar
            : widget.forumAvatar,
        browseTime: DateTime.now().millisecondsSinceEpoch ~/ 1000,
      ),
    );
  }

  /// 从 FrsPage 响应中提取帖子列表，补充作者信息
  List<PostItem> _processThreadData(FrsPageResponseData data) {
    final userMap = <int, usermodel.User>{};
    for (final u in data.userList) {
      userMap[u.id.toInt()] = u;
    }
    return data.threadList
        .map((t) {
          // debugPrint("threadTypes :: ${t.threadTypes}");
          final p = PostItem.fromThreadInfo(t);
          // 如果 fromThreadInfo 未能获取作者信息，从 userList 补充
          if ((p.authorName.isEmpty || p.authorPortrait == null) &&
              t.authorId.toInt() > 0) {
            final author = userMap[t.authorId.toInt()];
            if (author != null) {
              p.authorName = author.nameShow.isNotEmpty
                  ? author.nameShow
                  : author.name;
              p.authorPortrait = author.portrait.isNotEmpty
                  ? author.portrait
                  : null;
            }
          }
          p.forumName = '';
          return p;
        })
        .where((p) => p.tid.isNotEmpty)
        .map((p) {
          if (p.imageUrls.isNotEmpty && p.imageUrls.length <= 2) {
            // debugPrint(
            //   "【帖子图片】tid=${p.tid} 图片数=${p.imageUrls.length} url0=${p.imageUrls.isNotEmpty ? p.imageUrls[0].substring(0, 40) : '无'}",
            // );
          } else if (p.imageUrls.isEmpty) {
            // ignore: unused_local_variable
            int mediaCount = 0;
            for (final t in data.threadList) {
              if (t.id.toInt().toString() == p.tid) {
                mediaCount = t.media.length;
                break;
              }
            }
            // debugPrint("【帖子图片】tid=${p.tid} 无图片 media数=$mediaCount");
          }
          return p;
        })
        .toList();
  }

  Future<void> _onRefreshThreads() async {
    if (!UserManager.isLogin) return;
    _isRefreshing = true;
    if (mounted) setState(() {});
    final info = _forumInfo;
    final forumName = info?.forumName ?? widget.forumName;
    if (forumName == null || forumName.isEmpty) {
      _isRefreshing = false;
      if (mounted) setState(() {});
      return;
    }

    final data = await TiebaApi.fetchFrsPage(
      bduss: UserManager.bduss!,
      stoken: UserManager.stoken!,
      forumName: forumName,
      userId: UserManager.userId ?? '',
      page: 1,
      loadType: 1,
      sortType: _selectedSort,
    );
    if (mounted) {
      setState(() {
        _isRefreshing = false;
        if (data != null) {
          _threads = _processThreadData(data);
          _threadPage = 1;
          _hasMoreThreads = data.hasPage() && data.page.hasMore == 1;
          _threadIdList = data.threadIdList.map((e) => e.toInt()).toList();
          debugPrint("【刷新】threadIdList=${_threadIdList.length}条");
        }
      });
    }
  }

  Future<void> _loadMoreThreads() async {
    if (_loadingMoreThreads || !_hasMoreThreads || !UserManager.isLogin) return;
    setState(() => _loadingMoreThreads = true);

    final info = _forumInfo;
    final forumName = info?.forumName ?? widget.forumName;
    if (forumName == null || forumName.isEmpty) {
      setState(() => _loadingMoreThreads = false);
      return;
    }

    if (_threadIdList.isNotEmpty) {
      // 双接口模式：从 threadIdList 中取一批 ID 走 threadlist 接口
      final batch = _threadIdList.take(_batchSize).toList();
      final threadIdStr = batch.join(',');
      final forumId = info?.forumId.toInt().toString() ?? widget.fid;

      debugPrint("【触底加载→threadlist】forumName=$forumName forumId=$forumId "
          "threadIdCount=${batch.length} threadIds=$threadIdStr "
          "sortType=$_selectedSort page=$_threadPage "
          "剩余threadId=${_threadIdList.length}");

      final data = await TiebaApi.fetchThreadList(
        bduss: UserManager.bduss!,
        stoken: UserManager.stoken!,
        forumName: forumName,
        forumId: forumId,
        userId: UserManager.userId ?? '',
        threadIds: threadIdStr,
        sortType: _selectedSort,
        page: _threadPage,
      );

      if (mounted) {
        setState(() {
          _loadingMoreThreads = false;
          if (data != null) {
            final newPosts = _processThreadListData(data);
            _syncLikedFromPosts(newPosts);
            _threads.addAll(newPosts);
            _threadIdList.removeWhere((id) => batch.contains(id));
            _hasMoreThreads = newPosts.isNotEmpty || _threadIdList.isNotEmpty;
            debugPrint("【触底加载→threadlist】返回新帖${newPosts.length}条，"
                "剩余threadId=${_threadIdList.length} hasMore=$_hasMoreThreads");
          } else {
            debugPrint("【触底加载→threadlist】返回null，接口异常");
          }
        });
      }
    } else {
      // threadIdList 用完，回退到 frs/page
      final nextPage = _threadPage + 1;
      debugPrint("【触底加载→frs/page】forumName=$forumName "
          "sortType=$_selectedSort page=$nextPage "
          "_threadIdList为空，走frs/page翻页");

      final data = await TiebaApi.fetchFrsPage(
        bduss: UserManager.bduss!,
        stoken: UserManager.stoken!,
        forumName: forumName,
        userId: UserManager.userId ?? '',
        page: nextPage,
        loadType: 2,
        sortType: _selectedSort,
      );

      if (mounted) {
        setState(() {
          _loadingMoreThreads = false;
          if (data != null) {
            final newPosts = _processThreadData(data);
            _syncLikedFromPosts(newPosts);
            _threads.addAll(newPosts);
            _threadPage = nextPage;
            _hasMoreThreads = data.hasPage() && data.page.hasMore == 1;
            _threadIdList = data.threadIdList.map((e) => e.toInt()).toList();
            debugPrint("【触底加载→frs/page】返回新帖${newPosts.length}条，"
                "新threadId=${_threadIdList.length}条 hasMore=$_hasMoreThreads "
                "currentPage=$_threadPage");
          } else {
            debugPrint("【触底加载→frs/page】返回null，接口异常");
          }
        });
      }
    }
  }

  List<PostItem> _processThreadListData(ThreadListResponseData data) {
    final userMap = <int, usermodel.User>{};
    for (final u in data.userList) {
      userMap[u.id.toInt()] = u;
    }
    return data.threadList
        .map((t) {
          final p = PostItem.fromThreadInfo(t);
          if ((p.authorName.isEmpty || p.authorPortrait == null) &&
              t.authorId.toInt() > 0) {
            final author = userMap[t.authorId.toInt()];
            if (author != null) {
              p.authorName = author.nameShow.isNotEmpty
                  ? author.nameShow
                  : author.name;
              p.authorPortrait = author.portrait.isNotEmpty
                  ? author.portrait
                  : null;
            }
          }
          p.forumName = '';
          return p;
        })
        .where((p) => p.tid.isNotEmpty)
        .toList();
  }

  // ===================== Good Threads Pagination =====================

  Future<void> _onRefreshGoodThreads() async {
    if (!UserManager.isLogin) return;
    _isRefreshing = true;
    if (mounted) setState(() {});
    final info = _forumInfo;
    final forumName = info?.forumName ?? widget.forumName;
    if (forumName == null || forumName.isEmpty) return;
    setState(() {
      _loadingGoodThreads = true;
      _goodThreadPage = 1;
    });
    final data = await TiebaApi.fetchFrsPage(
      bduss: UserManager.bduss!,
      stoken: UserManager.stoken!,
      forumName: forumName,
      userId: UserManager.userId ?? '',
      page: 1,
      loadType: 1,
      isGood: 1,
    );
    if (mounted && data != null) {
      setState(() {
        _goodThreads = _processThreadData(data);
        _syncLikedFromPosts(_goodThreads);
        _loadingGoodThreads = false;
        _hasMoreGoodThreads = data.hasPage() && data.page.hasMore == 1;
      });
    } else if (mounted) {
      setState(() => _loadingGoodThreads = false);
    }
  }

  Future<void> _loadMoreGoodThreads() async {
    if (_loadingMoreGoodThreads ||
        !_hasMoreGoodThreads ||
        !UserManager.isLogin) {
      return;
    }
    setState(() => _loadingMoreGoodThreads = true);
    final info = _forumInfo;
    final forumName = info?.forumName ?? widget.forumName;
    if (forumName == null || forumName.isEmpty) {
      setState(() => _loadingMoreGoodThreads = false);
      return;
    }
    final nextPage = _goodThreadPage + 1;
    final data = await TiebaApi.fetchFrsPage(
      bduss: UserManager.bduss!,
      stoken: UserManager.stoken!,
      forumName: forumName,
      userId: UserManager.userId ?? '',
      page: nextPage,
      loadType: 2,
      isGood: 1,
    );
    if (mounted && data != null) {
      setState(() {
        final newGood = _processThreadData(data);
        _syncLikedFromPosts(newGood);
        _goodThreads.addAll(newGood);
        _goodThreadPage = nextPage;
        _loadingMoreGoodThreads = false;
        _hasMoreGoodThreads = data.hasPage() && data.page.hasMore == 1;
      });
    } else if (mounted) {
      setState(() => _loadingMoreGoodThreads = false);
    }
  }

  // ===================== Tab Bar =====================

  /// 底部 Tab 栏
  // ignore: unused_element
  Widget _buildTabBar() {
    return SizedBox(
      height: 48,
      child: Row(
        children: [
          // "最新" Tab
          GestureDetector(
            onTap: () => _tabController.animateTo(0),
            child: _tabLabel(
              "最新",
              isActive: _currentTab == 0,
              showDropdown: _currentTab == 0,
            ),
          ),
          // "精选" Tab
          GestureDetector(
            onTap: () {
              _tabController.animateTo(1);
              // 预留精选接口回调
            },
            child: _tabLabel("精选", isActive: _currentTab == 1),
          ),
          const Spacer(),
        ],
      ),
    );
  }

  Widget _tabLabel(
    String text, {
    required bool isActive,
    bool showDropdown = false,
  }) {
    return Container(
      height: 48,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      alignment: Alignment.center,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            text,
            style: TextStyle(
              fontSize: 15,
              fontWeight: isActive ? FontWeight.w600 : FontWeight.normal,
              color: isActive ? Colors.white : Colors.white60,
            ),
          ),
          if (showDropdown) ...[
            const SizedBox(width: 2),
            Icon(
              Icons.arrow_drop_down,
              size: 18,
              color: Colors.white.withValues(alpha: 0.7),
            ),
          ],
        ],
      ),
    );
  }

  void _onSortChanged(int value) {
    if (value == _selectedSort) return;
    setState(() {
      _selectedSort = value;
      _threadPage = 1;
      _hasMoreThreads = true;
    });
    _sortListenable.value = value;
    _loadData();
  }

  Future<void> _handleLikeForum() async {
    if (_isLiking || !UserManager.isLogin) return;
    setState(() => _isLiking = true);
    try {
      final info = _forumInfo;
      final forumId = info?.forumId.toInt().toString() ?? widget.fid;
      final forumName = info?.forumName ?? widget.forumName ?? '';
      final result = await TiebaApi.likeForum(
        bduss: UserManager.bduss!,
        stoken: UserManager.stoken!,
        tbs: UserManager.tbs ?? '',
        forumId: forumId,
        forumName: forumName,
      );
      if (mounted && result != null) {
        final infoData = result['info'];
        if (infoData is Map) {
          setState(() {
            _isLike = true;
            _isLiking = false;
            _userLevel = int.tryParse('${infoData['level_id'] ?? 0}') ?? 0;
            _levelName = '${infoData['level_name'] ?? ''}';
            _curScore = int.tryParse('${infoData['cur_score'] ?? 0}') ?? 0;
            _levelupScore = int.tryParse('${infoData['levelup_score'] ?? 0}') ?? 0;
          });
        }
      } else if (mounted) {
        setState(() => _isLiking = false);
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('关注失败，请稍后重试')),
        );
      }
    } catch (e) {
      if (mounted) {
        setState(() => _isLiking = false);
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('关注失败，请稍后重试')),
        );
      }
    }
  }

  Future<void> _handleUnlikeForum() async {
    if (_isLiking || !UserManager.isLogin) return;
    setState(() => _isLiking = true);
    try {
      final info = _forumInfo;
      final forumId = info?.forumId.toInt().toString() ?? widget.fid;
      final forumName = info?.forumName ?? widget.forumName ?? '';
      final ok = await TiebaApi.unlikeForum(
        bduss: UserManager.bduss!,
        stoken: UserManager.stoken!,
        tbs: UserManager.tbs ?? '',
        forumId: forumId,
        forumName: forumName,
      );
      if (mounted) {
        if (ok) {
          setState(() {
            _isLike = false;
            _isLiking = false;
          });
        } else {
          setState(() => _isLiking = false);
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('取消关注失败，请稍后重试')),
          );
        }
      }
    } catch (e) {
      if (mounted) {
        setState(() => _isLiking = false);
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('取消关注失败，请稍后重试')),
        );
      }
    }
  }

  // ===================== Content =====================
  // ===================== Content =====================

  Widget _buildPostList() {
    if (_isLoading) {
      return const Center(child: CircularProgressIndicator());
    }
    if (_error != null && _threads.isEmpty) {
      return Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(_error!, style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 12),
            TextButton(onPressed: _loadData, child: const Text('重试')),
          ],
        ),
      );
    }
    return RefreshIndicator(
      onRefresh: _onRefreshThreads,
      displacement: 120,
      child: NotificationListener<ScrollNotification>(
        onNotification: (notification) {
          if (notification is ScrollUpdateNotification) {
            final pos = notification.metrics.pixels;
            // 回顶按钮检测
            if (!_isAnimatingToTop) {
              if (pos < _lastScrollPos && pos > 100) {
                if (!_showBackToTop) setState(() => _showBackToTop = true);
              } else if (pos > _lastScrollPos) {
                if (_showBackToTop) setState(() => _showBackToTop = false);
              }
            }
            _lastScrollPos = pos;
            // 触底加载
            if (!_loadingMoreThreads &&
                _hasMoreThreads &&
                pos >= notification.metrics.maxScrollExtent - 200) {
              _loadMoreThreads();
            }
          }
          return false;
        },
        child: CustomScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          slivers: [
            SliverOverlapInjector(handle: _overlapHandle!),
            SliverToBoxAdapter(child: SizedBox(key: _scrollTopKey0, height: 0)),
            SliverPadding(
              padding: const EdgeInsets.all(12),
              sliver: SliverList(
                delegate: SliverChildBuilderDelegate((context, index) {
                  if (index == _threads.length) {
                    return const Padding(
                      padding: EdgeInsets.symmetric(vertical: 16),
                      child: Center(
                        child: SizedBox(
                          width: 20,
                          height: 20,
                          child: CircularProgressIndicator(strokeWidth: 2),
                        ),
                      ),
                    );
                  }
                  final p = _threads[index];
                  if (p.isTop) {
                    final stickTid = p.tid;
                    return GestureDetector(
                      onTap: () => context.push('/post/$stickTid'),
                      child: Card(
                        margin: const EdgeInsets.only(bottom: 8),
                        elevation: 1,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 14,
                            vertical: 10,
                          ),
                          child: Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 6,
                                  vertical: 2,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.orange[50],
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: Text(
                                  "置顶",
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: Colors.orange[700],
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 8),
                              Expanded(
                                child: Text(
                                  p.title,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }
                  final tid = p.tid;
                  // debugPrint("【点赞帖子】tid=$tid firstPostId=${p.firstPostId}");
                  return PostCard(
                    post: p,
                    showForum: false,
                    isLiked: _likeManager.isLiked(tid),
                    onImageTap: (images, i) =>
                        ImageViewer.show(context, images, index: i),
                    onBodyTap: (_) => context.push('/post/$tid'),
                    onLikeTap: (_) {
                      if (!UserManager.isLogin) return;
                      if (!mounted) return;
                      final scaffold = ScaffoldMessenger.of(context);
                      final pIdx = _threads.indexWhere((x) => x.tid == tid);
                      if (pIdx < 0) return;
                      setState(() {
                        final (_, newAgree) = _likeManager.toggle(
                          key: tid,
                          serverLiked: _threads[pIdx].isLiked,
                          serverAgreeNum:
                              int.tryParse(_threads[pIdx].agreeNum) ?? 0,
                          request: (opType) async {
                            final score = await TiebaApi.likePost(
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
                              final i = _threads.indexWhere(
                                (x) => x.tid == tid,
                              );
                              if (i >= 0) {
                                _threads[i].agreeNum = _likeManager
                                    .agreeNum(tid)
                                    .toString();
                                _likedAgreeMap[tid] =
                                    int.tryParse(_threads[i].agreeNum) ?? 0;
                              }
                            });
                            _saveLikedSet();
                            if (isRollback) {
                              final nowLiked = _likeManager.isLiked(tid);
                              scaffold.showSnackBar(
                                SnackBar(
                                  content: Text(
                                    nowLiked ? '取消点赞失败，请稍后重试' : '点赞失败，请稍后重试',
                                  ),
                                  duration: const Duration(seconds: 2),
                                ),
                              );
                            }
                          },
                        );
                        final idx = _threads.indexWhere((x) => x.tid == tid);
                        if (idx >= 0) {
                          _threads[idx].agreeNum = newAgree.toString();
                          _threads[idx].isLiked = _likeManager.isLiked(tid);
                          _likedAgreeMap[tid] = newAgree;
                        }
                      });
                      _saveLikedSet();
                    },
                    onShareTap: (_) => SharePlus.instance.share(
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
                }, childCount: _threads.length + (_loadingMoreThreads ? 1 : 0)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildGoodThreads() {
    if (_goodThreads.isEmpty && _loadingGoodThreads) {
      return const Center(child: CircularProgressIndicator());
    }
    if (_goodThreads.isEmpty) {
      final info = _forumInfo;
      if (info != null) {
        final forumName = info.forumName;
        _loadGoodThreads(forumName);
      }
      return const Center(child: CircularProgressIndicator());
    }
    return RefreshIndicator(
      onRefresh: _onRefreshGoodThreads,
      displacement: 120,
      child: NotificationListener<ScrollNotification>(
        onNotification: (notification) {
          if (notification is ScrollUpdateNotification) {
            final pos = notification.metrics.pixels;
            if (pos < _lastScrollPos && pos > 100) {
              if (!_showBackToTop) setState(() => _showBackToTop = true);
            } else if (pos > _lastScrollPos) {
              if (_showBackToTop) setState(() => _showBackToTop = false);
            }
            _lastScrollPos = pos;
            if (!_loadingMoreGoodThreads &&
                _hasMoreGoodThreads &&
                pos >= notification.metrics.maxScrollExtent - 200) {
              _loadMoreGoodThreads();
            }
          }
          return false;
        },
        child: CustomScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          slivers: [
            SliverOverlapInjector(handle: _overlapHandle!),
            SliverToBoxAdapter(child: SizedBox(key: _scrollTopKey1, height: 0)),
            SliverPadding(
              padding: const EdgeInsets.all(12),
              sliver: SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    if (index == _goodThreads.length) {
                      return const Padding(
                        padding: EdgeInsets.symmetric(vertical: 16),
                        child: Center(
                          child: SizedBox(
                            width: 20,
                            height: 20,
                            child: CircularProgressIndicator(strokeWidth: 2),
                          ),
                        ),
                      );
                    }
                    final p = _goodThreads[index];
                    final tid = p.tid;
                    return PostCard(
                      post: p,
                      showForum: false,
                      badge: "精",
                      isLiked: _likeManager.isLiked(tid),
                      onImageTap: (images, i) =>
                          ImageViewer.show(context, images, index: i),
                      onBodyTap: (_) => context.push('/post/$tid'),
                      onLikeTap: (_) {
                        if (!UserManager.isLogin) return;
                        if (!mounted) return;
                        final scaffold = ScaffoldMessenger.of(context);
                        final pIdx = _goodThreads.indexWhere(
                          (x) => x.tid == tid,
                        );
                        if (pIdx < 0) return;
                        setState(() {
                          final (_, newAgree) = _likeManager.toggle(
                            key: tid,
                            serverLiked: _goodThreads[pIdx].isLiked,
                            serverAgreeNum:
                                int.tryParse(_goodThreads[pIdx].agreeNum) ?? 0,
                            request: (opType) async {
                              final score = await TiebaApi.likePost(
                                bduss: UserManager.bduss!,
                                stoken: UserManager.stoken!,
                                tbs: UserManager.tbs ?? '',
                                userId: UserManager.userId ?? '',
                                threadId: tid,
                                opType: opType,
                              );
                              return score != null;
                            },
                            onUpdate: (isRollback) {
                              if (!mounted) return;
                              setState(() {
                                final i = _goodThreads.indexWhere(
                                  (x) => x.tid == tid,
                                );
                                if (i >= 0) {
                                  _goodThreads[i].agreeNum = _likeManager
                                      .agreeNum(tid)
                                      .toString();
                                  _likedAgreeMap[tid] =
                                      int.tryParse(_goodThreads[i].agreeNum) ??
                                      0;
                                }
                              });
                              _saveLikedSet();
                              if (isRollback) {
                                final nowLiked = _likeManager.isLiked(tid);
                                scaffold.showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      nowLiked ? '取消点赞失败，请稍后重试' : '点赞失败，请稍后重试',
                                    ),
                                    duration: const Duration(seconds: 2),
                                  ),
                                );
                              }
                            },
                          );
                          final idx = _goodThreads.indexWhere(
                            (x) => x.tid == tid,
                          );
                          if (idx >= 0) {
                            _goodThreads[idx].agreeNum = newAgree.toString();
                            _goodThreads[idx].isLiked = _likeManager.isLiked(
                              tid,
                            );
                            _likedAgreeMap[tid] = newAgree;
                          }
                        });
                        _saveLikedSet();
                      },
                      onShareTap: (_) => SharePlus.instance.share(
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
                  },
                  childCount:
                      _goodThreads.length + (_loadingMoreGoodThreads ? 1 : 0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _loadGoodThreads(String forumName) async {
    if (_loadingGoodThreads || !UserManager.isLogin) return;
    setState(() => _loadingGoodThreads = true);
    final data = await TiebaApi.fetchFrsPage(
      bduss: UserManager.bduss!,
      stoken: UserManager.stoken!,
      forumName: forumName,
      userId: UserManager.userId ?? '',
      page: _goodThreadPage,
      loadType: 1,
      isGood: 1,
    );
    if (mounted && data != null) {
      setState(() {
        _goodThreads = _processThreadData(data);
        _loadingGoodThreads = false;
      });
    } else if (mounted) {
      setState(() => _loadingGoodThreads = false);
    }
  }
}
