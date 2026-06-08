import 'package:flutter/material.dart';

/// 楼主标识
class LouZhuBadge extends StatelessWidget {
  final double fontSize;

  const LouZhuBadge({super.key, this.fontSize = 11});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 0),
      decoration: BoxDecoration(
        color: Colors.red[50],
        borderRadius: BorderRadius.circular(3),
      ),
      child: Text(
        '楼主',
        style: TextStyle(
          fontSize: fontSize,
          color: Colors.red,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}

/// 吧务标识
class BawuBadge extends StatelessWidget {
  final String bawuType;
  final double fontSize;

  const BawuBadge({super.key, required this.bawuType, this.fontSize = 11});

  @override
  Widget build(BuildContext context) {
    final isManager = bawuType == 'manager';
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 0),
      decoration: BoxDecoration(
        color: Colors.purple[50],
        borderRadius: BorderRadius.circular(3),
      ),
      child: Text(
        isManager ? '吧主' : '小吧主',
        style: TextStyle(
          fontSize: fontSize,
          color: Colors.purple,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}