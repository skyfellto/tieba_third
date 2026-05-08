import 'package:flutter/material.dart';
import 'package:tieba_third/constants/app_colors.dart';
import '../generated/SubPostList.pb.dart';
import '../generated/User.pb.dart' as usermodel;
import '../utils/post_content_parser.dart';
import '../utils/user_manager.dart';

/// 楼中楼回复详情页的单条回复项（无卡片、无 IP、无图片、无楼中楼）
class FloorReplyItem extends StatelessWidget {
  final SubPostList subReply;
  final Map<int, usermodel.User> authorMap;
  final Set<String> likedReplySet;
  final String tid;
  final void Function(SubPostList subReply)? onLikeTap;

  const FloorReplyItem({
    super.key,
    required this.subReply,
    required this.authorMap,
    required this.likedReplySet,
    required this.tid,
    this.onLikeTap,
  });

  Color _levelColor(usermodel.User author) {
    if (author.levelId <= 3) return AppColors.levelGreen;
    if (author.levelId <= 9) return AppColors.levelBlue;
    if (author.levelId <= 15) return AppColors.levelYellow;
    return AppColors.levelOrange;
  }

  @override
  Widget build(BuildContext context) {
    final aid = subReply.authorId.toInt();
    usermodel.User? author;
    if (subReply.hasAuthor()) {
      author = subReply.author;
    } else if (aid > 0 && authorMap.containsKey(aid)) {
      author = authorMap[aid];
    }

    final replyTarget = PostContentParser.extractReplyTarget(subReply.content);
    final text = PostContentParser.extractTextNoMention(subReply.content);
    final timeStr = PostContentParser.formatTime(subReply.time);
    final pidStr = subReply.id.toString();
    final isLiked = likedReplySet.contains(pidStr);
    final agreeNum = subReply.hasAgree() ? subReply.agree.agreeNum.toInt() : 0;

    // 构建 "回复 xxx：内容" 内联格式（同帖子详情页楼中楼样式）
    final List<InlineSpan> contentSpans = [];
    if (replyTarget != null && replyTarget.isNotEmpty) {
      contentSpans.addAll([
        const TextSpan(
          text: '回复 ',
          style: TextStyle(fontSize: 14, color: Colors.black87),
        ),
        TextSpan(
          text: replyTarget,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 14,
            color: Colors.blueGrey,
          ),
        ),
      ]);
    }
    if (text.isNotEmpty) {
      contentSpans.add(
        TextSpan(
          text: replyTarget != null ? '：$text' : text,
          style: const TextStyle(
            fontSize: 14,
            color: Colors.black87,
            height: 1.4,
          ),
        ),
      );
    }

    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            width: 2,
            color: const Color.fromARGB(255, 237, 232, 232),
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(14, 8, 14, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 作者行
            if (author != null) _buildAuthorRow(author),
            // 时间
            if (timeStr.isNotEmpty)
              Padding(
                padding: const EdgeInsets.only(top: 2, bottom: 4),
                child: Text(
                  timeStr,
                  style: TextStyle(color: Colors.grey[400], fontSize: 11),
                ),
              ),
            // 文字内容（含 "回复 xxx：内容" 内联格式）
            if (contentSpans.isNotEmpty)
              Padding(
                padding: const EdgeInsets.only(bottom: 6),
                child: Text.rich(
                  TextSpan(children: contentSpans),
                  softWrap: true,
                  overflow: TextOverflow.visible,
                ),
              ),
            // 操作行
            _buildActionRow(isLiked, agreeNum, subReply),
          ],
        ),
      ),
    );
  }

  Widget _buildAuthorRow(usermodel.User author) {
    return Row(
      children: [
        CircleAvatar(
          radius: 14,
          backgroundColor: Colors.grey[300],
          backgroundImage: author.portrait.isNotEmpty
              ? NetworkImage(
                  'http://tb.himg.baidu.com/sys/portrait/item/${author.portrait}',
                  headers: UserManager.avatarHeaders,
                )
              : null,
        ),
        const SizedBox(width: 6),
        Text(
          PostContentParser.getAuthorName(author),
          style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
        ),
        if (author.levelId > 0) ...[
          const SizedBox(width: 6),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 1),
            decoration: BoxDecoration(
              color: _levelColor(author),
              borderRadius: BorderRadius.circular(4),
            ),
            child: Text(
              '${author.levelId}',
              style: const TextStyle(
                fontSize: 11,
                color: AppColors.levelNumber,
              ),
            ),
          ),
        ],
      ],
    );
  }

  Widget _buildActionRow(bool isLiked, int agreeNum, SubPostList subReply) {
    return Row(
      children: [
        GestureDetector(
          onTap: () => onLikeTap?.call(subReply),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                isLiked ? Icons.thumb_up : Icons.thumb_up_outlined,
                size: 18,
                color: isLiked ? Colors.red : Colors.grey[400],
              ),
              const SizedBox(width: 4),
              Text(
                agreeNum > 0 ? '$agreeNum' : '',
                style: TextStyle(
                  color: isLiked ? Colors.red : Colors.grey[400],
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
