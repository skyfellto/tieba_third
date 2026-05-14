import 'package:intl/intl.dart';
import '../generated/ThreadInfo.pb.dart';

String _s(dynamic v) => v?.toString() ?? '';

class PostItem {
  final String tid;
  final String title;
  String authorId;
  String authorName;
  String? authorPortrait;
  final String forumId;
  String forumName;
  final String? forumAvatar;
  final String replyNum;
  String agreeNum; // 点赞后可修改
  final String? lastTime;
  final String? abstractText;
  final List<String> imageUrls;
  final bool isAd;
  bool isTop;
  bool isLiked;
  String firstPostId;

  static String avatarUrlFor(String portrait) =>
      "http://tb.himg.baidu.com/sys/portrait/item/$portrait";

  PostItem({
    required this.tid,
    required this.title,
    required this.authorName,
    this.authorId = '',
    this.authorPortrait,
    this.forumId = '',
    required this.forumName,
    this.forumAvatar,
    required this.replyNum,
    required this.agreeNum,
    required this.lastTime,
    this.abstractText,
    this.imageUrls = const [],
    this.isAd = false,
    this.isTop = false,
    this.isLiked = false,
    this.firstPostId = '',
  });

  factory PostItem.fromThreadInfo(ThreadInfo t) {
    String? absText;
    try {
      if (t.abstract.isNotEmpty) absText = _s(t.abstract.first.text);
    } catch (_) {}

    List<String> imgs = [];
    try {
      for (final m in t.media) {
        // 取第一个可用的图片 URL：originPic > bigPic > srcPic > dynamicPic
        final url = _s(m.originPic.isNotEmpty ? m.originPic :
                     (m.bigPic.isNotEmpty ? m.bigPic :
                     (m.srcPic.isNotEmpty ? m.srcPic :
                     (m.dynamicPic.isNotEmpty ? m.dynamicPic : ''))));
        if (url.isNotEmpty) {
          imgs.add(url);
        }
      }
    } catch (_) {}

    String authorId = '';
    String authorName = '';
    String? portrait;
    try {
      final a = t.author;
      final aid = a.id.toInt();
      if (aid > 0) authorId = aid.toString();
      authorName = _s(a.nameShow.isNotEmpty ? a.nameShow : a.name);
      portrait = a.portrait.isNotEmpty ? a.portrait : null;
    } catch (_) {}
    if (authorId.isEmpty) authorId = t.authorId.toInt().toString();

    // 贴吧头像
    String? forumAvatar;
    try {
      final fi = t.forumInfo;
      if (fi.avatar.isNotEmpty) forumAvatar = fi.avatar;
    } catch (_) {}

    String? lastReplyTime;
    try {
      DateTime dateTime = DateTime.fromMillisecondsSinceEpoch(
        t.lastTimeInt * 1000,
      );
      DateTime now = DateTime.now();
      if (now.year == dateTime.year) {
        if (now.day == dateTime.day && now.month == dateTime.month) {
          Duration differ = now.difference(dateTime);
          if (!differ.isNegative && differ.inMinutes < 1) {
            lastReplyTime = null;
          } else if (!differ.isNegative && differ.inMinutes <= 40) {
            lastReplyTime = "${differ.inMinutes} 分钟前";
          } else {
            lastReplyTime = "今天 ${DateFormat('HH:mm').format(dateTime)}";
          }
        } else {
          lastReplyTime = DateFormat('MM-dd HH:mm').format(dateTime);
        }
      } else {
        lastReplyTime = DateFormat('yyyy-MM-dd HH:mm').format(dateTime);
      }
    } catch (_) {}

    return PostItem(
      tid: t.threadId.toInt() > 0 ? _s(t.threadId) : _s(t.id),
      title: _s(t.title),
      authorName: authorName,
      authorId: authorId,
      authorPortrait: portrait,
      forumId: t.forumId.toInt() > 0 ? _s(t.forumId) : '',
      forumName: _s(t.forumName),
      forumAvatar: forumAvatar,
      replyNum: _s(t.replyNum),
      agreeNum: _s(t.agreeNum),
      abstractText: absText,
      lastTime: lastReplyTime,
      imageUrls: imgs,
      isAd: t.hasAlaInfo(),
      isTop: t.isTop == 1,
      isLiked: t.hasAgree() && t.agree.hasAgree == 1,
      firstPostId: _s(t.firstPostId),
    );
  }
}
