import 'package:flutter/material.dart';

// 提示用户请勿点赞太频繁
void showAgreeNotInTime(BuildContext context) {
  if (!context.mounted) return;
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
      behavior: SnackBarBehavior.floating,
      content: const Center(
        child: Text(
          '由于点赞风控，请勿点赞太频繁，10分钟后再试吧',
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
        ),
      ),
      backgroundColor: Colors.grey[500],
      duration: const Duration(seconds: 1, microseconds: 500),
    ),
  );
}
