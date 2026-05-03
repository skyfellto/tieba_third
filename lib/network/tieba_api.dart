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
import '../generated/PbPage/PbPageRequest.pb.dart';
import '../generated/PbPage/PbPageRequestData.pb.dart';
import '../generated/PbPage/PbPageResponse.pb.dart';
import '../generated/PbPage/PbPageResponseData.pb.dart';
import '../generated/PbPage/AdParam.pb.dart';
import '../generated/AppPosInfo.pb.dart';
import '../generated/PbFloor/PbFloorRequest.pb.dart';
import '../generated/PbFloor/PbFloorRequestData.pb.dart';
import '../generated/PbFloor/PbFloorResponse.pb.dart';
import '../generated/PbFloor/PbFloorResponseData.pb.dart';
import '../generated/GetForumDetail/GetForumDetailRequest.pb.dart';
import '../generated/GetForumDetail/GetForumDetailRequestData.pb.dart';
import '../generated/GetForumDetail/GetForumDetailResponse.pb.dart';
import '../generated/GetForumDetail/GetForumDetailResponseData.pb.dart';
import '../generated/GetLevelInfo/GetLevelInfoRequest.pb.dart';
import '../generated/GetLevelInfo/GetLevelInfoRequestData.pb.dart';
import '../generated/GetLevelInfo/GetLevelInfoResponse.pb.dart';
import '../generated/GetLevelInfo/GetLevelInfoResponseData.pb.dart';
import '../generated/FrsPage/FrsPage.pb.dart';
import '../generated/FrsPage/AdParam.pb.dart' as frs_ad_param;

class TiebaApi {
  static const String _baseHost = "http://tiebac.baidu.com";
  static const String _loginUrl = "$_baseHost/c/s/login";
  static const String _clientVersion = "12.64.1.1";
  static const String _v12ClientVersion = "12.52.1.0";

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

