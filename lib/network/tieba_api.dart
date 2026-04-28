import 'dart:convert';
import 'package:crypto/crypto.dart';
import 'package:http/http.dart' as http;

class TiebaApi {
  // aiotieba 所有 API 走 HTTP 明文到 tiebac.baidu.com，不走 HTTPS CDN
  static const String _loginUrl = "http://tiebac.baidu.com/c/s/login";
  static const String _clientVersion = "12.64.1.1";

  static String _sign(List<List<String>> data) {
    data.sort((a, b) => a[0].compareTo(b[0]));
    final buffer = StringBuffer();
    for (final pair in data) {
      buffer.write("${pair[0]}=${pair[1]}");
    }
    return md5.convert(utf8.encode("${buffer.toString()}tiebaclient!!!")).toString();
  }

  static Future<Map<String, dynamic>?> loginAndGetUserInfo({
    required String bduss,
    required String stoken,
    String? customCookie,
  }) async {
    final data = [
      ["_client_version", _clientVersion],
      ["bdusstoken", bduss],
    ];
    final sign = _sign(data);
    data.add(["sign", sign]);
    final bodyStr = data.map((p) => "${p[0]}=${Uri.encodeComponent(p[1])}").join("&");

    final client = http.Client();
    try {
      final request = http.Request('POST', Uri.parse(_loginUrl))
        ..followRedirects = false
        ..headers.addAll({
          "Content-Type": "application/x-www-form-urlencoded",
          "User-Agent": "bdtb for Android 12.34.5.0",
          "Cookie": customCookie ?? "BDUSS=$bduss; STOKEN=$stoken",
        })
        ..body = bodyStr;

      final streamedResponse = await client.send(request);
      final response = await http.Response.fromStream(streamedResponse);

      if (response.statusCode == 302) return null;
      if (response.statusCode != 200) return null;

      final json = jsonDecode(response.body) as Map<String, dynamic>;
      if (json["error_code"] != "0" && json["error_code"] != 0) return null;

      return json;
    } catch (_) {
      return null;
    } finally {
      client.close();
    }
  }
}
