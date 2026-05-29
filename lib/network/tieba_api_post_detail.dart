part of 'tieba_api.dart';

class _PostDetailApi {
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
    final cuidPb = DeviceInfo().cuid;
    final common = CommonRequest(
      clientType: 2,
      clientVersion: _clientVersion,
      phoneImei: DeviceInfo().phoneImei,
      cuid: cuidPb,
      cuidGalaxy2: cuidPb,
      timestamp: Int64(DateTime.now().millisecondsSinceEpoch ~/ 1000),
      netType: 1,
      bDUSS: bduss,
      stoken: stoken,
      tbs: tbs,
      scrW: DeviceInfo().scrW,
      scrH: DeviceInfo().scrH,
      scrDip: DeviceInfo().scrDip,
    );

    final reqData = PbPageRequestData(
      common: common,
      kz: Int64.parseInt(threadId),
      pid: Int64.parseInt(postId),
      pn: page,
      lz: seeLz ? 1 : 0,
      withFloor: 1,
    );
    if (sortType == 1) reqData.r = 1;
    reqData
      ..floorRn = 4
      ..rn = 15
      ..scrW = DeviceInfo().scrW
      ..scrH = DeviceInfo().scrH
      ..scrDip = DeviceInfo().scrDip
      ..qType = 2
      ..mark = 0
      ..back = 0
      ..sourceType = 2
      ..floorSortType = 1
      ..isCommReverse = 0
      ..needRepostRecommendForum = 0
      ..requestTimes = 0
      ..sModel = 0
      ..similarFrom = 0
      ..fromSmartFrs = 0
      ..fromPush = 0
      ..immersionVideoCommentSource = 0
      ..isFoldCommentReq = 0
      ..isJumpfloor = 0
      ..jumpfloorNum = 0
      ..threadType = 0
      ..lastPid = Int64.parseInt(lastPid)
      ..forumId = Int64.parseInt(forumId)
      ..stType = stType
      ..banner = 0
      ..weipost = 0
      ..broadcastId = Int64.ZERO
      ..adParam = AdParam(loadCount: 0, refreshCount: 1, isReqAd: 1)
      ..appPos = AppPosInfo();

    final request = PbPageRequest(data: reqData);
    final bodyBytes = request.writeToBuffer();

    final uri = Uri.parse("$_baseHost/c/f/pb/page?cmd=302001&format=protobuf");

    final modelPb = DeviceInfo().model;
    final client = http.Client();
    try {
      final multipart = http.MultipartRequest('POST', uri)
        ..headers.addAll({
          "x_bd_data_type": "protobuf",
          "User-Agent": DeviceInfo().userAgent(_clientVersion),
          "Cookie": "CUID=$cuidPb; ka=open; TBBRAND=$modelPb",
        })
        ..files.add(
          http.MultipartFile.fromBytes('data', bodyBytes, filename: 'file'),
        );

      final streamedResponse = await client.send(multipart);
      final response = await http.Response.fromStream(streamedResponse);

      if (response.statusCode != 200) {
        _logger.w("【调试】PbPage 非200响应");
        return null;
      }

      final pb = PbPageResponse.fromBuffer(response.bodyBytes);
      if (pb.hasError() && pb.error.errorCode != 0) {
        _logger.w(
          "【调试】PbPage API错误：${pb.error.errorCode} ${pb.error.errorMsg}",
        );
        return null;
      }

      if (!pb.hasData()) {
        _logger.w("【调试】PbPage data为空");
        return null;
      }
      return pb.data;
    } catch (e) {
      _logger.w("【调试】PbPage 请求异常：$e");
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
      phoneImei: DeviceInfo().phoneImei,
      timestamp: Int64(DateTime.now().millisecondsSinceEpoch ~/ 1000),
      netType: 1,
      bDUSS: bduss,
      stoken: stoken,
      scrW: DeviceInfo().scrW,
      scrH: DeviceInfo().scrH,
      scrDip: DeviceInfo().scrDip,
    );

    final reqData = PbFloorRequestData(
      common: common,
      kz: Int64.parseInt(threadId),
      pid: Int64.parseInt(postId),
      spid: subPostId != '0' ? Int64.parseInt(subPostId) : Int64.ZERO,
      pn: page,
      scrW: DeviceInfo().scrW,
      scrH: DeviceInfo().scrH,
      scrDip: DeviceInfo().scrDip,
      forumId: Int64.parseInt(forumId),
      isCommReverse: 0,
      oriUgcType: 0,
    );

    final request = PbFloorRequest(data: reqData);
    final bodyBytes = request.writeToBuffer();

    final uri = Uri.parse(
      "$_baseHost/c/f/pb/floor?cmd=302002&format=protobuf&rn=30",
    );

    final client = http.Client();
    try {
      final multipart = http.MultipartRequest('POST', uri)
        ..headers.addAll({
          "x_bd_data_type": "protobuf",
          "User-Agent": DeviceInfo().userAgent(_clientVersion),
          "Cookie": "BDUSS=$bduss; STOKEN=$stoken",
        })
        ..files.add(
          http.MultipartFile.fromBytes('data', bodyBytes, filename: 'file'),
        );

      final streamedResponse = await client.send(multipart);
      final response = await http.Response.fromStream(streamedResponse);

      if (response.statusCode != 200) return null;

      final pb = PbFloorResponse.fromBuffer(response.bodyBytes);
      if (pb.hasError() && pb.error.errorCode != 0) {
        _logger.w(
          "【调试】PbFloor API错误：${pb.error.errorCode} ${pb.error.errorMsg}",
        );
        return null;
      }

      if (!pb.hasData()) {
        _logger.w("【调试】PbFloor data为空");
        return null;
      }

      return pb.data;
    } catch (e) {
      _logger.w("【调试】PbFloor 请求异常：$e");
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
    final phoneImei = DeviceInfo().phoneImei;
    final cuid = DeviceInfo().cuid;
    final clientId = "wappc_${timestamp}_${Random().nextInt(1000)}";

    final params = [
      ["BDUSS", bduss],
      ["STOKEN", stoken],
      ["_client_version", _clientVersion],
      ["client_id", clientId],
      ["cuid", cuid],
      ["cuid_galaxy2", cuid],
      ["cuid_gid", ""],
      ["from", "1021636m"],
      ["kz", threadId],
      ["model", DeviceInfo().model],
      ["net_type", "1"],
      ["os_version", DeviceInfo().osVersion],
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
              "User-Agent": DeviceInfo().userAgent(_clientVersion),
              "Cookie": "ka=open",
              "cuid": cuid,
              "cuid_galaxy2": cuid,
              "client_logid": "${DeviceInfo.initTime}",
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
      _logger.w("【楼中楼JSON异常】$e");
      return null;
    } finally {
      client.close();
    }
  }
}
