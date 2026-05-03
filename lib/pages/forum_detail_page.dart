import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:go_router/go_router.dart';
import '../generated/RecommendForumInfo.pb.dart';
import '../generated/GetForumDetail/GetForumDetailResponseData.pb.dart';
import '../generated/FrsPage/FrsPage.pb.dart';
import '../network/tieba_api.dart';
import '../utils/user_manager.dart';
import '../constants/app_colors.dart';

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

  late TabController _tabController;
  int _currentTab = 0;

  // 排序菜单
  final _sortOptions = ["按发帖时间排序", "按回复时间排序"];
  int _selectedSort = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(_onTabChanged);
    _loadData();
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
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              pinned: true,
              expandedHeight: 152,
              backgroundColor: Colors.transparent,
              elevation: 0,
              leading: IconButton(
                icon: const Icon(Icons.arrow_back, color: Colors.white),
                onPressed: () => context.pop(),
              ),
              flexibleSpace: _buildFlexibleSpace(),
              title: _buildGlassmorphism(child: _buildCollapsedTitle()),
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(48),
                child: _buildGlassmorphism(child: _buildTabBar()),
              ),
            ),
          ];
        },
        body: TabBarView(
          controller: _tabController,
          children: [_buildPostList(), _buildEssencePlaceholder()],
        ),
      ),
    );
  }

  // ===================== Data loading =====================

  Future<void> _loadData() async {
    if (!UserManager.isLogin) {
      if (mounted)
        setState(() {
          _isLoading = false;
          _error = "未登录";
        });
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

    // 请求 FrsPage 获取等级/关注信息
    FrsPageResponseData? frsData;
    if (forumName != null && forumName.isNotEmpty) {
      frsData = await TiebaApi.fetchFrsPage(
        bduss: UserManager.bduss!,
        stoken: UserManager.stoken!,
        forumName: forumName,
        userId: UserManager.userId ?? '',
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
        // 从 FrsPage 获取等级/关注信息
        if (frsData != null && frsData.hasForum()) {
          final fi = frsData.forum;
          _isLike = fi.isLike == 1;
          _userLevel = fi.userLevel;
          _levelName = fi.levelName;
          _curScore = fi.curScore;
          _levelupScore = fi.levelupScore;
        }
        if (_forumInfo == null && frsData == null) {
          _error = "加载失败";
        }
      });
    }
  }

  // ===================== Header =====================

  /// 磨砂玻璃效果
  Widget _buildGlassmorphism({required Widget child}) {
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          color: Colors.black.withValues(alpha: 0.25),
          child: child,
        ),
      ),
    );
  }

  /// 可变形悬挂栏 flexibleSpace
  Widget _buildFlexibleSpace() {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: AppColors.moonlightGradient,
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
        Positioned.fill(child: _buildExpandedContent()),
      ],
    );
  }

  /// 展开状态内容（位于 toolbar 下方、tab 上方）
  Widget _buildExpandedContent() {
    final info = _forumInfo;
    final name = info?.forumName ?? widget.forumName ?? "贴吧";
    final avatar = info?.avatar.isNotEmpty == true
        ? info!.avatar
        : widget.forumAvatar;

    // 计算经验进度
    double? progress;
    if (_isLike && _levelupScore > _curScore) {
      progress = _curScore / _levelupScore;
    }

    return Padding(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top + kToolbarHeight,
        left: 16,
        right: 16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // ======== 头像 + 名称 + 右侧信息 ========
          SizedBox(
            height: 48,
            child: Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.white24,
                  backgroundImage: avatar != null && avatar.isNotEmpty
                      ? NetworkImage(avatar, headers: UserManager.avatarHeaders)
                      : null,
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    name,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                if (_isLike) ...[
                  // 已关注：等级 + 名称
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "Lv$_userLevel",
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      if (_levelName.isNotEmpty)
                        Text(
                          _levelName,
                          style: TextStyle(
                            color: Colors.white.withValues(alpha: 0.7),
                            fontSize: 11,
                          ),
                        ),
                    ],
                  ),
                  if (progress != null) ...[
                    const SizedBox(width: 8),
                    SizedBox(
                      width: 60,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(3),
                        child: LinearProgressIndicator(
                          value: progress,
                          backgroundColor: Colors.white.withValues(alpha: 0.2),
                          valueColor: const AlwaysStoppedAnimation<Color>(
                            Colors.white,
                          ),
                          minHeight: 4,
                        ),
                      ),
                    ),
                  ],
                ] else ...[
                  // 未关注：关注按钮（预留接口）
                  GestureDetector(
                    onTap: () {
                      // TODO: 关注接口
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: const Text(
                        "+ 关注",
                        style: TextStyle(
                          color: Color(0xFF222436),
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// 折叠状态标题
  Widget _buildCollapsedTitle() {
    final info = _forumInfo;
    final name = info?.forumName ?? widget.forumName ?? "贴吧";
    final avatar = info?.avatar.isNotEmpty == true
        ? info!.avatar
        : widget.forumAvatar;

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircleAvatar(
          radius: 14,
          backgroundColor: Colors.white24,
          backgroundImage: avatar != null && avatar.isNotEmpty
              ? NetworkImage(avatar, headers: UserManager.avatarHeaders)
              : null,
        ),
        const SizedBox(width: 8),
        Text(
          name,
          style: const TextStyle(
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }

  // ===================== Tab Bar =====================

  /// 底部 Tab 栏
  Widget _buildTabBar() {
    return SizedBox(
      height: 48,
      child: Row(
        children: [
          // "最新" Tab
          GestureDetector(
            onTap: _onTapLatest,
            child: _tabLabel(
              "最新",
              isActive: _currentTab == 0,
              showDropdown: _currentTab == 0,
            ),
          ),
          // "精华" Tab
          GestureDetector(
            onTap: () {
              _tabController.animateTo(1);
              // 预留精华接口回调
            },
            child: _tabLabel("精华", isActive: _currentTab == 1),
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

  void _onTapLatest() {
    if (_currentTab == 1) {
      // 在精华页点击最新 -> 切换到最新
      _tabController.animateTo(0);
    } else {
      // 已在最新页 -> 显示排序菜单
      _showSortMenu();
    }
  }

  void _showSortMenu() {
    final RenderBox? button = context.findRenderObject() as RenderBox?;
    if (button == null) return;
    final overlay =
        Overlay.of(context).context.findRenderObject() as RenderBox?;
    if (overlay == null) return;
    showMenu<int>(
      context: context,
      initialValue: _selectedSort,
      position: RelativeRect.fromRect(
        Rect.fromPoints(
          button.localToGlobal(const Offset(16, 0), ancestor: overlay),
          button.localToGlobal(const Offset(140, 48), ancestor: overlay),
        ),
        Offset.zero & overlay.size,
      ),
      items: [
        for (int i = 0; i < _sortOptions.length; i++)
          PopupMenuItem(
            value: i,
            child: Row(
              children: [
                if (_selectedSort == i)
                  const Icon(Icons.check, size: 18, color: Colors.blue),
                if (_selectedSort == i) const SizedBox(width: 8),
                Text(_sortOptions[i]),
              ],
            ),
          ),
      ],
    ).then((value) {
      if (value != null) {
        setState(() => _selectedSort = value);
        // 预留排序接口回调
      }
    });
  }

  // ===================== Content =====================

  Widget _buildPostList() {
    if (_isLoading) {
      return const Center(child: CircularProgressIndicator());
    }
    if (_error != null) {
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
    return ListView.builder(
      padding: const EdgeInsets.all(12),
      itemCount: 20,
      itemBuilder: (context, index) => _buildPlaceholderPost(),
    );
  }

  Widget _buildPlaceholderPost() {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(radius: 14, backgroundColor: Colors.grey[300]),
                const SizedBox(width: 8),
                Text(
                  "用户昵称",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    color: Colors.grey[600],
                  ),
                ),
                const Spacer(),
                Text(
                  "刚刚",
                  style: TextStyle(color: Colors.grey[400], fontSize: 12),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Text(
                  "帖子内容占位 - 待接入帖子列表接口",
                  style: TextStyle(color: Colors.grey[400], fontSize: 13),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Icon(
                  Icons.thumb_up_outlined,
                  size: 18,
                  color: Colors.grey[400],
                ),
                const SizedBox(width: 24),
                Icon(
                  Icons.chat_bubble_outline,
                  size: 18,
                  color: Colors.grey[400],
                ),
                const SizedBox(width: 24),
                Icon(Icons.share_outlined, size: 18, color: Colors.grey[400]),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildEssencePlaceholder() {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.star_border, size: 48, color: Colors.grey[300]),
          const SizedBox(height: 12),
          Text(
            "精华功能待接入",
            style: TextStyle(color: Colors.grey[400], fontSize: 15),
          ),
        ],
      ),
    );
  }
}
