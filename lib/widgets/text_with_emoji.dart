import 'package:flutter/material.dart';
import '../utils/emoticon_helper.dart';

/// 将文本中的 #(表情名) / #（表情名） 渲染为内联 emoji 图片
class TextWithEmoji extends StatelessWidget {
  final String text;
  final int? maxLines;
  final double emojiSize;
  final TextStyle? style;

  /// 匹配 #(表情名) 或 #（表情名）
  static final RegExp _emojiPattern = RegExp(r'#\(([^)]+)\)|#（([^）]+)）');

  const TextWithEmoji(
    this.text, {
    super.key,
    this.maxLines,
    this.emojiSize = 18,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    if (text.isEmpty) return const SizedBox.shrink();

    final spans = <InlineSpan>[];
    int lastEnd = 0;

    for (final match in _emojiPattern.allMatches(text)) {
      // 匹配前的纯文本
      if (match.start > lastEnd) {
        spans.add(TextSpan(text: text.substring(lastEnd, match.start)));
      }
      // emoji 名称（两组捕获之一）
      final emojiName = match.group(1) ?? match.group(2) ?? '';
      final imgPath = EmoticonHelper.getImagePath(emojiName);
      if (imgPath != null) {
        spans.add(
          WidgetSpan(
            alignment: PlaceholderAlignment.middle,
            child: Image.asset(imgPath, width: emojiSize, height: emojiSize),
          ),
        );
      } else {
        // 没有对应图片则原样显示
        spans.add(TextSpan(text: '#($emojiName)'));
      }
      lastEnd = match.end;
    }
    // 剩余纯文本
    if (lastEnd < text.length) {
      spans.add(TextSpan(text: text.substring(lastEnd)));
    }

    return Text.rich(
      TextSpan(children: spans),
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: style,
    );
  }
}