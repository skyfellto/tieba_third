import 'dart:convert';
import 'dart:math';
import 'package:fixnum/fixnum.dart';
import 'package:crypto/crypto.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../models/post_item.dart';
import '../models/forum_item.dart';
import '../models/user_profile_data.dart';
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
import '../generated/Profile/ProfileRequest.pb.dart';
import '../generated/Profile/ProfileRequestData.pb.dart';
import '../generated/Profile/ProfileResponse.pb.dart';
import '../generated/UserPost/UserPostRequest.pb.dart';
import '../generated/UserPost/UserPostRequestData.pb.dart';
import '../generated/UserPost/UserPostResponse.pb.dart';
import '../generated/SearchSug/SearchSugRequest.pb.dart';
import '../generated/SearchSug/SearchSugRequestData.pb.dart';
import '../generated/SearchSug/SearchSugResponse.pb.dart';
import '../generated/SearchSug/SearchSugResponseData.pb.dart';

class TiebaApi {
  static const String _baseHost = "http://tiebac.baidu.com";
  static const String _loginUrl = "$_baseHost/c/s/login";
  static const String _clientVersion = "12.64.1.1";
  static const String _v12ClientVersion = "12.52.1.0";

  static String _s(dynamic v) => v?.toString() ?? '';

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
    // debugPrint("\n================================================");
    // debugPrint("【调试】Protobuf 请求：$uri");
    // debugPrint("================================================\n");

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

      // debugPrint("【调试】响应状态码：${response.statusCode}");
      if (response.statusCode != 200) {
        // debugPrint("【调试】非200，降级占位");
        return [];
      }

      final pb = PersonalizedResponse.fromBuffer(response.bodyBytes);
      if (pb.error.hasErrorCode() && pb.error.errorCode != 0) {
        // debugPrint("【调试】API错误：${pb.error.errorCode} ${pb.error.errorMsg}");
        return [];
      }

      final threadList = pb.data.threadList;
      if (threadList.isEmpty) {
        // debugPrint("【调试】thread_list 为空");
        return [];
      }

