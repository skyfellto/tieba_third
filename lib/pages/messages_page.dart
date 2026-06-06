import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../utils/message_count_manager.dart';

/// 消息中心页面
class MessagesPage extends StatefulWidget {
  const MessagesPage({super.key});

  @override
  State<MessagesPage> createState() => _MessagesPageState();
}

class _MessagesPageState extends State<MessagesPage> {
  @override
  void dispose() {
    // 返回我的页面时重新拉取消息数
    MessageCountManager().fetch();
    super.dispose();
  }

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
      body: ListenableBuilder(
        listenable: MessageCountManager(),
        builder: (context, _) {
          final mgr = MessageCountManager();
          return ListView(
            padding: EdgeInsets.zero,
            children: [
              _buildCategoryTile(
                context,
                icon: Icons.thumb_up_alt_outlined,
                title: '点赞',
                badgeCount: mgr.agree,
                onTap: () => context.push('/messages/likes'),
              ),
              _buildCategoryTile(
                context,
                icon: Icons.chat_bubble_outline,
                title: '回复',
                badgeCount: mgr.replyme,
                onTap: () => context.push('/messages/replies'),
              ),
              _buildCategoryTile(
                context,
                icon: Icons.alternate_email,
                title: '@我的',
                badgeCount: mgr.atme,
                onTap: () => context.push('/messages/mentions'),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildCategoryTile(
    BuildContext context, {
    required IconData icon,
    required String title,
    required VoidCallback onTap,
    int badgeCount = 0,
  }) {
    return ListTile(
      leading: Stack(
        clipBehavior: Clip.none,
        children: [
          Icon(icon, color: Theme.of(context).iconTheme.color, size: 24),
          if (badgeCount > 0)
            Positioned(
              top: -4,
              right: -4,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 0),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(8),
                ),
                constraints: const BoxConstraints(minWidth: 16, minHeight: 16),
                child: Center(
                  child: Text(
                    badgeCount > 99 ? '99+' : '$badgeCount',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      height: 1.2,
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
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