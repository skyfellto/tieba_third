import 'package:flutter/material.dart';

void showInfo(BuildContext context, String msg) {
  if (!context.mounted) return;
  const textStyle = TextStyle(fontSize: 15, fontWeight: FontWeight.w400);
  final textScaler = MediaQuery.textScalerOf(context);
  // 测量文本宽度
  final textPainter = TextPainter(
    text: TextSpan(text: msg, style: textStyle),
    textDirection: TextDirection.ltr,
    textScaler: textScaler,
    maxLines: 1,
  )..layout();

  // 宽度 = 文本宽度 + 左右内边距（各 16），再加上一点额外空间
  double contentWidth = textPainter.width + 32 + 8;
  // 限制最小宽度（避免过窄）和最大宽度（避免超出屏幕）
  final screenWidth = MediaQuery.of(context).size.width;
  final finalWidth = contentWidth.clamp(100.0, screenWidth - 40);

  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      width: finalWidth,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
      behavior: SnackBarBehavior.floating,
      content: Center(child: Text(msg, style: textStyle)),
      backgroundColor: Colors.grey[500],
      duration: const Duration(seconds: 1, microseconds: 500),
    ),
  );
}
