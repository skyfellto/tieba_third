import 'dart:convert';
import 'package:crypto/crypto.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../models/post_item.dart';

class TiebaApi {
  static const String _baseHost = "http://tiebac.baidu.com";
  static const String _loginUrl = "$_baseHost/c/s/login";
  static const String _personalizedUrl =
      "http://c.tieba.baidu.com/c/f/excellent/personalized";
  static const String _clientVersion = "12.64.1.1";

  /// 对参数元组列表排序并计算 tiebaclient!!! MD5 签名
  /// 注意：会对传入的 data 进行排序（影响后续拼接顺序）
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

  /// 发送 POST 表单请求并返回解析后的 JSON（仅限 200 + error_code=0）
  // ignore: unused_element
  static Future<Map<String, dynamic>?> _postForm(
    String url,
    List<List<String>> params, {
    required String bduss,
    String? stoken,
  }) async {
    final sign = _computeSign(params);
    params.add(["sign", sign]);
    final bodyStr = params
        .map((p) => "${p[0]}=${Uri.encodeComponent(p[1])}")
        .join("&");

    final client = http.Client();
    try {
      final request = http.Request('POST', Uri.parse(url))
        ..followRedirects = false
        ..headers.addAll({
          "Content-Type": "application/x-www-form-urlencoded",
          "User-Agent": "bdtb for Android 12.34.5.0",
          "Cookie": "BDUSS=$bduss; STOKEN=${stoken ?? ''}",
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

  /// 获取首页个性化推荐帖子列表
  static Future<List<PostItem>> fetchPersonalizedThreads({
    required String bduss,
    required String stoken,
    int page = 1,
    int loadType = 1,
  }) async {
    final params = [
      ["_client_version", _clientVersion],
      ["cuid_gid", ""],
      ["invoke_source", ""],
      ["load_type", loadType.toString()],
      ["need_forumlist", "0"],
      ["need_tags", "0"],
      ["new_install", "0"],
      ["new_net_type", "1"],
      ["page_thread_count", "15"],
      ["pn", page.toString()],
      ["pre_ad_thread_count", "0"],
      ["q_type", "1"],
      ["request_time", "${DateTime.now().millisecondsSinceEpoch}"],
      ["scr_dip", "2.0"],
      ["scr_h", "1920"],
      ["scr_w", "1080"],
      ["sug_count", "0"],
      ["tag_code", "0"],
    ];

    final sign = _computeSign(params);
    params.add(["sign", sign]);
    final bodyStr = params
        .map((p) => "${p[0]}=${Uri.encodeComponent(p[1])}")
        .join("&");

    debugPrint("\n================================================");
    debugPrint("【调试】请求地址：$_personalizedUrl");
    debugPrint("【调试】请求参数：$bodyStr");
    debugPrint("================================================\n");

    final client = http.Client();
    try {
      final request = http.Request('POST', Uri.parse(_personalizedUrl))
        ..followRedirects = false
        ..headers.addAll({
          "Content-Type": "application/x-www-form-urlencoded",
          "User-Agent": "bdtb for Android 12.34.5.0",
          "Cookie": "BDUSS=$bduss; STOKEN=$stoken",
        })
        ..body = bodyStr;

      final response = await http.Response.fromStream(
        await client.send(request),
      );
      debugPrint("【调试】响应状态码：${response.statusCode}");
      debugPrint("【调试】响应体：${response.body}");
      debugPrint("================================================\n");

      if (response.statusCode == 302) {
        debugPrint("【调试】被重定向拦截，降级为占位");
        return [];
      }
      if (response.statusCode != 200) {
        debugPrint("【调试】非200状态码：${response.statusCode}");
        return [];
      }

      final json = jsonDecode(response.body) as Map<String, dynamic>;
      if (json["error_code"] != "0" && json["error_code"] != 0) {
        debugPrint("【调试】API返回错误：${json["error_msg"]}");
        return [];
      }

      final list = json["thread_list"] as List<dynamic>?;
      if (list == null || list.isEmpty) {
        debugPrint("【调试】thread_list 为空");
        return [];
      }

      final posts = list
          .map((e) => PostItem.fromJson(e as Map<String, dynamic>))
          .where((p) => p.title.isNotEmpty)
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
}
