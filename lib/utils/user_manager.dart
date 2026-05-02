import 'package:shared_preferences/shared_preferences.dart';
import 'auth_notifier.dart';

class UserManager {
  static String? bduss;
  static String? stoken;
  static String? userName;
  static String? portrait;
  static String? tbs;
  static String? userId;

  static const _keyBDUSS = 'bduss';
  static const _keySTOKEN = 'stoken';
  static const _keyUserName = 'user_name';
  static const _keyPortrait = 'portrait';
  static const _keyTbs = 'tbs';
  static const _keyUserId = 'user_id';

  // 头像 URL（aiotieba 用 HTTP + tieba.baidu.com Referer）
  static String get avatarUrl =>
      portrait != null ? "http://tb.himg.baidu.com/sys/portrait/item/$portrait" : '';

  static Map<String, String> get avatarHeaders => const {"Referer": "https://tieba.baidu.com"};

  // 初始化加载本地数据
  static Future<void> init() async {
    final sp = await SharedPreferences.getInstance();
    bduss = sp.getString(_keyBDUSS);
    stoken = sp.getString(_keySTOKEN);
    userName = sp.getString(_keyUserName);
    portrait = sp.getString(_keyPortrait);
    tbs = sp.getString(_keyTbs);
    userId = sp.getString(_keyUserId);
  }

  // 登录保存
  static Future<void> login({
    required String bduss,
    required String stoken,
    String? userName,
    String? portrait,
    String? tbs,
    String? userId,
  }) async {
    final sp = await SharedPreferences.getInstance();
    await sp.setString(_keyBDUSS, bduss);
    await sp.setString(_keySTOKEN, stoken);
    if (userName != null) await sp.setString(_keyUserName, userName);
    if (portrait != null) await sp.setString(_keyPortrait, portrait);
    if (tbs != null) await sp.setString(_keyTbs, tbs);
    if (userId != null) await sp.setString(_keyUserId, userId);
    UserManager.bduss = bduss;
    UserManager.stoken = stoken;
    UserManager.userName = userName;
    UserManager.portrait = portrait;
    UserManager.tbs = tbs;
    UserManager.userId = userId;
    AuthNotifier().notify();
  }

  // 是否登录
  static bool get isLogin => bduss != null && stoken != null;

  // 退出登录
  static Future<void> logout() async {
    final sp = await SharedPreferences.getInstance();
    await sp.clear();
    bduss = null;
    stoken = null;
    userName = null;
    portrait = null;
    tbs = null;
    userId = null;
    AuthNotifier().notify();
  }
}