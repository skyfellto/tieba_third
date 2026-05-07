import 'package:flutter/material.dart';

class AppColors {
  // 底部导航栏背景渐变
  static const List<Color> moonlightGradient = [
    // Color(0xFF1A0A2E),
    // Color(0xFF2D1B4E),
    // Color(0xFF1E3A5F),
    Color(0xFF222436), // 你的主色
    Color(0xFF3A3E5C),
  ];

  // 图标和文字颜色
  static const Color selectedItem = Colors.white;
  static const Color unselectedItem = Colors.white60;

  static const Color levelGreen = Color(0xFF4CCAA4); // 0-3级
  static const Color levelBlue = Color(0xFF5A9CFF); // 4-8级
  static const Color levelYellow = Color(0xFFFFB722); // 9-15级
  static const Color levelOrange = Color(0xFFFF810D); // 15级及以上

  static const Color levelNumber = Color(0xFFF8F9FA);
}
