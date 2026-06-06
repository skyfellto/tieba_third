import 'package:flutter/foundation.dart';
import '../network/tieba_api.dart';
import 'user_manager.dart';

/// 未读消息数管理器（单例）
/// 管理点赞/回复/@消息的未读数，供 WodePage 和 MessagesPage 共享。
class MessageCountManager extends ChangeNotifier {
  MessageCountManager._();
  static final MessageCountManager _instance = MessageCountManager._();
  factory MessageCountManager() => _instance;

  int agree = 0;
  int replyme = 0;
  int atme = 0;

  /// 总未读数
  int get total => agree + replyme + atme;

  /// 从 API 获取最新消息数
  Future<void> fetch() async {
    if (!UserManager.isLogin) return;
    final data = await TiebaApi.fetchMessageCounts(
      bduss: UserManager.bduss!,
      stoken: UserManager.stoken!,
    );
    if (data == null) return;
    final msg = data['message'] as Map<String, dynamic>? ?? {};
    agree = _parseInt(msg['agree']);
    replyme = _parseInt(msg['replyme']);
    atme = _parseInt(msg['atme']);
    notifyListeners();
  }

  /// 清除点赞未读数
  void clearAgree() {
    agree = 0;
    notifyListeners();
  }

  /// 清除回复未读数
  void clearReplyme() {
    replyme = 0;
    notifyListeners();
  }

  /// 清除 @未读数
  void clearAtme() {
    atme = 0;
    notifyListeners();
  }

  static int _parseInt(dynamic v) {
    if (v is int) return v;
    if (v is String) return int.tryParse(v) ?? 0;
    return 0;
  }
}