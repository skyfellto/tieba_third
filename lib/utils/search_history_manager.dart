import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class SearchRecord {
  final String keyword;
  final int timestamp;

  SearchRecord({required this.keyword, required this.timestamp});

  Map<String, dynamic> toJson() => {'keyword': keyword, 'timestamp': timestamp};

  factory SearchRecord.fromJson(Map<String, dynamic> json) => SearchRecord(
        keyword: json['keyword'] as String? ?? '',
        timestamp: json['timestamp'] as int? ?? 0,
      );
}

class SearchHistoryManager {
  static const _key = 'search_history_list';
  static const int _defaultLimit = 7;

  static Future<SharedPreferences> _getPrefs() =>
      SharedPreferences.getInstance();

  /// 读取所有搜索历史，按时间倒序
  static Future<List<SearchRecord>> load() async {
    final prefs = await _getPrefs();
    final raw = prefs.getString(_key);
    if (raw == null || raw.isEmpty) return [];
    try {
      final list = jsonDecode(raw) as List;
      return list
          .map((e) => SearchRecord.fromJson(e as Map<String, dynamic>))
          .toList()
        ..sort((a, b) => b.timestamp.compareTo(a.timestamp));
    } catch (_) {
      return [];
    }
  }

  /// 保存一条搜索历史（去重后插入头部）
  static Future<void> save(String keyword) async {
    final list = await load();
    list.removeWhere((r) => r.keyword == keyword);
    list.insert(0, SearchRecord(keyword: keyword, timestamp: DateTime.now().millisecondsSinceEpoch));
    await _persist(list);
  }

  /// 删除指定词条
  static Future<void> delete(String keyword) async {
    final list = await load();
    list.removeWhere((r) => r.keyword == keyword);
    await _persist(list);
  }

  /// 清空所有记录
  static Future<void> clearAll() async {
    final prefs = await _getPrefs();
    await prefs.remove(_key);
  }

  /// 获取记录，可选限制数量
  static Future<List<SearchRecord>> getAll({int? limit}) async {
    final list = await load();
    final limitVal = limit ?? _defaultLimit;
    return limitVal > 0 && list.length > limitVal
        ? list.sublist(0, limitVal)
        : list;
  }

  static Future<void> _persist(List<SearchRecord> records) async {
    final prefs = await _getPrefs();
    await prefs.setString(_key, jsonEncode(records.map((r) => r.toJson()).toList()));
  }
}
