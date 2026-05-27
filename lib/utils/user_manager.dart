import 'package:shared_preferences/shared_preferences.dart';
import 'auth_notifier.dart';
import 'account_manager.dart';

class UserManager {
  static String? bduss;
  static String? stoken;
  static String? userName;
  static String? nameShow;
  static String? portrait;
  static String? tbs;
  static String? userId;
  static String? baiduId;
  static String? tiebaUid;

  static String? rawCookie;

  /// 延迟解析 rawCookie 为 Map，需要用哪个取哪个
  static Map<String, String> get cookieMap {
    if (rawCookie == null || rawCookie!.isEmpty) return {};
    final map = <String, String>{};
    for (final entry in rawCookie!.split(';')) {
      final parts = entry.trim().split('=');
      if (parts.length >= 2) {
        map[parts[0]] = parts.sublist(1).join('=');
      }
    }
    return map;
  }

  /// 快捷取某个 Cookie 值
  static String? cookie(String name) => cookieMap[name];

  static const _keyBDUSS = 'bduss';
  static const _keySTOKEN = 'stoken';
  static const _keyUserName = 'user_name';
  static const _keyNameShow = 'name_show';
  static const _keyPortrait = 'portrait';
  static const _keyTbs = 'tbs';
  static const _keyUserId = 'user_id';
  static const _keyBaiduId = 'baidu_id';
  static const _keyTiebaUid = 'tieba_uid';
  static const _keyRawCookie = 'raw_cookie';

  // 头像 URL（aiotieba 用 HTTP + tieba.baidu.com Referer）
  static String get avatarUrl => portrait != null
      ? "http://tb.himg.baidu.com/sys/portrait/item/$portrait"
      : '';

  static Map<String, String> get avatarHeaders => const {
    "Referer": "https://tieba.baidu.com",
  };

  // 初始化加载本地数据
  static Future<void> init() async {
    final sp = await SharedPreferences.getInstance();
    bduss = sp.getString(_keyBDUSS);
    stoken = sp.getString(_keySTOKEN);
    userName = sp.getString(_keyUserName);
    nameShow = sp.getString(_keyNameShow);
    portrait = sp.getString(_keyPortrait);
    tbs = sp.getString(_keyTbs);
    userId = sp.getString(_keyUserId);
    baiduId = sp.getString(_keyBaiduId);
    tiebaUid = sp.getString(_keyTiebaUid);
    rawCookie = sp.getString(_keyRawCookie);
  }

  // 登录保存
  static Future<void> login({
    required String bduss,
    required String stoken,
    String? userName,
    String? nameShow,
    String? portrait,
    String? tbs,
    String? userId,
    String? baiduId,
    String? tiebaUid,
    String? rawCookie,
  }) async {
    final sp = await SharedPreferences.getInstance();
    await sp.setString(_keyBDUSS, bduss);
    await sp.setString(_keySTOKEN, stoken);
    if (userName != null) await sp.setString(_keyUserName, userName);
    if (nameShow != null) await sp.setString(_keyNameShow, nameShow);
    if (portrait != null) await sp.setString(_keyPortrait, portrait);
    if (tbs != null) await sp.setString(_keyTbs, tbs);
    if (userId != null) await sp.setString(_keyUserId, userId);
    if (baiduId != null) await sp.setString(_keyBaiduId, baiduId);
    if (tiebaUid != null) await sp.setString(_keyTiebaUid, tiebaUid);
    if (rawCookie != null) await sp.setString(_keyRawCookie, rawCookie);
    UserManager.bduss = bduss;
    UserManager.stoken = stoken;
    UserManager.userName = userName;
    UserManager.nameShow = nameShow;
    UserManager.portrait = portrait;
    UserManager.tbs = tbs;
    UserManager.userId = userId;
    UserManager.baiduId = baiduId;
    UserManager.tiebaUid = tiebaUid;
    UserManager.rawCookie = rawCookie;
    AuthNotifier().notify();
    AccountManager.onUserLogin();
  }
  static bool get isLogin => bduss != null && stoken != null;

  // 退出登录
  static Future<void> logout() async {
    await clearCurrent();
    AuthNotifier().notify();
  }

  /// 清除当前账号的 UserManager 静态字段和 SharedPreferences key（不调 AuthNotifier）
  static Future<void> clearCurrent() async {
    final sp = await SharedPreferences.getInstance();
    await sp.remove(_keyBDUSS);
    await sp.remove(_keySTOKEN);
    await sp.remove(_keyUserName);
    await sp.remove(_keyNameShow);
    await sp.remove(_keyPortrait);
    await sp.remove(_keyTbs);
    await sp.remove(_keyUserId);
    await sp.remove(_keyBaiduId);
    await sp.remove(_keyTiebaUid);
    await sp.remove(_keyRawCookie);
    bduss = null;
    stoken = null;
    userName = null;
    nameShow = null;
    portrait = null;
    tbs = null;
    userId = null;
    baiduId = null;
    tiebaUid = null;
    rawCookie = null;
  }
}
