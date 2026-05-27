import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'personalization_manager.dart';

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

Future<void> showLikeCooldownMessage(BuildContext context) async {
  final sp = await SharedPreferences.getInstance();
  final last = sp.getInt('last_like_time');
  final cooldownMs = PersonalizationManager.likeCooldownMinutes * 60 * 1000;
  final remaining = last != null
      ? ((cooldownMs - (DateTime.now().millisecondsSinceEpoch - last)) / 60000).ceil().clamp(0, PersonalizationManager.likeCooldownMinutes)
      : PersonalizationManager.likeCooldownMinutes;
  if (!context.mounted) return;
  // ignore: use_build_context_synchronously
  showInfo(context, '由于点赞风控，请勿点赞太频繁，$remaining分钟后再试吧');
}
