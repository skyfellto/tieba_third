import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import '../generated/PbContent.pb.dart';
import '../generated/User.pb.dart' as usermodel;
import '../widgets/post_video_card.dart';
import 'emoticon_helper.dart';

/// 帖子内容解析工具类
class PostContentParser {
  /// 纯文本类型集合（对应 tiebalite PureTextType）
  static const textTypes = {0, 9, 25, 27, 35, 39, 40};

  /// 提取纯文本（包含 type 0/1/2/4）。type=2 为 emoji，名称在 c 字段
  static String extractText(List<PbContent> contents) {
    final buf = StringBuffer();
    for (final c in contents) {
      if (c.type == 2 && c.c.isNotEmpty) {
        if (buf.isNotEmpty) buf.write('\n');
        buf.write(c.c);
      } else if (textTypes.contains(c.type) && c.text.isNotEmpty) {
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
      if (c.type == 5) {
        if (buf.isNotEmpty) buf.write('\n');
        buf.write('[视频]');
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
      if (replyStartIdx >= 0 &&
          (i == replyStartIdx || i == replyStartIdx + 1)) {
        continue;
      }
      if (c.uid.toInt() > 0) continue;
      if (c.type == 2 && c.c.isNotEmpty) {
        if (buf.isNotEmpty) buf.write(' ');
        buf.write(c.c.trim());
      } else if (textTypes.contains(c.type) && c.text.isNotEmpty) {
        final cleanText = c.text.trim().replaceAll('\n', ' ');
        if (buf.isNotEmpty && cleanText.isNotEmpty) buf.write(' ');
        buf.write(cleanText);
      }
      if (c.type == 1 && c.text.isNotEmpty) {
        final cleanText = c.text.trim().replaceAll('\n', ' ');
        if (buf.isNotEmpty && cleanText.isNotEmpty) buf.write(' ');
        buf.write(cleanText);
      }
      if (c.type == 5) {
        if (buf.isNotEmpty) buf.write(' ');
        buf.write('[视频]');
      }
    }

    String result = buf.toString().trim();
    // 如果开头是中文或英文冒号，则移除
    if (result.startsWith(':') || result.startsWith('：')) {
      result = result.substring(1).trimLeft(); // 移除后再去掉可能残留的空格
    }
    return result;
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
  ///
  /// 匹配两种格式：
  /// 1. type=4（@用户类型，含 uid）— 楼中楼 API 返回此格式
  /// 2. type=0 + uid > 0 — 部分旧格式
  static String? extractReplyTarget(List<PbContent> contents) {
    for (final c in contents) {
      if (c.type == 4 && c.uid.toInt() > 0 && c.text.isNotEmpty) {
        return c.text.trim();
      }
      if (c.type == 0 && c.uid.toInt() > 0 && c.text.isNotEmpty) {
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

  /// 将 PbContent 列表构建为 InlineSpan 列表（支持 emoji 图片内联）
  /// [skipMention] 为 true 时跳过 "回复 xxx" 结构
  static List<InlineSpan> buildContentSpans(
    List<PbContent> contents, {
    required BuildContext context,
    double emojiSize = 18,
    TextStyle? textStyle,
    bool skipMention = false,
  }) {
    int replyStartIdx = -1;
    if (skipMention) {
      for (int i = 0; i < contents.length; i++) {
        if (contents[i].uid.toInt() > 0) {
          replyStartIdx = i - 1;
          break;
        }
      }
    }

    final spans = <InlineSpan>[];
    for (int i = 0; i < contents.length; i++) {
      final c = contents[i];
      if (replyStartIdx >= 0 && (i == replyStartIdx || i == replyStartIdx + 1)) {
        continue;
      }

      if (c.type == 2 && c.c.isNotEmpty) {
        final imgPath = EmoticonHelper.getImagePath(c.c);
        if (imgPath != null) {
          spans.add(WidgetSpan(
            alignment: PlaceholderAlignment.middle,
            child: Image.asset(imgPath, width: emojiSize, height: emojiSize),
          ));
        } else {
          spans.add(TextSpan(text: c.c, style: textStyle));
        }
      } else if (c.type == 1 && c.linkType == 1 && c.link.isNotEmpty) {
        // 帖子链接：图标 + 蓝色可点击文字
        final tid = _extractThreadId(c.link);
        final displayText = c.text.isNotEmpty ? c.text : '查看帖子';
        if (tid != null) {
          void onLinkTap() {
            if (context.mounted) context.push('/post/$tid');
          }
          spans.add(
            WidgetSpan(
              alignment: PlaceholderAlignment.middle,
              child: Padding(
                padding: const EdgeInsets.only(right: 2),
                child: GestureDetector(
                  onTap: onLinkTap,
                  child: Icon(Icons.link, size: 14, color: Colors.blue),
                ),
              ),
            ),
          );
          spans.add(
            TextSpan(
              text: displayText,
              style: (textStyle ?? const TextStyle()).copyWith(color: Colors.blue),
              recognizer: TapGestureRecognizer()..onTap = onLinkTap,
            ),
          );
        } else {
          spans.add(TextSpan(text: displayText, style: textStyle));
        }
      } else if (c.type == 4 && c.uid.toInt() > 0 && c.text.isNotEmpty) {
        // @用户：蓝色可点击
        final uid = c.uid.toInt();
        final text = c.text;
        void onUserTap() {
          if (context.mounted) context.push('/user/$uid');
        }
        spans.add(
          TextSpan(
            text: text,
            style: (textStyle ?? const TextStyle()).copyWith(color: Colors.blue),
            recognizer: TapGestureRecognizer()..onTap = onUserTap,
          ),
        );
      } else if (c.type == 5 && c.link.isNotEmpty) {
        // 视频：嵌入视频卡片
        spans.add(
          WidgetSpan(
            alignment: PlaceholderAlignment.middle,
            child: PostVideoCard(
              videoUrl: c.link,
              thumbnailUrl: c.src.isNotEmpty ? c.src : null,
              bsize: c.bsize.isNotEmpty ? c.bsize : null,
            ),
          ),
        );
      } else if (_isTextTypeForSpan(c.type) && c.text.isNotEmpty) {
        var t = c.text.trim();
        // 如果第一个 span 以冒号开头，去掉（避免和手动添加的 ： 重复）
        if (spans.isEmpty && (t.startsWith('：') || t.startsWith(':'))) {
          t = t.substring(1).trimLeft();
        }
        if (t.isNotEmpty) {
          spans.add(TextSpan(text: t, style: textStyle));
        }
      }
    }
    return spans;
  }

  /// 从链接 URL 中提取帖子 ID（/p/数字）
  static String? _extractThreadId(String link) {
    final regExp = RegExp(r'/p/(\d+)');
    final match = regExp.firstMatch(link);
    return match?.group(1);
  }

  static bool _isTextTypeForSpan(int type) {
    return type == 0 || type == 1 || type == 4 || type == 9 ||
        type == 25 || type == 27 || type == 35 || type == 39 || type == 40;
  }
}
