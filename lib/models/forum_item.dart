/// 关注的吧数据模型
class ForumItem {
  final String forumId;
  final String forumName;
  final String avatar;
  final int levelId;
  final bool isSign;

  ForumItem({
    required this.forumId,
    required this.forumName,
    required this.avatar,
    required this.levelId,
    required this.isSign,
  });
}
