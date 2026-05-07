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

  ForumItem copyWith({bool? isSign}) {
    return ForumItem(
      forumId: forumId,
      forumName: forumName,
      avatar: avatar,
      levelId: levelId,
      isSign: isSign ?? this.isSign,
    );
  }
}
