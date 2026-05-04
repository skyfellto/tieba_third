import 'package:flutter/material.dart';
import '../generated/Post.pb.dart';
import '../generated/User.pb.dart' as usermodel;
import '../utils/post_content_parser.dart';
import '../utils/user_manager.dart';
import 'post_image_row.dart';

/// 帖子详情头部（楼主信息、标题、内容、图片）
class PostDetailHeader extends StatelessWidget {
  final String? title;
  final Post? firstPost;
  final usermodel.User? opAuthor;

  const PostDetailHeader({
    super.key,
    this.title,
    this.firstPost,
    this.opAuthor,
  });

  @override
  Widget build(BuildContext context) {
    if (firstPost == null || firstPost!.content.isEmpty) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Text(
          (title != null && title!.isNotEmpty) ? title! : '帖子内容加载中...',
          style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
        ),
      );
    }

    final contentList = firstPost!.content;
    final images = PostContentParser.extractImages(contentList);
    final text = PostContentParser.extractText(contentList);
    final timeStr = PostContentParser.formatTime(firstPost!.time);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // 楼主信息
        if (opAuthor != null)
          _buildAuthorInfo(opAuthor!, timeStr),
        // 无作者信息时也显示时间
        if (opAuthor == null && timeStr.isNotEmpty)
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Text(
              timeStr,
              style: TextStyle(color: Colors.grey[400], fontSize: 12),
            ),
          ),
        const SizedBox(height: 10),
        // 标题
        if (title != null && title!.isNotEmpty)
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Text(
              title!,
              style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 17),
            ),
          ),
        // 文字内容
        if (text.isNotEmpty)
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Text(
              text,
              style: const TextStyle(fontSize: 15, height: 1.5),
            ),
          ),
        // 图片区
        if (images.isNotEmpty) ...[
          const SizedBox(height: 4),
          PostImageRow(images: images),
          const SizedBox(height: 4),
        ],
      ],
    );
  }

  Widget _buildAuthorInfo(usermodel.User author, String timeStr) {
    return Row(
      children: [
        CircleAvatar(
          radius: 18,
          backgroundColor: Colors.grey[300],
          backgroundImage: author.portrait.isNotEmpty
              ? NetworkImage(
                  'http://tb.himg.baidu.com/sys/portrait/item/${author.portrait}',
                  headers: UserManager.avatarHeaders,
                )
              : null,
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    PostContentParser.getAuthorName(author),
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(width: 6),
                  if (author.levelId > 0)
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 5,
                        vertical: 1,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.blue[50],
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Text(
                        '${author.levelId}',
                        style: TextStyle(
                          fontSize: 11,
                          color: Colors.blue[700],
                        ),
                      ),
                    ),
                  const SizedBox(width: 4),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 5,
                      vertical: 1,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.red[50],
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: const Text(
                      '楼主',
                      style: TextStyle(
                        fontSize: 11,
                        color: Colors.red,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    timeStr,
                    style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 12,
                    ),
                  ),
                  if (author.ipAddress.isNotEmpty) ...[
                    const SizedBox(width: 8),
                    Text(
                      'IP属地：${author.ipAddress}',
                      style: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 11,
                      ),
                    ),
                  ],
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
