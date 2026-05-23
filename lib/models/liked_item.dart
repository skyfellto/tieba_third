/// 点赞数据模型
class LikedItem {
  final String tid;
  final String title;
  final String abstractText;
  final List abstractData;
  final List<String> images;
  final String replyNum;
  final String agreeNum;
  final String shareNum;
  final String forumId;
  final String forumName;
  final String forumAvatar;
  final bool hasReply;
  final ReplyInfo? reply;

  LikedItem({
    required this.tid,
    required this.title,
    required this.abstractText,
    this.abstractData = const [],
    required this.images,
    required this.replyNum,
    required this.agreeNum,
    required this.shareNum,
    required this.forumId,
    required this.forumName,
    required this.forumAvatar,
    required this.hasReply,
    this.reply,
  });

  factory LikedItem.fromJson(Map json, String tid) {
    final abstractData = json['rich_abstract'] ?? json['abstract'];
    String abstractText = '';
    if (abstractData is List) {
      abstractText = abstractData
          .map((a) {
            if (a is! Map) return '';
            if (a['type'] == 2) return '${a['c'] ?? a['text'] ?? ''}';
            return '${a['text'] ?? ''}';
          })
          .join('')
          .trim();
    }

    final mediaList = json['media'];
    final images = <String>[];
    if (mediaList is List) {
      for (final m in mediaList) {
        if (m is Map) {
          final url =
              m['big_pic'] ??
              m['small_pic'] ??
              m['water_pic'] ??
              m['src_pic'] ??
              m['origin_pic'] ??
              '';
          if (url.toString().isNotEmpty) images.add(url.toString());
        }
      }
    }

    final forumInfo = json['forum_info'];
    final forumName = forumInfo is Map
        ? '${forumInfo['name'] ?? ''}'
        : '${json['forum_name'] ?? json['fname'] ?? ''}';
    final forumAvatar = forumInfo is Map ? '${forumInfo['avatar'] ?? ''}' : '';
    final forumId = '${json['fid'] ?? ''}';

    ReplyInfo? reply;
    final topPost = json['top_agree_post'];
    if (topPost is Map) {
      final author = topPost['author'];
      final contentList = topPost['content'];
      String replyContent = '';
      final replyImages = <String>[];
      if (contentList is List) {
        for (final c in contentList) {
          if (c is Map) {
            if (c['type'] == 3) {
              final src = '${c['src'] ?? ''}';
              if (src.isNotEmpty) replyImages.add(src);
            }
            replyContent += (c['type'] == 2
                ? '${c['c'] ?? c['text'] ?? ''}'
                : '${c['text'] ?? ''}');
          }
        }
        replyContent = replyContent.trim();
      }
      reply = ReplyInfo(
        authorName: author is Map ? '${author['name_show'] ?? ''}' : '',
        authorPortrait: author is Map ? '${author['portrait'] ?? ''}' : '',
        content: replyContent,
        agreeNum: '${topPost['agree']?['agree_num'] ?? 0}',
        replyId: '${topPost['id'] ?? ''}',
        contentData: contentList is List ? contentList : [],
        replyImages: replyImages,
      );
    }

    return LikedItem(
      tid: tid,
      title: '${json['title'] ?? ''}',
      abstractText: abstractText,
      abstractData: abstractData is List ? abstractData : [],
      images: images,
      replyNum: '${json['reply_num'] ?? 0}',
      agreeNum: '${json['agree_num'] ?? 0}',
      shareNum: '${json['share_num'] ?? 0}',
      forumId: forumId,
      forumName: forumName,
      forumAvatar: forumAvatar,
      hasReply: reply != null,
      reply: reply,
    );
  }
}

class ReplyInfo {
  final String authorName;
  final String authorPortrait;
  final String content;
  final String agreeNum;
  final String replyId; // top_agree_post.id
  final List contentData;
  final List<String> replyImages;

  ReplyInfo({
    required this.authorName,
    required this.authorPortrait,
    required this.content,
    required this.agreeNum,
    this.replyId = '',
    this.contentData = const [],
    this.replyImages = const [],
  });
}
