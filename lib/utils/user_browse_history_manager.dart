import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/user_browse_record.dart';

class UserBrowseHistoryManager {
  static const String _key = 'user_browse_history';
  static const int _maxRecords = 200;

  static Future<void> saveRecord({
    required String uid,
    required String userName,
    String? nameShow,
    String? portrait,
  }) async {
    if (uid.isEmpty) return;
    final prefs = await SharedPreferences.getInstance();
    final records = await _load(prefs);
    records.removeWhere((r) => r.uid == uid);
    records.insert(0, UserBrowseRecord.withNow(
      uid: uid, userName: userName, nameShow: nameShow, portrait: portrait,
    ));
    if (records.length > _maxRecords) records.removeRange(_maxRecords, records.length);
    await prefs.setString(_key, _encode(records));
  }

  static Future<List<UserBrowseRecord>> loadRecords() async {
    final prefs = await SharedPreferences.getInstance();
    return _load(prefs);
  }

  static Future<void> deleteRecord(String uid) async {
    final prefs = await SharedPreferences.getInstance();
    final records = await _load(prefs);
    records.removeWhere((r) => r.uid == uid);
    await prefs.setString(_key, _encode(records));
  }

  static Future<void> clearAll() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_key);
  }

  static Future<List<UserBrowseRecord>> _load(SharedPreferences prefs) async {
    final json = prefs.getString(_key);
    if (json == null || json.isEmpty) return [];
    try {
      final list = _decode(json);
      list.sort((a, b) => b.browseTime.compareTo(a.browseTime));
      return list;
    } catch (_) {
      return [];
    }
  }

  static String _encode(List<UserBrowseRecord> records) {
    return jsonEncode(records.map((r) => r.toJson()).toList());
  }

  static List<UserBrowseRecord> _decode(String json) {
    final decoded = jsonDecode(json) as List;
    return decoded.map((e) => UserBrowseRecord.fromJson(e as Map<String, dynamic>)).toList();
  }
}
