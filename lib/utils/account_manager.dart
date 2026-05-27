import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'user_manager.dart';
import 'auth_notifier.dart';
import 'personalization_manager.dart';

class AccountManager {
  static const _keyAccountList = 'account_list';
  static const _keyCurrentBduss = 'current_account_bduss';

  static final List<_AccountData> _accounts = [];
  static String? _currentBduss;
  static bool _restoring = false;

  static List<AccountInfo> get accounts =>
      _accounts.map((a) => AccountInfo(bduss: a.bduss, userName: a.userName, nameShow: a.nameShow, portrait: a.portrait)).toList();
  static String? get currentBduss => _currentBduss;

  static Future<void> init() async {
    final sp = await SharedPreferences.getInstance();
    final raw = sp.getString(_keyAccountList);
    if (raw != null && raw.isNotEmpty) {
      final list = jsonDecode(raw) as List;
      _accounts.clear();
      for (final e in list) {
        _accounts.add(_AccountData.fromJson(e as Map<String, dynamic>));
      }
    }
    _currentBduss = sp.getString(_keyCurrentBduss);

    // 迁移旧版单账号数据
    if (_accounts.isEmpty && UserManager.bduss != null) {
      _migrateLegacyData();
      await _save(sp);
    }

    // 恢复当前账号到 UserManager
    if (_currentBduss != null) {
      final acc = _accounts.cast<_AccountData?>().firstWhere(
        (a) => a!.bduss == _currentBduss,
        orElse: () => null,
      );
      if (acc != null) {
        _restoring = true;
        await UserManager.login(
          bduss: acc.bduss,
          stoken: acc.stoken,
          userName: acc.userName,
          nameShow: acc.nameShow,
          portrait: acc.portrait,
          tbs: acc.tbs,
          userId: acc.userId,
          baiduId: acc.baiduId,
          tiebaUid: acc.tiebaUid,
          rawCookie: acc.rawCookie,
        );
        _restoring = false;
      } else {
        // 当前账号已不存在，清除当前标识
        _currentBduss = null;
        await sp.remove(_keyCurrentBduss);
        await UserManager.clearCurrent();
      }
    }
    await PersonalizationManager.init();
    PersonalizationManager.loadForAccount(_currentBduss ?? '');
  }

  /// UserManager.login() 后自动调用，将当前凭证同步到账号列表
  static Future<void> onUserLogin() async {
    if (_restoring) return;
    final bduss = UserManager.bduss;
    if (bduss == null) return;

    final sp = await SharedPreferences.getInstance();
    final existing = _accounts.indexWhere((a) => a.bduss == bduss);
    final data = _AccountData(
      bduss: bduss,
      stoken: UserManager.stoken ?? '',
      userName: UserManager.userName,
      nameShow: UserManager.nameShow,
      portrait: UserManager.portrait,
      tbs: UserManager.tbs,
      userId: UserManager.userId,
      baiduId: UserManager.baiduId,
      tiebaUid: UserManager.tiebaUid,
      rawCookie: UserManager.rawCookie,
    );
    if (existing >= 0) {
      _accounts[existing] = data;
    } else {
      _accounts.add(data);
    }
    _currentBduss = bduss;
    await _save(sp);
  }

  /// 切换到指定账号
  static Future<void> switchToAccount(String bduss) async {
    final acc = _accounts.cast<_AccountData?>().firstWhere(
      (a) => a!.bduss == bduss,
      orElse: () => null,
    );
    if (acc == null) return;

    final sp = await SharedPreferences.getInstance();
    _currentBduss = bduss;
    await sp.setString(_keyCurrentBduss, bduss);

    await UserManager.clearCurrent();
    _restoring = true;
    await UserManager.login(
      bduss: acc.bduss,
      stoken: acc.stoken,
      userName: acc.userName,
      nameShow: acc.nameShow,
      portrait: acc.portrait,
      tbs: acc.tbs,
      userId: acc.userId,
      baiduId: acc.baiduId,
      tiebaUid: acc.tiebaUid,
      rawCookie: acc.rawCookie,
    );
    _restoring = false;
    PersonalizationManager.loadForAccount(bduss);
  }

