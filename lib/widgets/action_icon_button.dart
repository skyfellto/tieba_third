import 'package:flutter/material.dart';

/// 帖子操作按钮（点赞/回复/分享），保持原样样式。
Widget postActionIcon(IconData icon, String label, Color? color) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 18, color: color ?? Colors.grey[400]),
        const SizedBox(width: 4),
        Text(
          label,
          style: TextStyle(color: color ?? Colors.grey[400], fontSize: 12),
        ),
      ],
    ),
  );
}