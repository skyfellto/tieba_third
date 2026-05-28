import 'dart:ui' show lerpDouble;
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import '../generated/RecommendForumInfo.pb.dart';
import '../utils/user_manager.dart';
import '../constants/app_colors.dart';

/// 贴吧详情页统一头部 SliverPersistentHeader 代理
class ForumHeaderDelegate extends SliverPersistentHeaderDelegate {
  final double topPadding;
  final RecommendForumInfo? forumInfo;
  final String? forumName;
  final String? forumAvatar;
  final bool isLike;
  final int userLevel;
  final String levelName;
  final int curScore;
  final int levelupScore;
  final int currentTab;
  final TabController tabController;
  final VoidCallback? onTapFeatured;
  final VoidCallback? onPop;
  final VoidCallback? onSearchTap;
  final int selectedSort;
  final List<String> sortOptions;
  final ValueNotifier<int> sortListenable;
  final ValueChanged<int> onSortChanged;
  final VoidCallback? onLikeForum;
  final VoidCallback? onUnlikeForum;
  final bool isLiking;
  final bool isSignedIn;
  final int contSignNum;
  final bool isSigning;
  final VoidCallback? onSignTap;
  final VoidCallback? onAvatarTap;
  final VoidCallback? onForumNameTap;

  const ForumHeaderDelegate({
    this.topPadding = 0,
    this.forumInfo,
    this.forumName,
    this.forumAvatar,
    this.isLike = false,
    this.userLevel = 0,
    this.levelName = '',
    this.curScore = 0,
    this.levelupScore = 0,
    required this.currentTab,
    required this.tabController,
    this.onTapFeatured,
    this.onPop,
    this.onSearchTap,
    required this.selectedSort,
    required this.sortOptions,
    required this.sortListenable,
    required this.onSortChanged,
    this.onLikeForum,
    this.onUnlikeForum,
    this.isLiking = false,
    this.isSignedIn = false,
    this.contSignNum = 0,
    this.isSigning = false,
    this.onSignTap,
    this.onAvatarTap,
    this.onForumNameTap,
  });

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    final pad = MediaQuery.of(context).padding;
    final totalExpand = maxExtent - minExtent;
    final progress = totalExpand > 0
        ? (shrinkOffset / totalExpand).clamp(0.0, 1.0)
        : 1.0;

    final name = forumInfo?.forumName ?? forumName ?? "贴吧";
    final avatarUrl =
        (forumInfo?.avatar.isNotEmpty == true
            ? forumInfo!.avatar
            : forumAvatar) ??
        '';
    final fgColor = Theme.of(context).brightness == Brightness.dark
        ? Colors.white
        : Colors.black87;

