import 'package:flutter/material.dart';
import '../models/liked_item.dart';
import '../utils/user_manager.dart';
import '../utils/like_manager.dart';
import '../utils/emoticon_helper.dart';

class LikedItemCard extends StatelessWidget {
  final LikedItem item;
  final LikeManager likeManager;
  final String likeKey; // LikeManager 的 key：thread:tid 或 reply:replyId
  final VoidCallback? onForumTap;
  final VoidCallback? onBodyTap;
  final VoidCallback? onLikeTap;
  final void Function(String tid)? onShareTap;

  const LikedItemCard({
    super.key,
    required this.item,
    required this.likeManager,
    required this.likeKey,
    this.onForumTap,
    this.onBodyTap,
    this.onLikeTap,
    this.onShareTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    final isLiked = likeManager.isLiked(likeKey);
    final agreeNum = likeManager.agreeNum(likeKey);
    final textColor = isDark ? Colors.white : Colors.black87;
    final subColor = Colors.grey;

    return Card(
      margin: const EdgeInsets.only(bottom: 10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildMainPost(context, textColor, subColor),
          if (item.hasReply && item.reply != null)
            _buildReplySection(context, theme, textColor, item.reply!),
          _buildBottomRow(context, textColor, subColor, isLiked, agreeNum),
        ],
      ),
    );
  }

