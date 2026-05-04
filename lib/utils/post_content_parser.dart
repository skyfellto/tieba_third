import 'package:intl/intl.dart';
import '../generated/PbContent.pb.dart';
import '../generated/User.pb.dart' as usermodel;

/// 帖子内容解析工具类
class PostContentParser {
  /// 纯文本类型集合（对应 tiebalite PureTextType）
  static const textTypes = {0, 9, 27, 35, 40};

  /// 提取纯文本（包含 type 0/1/4）
  static String extractText(List<PbContent> contents) {
    final buf = StringBuffer();
    for (final c in contents) {
      if (textTypes.contains(c.type) && c.text.isNotEmpty) {
        if (buf.isNotEmpty) buf.write('\n');
        buf.write(c.text);
      }
      if (c.type == 1 && c.text.isNotEmpty) {
        if (buf.isNotEmpty) buf.write('\n');
        buf.write(c.text);
      }
      if (c.type == 4 && c.text.isNotEmpty) {
        if (buf.isNotEmpty) buf.write('\n');
        buf.write(c.text);
      }
    }
    return buf.toString();
  }

  /// 提取文本，跳过"回复 XXX"结构中的前缀和带 uid 的条目
  static String extractTextNoMention(List<PbContent> contents) {
    final buf = StringBuffer();
    int replyStartIdx = -1;
    for (int i = 0; i < contents.length; i++) {
      if (contents[i].uid.toInt() > 0) {
        replyStartIdx = i - 1;
        break;
      }
    }
    for (int i = 0; i < contents.length; i++) {
      final c = contents[i];
      if (replyStartIdx >= 0 && (i == replyStartIdx || i == replyStartIdx + 1))
        continue;
      if (c.uid.toInt() > 0) continue;
      if (textTypes.contains(c.type) && c.text.isNotEmpty) {
        final cleanText = c.text.trim().replaceAll('\n', ' ');
        if (buf.isNotEmpty && cleanText.isNotEmpty) buf.write(' ');
        buf.write(cleanText);
      }
      if (c.type == 1 && c.text.isNotEmpty) {
        final cleanText = c.text.trim().replaceAll('\n', ' ');
        if (buf.isNotEmpty && cleanText.isNotEmpty) buf.write(' ');
        buf.write(cleanText);
      }
    }
    return buf.toString().trim();
  }

  /// 提取图片 URL 列表
  static List<String> extractImages(List<PbContent> contents) {
    final urls = <String>[];
    for (final c in contents) {
      if (c.type == 3) {
        final url = c.bigCdnSrc.isNotEmpty
            ? c.bigCdnSrc
            : (c.cdnSrc.isNotEmpty ? c.cdnSrc : c.src);
        if (url.isNotEmpty) urls.add(url);
      } else if (c.type == 20 && c.src.isNotEmpty) {
        urls.add(c.src);
      }
    }
    return urls;
  }

  /// 从 PbContent 中提取"回复 XXX"的目标用户
  static String? extractReplyTarget(List<PbContent> contents) {
    for (final c in contents) {
      if (c.uid.toInt() > 0 && c.text.isNotEmpty) {
        return c.text.trim();
      }
    }
    return null;
  }

  /// 格式化时间戳
  static String formatTime(int timestamp) {
    try {
      final dateTime = DateTime.fromMillisecondsSinceEpoch(timestamp * 1000);
      final now = DateTime.now();
      if (now.year == dateTime.year) {
        if (now.day == dateTime.day && now.month == dateTime.month) {
          final diff = now.difference(dateTime);
          if (!diff.isNegative && diff.inMinutes < 1) return '刚刚';
          if (!diff.isNegative && diff.inMinutes <= 40) {
            return '${diff.inMinutes} 分钟前';
          }
          return "今天 ${DateFormat('HH:mm').format(dateTime)}";
        }
        return DateFormat('MM-dd HH:mm').format(dateTime);
      } else {
        return DateFormat('yyyy-MM-dd HH:mm').format(dateTime);
      }
    } catch (_) {
      return '';
    }
  }

  /// 获取作者显示名（nameShow > name）
  static String getAuthorName(usermodel.User u) {
    return u.nameShow.isNotEmpty ? u.nameShow : u.name;
  }
}
