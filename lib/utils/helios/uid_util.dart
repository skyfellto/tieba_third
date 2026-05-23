import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';
import 'package:crypto/crypto.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'base32.dart';
import 'hasher.dart';

/// 与 tiebalite UIDUtil.kt 一致的工具类
///
/// 负责生成安卓设备唯一标识符（cUID、c3Aid、UUID 等）。
/// 需要先在 [init] 中传入 androidId。
class UIDUtil {
  static String? _androidId;

  /// persistence keys
  static const _keyUUID = 'helios_uuid';

  /// 必须在 [DeviceInfo.initDevice] 后调用
  static void init(String androidId) {
    _androidId = androidId;
  }

  /// Android ID（来自 Settings.Secure.ANDROID_ID）
  static String get androidId {
    assert(_androidId != null, 'UIDUtil.init() 必须先被调用');
    return _androidId!;
  }

  /// cUID: MD5("com.baidu" + androidId).toUpperCase()
  static String get cUID {
    final input = utf8.encode('com.baidu$androidId');
    return md5.convert(input).toString().toUpperCase();
  }

  /// 持久化 UUID（首次生成后永久保存，同 tiebalite uUID）
  static Future<String> getUUID() async {
    final prefs = await SharedPreferences.getInstance();
    String? uuid = prefs.getString(_keyUUID);
    if (uuid == null || uuid.isEmpty) {
      uuid = _randomUUID();
      await prefs.setString(_keyUUID, uuid);
    }
    return uuid;
  }

  /// c3Aid: 同 tiebalite getAid()
  /// "A00-$base32(SHA1("com.helios"+androidId+UUID))-$base32(hash(raw))"
  static Future<String> getAid() async {
    final uuid = await getUUID();
    final raw = utf8.encode('com.helios$androidId$uuid');
    final sha1Bytes = sha1.convert(raw).bytes;
    final encoded = Base32.encode(sha1Bytes);
    final rawAid = 'A00-$encoded-';
    final sign = Base32.encode(heliosHash(Uint8List.fromList(utf8.encode(rawAid))));
    return '$rawAid$sign';
  }

  /// newCUID: "baidutiebaapp$uuid"
  static Future<String> getNewCUID() async {
    final uuid = await getUUID();
    return 'baidutiebaapp$uuid';
  }

  static String _randomUUID() {
    final r = Random();
    final hex = List.generate(16, (_) => r.nextInt(256));
    // Set version 4 (random) and variant bits
    hex[6] = (hex[6] & 0x0F) | 0x40;
    hex[8] = (hex[8] & 0x3F) | 0x80;
    final sb = StringBuffer();
    for (int i = 0; i < 16; i++) {
      sb.write(hex[i].toRadixString(16).padLeft(2, '0'));
      if (i == 3 || i == 5 || i == 7 || i == 9) sb.write('-');
    }
    return sb.toString();
  }
}
