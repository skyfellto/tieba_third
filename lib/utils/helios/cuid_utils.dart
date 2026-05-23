import 'dart:convert';
import 'dart:typed_data';
import 'base32.dart';
import 'hasher.dart';
import 'uid_util.dart';

/// 与 tiebalite CuidUtils.kt 一致的 CUID 工具
class CuidUtils {
  /// getNewCuid(): "$cUID|V$base32(hash(cUID.bytes))"
  static String getNewCuid() {
    final cuid = UIDUtil.cUID;
    final hash = heliosHash(Uint8List.fromList(utf8.encode(cuid)));
    final encoded = Base32.encode(hash);
    return '$cuid|V$encoded';
  }
}
