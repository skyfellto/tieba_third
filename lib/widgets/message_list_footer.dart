import 'package:flutter/material.dart';

/// 消息列表的底部指示器：加载中显示 spinner，无更多数据显示"没有更多了"
class MessageListFooter extends StatelessWidget {
  final bool isLoading;

  const MessageListFooter({super.key, required this.isLoading});

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return const Padding(
        padding: EdgeInsets.symmetric(vertical: 16),
        child: Center(
          child: SizedBox(
            width: 20,
            height: 20,
            child: CircularProgressIndicator(strokeWidth: 2),
          ),
        ),
      );
    }
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 12),
      child: Center(
        child: Text(
          '没有更多了',
          style: TextStyle(color: Colors.grey, fontSize: 13),
        ),
      ),
    );
  }
}