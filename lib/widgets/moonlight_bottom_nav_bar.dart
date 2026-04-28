import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../constants/app_colors.dart';

class MoonlightBottomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const MoonlightBottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
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
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: AppColors.moonlightGradient,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black54,
            blurRadius: 10,
            offset: Offset(0, -3),
          ),
        ],
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(_navItems.length, (index) {
              final item = _navItems[index];
              final isSelected = currentIndex == index;
              return _buildNavItem(item, isSelected, index);
            }),
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem(Map<String, dynamic> item, bool isSelected, int index) {
    return GestureDetector(
      onTap: () => onTap(index),
      behavior: HitTestBehavior.opaque,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              // 实心图标 (选中时显示)
              Icon(item['icon_filled'], color: AppColors.selectedItem, size: 28)
                  .animate(target: isSelected ? 1 : 0)
                  .fadeIn(duration: const Duration(milliseconds: 300))
                  .scale(
                    begin: const Offset(0.7, 0.7),
                    end: const Offset(1.0, 1.0),
                  ),

              // 空心图标 (未选中时显示)
              Icon(
                    item['icon_outline'],
                    color: AppColors.unselectedItem,
                    size: 28,
                  )
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
              color: isSelected
                  ? AppColors.selectedItem
                  : AppColors.unselectedItem,
              fontSize: 12,
              fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}
