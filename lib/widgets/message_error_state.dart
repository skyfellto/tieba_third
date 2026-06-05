import 'package:flutter/material.dart';

/// 消息列表的统一错误状态：小稽图片 + "网络不给力，小稽直叹气" + "戳这里重试"
class MessageErrorState extends StatelessWidget {
  final VoidCallback onRetry;

  const MessageErrorState({super.key, required this.onRetry});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'emoticon/image_emoticon1.webp',
              width: 80,
              height: 80,
              errorBuilder: (_, _, _) => const Icon(
                Icons.sentiment_dissatisfied,
                size: 64,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 12),
            const Text(
              '网络不给力，小稽直叹气',
              style: TextStyle(color: Colors.grey, fontSize: 14),
            ),
            const SizedBox(height: 4),
            GestureDetector(
              onTap: onRetry,
              child: const Text(
                '戳这里重试',
                style: TextStyle(
                  color: Color(0xFF9FB5DD),
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}