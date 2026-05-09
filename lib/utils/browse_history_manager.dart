import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/browse_record.dart';

class BrowseHistoryManager {
  static const String _storageKey = 'browse_history';
  static const int _maxRecords = 200;

  /// 保存浏览记录（去重：同一 tid 覆盖旧记录）
  static Future<void> saveRecord(BrowseRecord record) async {
    final prefs = await SharedPreferences.getInstance();
    final raw = prefs.getString(_storageKey);
    List<BrowseRecord> records = [];
    if (raw != null && raw.isNotEmpty) {
      final list = jsonDecode(raw) as List<dynamic>;
      records = list
          .map((e) => BrowseRecord.fromJson(e as Map<String, dynamic>))
          .toList();
    }

    // 去重：移除相同 tid 的旧记录
    records.removeWhere((r) => r.tid == record.tid);

    // 插入新记录到最前面
    records.insert(0, record);

    // 限制最大条数
    if (records.length > _maxRecords) {
      records = records.sublist(0, _maxRecords);
    }

    await prefs.setString(
      _storageKey,
      jsonEncode(records.map((r) => r.toJson()).toList()),
    );
  }

  /// 加载所有浏览记录（按时间倒序）
  static Future<List<BrowseRecord>> loadRecords() async {
    final prefs = await SharedPreferences.getInstance();
    final raw = prefs.getString(_storageKey);
    if (raw == null || raw.isEmpty) return [];
    final list = jsonDecode(raw) as List<dynamic>;
    return list
        .map((e) => BrowseRecord.fromJson(e as Map<String, dynamic>))
        .toList()
      ..sort((a, b) => b.browseTime.compareTo(a.browseTime));
  }
}
