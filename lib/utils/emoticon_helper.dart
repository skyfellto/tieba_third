import 'dart:convert';
import 'package:flutter/services.dart';

class EmoticonHelper {
  static Map<String, String>? _emoticonMap;

  /// 加载 emoticon.json 并构建 name → asset路径 的映射
  static Future<void> init() async {
    if (_emoticonMap != null) return;
    final jsonStr = await rootBundle.loadString('emoticon/emoticon.json');
    final map = jsonDecode(jsonStr) as Map<String, dynamic>;
    // ignore: unnecessary_brace_in_string_interps
    _emoticonMap = map.map((k, v) => MapEntry(k, 'emoticon/${v}.webp'));
  }

  /// 获取 emoji 名称对应的图片 asset 路径
  static String? getImagePath(String emojiName) {
    return _emoticonMap?[emojiName];
  }

  /// 判断是否有对应图片
  static bool hasImage(String emojiName) =>
      _emoticonMap?.containsKey(emojiName) ?? false;
}
