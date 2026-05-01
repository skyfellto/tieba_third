import 'dart:convert';
import 'dart:math';
import 'package:fixnum/fixnum.dart';
import 'package:crypto/crypto.dart';
import 'package:http/http.dart' as http;
import '../models/post_item.dart';
import '../generated/CommonRequest.pb.dart';
import '../generated/Personalized.pb.dart';

class TiebaApi {
  static const String _baseHost = "http://tiebac.baidu.com";
  static const String _loginUrl = "$_baseHost/c/s/login";
  static const String _clientVersion = "12.64.1.1";

  static String _computeSign(List<List<String>> data) {
    data.sort((a, b) => a[0].compareTo(b[0]));
    final buf = StringBuffer();
    for (final pair in data) {
      buf.write("${pair[0]}=${pair[1]}");
    }
    return md5.convert(utf8.encode("${buf.toString()}tiebaclient!!!")).toString();
  }

  /// 登录并获取用户信息
  static Future<Map<String, dynamic>?> loginAndGetUserInfo({
    required String bduss,
    required String stoken,
    String? customCookie,
  }) async {
    final data = [
      ["_client_version", _clientVersion],
      ["bdusstoken", bduss],
    ];
    final sign = _computeSign(data);
    data.add(["sign", sign]);
    final bodyStr = data
        .map((p) => "${p[0]}=${Uri.encodeComponent(p[1])}")
        .join("&");

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

      final response = await http.Response.fromStream(
        await client.send(request),
      );
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

  /// 获取首页个性化推荐帖子列表（Protobuf 版）
  static Future<List<PostItem>> fetchPersonalizedThreads({
    required String bduss,
    required String stoken,
    int page = 1,
    int loadType = 1,
  }) async {
    final common = CommonRequest(
      clientType: 2,
      clientVersion: _clientVersion,
      phoneImei: "${Random().nextInt(900000000) + 100000000}${Random().nextInt(900000) + 100000}",
      timestamp: Int64(DateTime.now().millisecondsSinceEpoch ~/ 1000),
      netType: 1,
      bDUSS: bduss,
      stoken: stoken,
      scrW: 1080,
      scrH: 1920,
      scrDip: 2.0,
    );

    final reqData = PersonalizedRequestData(
      common: common,
      loadType: loadType,
      pn: page,
      pageThreadCount: 15,
      tagCode: 0,
      needTags: 0,
      qType: 1,
      needForumlist: 0,
      newNetType: 1,
      scrW: 1080,
      scrH: 1920,
      scrDip: 2.0,
    );

    final request = PersonalizedRequest(data: reqData);
    final bodyBytes = request.writeToBuffer();

    final uri = Uri.parse("$_baseHost/c/f/excellent/personalized?cmd=309264");
    print("\n================================================");
    print("【调试】Protobuf 请求：$uri");
    print("================================================\n");

    final client = http.Client();
    try {
      final multipart = http.MultipartRequest('POST', uri)
        ..headers.addAll({
          "x_bd_data_type": "protobuf",
          "User-Agent": "bdtb for Android 12.34.5.0",
          "Cookie": "BDUSS=$bduss; STOKEN=$stoken",
        })
        ..files.add(http.MultipartFile.fromBytes(
          'data',
          bodyBytes,
          filename: 'file',
        ));

      final streamedResponse = await client.send(multipart);
      final response = await http.Response.fromStream(streamedResponse);

      print("【调试】响应状态码：${response.statusCode}");
      if (response.statusCode != 200) {
        print("【调试】非200，降级占位");
        return [];
      }

      final pb = PersonalizedResponse.fromBuffer(response.bodyBytes);
      if (pb.error.hasErrorCode() && pb.error.errorCode != 0) {
        print("【调试】API错误：${pb.error.errorCode} ${pb.error.errorMsg}");
        return [];
      }

      final threadList = pb.data.threadList;
      if (threadList.isEmpty) {
        print("【调试】thread_list 为空");
        return [];
      }

      final posts = threadList
          .map((t) => PostItem.fromThreadInfo(t))
          .where((p) => p.title.isNotEmpty && p.tid.isNotEmpty)
          .toList();
      print("【调试】解析到 ${posts.length} 条帖子");
      return posts;
    } catch (e) {
      print("【调试】请求异常：$e");
      return [];
    } finally {
      client.close();
    }
  }
}
