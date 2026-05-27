import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PersonalizationManager {
  static const _key = 'personalization_configs';
  static final Map<String, Map<String, dynamic>> _all = {};
  static String? _currentBduss;

  /// 变更通知：任意配置修改后 value 自增，供 UI 层 ListenableBuilder 监听
  static final ValueNotifier<int> changeNotifier = ValueNotifier(0);

  // defaults
  static const _defaultFloatingNav = false;
  static const _defaultShowPassedForums = true;
  static const _defaultLikeCooldownMinutes = 10;
  static const _defaultBrowseHistoryMax = 200;

  static Future<void> init() async {
    final sp = await SharedPreferences.getInstance();
    final raw = sp.getString(_key);
    if (raw != null && raw.isNotEmpty) {
      final decoded = jsonDecode(raw) as Map<String, dynamic>;
      _all.clear();
      for (final entry in decoded.entries) {
        _all[entry.key] = Map<String, dynamic>.from(entry.value as Map);
      }
    }
  }

  static void loadForAccount(String bduss) {
    _currentBduss = bduss;
    if (bduss.isNotEmpty) {
      _all.putIfAbsent(bduss, () => {
        'floatingNav': _defaultFloatingNav,
        'showPassedForums': _defaultShowPassedForums,
        'likeCooldownMinutes': _defaultLikeCooldownMinutes,
        'browseHistoryMax': _defaultBrowseHistoryMax,
      });
    }
  }

  static Future<void> clearForAccount(String bduss) async {
    _all.remove(bduss);
    await _save();
  }

  // --- getters ---

  static bool get floatingNav {
    final acc = _all[_currentBduss];
    return acc?['floatingNav'] as bool? ?? _defaultFloatingNav;
  }

  static bool get showPassedForums {
    final acc = _all[_currentBduss];
    return acc?['showPassedForums'] as bool? ?? _defaultShowPassedForums;
  }

  static int get likeCooldownMinutes {
    final acc = _all[_currentBduss];
    return acc?['likeCooldownMinutes'] as int? ?? _defaultLikeCooldownMinutes;
  }

  static int get browseHistoryMax {
    final acc = _all[_currentBduss];
    return acc?['browseHistoryMax'] as int? ?? _defaultBrowseHistoryMax;
  }

  // --- setters ---

  static Future<void> setFloatingNav(bool v) async {
    _all[_currentBduss]?['floatingNav'] = v;
    await _save();
  }

  static Future<void> setShowPassedForums(bool v) async {
    _all[_currentBduss]?['showPassedForums'] = v;
    await _save();
  }

  static Future<void> setLikeCooldownMinutes(int v) async {
    _all[_currentBduss]?['likeCooldownMinutes'] = v;
    await _save();
  }

  static Future<void> setBrowseHistoryMax(int v) async {
    _all[_currentBduss]?['browseHistoryMax'] = v;
    await _save();
  }

  static Future<void> _save() async {
    final sp = await SharedPreferences.getInstance();
    await sp.setString(_key, jsonEncode(_all));
    changeNotifier.value++;
  }
}