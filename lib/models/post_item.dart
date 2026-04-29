class PostItem {
  final String tid;
  final String title;
  final String authorName;
  final String? authorPortrait;
  final String forumName;
  final String replyNum;
  final String agreeNum;
  final String? abstractText;
  final List<String> imageUrls;

  PostItem({
    required this.tid,
    required this.title,
    required this.authorName,
    this.authorPortrait,
    required this.forumName,
    required this.replyNum,
    required this.agreeNum,
    this.abstractText,
    this.imageUrls = const [],
  });

  factory PostItem.fromJson(Map<String, dynamic> json) {
    final author = json['author'] as Map<String, dynamic>?;

    String toStr(dynamic v) => v?.toString() ?? '';
    String? toStrOrNull(dynamic v) => v?.toString();

    // 提取摘要文本
    String? absText;
    final absList = json['abstract'] as List<dynamic>?;
    if (absList != null && absList.isNotEmpty) {
      absText = (absList.first as Map<String, dynamic>)['text'] as String?;
    }

    // 提取图片 URL
    List<String> imgs = [];
    final mediaList = json['media'] as List<dynamic>?;
    if (mediaList != null) {
      for (final m in mediaList) {
        if (m is Map<String, dynamic>) {
          final type = m['type']?.toString();
          final url = toStrOrNull(m['big_pic'] ?? m['src_pic']);
          if (type == '3' && url != null && url.isNotEmpty) {
            imgs.add(url);
          }
        }
      }
    }

    return PostItem(
      tid: toStr(json['tid'] ?? json['id']),
      title: toStr(json['title']),
      authorName: toStr(author?['name'] ?? author?['name_show']),
      authorPortrait: toStrOrNull(author?['portrait']),
      forumName: toStr(json['fname']),
      replyNum: toStr(json['reply_num']),
      agreeNum: toStr(json['agree_num']),
      abstractText: absText,
      imageUrls: imgs,
    );
  }
}
