import 'dart:ui' show lerpDouble;
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
  final VoidCallback? onTapEarliest;
  final VoidCallback? onTapFeatured;
  final VoidCallback? onPop;
  final GlobalKey? earliestTabKey;

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
    this.onTapEarliest,
    this.onTapFeatured,
    this.earliestTabKey,
    this.onPop,
  });

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    final pad = MediaQuery.of(context).padding;
    final totalExpand = maxExtent - minExtent;
    final progress = totalExpand > 0 ? (shrinkOffset / totalExpand).clamp(0.0, 1.0) : 1.0;

    final name = forumInfo?.forumName ?? forumName ?? "贴吧";
    final avatarUrl = (forumInfo?.avatar.isNotEmpty == true ? forumInfo!.avatar : forumAvatar) ?? '';

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
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: AppColors.moonlightGradient,
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
        Positioned(
          bottom: 0, left: pad.left, right: pad.right, height: 48,
          child: _buildTabBar(context),
        ),
        Positioned(
          left: unitLeft, top: unitTop,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: avatarRadius,
                backgroundColor: Colors.white24,
                backgroundImage: avatarUrl.isNotEmpty
                    ? NetworkImage(avatarUrl, headers: UserManager.avatarHeaders)
                    : null,
                onBackgroundImageError: (_, __) {},
              ),
              SizedBox(width: nameGap),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(name, overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: nameFontSize, fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  if (levelFade > 0)
                    Opacity(
                      opacity: levelFade,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 4),
                        child: _buildLevelInfo(context),
                      ),
                    ),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          top: pad.top, right: pad.right,
          child: Row(mainAxisSize: MainAxisSize.min, children: [
            IconButton(icon: const Icon(Icons.search, color: Colors.white, size: 22), onPressed: () {}, splashRadius: 20),
            PopupMenuButton<String>(
              icon: const Icon(Icons.more_vert, color: Colors.white, size: 22), onSelected: (v) {},
              itemBuilder: (_) => const [
                PopupMenuItem(value: 'share', child: Text('分享')),
                PopupMenuItem(value: 'report', child: Text('举报')),
              ],
            ),
          ]),
        ),
        Positioned(
          top: pad.top, left: pad.left,
          child: IconButton(icon: const Icon(Icons.arrow_back, color: Colors.white), onPressed: onPop, splashRadius: 20),
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
      currentTab != oldDelegate.currentTab;

  Widget _buildTabBar(BuildContext context) {
    return SizedBox(
      height: 48,
      child: Material(
        color: Colors.transparent,
        child: Row(
          children: [
            Expanded(
              child: InkWell(
                key: earliestTabKey, onTap: onTapEarliest,
                child: Center(
                  child: _tabLabel("最早", isActive: currentTab == 0, showDropdown: currentTab == 0),
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: onTapFeatured,
                child: Center(child: _tabLabel("精选", isActive: currentTab == 1)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _tabLabel(String text, {required bool isActive, bool showDropdown = false}) {
    return Container(
      height: 48,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      alignment: Alignment.center,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(text,
            style: TextStyle(
              fontSize: 15,
              fontWeight: isActive ? FontWeight.w600 : FontWeight.normal,
              color: isActive ? Colors.white : Colors.white60,
            ),
          ),
          if (showDropdown) ...[
            const SizedBox(width: 2),
            Icon(Icons.arrow_drop_down, size: 18, color: Colors.white.withValues(alpha: 0.7)),
          ],
        ],
      ),
    );
  }

  Widget _buildLevelInfo(BuildContext context) {
    final expProgress = (isLike && levelupScore > 0 && curScore > 0)
        ? (curScore / levelupScore).clamp(0.0, 1.0)
        : null;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (isLike) ...[
          Row(children: [
            Text("Lv$userLevel", style: const TextStyle(color: Colors.white, fontSize: 13, fontWeight: FontWeight.w600)),
            const SizedBox(width: 8),
            if (levelName.isNotEmpty)
              Text(levelName, style: TextStyle(color: Colors.white.withValues(alpha: 0.7), fontSize: 12)),
          ]),
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
            Text('$curScore / $levelupScore',
              style: TextStyle(color: Colors.white.withValues(alpha: 0.4), fontSize: 10)),
          ],
        ] else ...[
          Material(
            color: Colors.transparent,
            child: InkWell(
              borderRadius: BorderRadius.circular(16),
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(16)),
                child: const Text("+ 关注", style: TextStyle(color: Color(0xFF222436), fontSize: 14, fontWeight: FontWeight.w600)),
              ),
            ),
          ),
        ],
      ],
    );
  }
}
