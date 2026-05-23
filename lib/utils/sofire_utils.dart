import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'package:crypto/crypto.dart';
import 'package:encrypt/encrypt.dart' as encrypt_pkg;
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

/// RC442 — 定制版 RC4（与 tiebalite RC442.kt 一致）
class RC442 {
  int x = 0;
  int y = 0;
  final List<int> m = List<int>.generate(256, (i) => i & 0xFF);

  void setup(List<int> key) {
    int j = 0, k = 0;
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
      final b = m[y]; // ← 修复：取 m[y] 的值，不是 y
      m[x] = b; // swap
      m[y] = a; // swap
      dst[i] = (src[i] ^ m[(a + b) & 0xFF]) ^ 0x2A;
    }
    return dst;
  }
}

List<int> rc442Crypt(List<int> src, List<int> key) {
  final rc = RC442();
  rc.setup(key);
  return rc.crypt(src);
}

String _randomAlphanumeric(int length) {
  const chars =
      'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
  return List.generate(
    length,
    (_) => chars[Random().nextInt(chars.length)],
  ).join();
}

List<int> _gzipCompress(List<int> data) => GZipCodec().encode(data);

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
    // debugPrint(
    //   "【sofire】获取 z_id 成功: ${zid.length > 20 ? '${zid.substring(0, 20)}...' : zid}",
    // );
    await prefs.setString(key, zid);
  } else {
    debugPrint("【sofire】获取 z_id 失败");
  }
  return zid;
}

Future<String?> getCachedZid() async {
  final prefs = await SharedPreferences.getInstance();
  return prefs.getString('sofire_zid');
}

/// 16 字节全零 IV（与 tiebalite 一致）
final _zeroIV = encrypt_pkg.IV(Uint8List(16));

Future<String?> _fetchZid() async {
  const appKey = "200033";
  const secKey = "ea737e4f435b53786043369d2e5ace4f";

  final deviceUuid = await _getDeviceUuid();
  final cuid =
      "${md5.convert(utf8.encode(deviceUuid)).toString().toUpperCase()}|0";
  final cuidMd5 = md5.convert(utf8.encode(cuid)).toString().toLowerCase();
  final cuidMd5Bytes = utf8.encode(cuidMd5);
  final currTime = "${DateTime.now().millisecondsSinceEpoch ~/ 1000}";

  // 构建请求体
  final payload = jsonEncode({
    "module_section": [
      {"zid": cuid},
    ],
  });
  final compressed = _gzipCompress(utf8.encode(payload));

  // AES 随机密钥 16 字节（tiebalite generateRandomString(16)）
  final randomKeyStr = _randomAlphanumeric(16);
  final randomKeyBytes = utf8.encode(randomKeyStr);

  // AES/CBC/PKCS7 加密压缩后的明文
  final encrypter = encrypt_pkg.Encrypter(
    encrypt_pkg.AES(
      encrypt_pkg.Key(Uint8List.fromList(randomKeyBytes)),
      mode: encrypt_pkg.AESMode.cbc,
      padding: 'PKCS7',
    ),
  );
  final encrypted = encrypter.encryptBytes(compressed, iv: _zeroIV);

  // 密文 + MD5(原始压缩明文) → 最终 body
  final compressedMd5 = md5.convert(compressed).bytes;
  final finalBody = [...encrypted.bytes, ...compressedMd5];

  // URL 路径 MD5
  final pathMd5 = md5
      .convert(utf8.encode("$appKey$currTime$secKey"))
      .toString()
      .toLowerCase();

  // skey = Base64(RC442(randomKeyBytes, cuidMd5Bytes))
  final skeyRaw = rc442Crypt(randomKeyBytes, cuidMd5Bytes);
  final skey = base64Encode(skeyRaw);

  final url =
      "https://sofire.baidu.com/c/11/z/100/$appKey/$currTime/$pathMd5"
      "?skey=${Uri.encodeQueryComponent(skey)}";

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
      debugPrint("【sofire】status=$response.statusCode");
      return null;
    }

    final json = jsonDecode(response.body) as Map<String, dynamic>;
    final dataStr = json['data'] as String?;
    final respSkey = json['skey'] as String?;
    if (dataStr == null || respSkey == null) return null;

    // 解密 skey: RC442(Base64(respSkey), cuidMd5Bytes)
    final resSkeyBytes = rc442Crypt(base64Decode(respSkey), cuidMd5Bytes);

    // AES 解密 data（去掉末尾 16 字节 MD5 校验）
    final rawData = base64Decode(dataStr);
    final encryptedData = rawData.sublist(0, rawData.length - 16);

    final decryptCipher = encrypt_pkg.Encrypter(
      encrypt_pkg.AES(
        encrypt_pkg.Key(Uint8List.fromList(resSkeyBytes)),
        mode: encrypt_pkg.AESMode.cbc,
        padding: 'PKCS7',
      ),
    );
    final decrypted = decryptCipher.decryptBytes(
      encrypt_pkg.Encrypted(encryptedData),
      iv: _zeroIV,
    );

    final resultText = utf8.decode(decrypted);
    final resultJson = jsonDecode(resultText) as Map<String, dynamic>;
    return resultJson['token'] as String?;
  } catch (e) {
    debugPrint("【sofire】$e");
    return null;
  } finally {
    client.close();
  }
}
