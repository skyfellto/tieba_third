import 'package:flutter/material.dart';
import '../models/post_item.dart';
import '../utils/user_manager.dart';

/// 帖子卡片组件，与用户详情页保持样式一致
class PostCard extends StatelessWidget {
  final PostItem? post;
  final bool isPlaceholder;

  const PostCard({super.key, this.post, this.isPlaceholder = false});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 标题行
            if (!isPlaceholder && post!.isAd)
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                margin: const EdgeInsets.only(bottom: 6),
                decoration: BoxDecoration(
                  color: Colors.red[50],
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(color: Colors.red[200]!),
                ),
                child: Text("广告 · 直播",
                    style: TextStyle(color: Colors.red[400], fontSize: 11)),
              ),
            Row(
              children: [
                CircleAvatar(
                  radius: 16,
                  backgroundColor: Colors.grey[300],
                  backgroundImage: _authorAvatar,
                ),
                const SizedBox(width: 8),
                Text(
                  _author,
                  style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                ),
                if (_forum != null) ...[
                  const SizedBox(width: 6),
                  Text(_forum!,
                      style: TextStyle(color: Colors.grey[400], fontSize: 12)),
                ],
                const Spacer(),
                Text("刚刚",
                    style: TextStyle(color: Colors.grey[400], fontSize: 12)),
              ],
            ),
            const SizedBox(height: 10),
            // 标题
            Text(
              _title,
              style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            // 摘要
            if (_abstract != null) ...[
              const SizedBox(height: 6),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  _abstract!,
                  style: TextStyle(color: Colors.grey[500], fontSize: 13),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
            // 图片
            if (_images.isNotEmpty) ...[
              const SizedBox(height: 8),
              SizedBox(
                height: 120,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: _images.length,
                  separatorBuilder: (_, _) => const SizedBox(width: 6),
                  itemBuilder: (context, index) => ClipRRect(
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
                        child: Icon(Icons.broken_image, color: Colors.grey[400]),
                      ),
                    ),
                  ),
                ),
              ),
            ],
            const SizedBox(height: 10),
            // 操作行
            Row(
              children: [
                _action(Icons.thumb_up_outlined, _agree),
                const SizedBox(width: 24),
                _action(Icons.chat_bubble_outline, _reply),
                const SizedBox(width: 24),
                _action(Icons.share_outlined, "分享"),
              ],
            ),
          ],
        ),
      ),
    );
  }

  ImageProvider? get _authorAvatar {
    // 有真实数据时用楼主头像
    if (post?.authorPortrait != null && post!.authorPortrait!.isNotEmpty) {
      return NetworkImage(PostItem.avatarUrlFor(post!.authorPortrait!),
          headers: UserManager.avatarHeaders);
    }
    // 占位卡片用登录用户头像
    if (!isPlaceholder && UserManager.isLogin && UserManager.portrait != null) {
      return NetworkImage(UserManager.avatarUrl,
          headers: UserManager.avatarHeaders);
    }
    return null;
  }

  String get _author => post?.authorName ?? (isPlaceholder ? "" : "百度用户");
  String? get _forum => post?.forumName;
  String get _title => post?.title ?? (isPlaceholder ? "这是一条占位帖子内容，后续将接入真实的用户发帖数据。" : "");
  String? get _abstract => post?.abstractText;
  List<String> get _images => post?.imageUrls ?? [];
  String get _agree => post?.agreeNum ?? "";
  String get _reply => post?.replyNum ?? "";

  Widget _action(IconData icon, String label) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 18, color: Colors.grey[400]),
        const SizedBox(width: 4),
        Text(label, style: TextStyle(color: Colors.grey[400], fontSize: 12)),
      ],
    );
  }
}
