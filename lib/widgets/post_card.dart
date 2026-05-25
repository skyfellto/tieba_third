import 'dart:math';
import 'package:flutter/material.dart';
import '../models/post_item.dart';
import '../utils/user_manager.dart';

class PostCard extends StatelessWidget {
  final PostItem? post;
  final bool isPlaceholder;
  final VoidCallback? onForumTap;
  final void Function(List<String> images, int index)? onImageTap;
  final void Function(String tid)? onReplyTap;
  final void Function(String tid)? onBodyTap;
  final void Function(String tid)? onLikeTap;
  final void Function(String tid)? onShareTap;
  final void Function(String uid)? onUserTap;
  final bool isLiked;
  final bool showForum;
  final String? badge;

  const PostCard({
    super.key,
    this.post,
    this.isPlaceholder = false,
    this.showForum = true,
    this.badge,
    this.onForumTap,
    this.onImageTap,
    this.onReplyTap,
    this.onBodyTap,
    this.onLikeTap,
    this.onShareTap,
    this.onUserTap,
    this.isLiked = false,
  });

  @override
  Widget build(BuildContext context) {
    final tid = post?.tid ?? '';

    return GestureDetector(
      onTap: tid.isNotEmpty ? () => onBodyTap?.call(tid) : null,
      child: Card(
        margin: const EdgeInsets.only(bottom: 12),
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ========== 标题行（头像 + 用户名可点击）==========
              Row(
                children: [
                  GestureDetector(
                    onTap:
                        onUserTap != null && post?.authorId.isNotEmpty == true
                        ? () => onUserTap!(post!.authorId)
                        : null,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CircleAvatar(
                          radius: 16,
                          backgroundColor: Colors.grey[300],
                          backgroundImage: _authorAvatar,
                        ),
                        const SizedBox(width: 8),
                        Text(
                          _author,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Text(
                    _time,
                    style: TextStyle(color: Colors.grey[400], fontSize: 12),
                  ),
                ],
              ),
              // ========== 主体区域 ==========
              const SizedBox(height: 8),
              if (badge != null || _title.isNotEmpty)
                Text.rich(
                  TextSpan(
                    children: [
                      if (badge != null)
                        WidgetSpan(
                          alignment: PlaceholderAlignment.middle,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 5),
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 5,
                                vertical: 1,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.red[50],
                                borderRadius: BorderRadius.circular(3),
                                border: Border.all(color: Colors.red[200]!),
                              ),
                              child: Text(
                                badge!,
                                style: TextStyle(
                                  fontSize: 11,
                                  color: Colors.red[700],
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ),
                      TextSpan(
                        text: _title,
                        style: const TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              if (_abstract != null) ...[
                const SizedBox(height: 6),
                Text(
                  _abstract!,
                  style: const TextStyle(fontSize: 13),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
              if (_images.isNotEmpty) ...[
                const SizedBox(height: 8),
                SizedBox(
                  height: 120,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: min(_images.length, 3),
                    separatorBuilder: (_, _) => const SizedBox(width: 6),
                    itemBuilder: (context, index) {
                      final showMore = index == 2 && _images.length > 3;
                      final remaining = _images.length - 3;
                      return GestureDetector(
                        onTap: onImageTap != null
                            ? () => onImageTap!(_images, index)
                            : null,
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.network(
                                _images[index],
                                width: 120,
                                height: 120,
                                fit: BoxFit.cover,
                                errorBuilder: (_, _, _) => Container(
                                  width: 120,
                                  height: 120,
                                  color: Colors.grey[200],
                                  child: Icon(
                                    Icons.broken_image,
                                    color: Colors.grey[400],
                                  ),
                                ),
                              ),
                            ),
                            if (showMore)
                              Positioned(
                                bottom: 0,
                                right: 0,
                                child: Container(
                                  width: 120,
                                  height: 120,
                                  decoration: BoxDecoration(
                                    // ignore: deprecated_member_use
                                    color: Colors.black.withOpacity(0.5),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Center(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        const Icon(
                                          Icons.photo_library_outlined,
                                          color: Colors.white,
                                          size: 18,
                                        ),
                                        const SizedBox(width: 4),
                                        Text(
                                          "+$remaining",
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
              const SizedBox(height: 8),
              // ========== 贴吧信息栏 ==========
              if (!isPlaceholder && showForum && _forumName.isNotEmpty)
                Padding(
                  padding: const EdgeInsets.only(left: 1),
                  child: GestureDetector(
                    onTap: onForumTap,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 6,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: Theme.of(context).brightness == Brightness.dark
                            ? Color(0xFF3A3E5C)
                            : Colors.grey[50],
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CircleAvatar(
                            radius: 10,
                            backgroundColor: Colors.grey[200],
                            backgroundImage: _forumAvatar != null
                                ? NetworkImage(_forumAvatar!)
                                : null,
                          ),
                          const SizedBox(width: 5),
                          Text(
                            _forumName,
                            style: const TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              const SizedBox(height: 10),
              // ========== 操作行 ==========
              Row(
                children: [
                  GestureDetector(
                    onTap: tid.isNotEmpty ? () => onLikeTap?.call(tid) : null,
                    behavior: HitTestBehavior.opaque,
                    child: _action(
                      isLiked ? Icons.thumb_up : Icons.thumb_up_outlined,
                      _agree,
                      isLiked ? Colors.red : null,
                    ),
                  ),
                  const SizedBox(width: 4),
                  GestureDetector(
                    onTap: tid.isNotEmpty ? () => onReplyTap?.call(tid) : null,
                    behavior: HitTestBehavior.opaque,
                    child: _action(Icons.chat_bubble_outline, _reply, null),
                  ),
                  const SizedBox(width: 4),
                  GestureDetector(
                    onTap: tid.isNotEmpty ? () => onShareTap?.call(tid) : null,
                    behavior: HitTestBehavior.opaque,
                    child: _action(Icons.share_outlined, "分享", null),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  ImageProvider? get _authorAvatar {
    if (post?.authorPortrait != null && post!.authorPortrait!.isNotEmpty) {
      return NetworkImage(
        PostItem.avatarUrlFor(post!.authorPortrait!),
        headers: UserManager.avatarHeaders,
      );
    }
    if (!isPlaceholder && UserManager.isLogin && UserManager.portrait != null) {
      return NetworkImage(
        UserManager.avatarUrl,
        headers: UserManager.avatarHeaders,
      );
    }
    return null;
  }

  String get _author => post?.authorName ?? (isPlaceholder ? "" : "百度用户");
  String get _forumName => post?.forumName ?? '';
  String? get _forumAvatar => post?.forumAvatar;
  String get _title => post?.title ?? (isPlaceholder ? "这是一条占位帖子内容。" : "");
  String? get _abstract => post?.abstractText;
  List<String> get _images => post?.imageUrls ?? [];
  String get _agree => post?.agreeNum ?? "";
  String get _reply => post?.replyNum ?? "";
  String get _time => post?.lastTime ?? "刚刚";

  Widget _action(IconData icon, String label, Color? color) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 18, color: color ?? Colors.grey[400]),
          const SizedBox(width: 4),
          Text(
            label,
            style: TextStyle(color: color ?? Colors.grey[400], fontSize: 12),
          ),
        ],
      ),
    );
  }
}
