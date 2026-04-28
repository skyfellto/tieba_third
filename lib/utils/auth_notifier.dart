import 'package:flutter/foundation.dart';

/// 登录状态变化通知器，用于触发 GoRouter 刷新
class AuthNotifier extends ValueNotifier<bool> {
  AuthNotifier._() : super(false);
  static final AuthNotifier _instance = AuthNotifier._();
  factory AuthNotifier() => _instance;

  void notify() => value = !value;
}