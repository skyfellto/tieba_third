import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// 消息中心页面
class MessagesPage extends StatelessWidget {
  const MessagesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.pop(),
        ),
        title: const Text(
          '我的消息',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          _buildCategoryTile(
            context,
            icon: Icons.thumb_up_alt_outlined,
            title: '点赞',
            onTap: () => context.push('/messages/likes'),
          ),
          _buildCategoryTile(
            context,
            icon: Icons.chat_bubble_outline,
            title: '回复',
            onTap: () => context.push('/messages/replies'),
          ),
          _buildCategoryTile(
            context,
            icon: Icons.alternate_email,
            title: '@我的',
            onTap: () {
              // TODO: @我的消息页面
            },
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryTile(
    BuildContext context, {
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: Icon(icon, color: Theme.of(context).iconTheme.color, size: 24),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 16,
          color: Theme.of(context).textTheme.bodyLarge?.color,
        ),
      ),
      trailing: Icon(Icons.chevron_right, color: Colors.grey[400], size: 22),
      onTap: onTap,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16),
    );
  }
}