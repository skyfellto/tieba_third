import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../utils/user_manager.dart';
import '../constants/app_colors.dart';
import '../widgets/post_card.dart';

class UserDetailPage extends StatelessWidget {
  const UserDetailPage({super.key});

  void _showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text("确认登出"),
        content: const Text("登出后将清除所有登录信息，确定要登出吗？"),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            child: const Text("取消"),
          ),
          TextButton(
            onPressed: () async {
              await UserManager.logout();
              if (ctx.mounted) Navigator.pop(ctx);
              if (context.mounted) context.go('/wode');
            },
            child: const Text("确认", style: TextStyle(color: Colors.red)),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // ========== 顶部信息栏 ==========
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: AppColors.moonlightGradient,
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).padding.top + 8,
              bottom: 16,
              left: 16,
              right: 20,
            ),
            child: Row(
              children: [
                // 左侧：登出按钮
                TextButton.icon(
                  onPressed: () => _showLogoutDialog(context),
                  icon: const Icon(Icons.logout, color: Colors.white70, size: 20),
                  label: const Text(
                    "登出",
                    style: TextStyle(color: Colors.white70, fontSize: 15),
                  ),
                ),
                const Spacer(),
                // 右侧：头像 + 用户名
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CircleAvatar(
                      radius: 22,
                      backgroundColor: Colors.white,
                      backgroundImage: UserManager.portrait != null
                          ? NetworkImage(UserManager.avatarUrl,
                              headers: UserManager.avatarHeaders)
                          : null,
                    ),
                    const SizedBox(width: 10),
                    Text(
                      UserManager.userName ?? "百度用户",
                      style: const TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          // ========== 底部：帖子占位列表 ==========
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(12),
              itemCount: 30,
              itemBuilder: (context, index) => const PostCard(isPlaceholder: true),
            ),
          ),
        ],
      ),
    );
  }
}