    final unitLeft = lerpDouble(16.0, 56.0, progress)!;
    final unitTop = lerpDouble(
      pad.top + kToolbarHeight + 4,
      pad.top + (kToolbarHeight - 28) / 2,
      progress,
    )!;
    final avatarRadius = lerpDouble(28, 14, progress)!;
    final nameFontSize = lerpDouble(20, 15, progress)!;
    final nameGap = lerpDouble(14, 8, progress)!;
    final levelFade = (1 - progress / 0.35).clamp(0.0, 1.0);
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: AppColors.headerGradient(context),
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: pad.left,
          right: pad.right,
          height: 48,
          child: _buildTabBar(context, fgColor),
        ),
        Positioned(
          left: unitLeft,
          top: unitTop,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: onAvatarTap,
                child: CircleAvatar(
                  radius: avatarRadius,
                  backgroundColor: Colors.white24,
                  backgroundImage: avatarUrl.isNotEmpty
                      ? NetworkImage(
                          avatarUrl,
                          headers: UserManager.avatarHeaders,
                        )
                      : null,
                  // ignore: unnecessary_underscores
                  onBackgroundImageError: (_, __) {},
                ),
              ),
              SizedBox(width: nameGap),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  GestureDetector(
                    onTap: onForumNameTap,
                    child: Text(
                      name,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: nameFontSize,
                        fontWeight: FontWeight.bold,
                        color: fgColor,
                      ),
                    ),
                  ),
                  if (levelFade > 0)
                    Opacity(
                      opacity: levelFade,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 4),
                        child: _buildLevelInfo(context, fgColor),
                      ),
                    ),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          top: pad.top,
          right: pad.right,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (isLike) _buildSignButton(context),
              IconButton(
                icon: Icon(Icons.search, color: fgColor, size: 22),
                onPressed: onSearchTap,
                splashRadius: 20,
              ),
              _buildMoreDropdown(context, fgColor),
            ],
          ),
        ),
        Positioned(
          top: pad.top,
          left: pad.left,
          child: IconButton(
            icon: Icon(Icons.arrow_back, color: fgColor),
            onPressed: onPop,
            splashRadius: 20,
          ),
        ),
      ],
    );
  }

  @override
  double get maxExtent => topPadding + kToolbarHeight + 100 + 48;

  @override
  double get minExtent => topPadding + kToolbarHeight + 48;

  @override
  bool shouldRebuild(ForumHeaderDelegate oldDelegate) =>
      topPadding != oldDelegate.topPadding ||
      forumInfo != oldDelegate.forumInfo ||
      forumName != oldDelegate.forumName ||
      forumAvatar != oldDelegate.forumAvatar ||
      isLike != oldDelegate.isLike ||
      userLevel != oldDelegate.userLevel ||
      levelName != oldDelegate.levelName ||
      curScore != oldDelegate.curScore ||
      levelupScore != oldDelegate.levelupScore ||
      currentTab != oldDelegate.currentTab ||
      selectedSort != oldDelegate.selectedSort ||
      isLiking != oldDelegate.isLiking ||
      isSignedIn != oldDelegate.isSignedIn ||
      contSignNum != oldDelegate.contSignNum ||
      isSigning != oldDelegate.isSigning;

  Widget _buildSignButton(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    if (isSignedIn) {
      return Container(
        margin: const EdgeInsets.only(right: 4),
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
        decoration: BoxDecoration(
          color: isDark ? Color(0xFF4A5568) : Color(0xFFEBF8FF),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          '已连续签到$contSignNum天',
          style: TextStyle(
            fontSize: 11,
            color: isDark ? Colors.grey[200] : Colors.grey[600],
            fontWeight: FontWeight.w500,
          ),
        ),
      );
    }
    return Padding(
      padding: const EdgeInsets.only(right: 4),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(12),
          onTap: isSigning ? null : onSignTap,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              isSigning ? '签到中' : '签到',
              style: const TextStyle(
                fontSize: 12,
                color: Color(0xFF222436),
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTabBar(BuildContext context, Color fgColor) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final isActive = currentTab == 0;

    return SizedBox(
      height: 48,
      child: Material(
        color: Colors.transparent,
        child: Row(
          children: [
            // "最早" 排序下拉框
            Expanded(
              child: DropdownButtonHideUnderline(
                child: DropdownButton2<int>(
                  valueListenable: sortListenable,
                  isDense: true,
                  dropdownStyleData: DropdownStyleData(
                    decoration: BoxDecoration(
                      color: isDark ? Colors.grey[800] : Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    offset: const Offset(-16, 4),
                    useRootNavigator: true,
                    width: 140,
                  ),
                  buttonStyleData: const ButtonStyleData(
                    height: 36,
                    width: null,
                    padding: EdgeInsets.zero,
                  ),
                  customButton: Padding(
                    padding: EdgeInsets.zero,
                    child: Container(
                      height: 48,
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "最早",
                            style: TextStyle(
                              fontSize: isActive ? 17 : 15,
                              fontWeight: isActive
                                  ? FontWeight.w600
                                  : FontWeight.normal,
                              color: isActive
                                  ? fgColor
                                  : fgColor.withValues(alpha: 0.6),
                            ),
                          ),
                          const SizedBox(width: 2),
                          Icon(
                            Icons.arrow_drop_down,
                            size: 18,
                            color: fgColor.withValues(alpha: 0.7),
                          ),
                        ],
                      ),
                    ),
                  ),
                  items: List.generate(sortOptions.length, (i) {
                    return DropdownItem<int>(
                      value: i,
                      child: Text(
                        sortOptions[i],
                        style: TextStyle(
                          fontSize: 14,
                          color: isDark ? Colors.white : Colors.black87,
                        ),
                      ),
                    );
                  }),
                  onChanged: (v) {
                    if (v == null || v == selectedSort) return;
                    onSortChanged(v);
                  },
                ),
              ),
            ),
            // "精选" tab
            Expanded(
              child: InkWell(
                onTap: onTapFeatured,
                child: Center(
                  child: _tabLabel("精选", fgColor, isActive: currentTab == 1),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMoreDropdown(BuildContext context, Color fgColor) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return DropdownButtonHideUnderline(
      child: DropdownButton2<String>(
        isDense: true,
        dropdownStyleData: DropdownStyleData(
          decoration: BoxDecoration(
            color: isDark ? Colors.grey[800] : Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          offset: const Offset(-16, 4),
          useRootNavigator: true,
          width: 90,
        ),
        buttonStyleData: const ButtonStyleData(
          height: 36,
          width: null,
          padding: EdgeInsets.zero,
        ),
        customButton: IconButton(
          icon: Icon(Icons.more_vert, color: fgColor, size: 22),
          onPressed: null, // DropdownButton2 handles this
          splashRadius: 20,
        ),
        items: [
          if (isLike)
            DropdownItem<String>(
              value: 'unfollow',
              child: Text(
                '取消关注',
                style: TextStyle(
                  fontSize: 14,
                  color: isDark ? Colors.white : Colors.black87,
                ),
              ),
            ),
          const DropdownItem<String>(
            value: 'share',
            child: Text('分享', style: TextStyle(fontSize: 14)),
          ),
          const DropdownItem<String>(
            value: 'report',
            child: Text('举报', style: TextStyle(fontSize: 14)),
          ),
        ],
        onChanged: (v) {
          if (v == null) return;
          if (v == 'unfollow') {
            onUnlikeForum?.call();
          } else if (v == 'share') {
            // 预留分享
          } else if (v == 'report') {
            // 预留举报
          }
        },
      ),
    );
  }

  Widget _tabLabel(String text, Color fgColor, {required bool isActive}) {
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
              fontSize: isActive ? 17 : 15,
              fontWeight: isActive ? FontWeight.w600 : FontWeight.normal,
              color: isActive ? fgColor : fgColor.withValues(alpha: 0.6),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLevelInfo(BuildContext context, Color fgColor) {
    final expProgress = (isLike && levelupScore > 0 && curScore > 0)
        ? (curScore / levelupScore).clamp(0.0, 1.0)
        : null;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (isLike) ...[
          Row(
            children: [
              Text(
                "Lv$userLevel",
                style: TextStyle(
                  color: fgColor,
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(width: 8),
              if (levelName.isNotEmpty)
                Text(
                  levelName,
                  style: TextStyle(
                    color: fgColor.withValues(alpha: 0.7),
                    fontSize: 12,
                  ),
                ),
            ],
          ),
          if (expProgress != null) ...[
            const SizedBox(height: 4),
            SizedBox(
              width: 140,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(3),
                child: LinearProgressIndicator(
                  value: expProgress,
                  backgroundColor: Colors.white.withValues(alpha: 0.2),
                  valueColor: const AlwaysStoppedAnimation<Color>(Colors.white),
                  minHeight: 4,
                ),
              ),
            ),
            const SizedBox(height: 1),
            Text(
              '$curScore / $levelupScore',
              style: TextStyle(
                color: Colors.white.withValues(alpha: 0.4),
                fontSize: 10,
              ),
            ),
          ],
        ] else ...[
          Material(
            color: Colors.transparent,
            child: InkWell(
              borderRadius: BorderRadius.circular(16),
              onTap: isLiking ? null : onLikeForum,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Text(
                  isLiking ? "关注中..." : "+ 关注",
                  style: TextStyle(
                    color: Color(0xFF222436),
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
        ],
      ],
    );
  }
}