  /// 退出当前账号
  static Future<void> logoutCurrent() async {
    final sp = await SharedPreferences.getInstance();
    final oldBduss = _currentBduss;
    if (_currentBduss != null) {
      _accounts.removeWhere((a) => a.bduss == _currentBduss);
    }
    await UserManager.clearCurrent();
    if (oldBduss != null) {
      await PersonalizationManager.clearForAccount(oldBduss);
    }
    AuthNotifier().notify();

    if (_accounts.isNotEmpty) {
      // 自动切换到剩余的第一个账号
      final first = _accounts.first;
      _currentBduss = first.bduss;
      await sp.setString(_keyCurrentBduss, first.bduss);
      await _save(sp);
      _restoring = true;
      await UserManager.login(
        bduss: first.bduss,
        stoken: first.stoken,
        userName: first.userName,
        nameShow: first.nameShow,
        portrait: first.portrait,
        tbs: first.tbs,
        userId: first.userId,
        baiduId: first.baiduId,
        tiebaUid: first.tiebaUid,
        rawCookie: first.rawCookie,
      );
      _restoring = false;
    } else {
      _currentBduss = null;
      await sp.remove(_keyCurrentBduss);
      await _save(sp);
    }
  }

  static void _migrateLegacyData() {
    final bduss = UserManager.bduss;
    if (bduss == null) return;
    _accounts.add(_AccountData(
      bduss: bduss,
      stoken: UserManager.stoken ?? '',
      userName: UserManager.userName,
      nameShow: UserManager.nameShow,
      portrait: UserManager.portrait,
      tbs: UserManager.tbs,
      userId: UserManager.userId,
      baiduId: UserManager.baiduId,
      tiebaUid: UserManager.tiebaUid,
      rawCookie: UserManager.rawCookie,
    ));
    _currentBduss = bduss;
  }

  static Future<void> _save(SharedPreferences sp) async {
    await sp.setString(
      _keyAccountList,
      jsonEncode(_accounts.map((a) => a.toJson()).toList()),
    );
    if (_currentBduss != null) {
      await sp.setString(_keyCurrentBduss, _currentBduss!);
    }
  }
}

class _AccountData {
  final String bduss;
  final String stoken;
  final String? userName;
  final String? nameShow;
  final String? portrait;
  final String? tbs;
  final String? userId;
  final String? baiduId;
  final String? tiebaUid;
  final String? rawCookie;

  _AccountData({
    required this.bduss,
    required this.stoken,
    this.userName,
    this.nameShow,
    this.portrait,
    this.tbs,
    this.userId,
    this.baiduId,
    this.tiebaUid,
    this.rawCookie,
  });

  Map<String, dynamic> toJson() => {
    'bduss': bduss,
    'stoken': stoken,
    'userName': userName,
    'nameShow': nameShow,
    'portrait': portrait,
    'tbs': tbs,
    'userId': userId,
    'baiduId': baiduId,
    'tiebaUid': tiebaUid,
    'rawCookie': rawCookie,
  };

  factory _AccountData.fromJson(Map<String, dynamic> json) => _AccountData(
    bduss: json['bduss'] as String? ?? '',
    stoken: json['stoken'] as String? ?? '',
    userName: json['userName'] as String?,
    nameShow: json['nameShow'] as String?,
    portrait: json['portrait'] as String?,
    tbs: json['tbs'] as String?,
    userId: json['userId'] as String?,
    baiduId: json['baiduId'] as String?,
    tiebaUid: json['tiebaUid'] as String?,
    rawCookie: json['rawCookie'] as String?,
  );
}

class AccountInfo {
  final String bduss;
  final String? userName;
  final String? nameShow;
  final String? portrait;

  AccountInfo({required this.bduss, this.userName, this.nameShow, this.portrait});
}