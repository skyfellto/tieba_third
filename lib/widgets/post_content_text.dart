import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:go_router/go_router.dart';
import '../generated/PbContent.pb.dart';
import '../utils/emoticon_helper.dart';

/// 将 PbContent 列表渲染为带内联 emoji 图片的文本
class PostContentText extends StatelessWidget {
  final List<PbContent> contents;
  final double emojiSize;
  final TextStyle? style;

  const PostContentText({
    super.key,
    required this.contents,
    this.emojiSize = 20,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    final spans = _buildSpans(context);
    if (spans.isEmpty) return const SizedBox.shrink();
    return Text.rich(TextSpan(children: spans), style: style);
  }

  List<InlineSpan> _buildSpans(BuildContext context) {
    final spans = <InlineSpan>[];
    for (final c in contents) {
      if (c.type == 2 && c.c.isNotEmpty) {
        // emoji：尝试显示图片，否则回退到文本
        final imgPath = EmoticonHelper.getImagePath(c.c);
        if (imgPath != null) {
          spans.add(
            WidgetSpan(
              alignment: PlaceholderAlignment.middle,
              child: Image.asset(imgPath, width: emojiSize, height: emojiSize),
            ),
          );
        } else {
          spans.add(TextSpan(text: c.c, style: style));
        }
      } else if (c.type == 1 && c.linkType == 1 && c.link.isNotEmpty) {
        // 帖子链接（linkType=1）：图标 + 可点击蓝色文字
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
                  child: Transform.rotate(
                    angle: -pi / 4,
                    child: Icon(
                      Icons.link,
                      size: (style?.fontSize ?? 14) + 2,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ),
            ),
          );
          spans.add(
            TextSpan(
              text: displayText,
              style: (style ?? const TextStyle()).copyWith(color: Colors.blue),
              recognizer: TapGestureRecognizer()..onTap = onLinkTap,
            ),
          );
        } else {
          // 无法提取 tid 时降级为纯文本
          spans.add(TextSpan(text: displayText, style: style));
        }
      } else if (c.type == 4 && c.uid.toInt() > 0 && c.text.isNotEmpty) {
        // @用户：蓝色可点击，跳转 /user/$uid
        final uid = c.uid.toInt();
        final displayText = c.text;
        void onUserTap() {
          if (context.mounted) context.push('/user/$uid');
        }
        spans.add(
          TextSpan(
            text: displayText,
            style: (style ?? const TextStyle()).copyWith(color: Colors.blue),
            recognizer: TapGestureRecognizer()..onTap = onUserTap,
          ),
        );
      } else if (_isTextType(c.type) && c.text.isNotEmpty) {
        spans.add(TextSpan(text: _cleanText(c.text)));
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

  static bool _isTextType(int type) {
    return type == 0 ||
        type == 1 ||
        type == 4 ||
        type == 9 ||
        type == 25 ||
        type == 27 ||
        type == 35 ||
        type == 39 ||
        type == 40;
  }

  static String _cleanText(String text) {
    return text;
  }
}