      final posts = threadList
          .map((t) => PostItem.fromThreadInfo(t))
          .where((p) => p.title.isNotEmpty && p.tid.isNotEmpty)
          .toList();
      // debugPrint("【调试】解析到 ${posts.length} 条帖子");
      return posts;
    } catch (e) {
      // debugPrint("【调试】请求异常：$e");
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
  /// 点赞帖子，返回新点赞数，失败返回 null
  static Future<int?> likePost({
    required String bduss,
    required String stoken,
    required String tbs,
    required String userId,
    required String threadId,
    String postId = "0",
    bool allowAlreadyLiked = false,
  }) async {
    final timestamp = "${DateTime.now().millisecondsSinceEpoch}";
    final phoneImei =
        "${Random().nextInt(900000000) + 100000000}${Random().nextInt(900000) + 100000}";
    final cuid = "cuid_${phoneImei}";
    final stTime = "${Random().nextInt(730) + 121}";
    final stSize =
        "${((Random().nextDouble() * 8 + 0.4) * int.parse(stTime)).round()}";
    final clientId = "wappc_${timestamp}_${Random().nextInt(1000)}";

    final params = [
      ["BDUSS", bduss],
      ["_client_version", "7.2.0.0"],
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
    final bodyStr = params
        .map((p) => "${p[0]}=${Uri.encodeComponent(p[1])}")
        .join("&");

    debugPrint("【点赞帖子请求】threadId=$threadId");

    final client = http.Client();
    try {
      final request =
          http.Request(
              'POST',
              Uri.parse("http://c.tieba.baidu.com/c/c/agree/opAgree"),
            )
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

      final response = await http.Response.fromStream(
        await client.send(request),
      );
      debugPrint("【点赞帖子响应】状态码=${response.statusCode} body=${response.body}");
      if (response.statusCode != 200) return null;
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      final err = json["error_code"];
      if (err != null && err != "0" && err != 0) {
        if (err == "3280001" && allowAlreadyLiked) {
          debugPrint("【点赞帖子】已经点过赞了");
          return -1;
        }
        debugPrint("【点赞帖子失败】error_code=$err msg=${json["error_msg"]}");
        return null;
      }
      if (json["data"] == null) {
        debugPrint("【点赞帖子失败】data=null");
        return null;
      }
      debugPrint("【点赞帖子成功】返回1");
      return 1;
    } catch (e) {
      debugPrint("【点赞帖子异常】$e");
      return null;
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
    debugPrint(
      "【调试】PbPage 请求：$uri tid=$threadId page=$page lz=$seeLz r=$sortType",
    );
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
        debugPrint(
          "【调试】PbPage API错误：${pb.error.errorCode} ${pb.error.errorMsg}",
        );
        return null;
      }

      if (!pb.hasData()) {
        debugPrint("【调试】PbPage data为空");
        return null;
      }

      debugPrint("【调试】PbPage 解析成功，回复数=${pb.data.postList.length}");
      // 调试：检查前3条 post 的原始数据
      final d = pb.data;
      debugPrint(
        "【调试PbPage】hasFirstFloorPost=${d.hasFirstFloorPost()} "
        "hasThread=${d.hasThread()} sortType=${d.sortType} ",
      );
      if (d.hasFirstFloorPost()) {
        final fp = d.firstFloorPost;
        debugPrint(
          "【调试PbPage】firstFloor: floor=${fp.floor} "
          "hasAuthor=${fp.hasAuthor()} contentLen=${fp.content.length} "
          "subPostNum=${fp.subPostNumber}",
        );
        if (fp.content.isNotEmpty) {
          final c0 = fp.content.first;
          debugPrint(
            "【调试PbPage】firstContent: type=${c0.type} text='${c0.text}' src='${c0.src.length > 0 ? c0.src.substring(0, 50) : ''}'",
          );
        }
      }
      for (
        int i = 0;
        i < (d.postList.length > 3 ? 3 : d.postList.length);
        i++
      ) {
        final p = d.postList[i];
        debugPrint(
          "【调试PbPage】post[$i]: floor=${p.floor} hasAuthor=${p.hasAuthor()} "
          "contentLen=${p.content.length} ",
        );
        if (p.content.isNotEmpty) {
          final c0 = p.content.first;
          debugPrint(
            "【调试PbPage】post[$i] content[0]: type=${c0.type} text='${c0.text}' src='${c0.src.length > 0 ? c0.src.substring(0, 50) : ''}' bigCdnSrc='${c0.bigCdnSrc.length > 0 ? c0.bigCdnSrc.substring(0, 50) : ''}'",
          );
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

    final uri = Uri.parse(
      "$_baseHost/c/f/pb/floor?cmd=302002&format=protobuf&rn=30",
    );
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
        debugPrint(
          "【调试】PbFloor API错误：${pb.error.errorCode} ${pb.error.errorMsg}",
        );
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

  /// 获取楼中楼回复列表（JSON API，支持 rn 分页）
  static Future<Map<String, dynamic>?> fetchFloorRepliesJson({
    required String bduss,
    required String stoken,
    required String tbs,
    required String threadId,
    required String postId,
    int page = 1,
    String subPostId = '0',
    int rn = 30,
  }) async {
    final timestamp = "${DateTime.now().millisecondsSinceEpoch}";
    final phoneImei =
        "${Random().nextInt(900000000) + 100000000}${Random().nextInt(900000) + 100000}";
    final cuid = "cuid_$phoneImei";
    final clientId = "wappc_${timestamp}_${Random().nextInt(1000)}";

    final params = [
      ["BDUSS", bduss],
      ["STOKEN", stoken],
      ["_client_version", "8.0.8.0"],
      ["client_id", clientId],
      ["cuid", cuid],
      ["cuid_galaxy2", cuid],
      ["cuid_gid", ""],
      ["from", "1021636m"],
      ["kz", threadId],
      ["model", "Android"],
      ["net_type", "1"],
      ["os_version", "12"],
      ["phone_imei", phoneImei],
      ["pid", postId],
      ["pn", "$page"],
      ["rn", "$rn"],
      ["spid", subPostId],
      ["stoken", stoken],
      ["subapp_type", "mini"],
      ["tbs", tbs],
      ["timestamp", timestamp],
    ];
    final sign = _computeSign(params);
    params.add(["sign", sign]);
    final bodyStr = params
        .map((p) => "${p[0]}=${Uri.encodeComponent(p[1])}")
        .join("&");

    final client = http.Client();
    try {
      final request =
          http.Request(
              'POST',
              Uri.parse("http://c.tieba.baidu.com/c/f/pb/floor"),
            )
            ..followRedirects = false
            ..headers.addAll({
              "Content-Type": "application/x-www-form-urlencoded",
              "User-Agent": "bdtb for Android 7.2.0.0",
              "Cookie": "ka=open",
              "cuid": cuid,
              "cuid_galaxy2": cuid,
              "client_logid": timestamp,
            })
            ..body = bodyStr;

      final response = await http.Response.fromStream(
        await client.send(request),
      );
      if (response.statusCode != 200) return null;
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      final err = json["error_code"];
      if (err != null && err != "0" && err != 0) return null;
      return json;
    } catch (e) {
      debugPrint("【楼中楼JSON异常】$e");
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

    final uri = Uri.parse(
      "$_baseHost/c/f/forum/getforumdetail?cmd=303021&format=protobuf",
    );
    debugPrint("【论坛详情】请求：$uri forumId=$forumId");
    if (bduss.length > 10) {
      debugPrint(
        "【论坛详情】BDUSS前缀=${bduss.substring(0, 8)}... 长度=${bduss.length}",
      );
    }
    if (stoken.isNotEmpty) {
      debugPrint(
        "【论坛详情】STOKEN前缀=${stoken.substring(0, 4)}... 长度=${stoken.length}",
      );
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
        debugPrint(
          "【论坛详情】error子消息存在: code=${pb.error.errorCode} msg='${pb.error.errorMsg}' userMsg='${pb.error.userMsg}'",
        );
        if (pb.error.errorCode != 0) return null;
      } else {
        debugPrint("【论坛详情】响应中无error子消息");
      }

      if (!pb.hasData()) {
        debugPrint("【论坛详情】data为空");
        return null;
      }

      final fi = pb.data.hasForumInfo() ? pb.data.forumInfo : null;
      debugPrint(
        "【论坛详情】解析成功 hasForumInfo=${pb.data.hasForumInfo()} "
        "forumId=${fi?.forumId.toInt()} name='${fi?.forumName}' avatar='${fi?.avatar.isNotEmpty == true ? fi!.avatar.substring(0, 30) : ''}' "
        "isLike=${fi?.isLike} memberCount=${fi?.memberCount} threadCount=${fi?.threadCount} "
        "slogan='${fi?.slogan}'",
      );
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

    final uri = Uri.parse(
      "$_baseHost/c/f/forum/getLevelInfo?cmd=301005&format=protobuf",
    );
    debugPrint("【等级信息】请求：$uri forumId=$forumId");
    if (bduss.length > 10) {
      debugPrint(
        "【等级信息】BDUSS前缀=${bduss.substring(0, 8)}... 长度=${bduss.length}",
      );
    }
    if (stoken.isNotEmpty) {
      debugPrint(
        "【等级信息】STOKEN前缀=${stoken.substring(0, 4)}... 长度=${stoken.length}",
      );
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

      debugPrint(
        "【等级信息】HTTP ${response.statusCode} body=${response.bodyBytes.length}bytes "
        "前50hex=${response.bodyBytes.take(50).map((b) => b.toRadixString(16).padLeft(2, '0')).join('')}",
      );
      if (response.statusCode != 200) {
        debugPrint("【等级信息】非200响应：${response.statusCode}");
        return null;
      }

      final pb = GetLevelInfoResponse.fromBuffer(response.bodyBytes);
      if (pb.hasError()) {
        debugPrint(
          "【等级信息】error子消息存在: code=${pb.error.errorCode} msg='${pb.error.errorMsg}' userMsg='${pb.error.userMsg}'",
        );
        if (pb.error.errorCode != 0) return null;
      } else {
        debugPrint("【等级信息】响应中无error子消息");
      }

      if (!pb.hasData()) {
        debugPrint("【等级信息】data为空");
        return null;
      }

      final d = pb.data;
      debugPrint(
        "【等级信息】解析成功 userLevel=${d.userLevel} isLike=${d.isLike} levelName='${d.levelName}' "
        "levelInfoCount=${d.levelInfo.length} "
        "hasLevelInfo=${d.levelInfo.isNotEmpty}",
      );
      // 打印前3个等级
      for (
        int i = 0;
        i < (d.levelInfo.length > 3 ? 3 : d.levelInfo.length);
        i++
      ) {
        final l = d.levelInfo[i];
        debugPrint(
          "【等级信息】levelInfo[$i]: id=${l.id} name='${l.name}' score=${l.score}",
        );
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
    int isGood = 0,
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
      isGood: isGood,
      common: common,
      stType: "tb_forumlist",
      scrW: 1080,
      scrH: 1920,
      scrDip: 2.0,
      qType: 2,
      callFrom: 0,
      isSelection: 0,
      cid: 0,
      ctime: 0,
      dataSize: 0,
      netError: 0,
      stParam: 0,
      categoryId: 0,
      isDefaultNavtab: 0,
      adParam: frs_ad_param.AdParam(loadCount: 0, refreshCount: 1),
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

      debugPrint(
        "【FrsPage】HTTP ${response.statusCode} body=${response.bodyBytes.length}bytes",
      );
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
      debugPrint(
        "【FrsPage】解析成功 forumId=${fi?.id.toInt()} name='${fi?.name}' "
        "isLike=${fi?.isLike} userLevel=${fi?.userLevel} levelName='${fi?.levelName}' "
        "curScore=${fi?.curScore} levelupScore=${fi?.levelupScore} "
        "threadCount=${d.threadList.length}",
      );
      return d;
    } catch (e) {
      debugPrint("【FrsPage】请求异常：$e");
      return null;
    } finally {
      client.close();
    }
  }

  /// 单独签到（POST /c/c/forum/sign）
  /// 参考 tiebalite OfficialTiebaApi.signFlow
  static Future<Map<String, dynamic>?> signForum({
    required String bduss,
    required String stoken,
    required String tbs,
    required String forumId,
    required String forumName,
  }) async {
    final timestamp = "${DateTime.now().millisecondsSinceEpoch}";
    final phoneImei =
        "${Random().nextInt(900000000) + 100000000}${Random().nextInt(900000) + 100000}";
    final cuid = "cuid_$phoneImei";
    final clientId = "wappc_${timestamp}_${Random().nextInt(1000)}";

    // tiebalite signFlow: Cookie=ka=open, _client_version=11.10.8.6
    // 使用 defaultCommonParamInterceptor 风格参数 + 签到专有字段
    final params = [
      ["BDUSS", bduss],
      ["_client_id", clientId],
      ["_client_type", "2"],
      ["_client_version", "11.10.8.6"],
      ["_os_version", "12"],
      ["cuid", cuid],
      ["cuid_galaxy2", cuid],
      ["cuid_gid", ""],
      ["fid", forumId],
      ["from", "tieba"],
      ["kw", forumName],
      ["model", "Android"],
      ["net_type", "1"],
      ["_phone_imei", phoneImei],
      ["tbs", tbs],
      ["timestamp", timestamp],
    ];
    final sign = _computeSign(params);
    params.add(["sign", sign]);
    final bodyStr = params
        .map((p) => "${p[0]}=${Uri.encodeComponent(p[1])}")
        .join("&");

    debugPrint("\n【签到请求】POST /c/c/forum/sign");
    debugPrint("【签到参数】fid=$forumId kw=$forumName");
    debugPrint("【签到body】$bodyStr");

    final client = http.Client();
    try {
      final request =
          http.Request(
              'POST',
              Uri.parse("http://c.tieba.baidu.com/c/c/forum/sign"),
            )
            ..followRedirects = false
            ..headers.addAll({
              "Content-Type": "application/x-www-form-urlencoded",
              "User-Agent": "bdtb for Android 11.10.8.6",
              "Cookie": "ka=open",
              "cuid": cuid,
              "cuid_galaxy2": cuid,
              "client_logid": timestamp,
            })
            ..body = bodyStr;

      final response = await http.Response.fromStream(
        await client.send(request),
      );
      debugPrint("【签到响应】状态码=${response.statusCode}");
      debugPrint("【签到响应】body=${response.body}");

      if (response.statusCode != 200) {
        debugPrint("【签到失败】非200状态码");
        return null;
      }

      final json = jsonDecode(response.body) as Map<String, dynamic>;
      final err = json["error_code"];
      if (err != null && err != "0" && err != 0) {
        debugPrint("【签到失败】error_code=$err msg=${json["error_msg"]}");
        return null;
      }
      // tiebalite SignResultBean: userInfo 为空表示签到失败
      if (json["user_info"] == null) {
        debugPrint("【签到失败】user_info 为空");
        return null;
      }
      return json;
    } catch (e) {
      debugPrint("【签到异常】$e");
      return null;
    } finally {
      client.close();
    }
  }

  /// 一键签到（POST /c/c/forum/msign）
  /// 参考 tiebalite OfficialTiebaApi.mSignFlow
  static Future<Map<String, dynamic>?> mSign({
    required String bduss,
    required String stoken,
    required String tbs,
    required String forumIds,
    required String userId,
  }) async {
    final timestamp = "${DateTime.now().millisecondsSinceEpoch}";
    final phoneImei =
        "${Random().nextInt(900000000) + 100000000}${Random().nextInt(900000) + 100000}";
    final cuid = "cuid_$phoneImei";
    final clientId = "wappc_${timestamp}_${Random().nextInt(1000)}";

    // tiebalite mSignFlow: Cookie=CUID;ka=open;TBBRAND;BAIDUID, _client_version=11.10.8.6
    final params = [
      ["BDUSS", bduss],
      ["STOKEN", stoken],
      ["_client_id", clientId],
      ["_client_type", "2"],
      ["_client_version", "11.10.8.6"],
      ["_os_version", "12"],
      ["authsid", "null"],
      ["cuid", cuid],
      ["cuid_galaxy2", cuid],
      ["cuid_gid", ""],
      ["forum_ids", forumIds],
      ["from", "tieba"],
      ["model", "Android"],
      ["net_type", "1"],
      ["_phone_imei", phoneImei],
      ["stoken", stoken],
      ["tbs", tbs],
      ["timestamp", timestamp],
      ["user_id", userId],
    ];
    final sign = _computeSign(params);
    params.add(["sign", sign]);
    final bodyStr = params
        .map((p) => "${p[0]}=${Uri.encodeComponent(p[1])}")
        .join("&");

    debugPrint("\n【一键签到请求】POST /c/c/forum/msign");
    debugPrint("【一键签到参数】forum_ids=$forumIds tbs=$tbs");
    debugPrint("【一键签到body】$bodyStr");

    final client = http.Client();
    try {
      final request =
          http.Request(
              'POST',
              Uri.parse("http://c.tieba.baidu.com/c/c/forum/msign"),
            )
            ..followRedirects = false
            ..headers.addAll({
              "Content-Type": "application/x-www-form-urlencoded",
              "User-Agent": "bdtb for Android 11.10.8.6",
              "Cookie": "CUID=$cuid;ka=open;TBBRAND=Android;BAIDUID=$cuid;",
              "cuid": cuid,
              "cuid_galaxy2": cuid,
              "cuid_gid": "",
              "client_type": "2",
              "client_logid": timestamp,
            })
            ..body = bodyStr;

      final response = await http.Response.fromStream(
        await client.send(request),
      );
      debugPrint("【一键签到响应】状态码=${response.statusCode}");
      debugPrint("【一键签到响应】body=${response.body}");

      if (response.statusCode != 200) {
        debugPrint("【一键签到失败】非200状态码");
        return null;
      }

      final json = jsonDecode(response.body) as Map<String, dynamic>;
      final err = json["error_code"];
      if (err != null && err != "0" && err != 0) {
        debugPrint("【一键签到失败】error_code=$err msg=${json["error_msg"]}");
        return null;
      }
      // tiebalite: info 为字符串时表示失败，为数组时才是签到结果
      final info = json["info"];
      if (info is String) {
        debugPrint("【一键签到失败】info 为字符串: $info");
        return null;
      }
      return json;
    } catch (e) {
      debugPrint("【一键签到异常】$e");
      return null;
    } finally {
      client.close();
    }
  }

  /// 点赞回复
  /// [objType]: 1=post/reply, 2=subpost(楼中楼), 3=thread
  /// 返回新点赞数，失败返回 null
  static Future<int?> likeReply({
    required String bduss,
    required String stoken,
    required String tbs,
    required String userId,
    required String threadId,
    required String postId,
    int objType = 1,
  }) async {
    final timestamp = "${DateTime.now().millisecondsSinceEpoch}";
    final phoneImei =
        "${Random().nextInt(900000000) + 100000000}${Random().nextInt(900000) + 100000}";
    final cuid = "cuid_${phoneImei}";
    final stTime = "${Random().nextInt(730) + 121}";
    final stSize =
        "${((Random().nextDouble() * 8 + 0.4) * int.parse(stTime)).round()}";
    final clientId = "wappc_${timestamp}_${Random().nextInt(1000)}";

    final params = [
      ["BDUSS", bduss],
      ["_client_version", "7.2.0.0"],
      ["agree_type", "2"],
      ["client_id", clientId],
      ["cuid", cuid],
      ["cuid_galaxy2", cuid],
      ["cuid_gid", ""],
      ["from", "1021636m"],
      ["model", "Android"],
      ["net_type", "1"],
      ["obj_type", "$objType"],
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
    final bodyStr = params
        .map((p) => "${p[0]}=${Uri.encodeComponent(p[1])}")
        .join("&");

    debugPrint("【点赞回复请求】obj_type=$objType postId=$postId");

    final client = http.Client();
    try {
      final request =
          http.Request(
              'POST',
              Uri.parse("http://c.tieba.baidu.com/c/c/agree/opAgree"),
            )
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

      final response = await http.Response.fromStream(
        await client.send(request),
      );
      debugPrint("【点赞回复响应】${response.statusCode} body=${response.body}");
      if (response.statusCode != 200) return null;
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      final err = json["error_code"];
      if (err != null && err != "0" && err != 0) {
        debugPrint("【点赞回复失败】error_code=$err msg=${json["error_msg"]}");
        return null;
      }
      if (json["data"] == null) {
        debugPrint("【点赞回复失败】data=null");
        return null;
      }
      return 1;
    } catch (e) {
      debugPrint("【点赞回复异常】$e");
      return null;
    } finally {
      client.close();
    }
  }

  /// 获取用户资料（JSON API）
  /// 参考 tiebalite MiniTiebaApi.profile
  static Future<UserProfileData?> fetchUserProfile({
    required String bduss,
    required String stoken,
    required String uid,
  }) async {
    final timestamp = "${DateTime.now().millisecondsSinceEpoch}";
    final phoneImei =
        "${Random().nextInt(900000000) + 100000000}${Random().nextInt(900000) + 100000}";
    final cuid = "cuid_$phoneImei";
    final clientId = "wappc_${timestamp}_${Random().nextInt(1000)}";

    final params = [
      ["BDUSS", bduss],
      ["STOKEN", stoken],
      ["_client_id", clientId],
      ["_client_type", "2"],
      ["_client_version", "11.10.8.6"],
      ["_os_version", "12"],
      ["cuid", cuid],
      ["cuid_galaxy2", cuid],
      ["cuid_gid", ""],
      ["from", "tieba"],
      ["model", "Android"],
      ["net_type", "1"],
      ["_phone_imei", phoneImei],
      ["uid", uid],
      ["need_post_count", "1"],
      ["timestamp", timestamp],
    ];
    final sign = _computeSign(params);
    params.add(["sign", sign]);
    final bodyStr = params
        .map((p) => "${p[0]}=${Uri.encodeComponent(p[1])}")
        .join("&");

    debugPrint("【用户资料请求】uid=$uid");

    final client = http.Client();
    try {
      final request =
          http.Request(
              'POST',
              Uri.parse("http://c.tieba.baidu.com/c/u/user/profile"),
            )
            ..followRedirects = false
            ..headers.addAll({
              "Content-Type": "application/x-www-form-urlencoded",
              "User-Agent": "bdtb for Android 11.10.8.6",
              "Cookie": "ka=open",
              "cuid": cuid,
              "cuid_galaxy2": cuid,
              "client_logid": timestamp,
            })
            ..body = bodyStr;

      final response = await http.Response.fromStream(
        await client.send(request),
      );
      debugPrint("【用户资料响应】状态码=${response.statusCode}");

      if (response.statusCode != 200) return null;

      final json = jsonDecode(response.body) as Map<String, dynamic>;
      final err = json["error_code"];
      if (err != null && err != "0" && err != 0) {
        debugPrint("【用户资料失败】error_code=$err msg=${json["error_msg"]}");
        return null;
      }
      if (json["user"] == null) {
        debugPrint("【用户资料失败】user 为空");
        return null;
      }

      return UserProfileData.fromJson(json);
    } catch (e) {
      debugPrint("【用户资料异常】$e");
      return null;
    } finally {
      client.close();
    }
  }

  /// 获取用户帖子列表（JSON API）
  /// 参考 tiebalite MiniTiebaApi.userPost
  static Future<List<PostItem>> fetchUserPosts({
    required String bduss,
    required String stoken,
    required String uid,
    int page = 1,
    int isThread = 1,
    int rn = 20,
  }) async {
    final timestamp = "${DateTime.now().millisecondsSinceEpoch}";
    final phoneImei =
        "${Random().nextInt(900000000) + 100000000}${Random().nextInt(900000) + 100000}";
    final cuid = "cuid_$phoneImei";
    final clientId = "wappc_${timestamp}_${Random().nextInt(1000)}";

    final params = [
      ["BDUSS", bduss],
      ["STOKEN", stoken],
      ["_client_id", clientId],
      ["_client_type", "2"],
      ["_client_version", "11.10.8.6"],
      ["_os_version", "12"],
      ["cuid", cuid],
      ["cuid_galaxy2", cuid],
      ["cuid_gid", ""],
      ["from", "tieba"],
      ["model", "Android"],
      ["net_type", "1"],
      ["_phone_imei", phoneImei],
      ["uid", uid],
      ["page", "$page"],
      ["is_thread", "$isThread"],
      ["rn", "$rn"],
      ["need_content", "1"],
      ["timestamp", timestamp],
    ];
    final sign = _computeSign(params);
    params.add(["sign", sign]);
    final bodyStr = params
        .map((p) => "${p[0]}=${Uri.encodeComponent(p[1])}")
        .join("&");

    debugPrint("【用户帖子请求】uid=$uid page=$page");

    final client = http.Client();
    try {
      final request =
          http.Request(
              'POST',
              Uri.parse("http://c.tieba.baidu.com/c/u/feed/userpost"),
            )
            ..followRedirects = false
            ..headers.addAll({
              "Content-Type": "application/x-www-form-urlencoded",
              "User-Agent": "bdtb for Android 11.10.8.6",
              "Cookie": "ka=open",
              "cuid": cuid,
              "cuid_galaxy2": cuid,
              "client_logid": timestamp,
            })
            ..body = bodyStr;

      final response = await http.Response.fromStream(
        await client.send(request),
      );
      debugPrint("【用户帖子响应】状态码=${response.statusCode}");

      if (response.statusCode != 200) return [];

      final json = jsonDecode(response.body) as Map<String, dynamic>;
      final err = json["error_code"];
      if (err != null && err != "0" && err != 0) {
        debugPrint("【用户帖子失败】error_code=$err msg=${json["error_msg"]}");
        return [];
      }

      final postList = json["post_list"];
      if (postList is! List) return [];

      final posts = <PostItem>[];
      for (final item in postList) {
        final itemMap = item as Map<String, dynamic>;
        // 提取正文文本
        String? absText;
        final content = itemMap["content"];
        if (content is List && content.isNotEmpty) {
          final firstContent = content[0] as Map<String, dynamic>?;
          if (firstContent != null) {
            final postContent = firstContent["post_content"];
            if (postContent is List && postContent.isNotEmpty) {
              final texts = postContent
                  .map(
                    (c) =>
                        (c as Map<String, dynamic>)["text"]?.toString() ?? "",
                  )
                  .where((t) => t.isNotEmpty)
                  .toList();
              if (texts.isNotEmpty) absText = texts.join(" ");
            }
          }
        }

        // 尝试从 abstracts 提取
        if ((absText == null || absText.isEmpty) &&
            itemMap["abstracts"] is List) {
          final abstractsList = itemMap["abstracts"] as List;
          if (abstractsList.isNotEmpty) {
            absText = abstractsList
                .map(
                  (a) => (a as Map<String, dynamic>)["text"]?.toString() ?? "",
                )
                .where((t) => t.isNotEmpty)
                .join(" ");
          }
        }

        final tid = _s(itemMap["thread_id"]);
        if (tid.isEmpty) continue;

        final isThreadVal = _s(itemMap["is_thread"]);
        String? lastTime;
        try {
          final ct = int.tryParse(_s(itemMap["create_time"]));
          if (ct != null && ct > 0) {
            final dt = DateTime.fromMillisecondsSinceEpoch(ct * 1000);
            final now = DateTime.now();
            if (now.year == dt.year) {
              if (now.day == dt.day && now.month == dt.month) {
                final diff = now.difference(dt);
                if (diff.inMinutes < 1) {
                  lastTime = null;
                } else if (diff.inMinutes <= 40) {
                  lastTime = "${diff.inMinutes} 分钟前";
                } else {
                  lastTime =
                      "今天 ${dt.hour.toString().padLeft(2, '0')}:${dt.minute.toString().padLeft(2, '0')}";
                }
              } else {
                lastTime =
                    "${dt.month.toString().padLeft(2, '0')}-${dt.day.toString().padLeft(2, '0')} ${dt.hour.toString().padLeft(2, '0')}:${dt.minute.toString().padLeft(2, '0')}";
              }
            } else {
              lastTime =
                  "${dt.year}-${dt.month.toString().padLeft(2, '0')}-${dt.day.toString().padLeft(2, '0')} ${dt.hour.toString().padLeft(2, '0')}:${dt.minute.toString().padLeft(2, '0')}";
            }
          }
        } catch (_) {}

        posts.add(
          PostItem(
            tid: tid,
            title: _s(itemMap["title"]),
            authorId: _s(itemMap["user_id"]),
            authorName: _s(itemMap["name_show"]),
            authorPortrait: itemMap["user_portrait"]?.toString(),
            forumId: _s(itemMap["forum_id"]),
            forumName: _s(itemMap["forum_name"]),
            replyNum: _s(itemMap["reply_num"]),
            agreeNum: _s(itemMap["agree_num"]),
            abstractText: absText,
            lastTime: lastTime,
            isAd: false,
            isTop:
                isThreadVal == "1" && int.tryParse(_s(itemMap["is_top"])) == 1,
          ),
        );
      }
      return posts;
    } catch (e) {
      debugPrint("【用户帖子异常】$e");
      return [];
    } finally {
      client.close();
    }
  }

  /// 获取用户资料（Protobuf API）
  /// POST /c/u/user/profile?cmd=303012&format=protobuf
  /// 参考 tiebalite OfficialProtobufTiebaApi.profileFlow
  /// 返回 (用户资料, 关注的吧列表)
  static Future<(UserProfileData?, List<ForumItem>)> fetchUserProfilePb({
    required String bduss,
    required String stoken,
    required String uid,
  }) async {
    final phoneImei =
        "${Random().nextInt(900000000) + 100000000}${Random().nextInt(900000) + 100000}";
    final cuid = "cuid_$phoneImei";
    final timestamp = DateTime.now().millisecondsSinceEpoch ~/ 1000;
    final common = CommonRequest(
      clientType: 2,
      clientVersion: _clientVersion,
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

    final reqData = ProfileRequestData(
      common: common,
      uid: Int64.parseInt(uid),
      needPostCount: 1,
      friendUid: Int64.ZERO,
      isGuest: 0,
    );
    final request = ProfileRequest(data: reqData);
    final bodyBytes = request.writeToBuffer();

    final uri = Uri.parse(
      "$_baseHost/c/u/user/profile?cmd=303012&format=protobuf",
    );
    debugPrint("【用户资料Pb】请求：$uri uid=$uid");

    final client = http.Client();
    try {
      final multipart = http.MultipartRequest('POST', uri)
        ..headers.addAll({
          "x_bd_data_type": "protobuf",
          "User-Agent": "tieba/$_v12ClientVersion",
          "Cookie": "ka=open; CUID=${common.cuid}; TBBRAND=Android",
          "Charset": "UTF-8",
          "Client-Type": "2",
          "client_user_token": uid,
          "Cuid": common.cuid,
          "Cuid-Galaxy2": common.cuid,
          "Cuid-Gid": "",
        })
        ..files.add(
          http.MultipartFile.fromBytes('data', bodyBytes, filename: 'file'),
        );

      final streamedResponse = await client.send(multipart);
      final response = await http.Response.fromStream(streamedResponse);

      debugPrint("【用户资料Pb】状态码=${response.statusCode}");
      debugPrint("【用户资料Pb】body长度=${response.bodyBytes.length}");

      if (response.statusCode != 200) return (null, <ForumItem>[]);

      final pb = ProfileResponse.fromBuffer(response.bodyBytes);
      if (pb.hasError() && pb.error.errorCode != 0) {
        debugPrint("【用户资料Pb】错误：${pb.error.errorCode} ${pb.error.errorMsg}");
        return (null, <ForumItem>[]);
      }
      if (!pb.hasData() || !pb.data.hasUser()) {
        debugPrint("【用户资料Pb】data 或 user 为空");
        return (null, <ForumItem>[]);
      }

      final user = pb.data.user;
      debugPrint(
        "【用户资料Pb】uid=${user.id} name=${user.name} nameShow=${user.nameShow} "
        "tbAge=${user.tbAge} concernNum=${user.concernNum} fansNum=${user.fansNum} "
        "totalAgreeNum=${user.totalAgreeNum} intro长度=${user.intro.length}",
      );

      final forums = pb.data.concernedForumList
          .where((f) => f.forumName.isNotEmpty)
          .map(
            (f) => ForumItem(
              forumId: f.forumId.toInt().toString(),
              forumName: f.forumName,
              avatar: f.avatar,
              levelId: 0,
              isSign: false,
            ),
          )
          .toList();
      debugPrint("【用户资料Pb】concernedForumList=${forums.length}个");

      return (UserProfileData.fromUserProto(user), forums);
    } catch (e) {
      debugPrint("【用户资料Pb异常】$e");
      return (null, <ForumItem>[]);
    } finally {
      client.close();
    }
  }

  /// 获取用户帖子列表（Protobuf API）
  /// POST /c/u/feed/userpost?cmd=303002&format=protobuf
  /// 参考 tiebalite OfficialProtobufTiebaApi.userPostFlow
  static Future<List<PostItem>> fetchUserPostsPb({
    required String bduss,
    required String stoken,
    required String uid,
    int page = 1,
    int rn = 20,
    int isThread = 1,
    Map<String, String>? forumAvatarMap,
  }) async {
    final phoneImei =
        "${Random().nextInt(900000000) + 100000000}${Random().nextInt(900000) + 100000}";
    final cuid = "cuid_$phoneImei";
    final timestamp = DateTime.now().millisecondsSinceEpoch ~/ 1000;
    final common = CommonRequest(
      clientType: 2,
      clientVersion: _clientVersion,
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

    final reqData = UserPostRequestData(
      common: common,
      uid: Int64.parseInt(uid),
      pn: page,
      rn: rn,
      isThread: isThread,
      needContent: 1,
    );
    final request = UserPostRequest(data: reqData);
    final bodyBytes = request.writeToBuffer();

    final uri = Uri.parse(
      "$_baseHost/c/u/feed/userpost?cmd=303002&format=protobuf",
    );
    debugPrint("【用户帖子Pb】请求：$uri uid=$uid page=$page");

    final client = http.Client();
    try {
      final multipart = http.MultipartRequest('POST', uri)
        ..headers.addAll({
          "x_bd_data_type": "protobuf",
          "User-Agent": "bdtb for Android 12.64.1.0",
          "Cookie": "BDUSS=$bduss; STOKEN=$stoken",
        })
        ..files.add(
          http.MultipartFile.fromBytes('data', bodyBytes, filename: 'file'),
        );

      final streamedResponse = await client.send(multipart);
      final response = await http.Response.fromStream(streamedResponse);

      debugPrint("【用户帖子Pb】状态码=${response.statusCode}");
      if (response.statusCode != 200) return [];

      final pb = UserPostResponse.fromBuffer(response.bodyBytes);
      if (pb.hasError() && pb.error.errorCode != 0) {
        debugPrint("【用户帖子Pb】错误：${pb.error.errorCode} ${pb.error.errorMsg}");
        return [];
      }
      if (!pb.hasData()) return [];

      final posts = pb.data.postList.map((info) {
        debugPrint("【用户帖子Pb】帖子 tid=${info.threadId} agreeNum=${info.agreeNum}");
        // 提取正文文本
        String? absText;
        for (final pic in info.content) {
          for (final a in pic.postContent) {
            if (a.type == 0 && a.text.isNotEmpty) {
              absText = (absText == null) ? a.text : "$absText ${a.text}";
            }
          }
          if (absText != null && absText.length > 150) {
            absText = absText.substring(0, 150);
            break;
          }
        }

        // 提取图片
        final images = <String>[];
        for (final m in info.media) {
          if (m.bigPic.isNotEmpty) {
            images.add(m.bigPic);
          } else if (m.srcPic.isNotEmpty) {
            images.add(m.srcPic);
          }
          if (images.length >= 3) break;
        }

        // 格式化时间
        String? lastTime;
        final ct = info.createTime;
        if (ct > 0) {
          final dt = DateTime.fromMillisecondsSinceEpoch(ct * 1000);
          final now = DateTime.now();
          if (now.year == dt.year) {
            if (now.day == dt.day && now.month == dt.month) {
              final diff = now.difference(dt);
              if (diff.inMinutes < 1) {
                lastTime = null;
              } else if (diff.inMinutes <= 40) {
                lastTime = "${diff.inMinutes} 分钟前";
              } else {
                lastTime =
                    "今天 ${dt.hour.toString().padLeft(2, '0')}:${dt.minute.toString().padLeft(2, '0')}";
              }
            } else {
              lastTime =
                  "${dt.month.toString().padLeft(2, '0')}-${dt.day.toString().padLeft(2, '0')} ${dt.hour.toString().padLeft(2, '0')}:${dt.minute.toString().padLeft(2, '0')}";
            }
          } else {
            lastTime =
                "${dt.year}-${dt.month.toString().padLeft(2, '0')}-${dt.day.toString().padLeft(2, '0')} ${dt.hour.toString().padLeft(2, '0')}:${dt.minute.toString().padLeft(2, '0')}";
          }
        }

        return PostItem(
          tid: info.threadId.toInt().toString(),
          title: info.title,
          authorId: info.userId.toInt() > 0
              ? info.userId.toInt().toString()
              : '',
          authorName: info.nameShow.isNotEmpty ? info.nameShow : info.userName,
          authorPortrait: info.userPortrait.isNotEmpty
              ? info.userPortrait
              : null,
          forumId: info.forumId.toInt().toString(),
          forumName: info.forumName,
          forumAvatar: forumAvatarMap?[info.forumId.toInt().toString()],
          replyNum: info.replyNum.toString(),
          agreeNum: info.agreeNum.toString(),
          abstractText: absText,
          lastTime: lastTime,
          imageUrls: images,
          isAd: false,
          isTop: false,
          isLiked: false,
          firstPostId: info.postId.toInt().toString(),
        );
      }).toList();

      debugPrint("【用户帖子Pb】解析到 ${posts.length} 条帖子");
      return posts;
    } catch (e) {
      debugPrint("【用户帖子Pb异常】$e");
      return [];
    } finally {
      client.close();
    }
  }

  /// 获取用户关注的吧列表（JSON API）
  /// POST /c/f/forum/like
  /// 参考 tiebalite OfficialTiebaApi.userLikeForumFlow
  static Future<List<ForumItem>> fetchUserLikeForums({
    required String bduss,
    required String stoken,
    required String uid,
    String? friendUid,
    int pageNo = 1,
    int pageSize = 50,
  }) async {
    final timestamp = "${DateTime.now().millisecondsSinceEpoch}";
    final phoneImei =
        "${Random().nextInt(900000000) + 100000000}${Random().nextInt(900000) + 100000}";
    final cuid = "cuid_$phoneImei";
    final clientId = "wappc_${timestamp}_${Random().nextInt(1000)}";

    final params = [
      ["BDUSS", bduss],
      ["STOKEN", stoken],
      ["_client_id", clientId],
      ["_client_type", "2"],
      ["_client_version", "11.10.8.6"],
      ["_os_version", "12"],
      ["cuid", cuid],
      ["cuid_galaxy2", cuid],
      ["cuid_gid", ""],
      ["from", "tieba"],
      ["model", "Android"],
      ["net_type", "1"],
      ["_phone_imei", phoneImei],
      ["uid", uid],
      ["friend_uid", friendUid ?? uid],
      ["is_guest", friendUid != null ? "1" : "0"],
      ["page_no", "$pageNo"],
      ["page_size", "$pageSize"],
      ["timestamp", timestamp],
    ];
    final sign = _computeSign(params);
    params.add(["sign", sign]);
    final bodyStr = params
        .map((p) => "${p[0]}=${Uri.encodeComponent(p[1])}")
        .join("&");

    debugPrint("【用户关注吧】请求 uid=$uid friendUid=$friendUid page=$pageNo");

    final client = http.Client();
    try {
      final request =
          http.Request('POST', Uri.parse("$_baseHost/c/f/forum/like"))
            ..followRedirects = false
            ..headers.addAll({
              "Content-Type": "application/x-www-form-urlencoded",
              "User-Agent": "bdtb for Android 12.41.7.1",
              "Cookie": "CUID=$cuid;ka=open;TBBRAND=Android;BAIDUID=$cuid;",
              "Cuid": cuid,
              "Cuid-Galaxy2": cuid,
              "Cuid-Gid": "",
              "Client-Type": "2",
              "Charset": "UTF-8",
              "client_logid": timestamp,
            })
            ..body = bodyStr;

      final response = await http.Response.fromStream(
        await client.send(request),
      );
      debugPrint("【用户关注吧】状态码=${response.statusCode}");
      debugPrint(
        "【用户关注吧】响应=${response.body.length > 500 ? response.body.substring(0, 500) : response.body}",
      );

      if (response.statusCode != 200) return [];

      final json = jsonDecode(response.body) as Map<String, dynamic>;
      final err = json["error_code"];
      if (err != null && err != "0" && err != 0) {
        debugPrint("【用户关注吧失败】error_code=$err msg=${json["error_msg"]}");
        return [];
      }

      // 响应结构：{"forum_list": {"non-gconforum": [...]}}
      final forumListWrapper = json["forum_list"];
      if (forumListWrapper is! Map) {
        debugPrint("【用户关注吧】forum_list 不是对象");
        return [];
      }
      final items = forumListWrapper["non-gconforum"];
      if (items is! List) {
        debugPrint("【用户关注吧】non-gconforum 为空或不是列表");
        return [];
      }

      final forums = items.map((f) {
        final fMap = f as Map<String, dynamic>;
        return ForumItem(
          forumId: _s(fMap["id"]),
          forumName: _s(fMap["name"]),
          avatar: _s(fMap["avatar"]),
          levelId: int.tryParse(_s(fMap["level_id"])) ?? 0,
          isSign: false,
        );
      }).toList();

      debugPrint("【用户关注吧】解析到 ${forums.length} 个贴吧");
      return forums;
    } catch (e) {
      debugPrint("【用户关注吧异常】$e");
      return [];
    } finally {
      client.close();
    }
  }

  /// 收藏帖子 — 参考 tiebalite OfficialTiebaApi.addStoreFlow
  static Future<bool> addStore({
    required String bduss,
    required String stoken,
    required String threadId,
    required String userId,
    required String tbs,
    required String postId,
  }) async {
    final timestamp = "${DateTime.now().millisecondsSinceEpoch}";
    final phoneImei = "000000000000000";
    final cuid = "54DB841692F4284B7BF761C002103801|VY6ZEIVXY";
    final clientId = "wappc_${timestamp}_${Random().nextInt(1000)}";
    final today = DateTime.now();
    final eventDay = "${today.year}${today.month}${today.day}";
    final stNum = Random().nextInt(750) + 100;
    final stTime = stNum.toString();
    final stSize = ((Random().nextDouble() * 8 + 0.4) * stNum)
        .round()
        .toString();
    final hasStParams = stNum > 120;
    // data: [{"pid":"真实postId","status":1,"tid":"threadId"}] — 匹配抓包
    final data = jsonEncode([
      {"pid": postId, "status": 1, "tid": threadId},
    ]);

    final params = [
      ["BDUSS", bduss],
      ["_client_id", clientId],
      ["_client_type", "2"],
      ["_client_version", "12.41.7.1"],
      ["_os_version", "12"],
      ["active_timestamp", "${DateTime.now().millisecondsSinceEpoch ~/ 1000}"],
      ["baiduid", cuid],
      ["brand", "Android"],
      ["c3_aid", "${Random().nextInt(900000000) + 100000000}"],
      ["cmode", "1"],
      ["cuid", cuid],
      ["cuid_galaxy2", cuid],
      ["cuid_gid", ""],
      ["data", data],
      ["event_day", eventDay],
      ["extra", ""],
      ["first_install_time", "1700000000000"],
      ["framework_ver", "3340042"],
      ["from", "tieba"],
      ["is_teenager", "0"],
      ["last_update_time", "1700000000000"],
      ["mac", "02:00:00:00:00:00"],
      ["model", "Android"],
      ["net_type", "1"],
      ["_phone_imei", phoneImei],
      ["sample_id", ""],
      ["sdk_ver", "2.34.0"],
      if (hasStParams) ["stErrorNums", "1"],
      if (hasStParams) ["stMethod", "1"],
      if (hasStParams) ["stMode", "1"],
      if (hasStParams) ["stTimesNum", "1"],
      if (hasStParams) ["stTime", stTime],
      if (hasStParams) ["stSize", stSize],
      ["start_scheme", ""],
      ["start_type", "1"],
      ["stoken", stoken],
      ["swan_game_ver", "1038000"],
      ["tbs", tbs],
      ["timestamp", timestamp],
      ["user_id", userId],
    ];
    final sign = _computeSign(params);
    params.add(["sign", sign]);
    final bodyStr = params
        .map((p) => "${p[0]}=${Uri.encodeComponent(p[1])}")
        .join("&");
    debugPrint("【收藏addStore】请求体=$bodyStr");

    final client = http.Client();
    try {
      final request =
          http.Request('POST', Uri.parse("$_baseHost/c/c/post/addstore"))
            ..followRedirects = false
            ..headers.addAll({
              "Content-Type": "application/x-www-form-urlencoded",
              "User-Agent": "bdtb for Android 12.41.7.1",
              "Cookie": "CUID=$cuid;ka=open;TBBRAND=Android;BAIDUID=$cuid;",
              "client_user_token": userId,
              "cuid": cuid,
              "cuid_galaxy2": cuid,
              "cuid_gid": "",
              "c3_aid": "${Random().nextInt(900000000) + 100000000}",
              "_client_type": "2",
              "Charset": "UTF-8",
              "client_logid": timestamp,
            })
            ..body = bodyStr;

      final response = await http.Response.fromStream(
        await client.send(request),
      );
      debugPrint(
        "【收藏addStore】状态码=${response.statusCode} body=${response.body}",
      );
      if (response.statusCode != 200) return false;
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      final err = json["error_code"];
      debugPrint("【收藏addStore】error_code=$err msg=${json["error_msg"]}");
      return err == null || err == "0" || err == 0;
    } catch (e) {
      debugPrint("【收藏addStore异常】$e");
      return false;
    } finally {
      client.close();
    }
  }

  /// 取消收藏帖子 — 参考 tiebalite OfficialTiebaApi.removeStoreFlow
  static Future<bool> removeStore({
    required String bduss,
    required String stoken,
    required String threadId,
    required String userId,
    required String tbs,
    String forumId = 'null',
  }) async {
    final timestamp = "${DateTime.now().millisecondsSinceEpoch}";
    final phoneImei = "000000000000000";
    final cuid = "54DB841692F4284B7BF761C002103801|VY6ZEIVXY";
    final clientId = "wappc_${timestamp}_${Random().nextInt(1000)}";
    final today = DateTime.now();
    final eventDay = "${today.year}${today.month}${today.day}";
    final stNum = Random().nextInt(750) + 100;
    final stTime = stNum.toString();
    final stSize = ((Random().nextDouble() * 8 + 0.4) * stNum)
        .round()
        .toString();
    final hasStParams = stNum > 120;

    final params = [
      ["BDUSS", bduss],
      ["_client_id", clientId],
      ["_client_type", "2"],
      ["_client_version", "12.41.7.1"],
      ["_os_version", "12"],
      ["active_timestamp", "${DateTime.now().millisecondsSinceEpoch ~/ 1000}"],
      ["baiduid", cuid],
      ["brand", "Android"],
      ["c3_aid", "${Random().nextInt(900000000) + 100000000}"],
      ["cmode", "1"],
      ["cuid", cuid],
      ["cuid_galaxy2", cuid],
      ["cuid_gid", ""],
      ["event_day", eventDay],
      ["extra", ""],
      ["fid", forumId],
      ["first_install_time", "1700000000000"],
      ["framework_ver", "3340042"],
      ["from", "tieba"],
      ["is_teenager", "0"],
      ["last_update_time", "1700000000000"],
      ["mac", "02:00:00:00:00:00"],
      ["model", "Android"],
      ["net_type", "1"],
      ["_phone_imei", phoneImei],
      ["sample_id", ""],
      ["sdk_ver", "2.34.0"],
      if (hasStParams) ["stErrorNums", "1"],
      if (hasStParams) ["stMethod", "1"],
      if (hasStParams) ["stMode", "1"],
      if (hasStParams) ["stTimesNum", "1"],
      if (hasStParams) ["stTime", stTime],
      if (hasStParams) ["stSize", stSize],
      ["start_scheme", ""],
      ["start_type", "1"],
      ["stoken", stoken],
      ["swan_game_ver", "1038000"],
      ["tbs", tbs],
      ["tid", threadId],
      ["timestamp", timestamp],
      ["user_id", userId],
    ];
    final sign = _computeSign(params);
    params.add(["sign", sign]);
    final bodyStr = params
        .map((p) => "${p[0]}=${Uri.encodeComponent(p[1])}")
        .join("&");
    debugPrint("【收藏removeStore】请求体=$bodyStr");

    final client = http.Client();
    try {
      final request =
          http.Request('POST', Uri.parse("$_baseHost/c/c/post/rmstore"))
            ..followRedirects = false
            ..headers.addAll({
              "Content-Type": "application/x-www-form-urlencoded",
              "User-Agent": "bdtb for Android 12.41.7.1",
              "Cookie": "CUID=$cuid;ka=open;TBBRAND=Android;BAIDUID=$cuid;",
              "client_user_token": userId,
              "cuid": cuid,
              "cuid_galaxy2": cuid,
              "cuid_gid": "",
              "c3_aid": "${Random().nextInt(900000000) + 100000000}",
              "_client_type": "2",
              "Charset": "UTF-8",
              "client_logid": timestamp,
            })
            ..body = bodyStr;

      final response = await http.Response.fromStream(
        await client.send(request),
      );
      debugPrint(
        "【收藏removeStore】状态码=${response.statusCode} body=${response.body}",
      );
      if (response.statusCode != 200) return false;
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      final err = json["error_code"];
      debugPrint("【收藏removeStore】error_code=$err msg=${json["error_msg"]}");
      return err == null || err == "0" || err == 0;
    } catch (e) {
      debugPrint("【收藏removeStore异常】$e");
      return false;
    } finally {
      client.close();
    }
  }

  /// 获取收藏列表 — 参考 tiebalite 抓包
  static Future<List<Map<String, dynamic>>> fetchThreadStore({
    required String bduss,
    required String stoken,
    int rn = 20,
    int offset = 0,
    String userId = '',
  }) async {
    final timestamp = "${DateTime.now().millisecondsSinceEpoch}";
    final phoneImei = "000000000000000";
    final cuid = "54DB841692F4284B7BF761C002103801|VY6ZEIVXY";
    final clientId = "wappc_${timestamp}_${Random().nextInt(1000)}";
    final today = DateTime.now();
    final eventDay = "${today.year}${today.month}${today.day}";
    final stNum = Random().nextInt(750) + 100;
    final stTime = stNum.toString();
    final stSize = ((Random().nextDouble() * 8 + 0.4) * stNum)
        .round()
        .toString();
    final hasStParams = stNum > 120;

    final params = [
      ["BDUSS", bduss],
      ["STOKEN", stoken],
      ["_client_id", clientId],
      ["_client_type", "2"],
      ["_client_version", "11.10.8.6"],
      ["_os_version", "12"],
      ["active_timestamp", "${DateTime.now().millisecondsSinceEpoch ~/ 1000}"],
      ["baiduid", cuid],
      ["brand", "Android"],
      ["c3_aid", "${Random().nextInt(900000000) + 100000000}"],
      ["cmode", "1"],
      ["cuid", cuid],
      ["cuid_galaxy2", cuid],
      ["cuid_gid", ""],
      ["event_day", eventDay],
      ["extra", ""],
      ["first_install_time", "1700000000000"],
      ["framework_ver", "3340042"],
      ["from", "tieba"],
      ["is_teenager", "0"],
      ["last_update_time", "1700000000000"],
      ["mac", "02:00:00:00:00:00"],
      ["model", "Android"],
      ["net_type", "1"],
      ["offset", "$offset"],
      ["_phone_imei", phoneImei],
      ["rn", "$rn"],
      ["sample_id", ""],
      ["sdk_ver", "2.34.0"],
      if (hasStParams) ["stErrorNums", "1"],
      if (hasStParams) ["stMethod", "1"],
      if (hasStParams) ["stMode", "1"],
      if (hasStParams) ["stTimesNum", "1"],
      if (hasStParams) ["stTime", stTime],
      if (hasStParams) ["stSize", stSize],
      ["start_scheme", ""],
      ["start_type", "1"],
      ["stoken", stoken],
      ["swan_game_ver", "1038000"],
      ["timestamp", timestamp],
      ["user_id", userId],
    ];
    final sign = _computeSign(params);
    params.add(["sign", sign]);
    final bodyStr = params
        .map((p) => "${p[0]}=${Uri.encodeComponent(p[1])}")
        .join("&");
    debugPrint("【收藏threadStore】请求体=$bodyStr");

    final client = http.Client();
    try {
      final request =
          http.Request(
              'POST',
              Uri.parse("http://c.tieba.baidu.com/c/f/post/threadstore"),
            )
            ..followRedirects = false
            ..headers.addAll({
              "Content-Type": "application/x-www-form-urlencoded",
              "User-Agent": "bdtb for Android 11.10.8.6",
              "Cookie": "CUID=$cuid;ka=open;TBBRAND=Android;BAIDUID=$cuid;",
              "client_user_token": userId,
              "cuid": cuid,
              "cuid_galaxy2": cuid,
              "cuid_gid": "",
              "c3_aid": "${Random().nextInt(900000000) + 100000000}",
              "_client_type": "2",
              "Charset": "UTF-8",
              "client_logid": timestamp,
            })
            ..body = bodyStr;

      final response = await http.Response.fromStream(
        await client.send(request),
      );
      debugPrint("【收藏threadStore】状态码=${response.statusCode}");
      if (response.statusCode != 200) return [];
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      final err = json["error_code"];
      if (err != null && err != "0" && err != 0) return [];
      final list = json["store_thread"];
      if (list is! List) return [];
      return list.cast<Map<String, dynamic>>();
    } catch (e) {
      debugPrint("【收藏列表异常】$e");
      return [];
    } finally {
      client.close();
    }
  }

  /// 搜索联想（Protobuf）
  static Future<SearchSugResponseData?> fetchSearchSug({
    required String bduss,
    required String stoken,
    required String word,
    String isforum = '0',
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

    final reqData = SearchSugRequestData(
      common: common,
      word: word,
      isforum: isforum,
    );

    final request = SearchSugRequest(data: reqData);
    final bodyBytes = request.writeToBuffer();

    final uri = Uri.parse(
      "$_baseHost/c/s/searchSug?cmd=309438&format=protobuf",
    );

    final client = http.Client();
    try {
      final multipart = http.MultipartRequest('POST', uri)
        ..headers.addAll({
          "x_bd_data_type": "protobuf",
          "User-Agent": "bdtb for Android $_clientVersion",
          "Cookie": "BDUSS=$bduss; STOKEN=$stoken",
        })
        ..files.add(
          http.MultipartFile.fromBytes('data', bodyBytes, filename: 'file'),
        );

      final streamedResponse = await client.send(multipart);
      final response = await http.Response.fromStream(streamedResponse);

      if (response.statusCode != 200) return null;

      final pb = SearchSugResponse.fromBuffer(response.bodyBytes);
      if (pb.hasError() && pb.error.errorCode != 0) return null;

      return pb.data;
    } catch (e) {
      debugPrint("【搜索联想异常】$e");
      return null;
    } finally {
      client.close();
    }
  }
}
