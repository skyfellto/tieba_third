import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../constants/app_colors.dart';

class MoonlightBottomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;
  final bool floating;

  const MoonlightBottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
    this.floating = false,
  });

  // 把导航配置数据也移到这里内部管理
  static const List<Map<String, dynamic>> _navItems = [
    {
      'label': '贴吧',
      'icon_outline': Icons.forum_outlined,
      'icon_filled': Icons.forum,
    },
    {
      'label': '动态',
      'icon_outline': Icons.article_outlined,
      'icon_filled': Icons.article,
    },
    {
      'label': '我的',
      'icon_outline': Icons.person_outline,
      'icon_filled': Icons.person,
    },
  ];

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: AppColors.bottomNavGradient(context),
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: floating ? BorderRadius.circular(16) : null,
        boxShadow: [
          BoxShadow(
            color: isDark ? Colors.black54 : Colors.black12,
            blurRadius: 10,
            offset: const Offset(0, -3),
          ),
        ],
      ),
      clipBehavior: floating ? Clip.antiAlias : Clip.none,
      child: SafeArea(
        bottom: !floating,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(_navItems.length, (index) {
              final item = _navItems[index];
              final isSelected = currentIndex == index;
              return _buildNavItem(item, isSelected, index, isDark);
            }),
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem(
    Map<String, dynamic> item,
    bool isSelected,
    int index,
    bool isDark,
  ) {
    final selectedColor = isDark ? Colors.white : const Color(0xFF222436);
    final unselectedColor = isDark ? Colors.white60 : const Color(0xFF8E8E93);

    return GestureDetector(
      onTap: () => onTap(index),
      behavior: HitTestBehavior.opaque,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Icon(item['icon_filled'], color: selectedColor, size: 28)
                  .animate(target: isSelected ? 1 : 0)
                  .fadeIn(duration: const Duration(milliseconds: 300))
                  .scale(
                    begin: const Offset(0.7, 0.7),
                    end: const Offset(1.0, 1.0),
                  ),
              Icon(item['icon_outline'], color: unselectedColor, size: 28)
                  .animate(target: isSelected ? 0 : 1)
                  .fadeOut(duration: const Duration(milliseconds: 300))
                  .scale(
                    begin: const Offset(1.0, 1.0),
                    end: const Offset(0.7, 0.7),
                  ),
            ],
          ),
          const SizedBox(height: 4),
          Text(
            item['label'],
            style: TextStyle(
              color: isSelected ? selectedColor : unselectedColor,
              fontSize: 12,
              fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}
