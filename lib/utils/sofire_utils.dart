import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'package:crypto/crypto.dart';
import 'package:encrypt/encrypt.dart' as encrypt_pkg;
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

/// RC442 — 定制版 RC4，每字节输出额外 XOR 42
class RC442 {
  int x = 0;
  int y = 0;
  final List<int> m = List<int>.generate(256, (i) => i);

  void setup(List<int> key) {
    int j = 0;
    int k = 0;
    final keyLen = key.length;
    for (int i = 0; i < 256; i++) {
      if (k >= keyLen) k = 0;
      j = (j + m[i] + key[k]) & 0xFF;
      final tmp = m[i];
      m[i] = m[j];
      m[j] = tmp;
      k++;
    }
  }

  List<int> crypt(List<int> src) {
    final dst = List<int>.filled(src.length, 0);
    for (int i = 0; i < src.length; i++) {
      x = (x + 1) & 0xFF;
      final a = m[x];
      y = (y + a) & 0xFF;
      m[x] = m[y];
      m[y] = a;
      dst[i] = (src[i] ^ m[(a + b) & 0xFF]) ^ 0x2A; // XOR 42
    }
    return dst;
  }

  int get b => y;
}

List<int> rc442Crypt(List<int> src, List<int> key) {
  final rc = RC442();
  rc.setup(key);
  return rc.crypt(src);
}

/// 生成随机字母数字字符串
String _randomAlphanumeric(int length) {
  const chars = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
  return List.generate(length, (_) => chars[Random().nextInt(chars.length)]).join();
}

/// GZip 压缩
List<int> _gzipCompress(List<int> data) {
  final gzipBytes = GZipCodec().encode(data);
  return gzipBytes;
}

/// 获取持久化的设备 UUID
Future<String> _getDeviceUuid() async {
  const key = 'sofire_device_uuid';
  final prefs = await SharedPreferences.getInstance();
  String? uuid = prefs.getString(key);
  if (uuid == null || uuid.isEmpty) {
    uuid = _randomAlphanumeric(32);
    await prefs.setString(key, uuid);
  }
  return uuid;
}

/// 获取/缓存 z_id
Future<String?> getZid() async {
  const key = 'sofire_zid';
  final prefs = await SharedPreferences.getInstance();
  String? cached = prefs.getString(key);
  if (cached != null && cached.isNotEmpty) return cached;

  final zid = await _fetchZid();
  if (zid != null && zid.isNotEmpty) {
    await prefs.setString(key, zid);
  }
  return zid;
}

/// 获取缓存的 z_id（不发起请求）
Future<String?> getCachedZid() async {
  final prefs = await SharedPreferences.getInstance();
  return prefs.getString('sofire_zid');
}

/// 从 sofire.baidu.com 获取 z_id
Future<String?> _fetchZid() async {
  const appKey = "200033";
  const secKey = "ea737e4f435b53786043369d2e5ace4f";

  final deviceUuid = await _getDeviceUuid();
  final cuid = "${md5.convert(utf8.encode(deviceUuid)).toString().toUpperCase()}|0";
  final cuidMd5 = md5.convert(utf8.encode(cuid)).toString().toLowerCase();

  final currTime = "${DateTime.now().millisecondsSinceEpoch ~/ 1000}";

  // 构建请求体
  final payload = jsonEncode({
    "module_section": [{"zid": cuid}],
  });
  final compressed = _gzipCompress(utf8.encode(payload));

  // 随机 AES 密钥，IV 为 16 字节 0x00
  final iv = encrypt_pkg.IV.fromLength(16);
  final randomKey = _randomAlphanumeric(16);
  final key = encrypt_pkg.Key(Uint8List.fromList(utf8.encode(randomKey)));

  final encrypter = encrypt_pkg.Encrypter(
    encrypt_pkg.AES(key, mode: encrypt_pkg.AESMode.cbc, padding: 'PKCS7'),
  );
  final encrypted = encrypter.encryptBytes(compressed, iv: iv);

  // 计算 MD5 摘要
  final md5Digest = md5.convert(compressed).bytes;
  final finalBody = [...encrypted.bytes, ...md5Digest];

  // URL 路径 MD5
  final pathMd5 = md5.convert(utf8.encode("$appKey$currTime$secKey")).toString().toLowerCase();

  // skey: RC442(randomKey, cuidMd5) -> Base64
  final skeyRaw = rc442Crypt(utf8.encode(randomKey), utf8.encode(cuidMd5));
  final skey = base64Encode(skeyRaw).trim();

  final url = "https://sofire.baidu.com/c/11/z/100/$appKey/$currTime/$pathMd5?skey=${Uri.encodeQueryComponent(skey)}";

  final client = http.Client();
  try {
    final request = http.Request('POST', Uri.parse(url))
      ..headers.addAll({
        "Pragma": "no-cache",
        "Accept": "*/*",
        "Accept-Language": "zh",
        "x-device-id": cuidMd5,
        "x-client-src": "src",
        "User-Agent": "x6/$appKey/12.35.1.0/4.4.1.3",
        "x-sdk-ver": "sofire/3.5.9.6",
        "x-plu-ver": "x6/4.4.1.3",
        "x-app-ver": "com.baidu.tieba/12.35.1.0",
        "x-api-ver": "33",
        "Content-Type": "application/x-www-form-urlencoded",
      })
      ..bodyBytes = finalBody;

    final response = await http.Response.fromStream(await client.send(request));

    if (response.statusCode != 200) {
      debugPrint("【sofire】失败 status=${response.statusCode} body=${response.body.length > 80 ? response.body.substring(0, 80) : response.body}");
      return null;
    }

    final json = jsonDecode(response.body) as Map<String, dynamic>;
    final dataStr = json['data'] as String?;
    final respSkey = json['skey'] as String?;
    if (dataStr == null || respSkey == null) return null;

    // 解密响应
    final resSkey = rc442Crypt(base64Decode(respSkey), utf8.encode(cuidMd5));
    final decryptKey = encrypt_pkg.Key(Uint8List.fromList(resSkey));
    final decryptCipher = encrypt_pkg.Encrypter(
      encrypt_pkg.AES(decryptKey, mode: encrypt_pkg.AESMode.cbc, padding: 'PKCS7'),
    );

    final rawData = base64Decode(dataStr);
    // 去掉末尾 16 字节 MD5
    final encryptedData = rawData.sublist(0, rawData.length - 16);

    final decrypted = decryptCipher.decryptBytes(
      encrypt_pkg.Encrypted(encryptedData),
      iv: iv,
    );
    final resultText = utf8.decode(decrypted);
    final resultJson = jsonDecode(resultText) as Map<String, dynamic>;
    final token = resultJson['token'] as String?;

    return token;
  } catch (e) {
    debugPrint("【sofire异常】$e");
    return null;
  } finally {
    client.close();
  }
}
