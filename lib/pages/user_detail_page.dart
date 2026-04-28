import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../utils/user_manager.dart';
import '../constants/app_colors.dart';

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
              itemBuilder: (context, index) => _buildPostCard(index),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPostCard(int index) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 标题行：小头像 + 用户名 + 时间
            Row(
              children: [
                CircleAvatar(
                  radius: 16,
                  backgroundColor: Colors.grey[300],
                  backgroundImage: UserManager.portrait != null
                      ? NetworkImage(UserManager.avatarUrl,
                          headers: UserManager.avatarHeaders)
                      : null,
                ),
                const SizedBox(width: 8),
                Text(
                  UserManager.userName ?? "百度用户",
                  style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                ),
                const Spacer(),
                Text(
                  "刚刚",
                  style: TextStyle(color: Colors.grey[400], fontSize: 12),
                ),
              ],
            ),
            const SizedBox(height: 10),
            // 内容行：占位文本
            Container(
              height: 60,
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(8),
              ),
              padding: const EdgeInsets.all(10),
              child: Text(
                "这是一条占位帖子内容，后续将接入真实的用户发帖数据。"
                "点赞、评论、转发功能正在开发中。",
                style: TextStyle(color: Colors.grey[500], fontSize: 13),
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const SizedBox(height: 10),
            // 操作行：点赞/评论/分享
            Row(
              children: [
                _buildActionIcon(Icons.thumb_up_outlined, "点赞"),
                const SizedBox(width: 24),
                _buildActionIcon(Icons.chat_bubble_outline, "评论"),
                const SizedBox(width: 24),
                _buildActionIcon(Icons.share_outlined, "分享"),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildActionIcon(IconData icon, String label) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 18, color: Colors.grey[400]),
        const SizedBox(width: 4),
        Text(
          label,
          style: TextStyle(color: Colors.grey[400], fontSize: 12),
        ),
      ],
    );
  }
}