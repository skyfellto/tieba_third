import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:tieba_third/constants/app_colors.dart';
import '../generated/Post.pb.dart';
import '../generated/SubPostList.pb.dart';
import '../generated/User.pb.dart' as usermodel;
import '../utils/post_content_parser.dart';
import '../utils/user_manager.dart';
import 'post_content_text.dart';
import 'post_image_row.dart';
import 'user_badge.dart';

/// 回复卡片（含楼中楼）
class PostReplyCard extends StatelessWidget {
  final Post post;
  final Map<int, usermodel.User> authorMap;
  final usermodel.User? opAuthor;
  final Set<String> likedReplySet;
  final String tid;
  final void Function(Post post)? onLikeTap;
  final void Function(List<String> images, int index)? onImageTap;
  final void Function(String postId, int floor, int replyCount)?
  onShowAllReplies;
  final void Function(String uid)? onUserTap;

  const PostReplyCard({
    super.key,
    required this.post,
    required this.authorMap,
    this.opAuthor,
    required this.likedReplySet,
    required this.tid,
    this.onLikeTap,
    this.onImageTap,
    this.onShowAllReplies,
    this.onUserTap,
  });

  @override
  Widget build(BuildContext context) {
    final aid = post.authorId.toInt();
    final usermodel.User? author;
    if (aid > 0 && authorMap.containsKey(aid)) {
      author = authorMap[aid];
    } else {
      author = null;
    }
    final hasAuthor = author != null;
    final contentList = post.content;
    final images = PostContentParser.extractImages(contentList);
    final timeStr = PostContentParser.formatTime(post.time);
    final pidStr = post.id.toString();
    final isLiked = likedReplySet.contains(pidStr);
    final agreeNum = post.hasAgree() ? post.agree.agreeNum.toInt() : 0;
    final subPostNumber = post.subPostNumber;
    final subPostList = post.subPostList.subPostList;
    final hasSubPosts = subPostList.isNotEmpty;

    return Card(
      margin: const EdgeInsets.only(bottom: 10),
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 作者信息
            // ignore: unnecessary_non_null_assertion
            if (hasAuthor) _buildAuthorRow(author!, opAuthor, aid),
            // 时间 + IP
            if (timeStr.isNotEmpty ||
                (author != null && author.ipAddress.isNotEmpty))
              Padding(
                padding: EdgeInsets.only(top: hasAuthor ? 0 : 4, bottom: 4),
                child: Row(
                  children: [
                    if (timeStr.isNotEmpty)
                      Text(
                        timeStr,
                        style: TextStyle(color: Colors.grey[400], fontSize: 11),
                      ),
                    const SizedBox(width: 8),
                    Text(
                      '第${post.floor}楼',
                      style: TextStyle(color: Colors.grey[400], fontSize: 11),
                    ),
                    if (author != null && author.ipAddress.isNotEmpty) ...[
                      const SizedBox(width: 8),
                      Text(
                        '来自${author.ipAddress}',
                        style: TextStyle(color: Colors.grey[400], fontSize: 11),
                      ),
                    ],
                  ],
                ),
              ),
            const SizedBox(height: 6),
            // 文字内容（含内联 emoji）
            if (contentList.isNotEmpty)
              Padding(
                padding: const EdgeInsets.only(bottom: 6),
                child: PostContentText(
                  contents: contentList,
                  style: const TextStyle(fontSize: 14, height: 1.4),
                ),
              ),
            // 图片
            if (images.isNotEmpty) ...[
              PostImageRow(images: images, imageHeight: 150),
              const SizedBox(height: 6),
            ],
            // 操作行
            _buildActionRow(isLiked, agreeNum, pidStr),
            // 楼中楼
            if (hasSubPosts) ...[
              const Divider(height: 12),
              ...subPostList
                  .take(3)
                  .map(
                    (sub) => _buildSubReplyItem(
                      sub,
                      authorMap,
                      opAuthor: opAuthor,
                      context: context,
                    ),
                  ),
              if (subPostNumber > 3 || subPostList.length > 3)
                GestureDetector(
                  onTap: () => onShowAllReplies?.call(
                    post.id.toString(),
                    post.floor,
                    subPostNumber > 0 ? subPostNumber : subPostList.length,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: Text(
                      '显示全部${subPostNumber > 0 ? subPostNumber : subPostList.length}条回复',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.blue[600],
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildAuthorRow(
    usermodel.User author,
    usermodel.User? opAuthor,
    int aid,
  ) {
    return GestureDetector(
      onTap: onUserTap != null
          ? () => onUserTap!(author.id.toInt().toString())
          : null,
      child: Row(
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
            style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 13),
          ),
          if (author.levelId > 0) ...[
            const SizedBox(width: 4),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 0),
              decoration: BoxDecoration(
                color: AppColors.levelColor(author.levelId),
                borderRadius: BorderRadius.circular(3),
              ),
              child: Text(
                '${author.levelId}',
                style: TextStyle(fontSize: 10, color: AppColors.levelNumber),
              ),
            ),
          ],
          if (author.isBawu == 1 &&
              (author.bawuType == 'manager' ||
                  author.bawuType == 'assist')) ...[
            const SizedBox(width: 4),
            BawuBadge(bawuType: author.bawuType, fontSize: 10),
          ],
          if (opAuthor != null && aid == opAuthor.id.toInt()) ...[
            const SizedBox(width: 4),
            LouZhuBadge(fontSize: 10),
          ],
        ],
      ),
    );
  }

  Widget _buildActionRow(bool isLiked, int agreeNum, String pidStr) {
    return Row(
      children: [
        GestureDetector(
          onTap: () => onLikeTap?.call(post),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                isLiked ? Icons.thumb_up : Icons.thumb_up_outlined,
                size: 16,
                color: isLiked ? Colors.red : Colors.grey[400],
              ),
              const SizedBox(width: 3),
              Text(
                agreeNum > 0 ? '$agreeNum' : '点赞',
                style: TextStyle(
                  fontSize: 12,
                  color: isLiked ? Colors.red : Colors.grey[400],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: 16),
        GestureDetector(
          onTap: () {
            SharePlus.instance.share(
              ShareParams(
                text: "https://tieba.baidu.com/p/$tid?pid=$pidStr",
                title: "来自百度贴吧的回复",
              ),
            );
          },
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.share_outlined, size: 16, color: Colors.grey[400]),
              const SizedBox(width: 3),
              Text(
                '分享',
                style: TextStyle(fontSize: 12, color: Colors.grey[400]),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildSubReplyItem(
    SubPostList sub,
    Map<int, usermodel.User> authorMap, {
    usermodel.User? opAuthor,
    required BuildContext context,
  }) {
    usermodel.User? author;
    if (sub.hasAuthor()) {
      author = sub.author;
    } else {
      final aid = sub.authorId.toInt();
      if (aid > 0 && authorMap.containsKey(aid)) {
        author = authorMap[aid];
      }
    }
    final authorName = author != null
        ? PostContentParser.getAuthorName(author)
        : '匿名用户';

    final replyTarget = PostContentParser.extractReplyTarget(sub.content);
    final images = PostContentParser.extractImages(sub.content);
    final timeStr = PostContentParser.formatTime(sub.time);

    final List<InlineSpan> contentSpans = [];

    // 回复者用户名
    contentSpans.add(
      TextSpan(
        text: authorName,
        style: const TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 12,
          color: Colors.blue,
        ),
      ),
    );

    // 吧务标识
    if (author != null &&
        author.isBawu == 1 &&
        (author.bawuType == 'manager' || author.bawuType == 'assist')) {
      contentSpans.add(
        WidgetSpan(
          alignment: PlaceholderAlignment.middle,
          child: Padding(
            padding: const EdgeInsets.only(left: 4),
            child: BawuBadge(bawuType: author.bawuType, fontSize: 10),
          ),
        ),
      );
    }

    // 楼主标识
    if (opAuthor != null && author?.id == opAuthor.id) {
      contentSpans.add(
        WidgetSpan(
          alignment: PlaceholderAlignment.middle,
          child: Padding(
            padding: const EdgeInsets.only(left: 4),
            child: LouZhuBadge(fontSize: 10),
          ),
        ),
      );
    }

    // 回复目标
    if (replyTarget != null && replyTarget.isNotEmpty) {
      contentSpans.addAll([
        const TextSpan(
          text: ' 回复 ',
          style: TextStyle(fontSize: 12, color: Colors.grey),
        ),
        TextSpan(
          text: replyTarget,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 12,
            color: Colors.blueGrey,
          ),
        ),
      ]);
    }

    // 冒号 + 正文（含 emoji 图片）
    final bodySpans = PostContentParser.buildContentSpans(
      sub.content,
      emojiSize: 14,
      textStyle: const TextStyle(fontSize: 12, height: 1.3),
      skipMention: true,
      context: context,
    );
    if (bodySpans.isNotEmpty) {
      contentSpans.add(const TextSpan(text: '：'));
      contentSpans.addAll(bodySpans);
    }

    return GestureDetector(
      onTap: () => onShowAllReplies?.call(
        post.id.toString(),
        post.floor,
        post.subPostNumber > 0 ? post.subPostNumber : post.subPostList.subPostList.length,
      ),
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.only(bottom: 4),
        padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        // color: Colors.grey[50],
        color: Theme.of(context).brightness == Brightness.dark
            ? Color(0xFF3A3E5C)
            : Colors.grey[50],
        borderRadius: BorderRadius.circular(6),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text.rich(
            TextSpan(children: contentSpans),
            softWrap: true,
            overflow: TextOverflow.visible,
            maxLines: null,
          ),
          if (images.isNotEmpty) ...[
            const SizedBox(height: 4),
            PostImageRow(images: images, imageHeight: 120),
          ],
          if (timeStr.isNotEmpty)
            Padding(
              padding: const EdgeInsets.only(top: 2),
              child: Text(
                timeStr,
                style: TextStyle(color: Colors.grey[400], fontSize: 10),
              ),
            ),
        ],
      ),
    ),
  );
  }
}
