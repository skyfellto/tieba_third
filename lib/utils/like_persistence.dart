import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

/// 点赞数据持久化工具，统一管理本地缓存的点赞数覆盖。
class LikePersistence {
  final String storageKey;

  LikePersistence(this.storageKey);

  Map<String, int> _likedAgreeMap = {};

  /// 从 SharedPreferences 恢复
  Future<void> init() async {
    final prefs = await SharedPreferences.getInstance();
    final raw = prefs.getString(storageKey);
    if (raw != null && raw.isNotEmpty) {
      try {
        _likedAgreeMap = (jsonDecode(raw) as Map<String, dynamic>).map(
          (k, v) => MapEntry(k, (v as num).toInt()),
        );
      } catch (_) {}
    }
  }

  /// 将持久化的点赞数覆盖到帖子列表
  void apply(List<dynamic> posts, String Function(dynamic post) tidGetter,
      String Function(dynamic post) agreeNumGetter,
      {void Function(dynamic post, String newNum)? onUpdate}) {
    for (final p in posts) {
      final tid = tidGetter(p);
      final saved = _likedAgreeMap[tid];
      if (saved != null) {
        final apiNum = int.tryParse(agreeNumGetter(p)) ?? 0;
        final newNum = "${saved > apiNum ? saved : apiNum}";
        onUpdate?.call(p, newNum);
      }
    }
  }

  /// 记录点赞数到内存
  void record(String tid, int agreeNum) {
    _likedAgreeMap[tid] = agreeNum + 1;
  }

  /// 保存到 SharedPreferences
  Future<void> save() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(storageKey, jsonEncode(_likedAgreeMap));
  }
}