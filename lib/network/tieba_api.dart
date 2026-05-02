import 'dart:convert';
import 'dart:math';
import 'package:fixnum/fixnum.dart';
import 'package:crypto/crypto.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../models/post_item.dart';
import '../models/forum_item.dart';
import '../generated/CommonRequest.pb.dart';
import '../generated/Personalized.pb.dart';
import '../generated/ForumGuide/ForumGuideRequest.pb.dart';
import '../generated/ForumGuide/ForumGuideRequestData.pb.dart';
import '../generated/ForumGuide/ForumGuideResponse.pb.dart';

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
    return md5
        .convert(utf8.encode("${buf.toString()}tiebaclient!!!"))
        .toString();
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
      phoneImei:
          "${Random().nextInt(900000000) + 100000000}${Random().nextInt(900000) + 100000}",
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
    debugPrint("\n================================================");
    debugPrint("【调试】Protobuf 请求：$uri");
    debugPrint("================================================\n");

    final client = http.Client();
    try {
      final multipart = http.MultipartRequest('POST', uri)
        ..headers.addAll({
          "x_bd_data_type": "protobuf",
          "User-Agent": "bdtb for Android 12.34.5.0",
          "Cookie": "BDUSS=$bduss; STOKEN=$stoken",
        })
        ..files.add(
          http.MultipartFile.fromBytes('data', bodyBytes, filename: 'file'),
        );

      final streamedResponse = await client.send(multipart);
      final response = await http.Response.fromStream(streamedResponse);

      debugPrint("【调试】响应状态码：${response.statusCode}");
      if (response.statusCode != 200) {
        debugPrint("【调试】非200，降级占位");
        return [];
      }

      final pb = PersonalizedResponse.fromBuffer(response.bodyBytes);
      if (pb.error.hasErrorCode() && pb.error.errorCode != 0) {
        debugPrint("【调试】API错误：${pb.error.errorCode} ${pb.error.errorMsg}");
        return [];
      }

      final threadList = pb.data.threadList;
      if (threadList.isEmpty) {
        debugPrint("【调试】thread_list 为空");
        return [];
      }

      final posts = threadList
          .map((t) => PostItem.fromThreadInfo(t))
          .where((p) => p.title.isNotEmpty && p.tid.isNotEmpty)
          .toList();
      debugPrint("【调试】解析到 ${posts.length} 条帖子");
      return posts;
    } catch (e) {
      debugPrint("【调试】请求异常：$e");
      return [];
    } finally {
      client.close();
    }
  }

  /// 获取关注的吧列表（ForumGuide Protobuf 版）
  static Future<List<ForumItem>> fetchForumRecommend({
    required String bduss,
    required String stoken,
  }) async {
    final reqData = ForumGuideRequestData(sortType: 1, callFrom: 4);
    final request = ForumGuideRequest(data: reqData);
    final bodyBytes = request.writeToBuffer();

    final uri = Uri.parse(
      "$_baseHost/c/f/forum/forumGuide?cmd=309683&format=protobuf",
    );
    final client = http.Client();
    try {
      final multipart = http.MultipartRequest('POST', uri)
        ..headers.addAll({
          "x_bd_data_type": "protobuf",
          "User-Agent": "bdtb for Android 12.34.5.0",
          "Cookie": "BDUSS=$bduss; STOKEN=$stoken",
        })
        ..files.add(
          http.MultipartFile.fromBytes('data', bodyBytes, filename: 'file'),
        );

      final streamedResponse = await client.send(multipart);
      final response = await http.Response.fromStream(streamedResponse);

      if (response.statusCode != 200) return [];

      final pb = ForumGuideResponse.fromBuffer(response.bodyBytes);
      if (pb.error.errorCode != 0) return [];

      return pb.data.likeForum
          .map(
            (f) => ForumItem(
              forumId: f.forumId.toString(),
              forumName: f.forumName,
              avatar: f.avatar,
              levelId: f.levelId,
              isSign: f.isSign == 1,
            ),
          )
          .toList();
    } catch (_) {
      return [];
    } finally {
      client.close();
    }
  }

  /// 点赞帖子（基于 MiniTiebaApi 实现）
  static Future<bool> likePost({
    required String bduss,
    required String stoken,
    required String tbs,
    required String userId,
    required String threadId,
    String postId = "0",
  }) async {
    final timestamp = "${DateTime.now().millisecondsSinceEpoch}";
    final phoneImei = "${Random().nextInt(900000000) + 100000000}${Random().nextInt(900000) + 100000}";
    final cuid = "cuid_${phoneImei}";
    final stTime = "${Random().nextInt(730) + 121}";
    final stSize = "${((Random().nextDouble() * 8 + 0.4) * int.parse(stTime)).round()}";
    final clientId = "wappc_${timestamp}_${Random().nextInt(1000)}";

    // MiniTiebaApi 标准请求：defaultCommonParamInterceptor + agree 特定字段
    final params = [
      ["BDUSS", bduss],
      ["STOKEN", stoken],
      ["_client_version", "8.0.8.0"],
      ["agree_type", "2"],
      ["client_id", clientId],
      ["cuid", cuid],
      ["cuid_galaxy2", cuid],
      ["cuid_gid", ""],
      ["from", "1021636m"],
      ["model", "Android"],
      ["net_type", "1"],
      ["obj_type", "3"],
      ["op_type", "0"],
      ["os_version", "12"],
      ["phone_imei", phoneImei],
      ["post_id", postId],
      ["stErrorNums", "1"],
      ["stMethod", "1"],
      ["stMode", "1"],
      ["stSize", stSize],
      ["stTime", stTime],
      ["stTimesNum", "1"],
      ["stoken", stoken],
      ["subapp_type", "mini"],
      ["tbs", tbs],
      ["thread_id", threadId],
      ["timestamp", timestamp],
    ];
    final sign = _computeSign(params);
    params.add(["sign", sign]);
    final bodyStr = params.map((p) => "${p[0]}=${Uri.encodeComponent(p[1])}").join("&");

    // 打印完整请求体用于调试
    print("【点赞body】$bodyStr");

    final client = http.Client();
    try {
      final request = http.Request('POST',
          Uri.parse("http://c.tieba.baidu.com/c/c/agree/opAgree"))
        ..followRedirects = false
        ..headers.addAll({
          "Content-Type": "application/x-www-form-urlencoded",
          "User-Agent": "bdtb for Android 7.2.0.0",
          "Cookie": "ka=open",
          "cuid": cuid,
          "cuid_galaxy2": cuid,
          "client_logid": "$timestamp",
          "client_user_token": userId,
        })
        ..body = bodyStr;

      final response = await http.Response.fromStream(await client.send(request));
      print("【点赞】状态码=${response.statusCode} 响应=${response.body}");
      if (response.statusCode != 200) return false;
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      final ok = json["error_code"] == "0" || json["error_code"] == 0;
      if (!ok) print("【点赞失败】error_code=${json["error_code"]} msg=${json["error_msg"]}");
      return ok;
    } catch (_) {
      return false;
    } finally {
      client.close();
    }
  }
}
