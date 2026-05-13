import 'dart:ui' show lerpDouble;
import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import '../models/user_profile_data.dart';
import '../utils/user_manager.dart';

class UserDetailHeaderDelegate extends SliverPersistentHeaderDelegate {
  final double topPadding;
  final TabBar tabBar;
  final VoidCallback? onPop;
  final UserProfileData? profile;

  const UserDetailHeaderDelegate({
    required this.topPadding,
    required this.tabBar,
    this.onPop,
    this.profile,
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

    final isLogin = UserManager.isLogin;
    final portrait = profile?.portrait ?? UserManager.portrait;
    final mainName = profile?.nameShow.isNotEmpty == true
        ? profile!.nameShow
        : (UserManager.userName ?? "百度用户");
    final rawName = profile?.name.isNotEmpty == true ? profile!.name : null;
    final userId = profile?.uid.isNotEmpty == true
        ? profile!.uid
        : (UserManager.userId ?? "未知");

    // 所有动画参数完全不变
    final unitLeft = lerpDouble(16.0, 56.0, progress)!;
    final unitRight = unitLeft;
    final avatarRadius = lerpDouble(52, 24, progress)!;
    const collapsedAvatarRadius = 24.0;
    final unitTop = lerpDouble(
      pad.top + kToolbarHeight + 16,
      pad.top + (kToolbarHeight - collapsedAvatarRadius * 2) / 2,
      progress,
    )!;
    final nameFontSize = lerpDouble(28, 15, progress)!;
    final factor = (1 - progress / 0.35).clamp(0.0, 1.0);
    final infoOpacity = factor;
    final heightFactor = factor;

    final secondaryName = rawName ?? "用户$userId";
    final p = profile;
    final tbAgeLabel = p != null && p.tbAge.isNotEmpty ? "${p.tbAge}年" : "0";

    // 修复1：统计行恢复均匀分布，占满右侧列宽度
    Widget statsRow = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _statItem(_fmt(profile?.concernNum), "关注"),
        _divider(),
        _statItem(_fmt(profile?.fansNum), "粉丝"),
        _divider(),
        _statItem(_fmt(profile?.totalAgreeNum), "获赞"),
        _divider(),
        _statItem(tbAgeLabel, "吧龄"),
      ],
    );

    // 修复2：右侧列完全恢复原来的结构和对齐
    Widget rightColumn = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          mainName,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontSize: nameFontSize, fontWeight: FontWeight.bold),
        ),
        ClipRect(
          child: Align(
            alignment: Alignment.topCenter,
            heightFactor: heightFactor,
            child: Opacity(
              opacity: infoOpacity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(height: 2),
                  Text(secondaryName, style: const TextStyle(fontSize: 16)),
                  const SizedBox(height: 6),
                  statsRow,
                ],
              ),
            ),
          ),
        ),
      ],
    );

    // 顶部水平行完全不变
    Widget topRow = Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: avatarRadius,
          backgroundColor: Colors.white24,
          backgroundImage: isLogin && portrait != null && portrait.isNotEmpty
              ? NetworkImage(
                  'http://tb.himg.baidu.com/sys/portrait/item/$portrait',
                  headers: UserManager.avatarHeaders,
                )
              : null,
        ),
        const SizedBox(width: 14),
        Expanded(child: rightColumn),
      ],
    );

    // 签名和标签保持独立，位置正确
    Widget signatureWidget = Padding(
      padding: const EdgeInsets.only(top: 18),
      child: Text(
        profile?.intro?.isNotEmpty == true ? profile!.intro! : "这个人很懒，什么都没有写",
        style: const TextStyle(fontSize: 16),
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
    );

    Widget tagsWidget = Padding(
      padding: const EdgeInsets.only(top: 12),
      child: Row(
        children: [
          if (profile != null) _tagChip(profile!.sexLabel, context: context),
          if (profile != null) const SizedBox(width: 6),
          _tagChip("ID: $userId", context: context),
          if (profile?.ipAddress != null && profile!.ipAddress!.isNotEmpty) ...[
            const SizedBox(width: 6),
            _tagChip(profile!.ipAddress!, context: context),
          ],
        ],
      ),
    );

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
        Positioned(bottom: 0, left: 0, right: 0, child: tabBar),
        // 外层垂直布局，签名和标签与顶部行平级
        Positioned(
          left: unitLeft,
          right: unitRight,
          top: unitTop,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              topRow,
              // 签名和标签应用相同的动画
              ClipRect(
                child: Align(
                  alignment: Alignment.topCenter,
                  heightFactor: heightFactor,
                  child: Opacity(
                    opacity: infoOpacity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [signatureWidget, tagsWidget],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        // 返回/更多按钮完全不变
        Positioned(
          top: pad.top,
          left: pad.left,
          child: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: onPop,
            splashRadius: 20,
          ),
        ),
        Positioned(
          top: pad.top,
          right: pad.right,
          child: IconButton(
            icon: const Icon(Icons.more_horiz),
            onPressed: () {},
            splashRadius: 20,
          ),
        ),
      ],
    );
  }

  // 所有辅助方法完全不变
  String _fmt(int? v) {
    if (v == null) return "0";
    if (v >= 10000) return "${(v / 10000).toStringAsFixed(1)}万";
    return "$v";
  }

  Widget _statItem(String number, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          number,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 2),
        Text(label, style: const TextStyle(fontSize: 12)),
      ],
    );
  }

  Widget _divider() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Container(width: 1, height: 16, color: Colors.white24),
    );
  }

  Widget _tagChip(String text, {required BuildContext context}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
      decoration: BoxDecoration(
        color: Theme.of(context).brightness == Brightness.dark
            ? Colors.white.withValues(alpha: 0.2)
            : const Color.fromARGB(255, 143, 183, 216),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(text, style: const TextStyle(fontSize: 15)),
    );
  }

  @override
  double get maxExtent => topPadding + kToolbarHeight + 320;

  @override
  double get minExtent => topPadding + kToolbarHeight + 48;

  @override
  bool shouldRebuild(UserDetailHeaderDelegate oldDelegate) =>
      topPadding != oldDelegate.topPadding || profile != oldDelegate.profile;
}
