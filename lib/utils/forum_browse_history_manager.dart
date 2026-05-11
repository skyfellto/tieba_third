import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/forum_browse_record.dart';

class ForumBrowseHistoryManager {
  static const String _storageKey = 'forum_browse_history';
  static const int _maxRecords = 200;

  static Future<void> saveRecord(ForumBrowseRecord record) async {
    final prefs = await SharedPreferences.getInstance();
    final raw = prefs.getString(_storageKey);
    List<ForumBrowseRecord> records = [];
    if (raw != null && raw.isNotEmpty) {
      final list = jsonDecode(raw) as List<dynamic>;
      records = list
          .map((e) => ForumBrowseRecord.fromJson(e as Map<String, dynamic>))
          .toList();
    }

    records.removeWhere((r) => r.fid == record.fid);
    records.insert(0, record);
    if (records.length > _maxRecords) {
      records = records.sublist(0, _maxRecords);
    }

    await prefs.setString(
      _storageKey,
      jsonEncode(records.map((r) => r.toJson()).toList()),
    );
  }

  static Future<List<ForumBrowseRecord>> loadRecords() async {
    final prefs = await SharedPreferences.getInstance();
    final raw = prefs.getString(_storageKey);
    if (raw == null || raw.isEmpty) return [];
    final list = jsonDecode(raw) as List<dynamic>;
    return list
        .map((e) => ForumBrowseRecord.fromJson(e as Map<String, dynamic>))
        .toList()
      ..sort((a, b) => b.browseTime.compareTo(a.browseTime));
  }
}
