import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tieba_third/constants/app_colors.dart';
import '../models/forum_item.dart';

/// 贴吧网格列表中的单个图块（用于 TiebaPage），保持原有样式。
class ForumGridTile extends StatelessWidget {
  final ForumItem forum;
  final bool isSigning;
  final bool isSigned;
  final VoidCallback? onSignTap;

  const ForumGridTile({
    super.key,
    required this.forum,
    required this.isSigning,
    required this.isSigned,
    this.onSignTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: () {
          context.push(
            '/forum/${forum.forumId}?name=${Uri.encodeComponent(forum.forumName)}&avatar=${Uri.encodeComponent(forum.avatar)}',
          );
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  forum.forumName,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                ),
              ),
              const SizedBox(width: 4),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                decoration: BoxDecoration(
                  color: AppColors.levelColor(forum.levelId),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Text(
                  "Lv${forum.levelId}",
                  style: const TextStyle(
                    color: AppColors.levelNumber,
                    fontSize: 11,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(width: 6),
              if (isSigning)
                const SizedBox(
                  width: 20,
                  height: 20,
                  child: CircularProgressIndicator(strokeWidth: 2),
                )
              else
                GestureDetector(
                  onTap: isSigned ? null : () => onSignTap?.call(),
                  child: Icon(
                    isSigned ? Icons.task_alt : Icons.pan_tool_outlined,
                    size: 20,
                    color: isSigned ? Colors.green : Colors.grey[400],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}