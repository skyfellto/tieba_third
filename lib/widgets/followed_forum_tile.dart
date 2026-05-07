import 'package:flutter/material.dart';
import 'package:tieba_third/constants/app_colors.dart';
import '../models/forum_item.dart';

/// 关注的吧列表项组件
class FollowedForumTile extends StatelessWidget {
  final ForumItem forum;
  final VoidCallback? onTap;
  final VoidCallback? onSign; // 签到操作预留
  final bool isSigning;

  const FollowedForumTile({
    super.key,
    required this.forum,
    this.onTap,
    this.onSign,
    this.isSigning = false,
  });

  Color levelColor() {
    if (forum.levelId <= 3) {
      return AppColors.levelGreen;
    } else if (forum.levelId <= 9) {
      return AppColors.levelBlue;
    } else if (forum.levelId <= 15) {
      return AppColors.levelYellow;
    } else {
      return AppColors.levelOrange;
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      leading: CircleAvatar(
        radius: 22,
        backgroundColor: Colors.grey[200],
        backgroundImage: forum.avatar.isNotEmpty
            ? NetworkImage(forum.avatar)
            : null,
      ),
      title: Text(
        forum.forumName,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          // 等级标识
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
            decoration: BoxDecoration(
              // color: Colors.blue[50],
              color: levelColor(),
              borderRadius: BorderRadius.circular(4),
            ),
            child: Text(
              "Lv${forum.levelId}",
              style: TextStyle(
                // color: Colors.blue[700],
                color: AppColors.levelNumber,
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(width: 8),
          // 签到状态（预留签到操作接口）
          if (isSigning)
            const SizedBox(
              width: 20,
              height: 20,
              child: CircularProgressIndicator(strokeWidth: 2),
            )
          else
            GestureDetector(
              onTap: forum.isSign ? null : onSign,
              child: Icon(
                forum.isSign ? Icons.task_alt : Icons.pan_tool_outlined,
                size: 20,
                color: forum.isSign ? Colors.green : Colors.grey[400],
              ),
            ),
        ],
      ),
    );
  }
}
