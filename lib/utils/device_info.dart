import 'dart:convert';
import 'dart:math';
import 'dart:ui' as ui;
import 'package:crypto/crypto.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DeviceInfo {
  static final DeviceInfo _instance = DeviceInfo._internal();
  factory DeviceInfo() => _instance;
  DeviceInfo._internal();

  late int scrW;
  late int scrH;
  late double scrDip;
  late String brand;
  late String model;
  late int sdkInt;
  late String osVersion;
  late String androidId;

  /// 首次启动生成，持久化存储
  late String phoneImei;
  late String cuid;
  late String c3Aid;

  /// 仿 tiebalite getUserAgent，拼接 App 版本
  String userAgent(String appVersion) =>
      "Mozilla/5.0 (Linux; Android $osVersion; $model Build/$androidId) "
      "AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 "
      "Chrome/120.0.0.0 Mobile Safari/537.36 tieba/$appVersion";

  void initScreen() {
    final view = ui.PlatformDispatcher.instance.implicitView!;
    scrW = view.physicalSize.width.toInt();
    scrH = view.physicalSize.height.toInt();
    scrDip = view.devicePixelRatio;
  }

  Future<void> initDevice() async {
    final info = await DeviceInfoPlugin().androidInfo;
    brand = info.brand;
    model = info.model;
    sdkInt = info.version.sdkInt;
    osVersion = info.version.release;
    androidId = info.id;

    final prefs = await SharedPreferences.getInstance();

    // 持久化 IMEI / CUID
    final savedImei = prefs.getString('phone_imei');
    if (savedImei != null) {
      phoneImei = savedImei;
    } else {
      phoneImei =
          "${Random().nextInt(900000000) + 100000000}"
          "${Random().nextInt(900000) + 100000}";
      await prefs.setString('phone_imei', phoneImei);
    }
    cuid = "cuid_$phoneImei";

    // 持久化 c3Aid — 用已有 phoneImei 代替 uuid
    final savedC3Aid = prefs.getString('c3_aid');
    if (savedC3Aid != null) {
      c3Aid = savedC3Aid;
    } else {
      final raw = _sha1Hex("com.helios${androidId}$phoneImei");
      c3Aid = "A00-${raw.substring(0, 28)}-${raw.substring(28, 40)}";
      await prefs.setString('c3_aid', c3Aid);
    }
  }

  static String _sha1Hex(String input) {
    final bytes = sha1.convert(utf8.encode(input)).bytes;
    return bytes.map((b) => b.toRadixString(16).padLeft(2, '0')).join();
  }
}