  /// 获取帖子详情（PbPage API）
  static Future<PbPageResponseData?> fetchPostDetail({
    required String bduss,
    required String stoken,
    required String tbs,
    required String threadId,
    int page = 1,
    String postId = '0',
    bool seeLz = false,
    int sortType = 0,
    String lastPid = '0',
    String forumId = '0',
    String stType = 'pb',
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
      tbs: tbs,
      scrW: 1080,
      scrH: 1920,
      scrDip: 2.0,
    );

    final reqData = PbPageRequestData(
      common: common,
      kz: Int64.parseInt(threadId),
      pid: Int64.parseInt(postId),
      pn: page,
      r: sortType,
      lz: seeLz ? 1 : 0,
      withFloor: 1,
      floorRn: 4,
      rn: 15,
      scrW: 1080,
      scrH: 1920,
      scrDip: 2.0,
      qType: 2,
      mark: 0,
      back: 0,
      sourceType: 2,
      floorSortType: 1,
      isCommReverse: 0,
      needRepostRecommendForum: 0,
      requestTimes: 0,
      sModel: 0,
      similarFrom: 0,
      fromSmartFrs: 0,
      fromPush: 0,
      immersionVideoCommentSource: 0,
      isFoldCommentReq: 0,
      isJumpfloor: 0,
      jumpfloorNum: 0,
      threadType: 0,
      lastPid: Int64.parseInt(lastPid),
      forumId: Int64.parseInt(forumId),
      stType: stType,
      banner: 0,
      weipost: 0,
      broadcastId: Int64.ZERO,
      adParam: AdParam(loadCount: 0, refreshCount: 1, isReqAd: 1),
      appPos: AppPosInfo(),
    );

    final request = PbPageRequest(data: reqData);
    final bodyBytes = request.writeToBuffer();

    final uri = Uri.parse("$_baseHost/c/f/pb/page?cmd=302001&format=protobuf");
    debugPrint("\n================================================");
    debugPrint("【调试】PbPage 请求：$uri tid=$threadId page=$page lz=$seeLz r=$sortType");
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

      debugPrint("【调试】PbPage 响应状态码：${response.statusCode}");
      if (response.statusCode != 200) {
        debugPrint("【调试】PbPage 非200响应");
        return null;
      }

      final pb = PbPageResponse.fromBuffer(response.bodyBytes);
      if (pb.hasError() && pb.error.errorCode != 0) {
        debugPrint("【调试】PbPage API错误：${pb.error.errorCode} ${pb.error.errorMsg}");
        return null;
      }

      if (!pb.hasData()) {
        debugPrint("【调试】PbPage data为空");
        return null;
      }

      debugPrint("【调试】PbPage 解析成功，回复数=${pb.data.postList.length}");
      // 调试：检查前3条 post 的原始数据
      final d = pb.data;
      debugPrint("【调试PbPage】hasFirstFloorPost=${d.hasFirstFloorPost()} "
          "hasThread=${d.hasThread()} sortType=${d.sortType} ");
      if (d.hasFirstFloorPost()) {
        final fp = d.firstFloorPost;
        debugPrint("【调试PbPage】firstFloor: floor=${fp.floor} "
            "hasAuthor=${fp.hasAuthor()} contentLen=${fp.content.length} "
            "subPostNum=${fp.subPostNumber}");
        if (fp.content.isNotEmpty) {
          final c0 = fp.content.first;
          debugPrint("【调试PbPage】firstContent: type=${c0.type} text='${c0.text}' src='${c0.src.length > 0 ? c0.src.substring(0, 50) : ''}'");
        }
      }
      for (int i = 0; i < (d.postList.length > 3 ? 3 : d.postList.length); i++) {
        final p = d.postList[i];
        debugPrint("【调试PbPage】post[$i]: floor=${p.floor} hasAuthor=${p.hasAuthor()} "
            "contentLen=${p.content.length} ");
        if (p.content.isNotEmpty) {
          final c0 = p.content.first;
          debugPrint("【调试PbPage】post[$i] content[0]: type=${c0.type} text='${c0.text}' src='${c0.src.length > 0 ? c0.src.substring(0, 50) : ''}' bigCdnSrc='${c0.bigCdnSrc.length > 0 ? c0.bigCdnSrc.substring(0, 50) : ''}'");
        }
      }
      return pb.data;
    } catch (e) {
      debugPrint("【调试】PbPage 请求异常：$e");
      return null;
    } finally {
      client.close();
    }
  }

  /// 获取楼中楼（PbFloor API）
  static Future<PbFloorResponseData?> fetchSubReplies({
    required String bduss,
    required String stoken,
    required String threadId,
    required String postId,
    required String forumId,
    int page = 1,
    String subPostId = '0',
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

    final reqData = PbFloorRequestData(
      common: common,
      kz: Int64.parseInt(threadId),
      pid: Int64.parseInt(postId),
      spid: subPostId != '0' ? Int64.parseInt(subPostId) : Int64.ZERO,
      pn: page,
      scrW: 1080,
      scrH: 1920,
      scrDip: 2.0,
      forumId: Int64.parseInt(forumId),
      isCommReverse: 0,
      oriUgcType: 0,
    );

    final request = PbFloorRequest(data: reqData);
    final bodyBytes = request.writeToBuffer();

    final uri = Uri.parse("$_baseHost/c/f/pb/floor?cmd=302002&format=protobuf");
    debugPrint("\n================================================");
    debugPrint("【调试】PbFloor 请求：$uri tid=$threadId pid=$postId page=$page");
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

      debugPrint("【调试】PbFloor 响应状态码：${response.statusCode}");
      if (response.statusCode != 200) return null;

      final pb = PbFloorResponse.fromBuffer(response.bodyBytes);
      if (pb.hasError() && pb.error.errorCode != 0) {
        debugPrint("【调试】PbFloor API错误：${pb.error.errorCode} ${pb.error.errorMsg}");
        return null;
      }

      if (!pb.hasData()) {
        debugPrint("【调试】PbFloor data为空");
        return null;
      }

      debugPrint("【调试】PbFloor 解析成功，楼中楼数=${pb.data.subpostList.length}");
      return pb.data;
    } catch (e) {
      debugPrint("【调试】PbFloor 请求异常：$e");
      return null;
    } finally {
      client.close();
    }
  }

  /// 获取贴吧详细信息（GetForumDetail API）
  static Future<GetForumDetailResponseData?> fetchForumDetail({
    required String bduss,
    required String stoken,
    required String forumId,
    required String userId,
  }) async {
    final phoneImei =
        "${Random().nextInt(900000000) + 100000000}${Random().nextInt(900000) + 100000}";
    final cuid = "cuid_$phoneImei";
    final timestamp = DateTime.now().millisecondsSinceEpoch ~/ 1000;
    final common = CommonRequest(
      clientType: 2,
      clientVersion: _v12ClientVersion,
      clientId: "wappc_${timestamp}_${Random().nextInt(1000)}",
      phoneImei: phoneImei,
      cuid: cuid,
      cuidGalaxy2: cuid,
      timestamp: Int64(timestamp),
      netType: 1,
      bDUSS: bduss,
      stoken: stoken,
      model: "Android",
      brand: "Android",
      osVersion: "12",
      from: "1020031h",
      phoneNewimei: phoneImei,
      scrW: 1080,
      scrH: 1920,
      scrDip: 2.0,
      qType: 2,
    );

    final reqData = GetForumDetailRequestData(
      forumId: Int64.parseInt(forumId),
      common: common,
    );

    final request = GetForumDetailRequest(data: reqData);
    final bodyBytes = request.writeToBuffer();

    final uri = Uri.parse("$_baseHost/c/f/forum/getforumdetail?cmd=303021&format=protobuf");
    debugPrint("【论坛详情】请求：$uri forumId=$forumId");
    if (bduss.length > 10) {
      debugPrint("【论坛详情】BDUSS前缀=${bduss.substring(0, 8)}... 长度=${bduss.length}");
    }
    if (stoken.isNotEmpty) {
      debugPrint("【论坛详情】STOKEN前缀=${stoken.substring(0, 4)}... 长度=${stoken.length}");
    }

    final client = http.Client();
    try {
      final multipart = http.MultipartRequest('POST', uri)
        ..headers.addAll({
          "x_bd_data_type": "protobuf",
          "User-Agent": "tieba/$_v12ClientVersion",
          "Cookie": "ka: open; CUID: $cuid; TBBRAND: Android",
          "Charset": "UTF-8",
          "Client-Type": "2",
          "client_user_token": userId,
          "Cuid": cuid,
          "Cuid-Galaxy2": cuid,
          "Cuid-Gid": "",
          "Cuid-Galaxy3": cuid,
        })
        ..fields['STOKEN'] = stoken
        ..files.add(
          http.MultipartFile.fromBytes('data', bodyBytes, filename: 'file'),
        );

      final streamedResponse = await client.send(multipart);
      final response = await http.Response.fromStream(streamedResponse);

      if (response.statusCode != 200) {
        debugPrint("【论坛详情】非200响应：${response.statusCode}");
        return null;
      }

      final pb = GetForumDetailResponse.fromBuffer(response.bodyBytes);
      if (pb.hasError()) {
        debugPrint("【论坛详情】error子消息存在: code=${pb.error.errorCode} msg='${pb.error.errorMsg}' userMsg='${pb.error.userMsg}'");
        if (pb.error.errorCode != 0) return null;
      } else {
        debugPrint("【论坛详情】响应中无error子消息");
      }

      if (!pb.hasData()) {
        debugPrint("【论坛详情】data为空");
        return null;
      }

      final fi = pb.data.hasForumInfo() ? pb.data.forumInfo : null;
      debugPrint("【论坛详情】解析成功 hasForumInfo=${pb.data.hasForumInfo()} "
          "forumId=${fi?.forumId.toInt()} name='${fi?.forumName}' avatar='${fi?.avatar.isNotEmpty == true ? fi!.avatar.substring(0, 30) : ''}' "
          "isLike=${fi?.isLike} memberCount=${fi?.memberCount} threadCount=${fi?.threadCount} "
          "slogan='${fi?.slogan}'");
      return pb.data;
    } catch (e) {
      debugPrint("【论坛详情】请求异常：$e");
      return null;
    } finally {
      client.close();
    }
  }

  /// 获取贴吧等级信息（GetLevelInfo API）
  static Future<GetLevelInfoResponseData?> fetchLevelInfo({
    required String bduss,
    required String stoken,
    required String forumId,
    required String userId,
  }) async {
    final phoneImei =
        "${Random().nextInt(900000000) + 100000000}${Random().nextInt(900000) + 100000}";
    final cuid = "cuid_$phoneImei";
    final timestamp = DateTime.now().millisecondsSinceEpoch ~/ 1000;
    final common = CommonRequest(
      clientType: 2,
      clientVersion: _v12ClientVersion,
      clientId: "wappc_${timestamp}_${Random().nextInt(1000)}",
      phoneImei: phoneImei,
      cuid: cuid,
      cuidGalaxy2: cuid,
      timestamp: Int64(timestamp),
      netType: 1,
      bDUSS: bduss,
      stoken: stoken,
      model: "Android",
      brand: "Android",
      osVersion: "12",
      from: "1020031h",
      phoneNewimei: phoneImei,
      scrW: 1080,
      scrH: 1920,
      scrDip: 2.0,
      qType: 2,
    );

    final reqData = GetLevelInfoRequestData(
      forumId: Int64.parseInt(forumId),
      common: common,
    );

    final request = GetLevelInfoRequest(data: reqData);
    final bodyBytes = request.writeToBuffer();

    final uri = Uri.parse("$_baseHost/c/f/forum/getLevelInfo?cmd=301005&format=protobuf");
    debugPrint("【等级信息】请求：$uri forumId=$forumId");
    if (bduss.length > 10) {
      debugPrint("【等级信息】BDUSS前缀=${bduss.substring(0, 8)}... 长度=${bduss.length}");
    }
    if (stoken.isNotEmpty) {
      debugPrint("【等级信息】STOKEN前缀=${stoken.substring(0, 4)}... 长度=${stoken.length}");
    }

    final client = http.Client();
    try {
      final multipart = http.MultipartRequest('POST', uri)
        ..headers.addAll({
          "x_bd_data_type": "protobuf",
          "User-Agent": "tieba/$_v12ClientVersion",
          "Cookie": "ka: open; CUID: $cuid; TBBRAND: Android",
          "Charset": "UTF-8",
          "Client-Type": "2",
          "client_user_token": userId,
          "Cuid": cuid,
          "Cuid-Galaxy2": cuid,
          "Cuid-Gid": "",
          "Cuid-Galaxy3": cuid,
        })
        ..fields['STOKEN'] = stoken
        ..files.add(
          http.MultipartFile.fromBytes('data', bodyBytes, filename: 'file'),
        );

      final streamedResponse = await client.send(multipart);
      final response = await http.Response.fromStream(streamedResponse);

      debugPrint("【等级信息】HTTP ${response.statusCode} body=${response.bodyBytes.length}bytes "
          "前50hex=${response.bodyBytes.take(50).map((b) => b.toRadixString(16).padLeft(2, '0')).join('')}");
      if (response.statusCode != 200) {
        debugPrint("【等级信息】非200响应：${response.statusCode}");
        return null;
      }

      final pb = GetLevelInfoResponse.fromBuffer(response.bodyBytes);
      if (pb.hasError()) {
        debugPrint("【等级信息】error子消息存在: code=${pb.error.errorCode} msg='${pb.error.errorMsg}' userMsg='${pb.error.userMsg}'");
        if (pb.error.errorCode != 0) return null;
      } else {
        debugPrint("【等级信息】响应中无error子消息");
      }

      if (!pb.hasData()) {
        debugPrint("【等级信息】data为空");
        return null;
      }

      final d = pb.data;
      debugPrint("【等级信息】解析成功 userLevel=${d.userLevel} isLike=${d.isLike} levelName='${d.levelName}' "
          "levelInfoCount=${d.levelInfo.length} "
          "hasLevelInfo=${d.levelInfo.isNotEmpty}");
      // 打印前3个等级
      for (int i = 0; i < (d.levelInfo.length > 3 ? 3 : d.levelInfo.length); i++) {
        final l = d.levelInfo[i];
        debugPrint("【等级信息】levelInfo[$i]: id=${l.id} name='${l.name}' score=${l.score}");
      }
      return pb.data;
    } catch (e) {
      debugPrint("【等级信息】请求异常：$e");
      return null;
    } finally {
      client.close();
    }
  }

  /// 获取贴吧页面信息（FrsPage API）— 包含用户等级/关注状态
  static Future<FrsPageResponseData?> fetchFrsPage({
    required String bduss,
    required String stoken,
    required String forumName,
    required String userId,
    int page = 1,
    int loadType = 1,
    int sortType = 0,
  }) async {
    final phoneImei =
        "${Random().nextInt(900000000) + 100000000}${Random().nextInt(900000) + 100000}";
    final cuid = "cuid_$phoneImei";
    final timestamp = DateTime.now().millisecondsSinceEpoch ~/ 1000;
    final common = CommonRequest(
      clientType: 2,
      clientVersion: _v12ClientVersion,
      clientId: "wappc_${timestamp}_${Random().nextInt(1000)}",
      phoneImei: phoneImei,
      cuid: cuid,
      cuidGalaxy2: cuid,
      timestamp: Int64(timestamp),
      netType: 1,
      bDUSS: bduss,
      stoken: stoken,
      model: "Android",
      brand: "Android",
      osVersion: "12",
      from: "1020031h",
      phoneNewimei: phoneImei,
      scrW: 1080,
      scrH: 1920,
      scrDip: 2.0,
      qType: 2,
    );

    final reqData = FrsPageRequestData(
      kw: forumName,
      pn: page,
      rn: 30,
      loadType: loadType,
      sortType: sortType,
      common: common,
      stType: "tb_forumlist",
      scrW: 1080,
      scrH: 1920,
      scrDip: 2.0,
      qType: 2,
      callFrom: 0,
      isGood: 0,
      isSelection: 0,
      cid: 0,
      ctime: 0,
      dataSize: 0,
      netError: 0,
      stParam: 0,
      categoryId: 0,
      isDefaultNavtab: 0,
      adParam: frs_ad_param.AdParam(
        loadCount: 0,
        refreshCount: 1,
      ),
      appPos: AppPosInfo(),
    );

    final request = FrsPageRequest(data: reqData);
    final bodyBytes = request.writeToBuffer();

    final uri = Uri.parse("$_baseHost/c/f/frs/page?cmd=301001");
    debugPrint("【FrsPage】请求：$uri kw=$forumName pn=$page");

    final client = http.Client();
    try {
      final multipart = http.MultipartRequest('POST', uri)
        ..headers.addAll({
          "x_bd_data_type": "protobuf",
          "User-Agent": "tieba/$_v12ClientVersion",
          "Cookie": "ka: open; CUID: $cuid; TBBRAND: Android",
          "Charset": "UTF-8",
          "Client-Type": "2",
          "client_user_token": userId,
          "Cuid": cuid,
          "Cuid-Galaxy2": cuid,
          "Cuid-Gid": "",
          "Cuid-Galaxy3": cuid,
        })
        ..fields['STOKEN'] = stoken
        ..files.add(
          http.MultipartFile.fromBytes('data', bodyBytes, filename: 'file'),
        );

      final streamedResponse = await client.send(multipart);
      final response = await http.Response.fromStream(streamedResponse);

      debugPrint("【FrsPage】HTTP ${response.statusCode} body=${response.bodyBytes.length}bytes");
      if (response.statusCode != 200) {
        debugPrint("【FrsPage】非200响应：${response.statusCode}");
        return null;
      }

      final pb = FrsPageResponse.fromBuffer(response.bodyBytes);
      if (pb.hasError() && pb.error.errorCode != 0) {
        debugPrint("【FrsPage】API错误：${pb.error.errorCode} ${pb.error.errorMsg}");
        return null;
      }

      if (!pb.hasData()) {
        debugPrint("【FrsPage】data为空");
        return null;
      }

      final d = pb.data;
      final fi = d.hasForum() ? d.forum : null;
      debugPrint("【FrsPage】解析成功 forumId=${fi?.id.toInt()} name='${fi?.name}' "
          "isLike=${fi?.isLike} userLevel=${fi?.userLevel} levelName='${fi?.levelName}' "
          "curScore=${fi?.curScore} levelupScore=${fi?.levelupScore} "
          "threadCount=${d.threadList.length}");
      return d;
    } catch (e) {
      debugPrint("【FrsPage】请求异常：$e");
      return null;
    } finally {
      client.close();
    }
  }

  /// 点赞回复（与点赞帖子类似，obj_type=5）
  static Future<bool> likeReply({
    required String bduss,
    required String stoken,
    required String tbs,
    required String userId,
    required String threadId,
    required String postId,
  }) async {
    final timestamp = "${DateTime.now().millisecondsSinceEpoch}";
    final phoneImei = "${Random().nextInt(900000000) + 100000000}${Random().nextInt(900000) + 100000}";
    final cuid = "cuid_${phoneImei}";
    final stTime = "${Random().nextInt(730) + 121}";
    final stSize = "${((Random().nextDouble() * 8 + 0.4) * int.parse(stTime)).round()}";
    final clientId = "wappc_${timestamp}_${Random().nextInt(1000)}";

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
      ["obj_type", "5"], // 5=回复, 3=帖子
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
      if (response.statusCode != 200) return false;
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      return json["error_code"] == "0" || json["error_code"] == 0;
    } catch (_) {
      return false;
    } finally {
      client.close();
    }
  }
}
