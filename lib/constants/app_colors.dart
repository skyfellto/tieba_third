import 'package:flutter/material.dart';

class AppColors {
  // 底部导航栏背景渐变（随主题变化）
  static const List<Color> moonlightGradient = [
    Color(0xFF222436),
    Color(0xFF3A3E5C),
  ];
  static const List<Color> lightBottomNavGradient = [
    Color(0xFFF0F2F5),
    Color(0xFFE8EAF0),
  ];

  static List<Color> bottomNavGradient(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark
        ? moonlightGradient
        : lightBottomNavGradient;
  }

  // 顶部标题区渐变（随主题变化）
  static List<Color> headerGradient(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return isDark
        ? moonlightGradient
        : [const Color(0xFFE8F0FE), const Color(0xFFD4E4FC)];
  }

  // 图标和文字颜色
  static const Color selectedItem = Colors.white;
  static const Color unselectedItem = Colors.white60;

  static const Color levelGreen = Color(0xFF4CCAA4); // 0-3级
  static const Color levelBlue = Color(0xFF5A9CFF); // 4-8级
  static const Color levelYellow = Color(0xFFFFB722); // 9-15级
  static const Color levelOrange = Color(0xFFFF810D); // 15级及以上

  static const Color levelNumber = Color(0xFFF8F9FA);
}
