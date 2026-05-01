import '../generated/ThreadInfo.pb.dart';

String _s(dynamic v) => v?.toString() ?? '';

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
  final bool isAd;

  /// 根据 portrait 字符串拼接头像 URL
  static String avatarUrlFor(String portrait) =>
      "http://tb.himg.baidu.com/sys/portrait/item/$portrait";

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
    this.isAd = false,
  });

  factory PostItem.fromThreadInfo(ThreadInfo t) {
    String? absText;
    try {
      if (t.abstract.isNotEmpty) absText = _s(t.abstract.first.text);
    } catch (_) {}

    List<String> imgs = [];
    try {
      for (final m in t.media) {
        if (_s(m.type) == '3') {
          final url = _s(m.bigPic.isNotEmpty ? m.bigPic : m.srcPic);
          if (url.isNotEmpty) imgs.add(url);
        }
      }
    } catch (_) {}

    String authorName = '';
    String? portrait;
    try {
      final a = t.author;
      authorName = _s(a.name.isNotEmpty ? a.name : a.nameShow);
      portrait = a.portrait.isNotEmpty ? a.portrait : null;
    } catch (_) {}

    return PostItem(
      tid: t.threadId.toInt() > 0 ? _s(t.threadId) : _s(t.id),
      title: _s(t.title),
      authorName: authorName,
      authorPortrait: portrait,
      forumName: _s(t.forumName),
      replyNum: _s(t.replyNum),
      agreeNum: _s(t.agreeNum),
      abstractText: absText,
      imageUrls: imgs,
      isAd: t.hasAlaInfo(),
    );
  }
}