  Widget _buildMainPost(BuildContext context, Color textColor, Color subColor) {
    return GestureDetector(
      onTap: onBodyTap,
      behavior: HitTestBehavior.opaque,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(12, 12, 12, 0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: textColor,
                    ),
                  ),
                  const SizedBox(height: 4),
                  _buildContentWithEmoji(
                    context,
                    item.abstractData,
                    item.abstractText,
                    subColor,
                  ),
                ],
              ),
            ),
            if (item.images.isNotEmpty) ...[
              const SizedBox(width: 10),
              ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: Stack(
                  children: [
                    Image.network(
                      item.images[0],
                      width: 80,
                      height: 80,
                      fit: BoxFit.cover,
                      headers: UserManager.avatarHeaders,
                      errorBuilder: (_, _, _) => Container(
                        width: 80,
                        height: 80,
                        color: Colors.grey[300],
                      ),
                    ),
                    if (item.images.length > 1)
                      Positioned(
                        right: 4,
                        bottom: 4,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 4,
                            vertical: 1,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.black54,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Text(
                            '+${item.images.length - 1}',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 11,
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildReplySection(
    BuildContext context,
    ThemeData theme,
    Color textColor,
    ReplyInfo reply,
  ) {
    final isDark = theme.brightness == Brightness.dark;
    final bgColor = isDark ? Color(0xFF3A3E5C) : Colors.grey[100]!;
    return GestureDetector(
      onTap: onBodyTap,
      behavior: HitTestBehavior.opaque,
      child: Container(
        margin: const EdgeInsets.fromLTRB(12, 8, 12, 0),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 12,
                  backgroundColor: Colors.grey[300],
                  backgroundImage: reply.authorPortrait.isNotEmpty
                      ? NetworkImage(
                          'http://tb.himg.baidu.com/sys/portrait/item/${reply.authorPortrait}',
                          headers: UserManager.avatarHeaders,
                        )
                      : null,
                ),
                const SizedBox(width: 6),
                Expanded(
                  child: Text(
                    reply.authorName,
                    style: TextStyle(
                      fontSize: 13,
                      color: Theme.of(context).brightness == Brightness.dark
                          ? Colors.white
                          : Colors.black,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.favorite, size: 14, color: Colors.red),
                    const SizedBox(width: 2),
                    Text(
                      reply.agreeNum,
                      style: const TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 4),
            _buildContentWithEmoji(
              context,
              reply.contentData,
              reply.content,
              textColor,
            ),
            if (reply.replyImages.isNotEmpty) ...[
              const SizedBox(height: 6),
              _buildReplyImages(reply.replyImages),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildBottomRow(
    BuildContext context,
    Color textColor,
    Color subColor,
    bool isLiked,
    int agreeNum,
  ) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 8, 12, 10),
      child: Row(
        children: [
          GestureDetector(
            onTap: onForumTap,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleAvatar(
                  radius: 10,
                  backgroundColor: Colors.grey[300],
                  backgroundImage: item.forumAvatar.isNotEmpty
                      ? NetworkImage(
                          item.forumAvatar,
                          headers: UserManager.avatarHeaders,
                        )
                      : null,
                ),
                const SizedBox(width: 4),
                Text(
                  item.forumName,
                  style: TextStyle(fontSize: 12, color: subColor),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          const Spacer(),
          _actionBtn(
            Icons.share_outlined,
            item.shareNum == "0" ? "分享" : item.shareNum,
            subColor,
          ),
          const SizedBox(width: 12),
          _actionBtn(
            Icons.chat_bubble_outline,
            item.replyNum == "0" ? "回复" : item.replyNum,
            subColor,
          ),
          const SizedBox(width: 12),
          GestureDetector(
            onTap: onLikeTap,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  isLiked ? Icons.favorite : Icons.favorite_border,
                  size: 18,
                  color: isLiked ? Colors.red : subColor,
                ),
                const SizedBox(width: 2),
                Text(
                  '$agreeNum',
                  style: TextStyle(fontSize: 12, color: subColor),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContentWithEmoji(
    BuildContext context,
    List contentData,
    String fallbackText,
    Color textColor,
  ) {
    if (contentData.isEmpty) {
      return Text(
        fallbackText,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(fontSize: 13, color: textColor),
      );
    }
    final spans = <InlineSpan>[];
    for (final a in contentData) {
      if (a is! Map) {
        spans.add(TextSpan(text: '$a'));
        continue;
      }
      final type = a['type'];
      if (type == 2) {
        final c = '${a['c'] ?? ''}';
        if (c.isNotEmpty) {
          final imgPath = EmoticonHelper.getImagePath(c);
          if (imgPath != null) {
            spans.add(
              WidgetSpan(
                alignment: PlaceholderAlignment.middle,
                child: Image.asset(imgPath, width: 20, height: 20),
              ),
            );
          } else {
            spans.add(TextSpan(text: c));
          }
        }
      } else if (type == 0 || type == 1 || type == 4 || type == 9) {
        final text = '${a['text'] ?? ''}';
        if (text.isNotEmpty) {
          spans.add(
            TextSpan(
              text: text,
              style: type == 4
                  ? TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.w600,
                    )
                  : null,
            ),
          );
        }
      }
    }
    if (spans.isEmpty) {
      return Text(
        fallbackText,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(fontSize: 13, color: textColor),
      );
    }
    return RichText(
      text: TextSpan(
        style: TextStyle(
          fontSize: 13,
          color: Theme.of(context).brightness == Brightness.dark
              ? Colors.white
              : Colors.black,
        ),
        children: spans,
      ),
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }

  Widget _buildReplyImages(List<String> images) {
    const thumbSize = 80.0;
    final display = images.take(3).toList();
    final totalExtra = images.length - 3;
    return SizedBox(
      height: thumbSize,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          for (int i = 0; i < display.length; i++) ...[
            if (i > 0) const SizedBox(width: 4),
            ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Stack(
                children: [
                  Image.network(
                    display[i],
                    width: thumbSize,
                    height: thumbSize,
                    fit: BoxFit.cover,
                    headers: UserManager.avatarHeaders,
                    errorBuilder: (_, _, _) => const SizedBox.shrink(),
                  ),
                  if (i == display.length - 1 && totalExtra > 0)
                    Positioned(
                      right: 4,
                      bottom: 4,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 4,
                          vertical: 1,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.black54,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Text(
                          '+$totalExtra',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 11,
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ],
        ],
      ),
    );
  }

  Widget _actionBtn(IconData icon, String text, Color color) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 18, color: color),
        const SizedBox(width: 2),
        Text(text, style: TextStyle(fontSize: 12, color: color)),
      ],
    );
  }
}
