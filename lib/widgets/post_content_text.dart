import 'package:flutter/material.dart';
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
    return Text.rich(
      TextSpan(children: spans),
      style: style,
    );
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
      } else if (_isTextType(c.type) && c.text.isNotEmpty) {
        spans.add(TextSpan(text: _cleanText(c.text)));
      }
    }
    return spans;
  }

  static bool _isTextType(int type) {
    return type == 0 || type == 1 || type == 4 || type == 9 ||
        type == 25 || type == 27 || type == 35 || type == 39 || type == 40;
  }

  static String _cleanText(String text) {
    return text.trim().replaceAll('\n', ' ');
  }
}
