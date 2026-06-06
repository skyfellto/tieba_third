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
    int page = 1,
    int requestTimes = 0,
  }) async {
    final phoneImei = DeviceInfo().phoneImei;
    final cuid = DeviceInfo().cuid;
    final c3Aid = DeviceInfo().c3Aid;
    final brand = DeviceInfo().brand;
    final model = DeviceInfo().model;
    final androidId = DeviceInfo().androidId;
    final di = DeviceInfo();
    final timestamp = DateTime.now().millisecondsSinceEpoch ~/ 1000;
    final now = DateTime.now();
    final eventDay = "${now.year}${now.month}${now.day}";
    final clientId = _syncClientId;
    final zId = await getCachedZid();

    // 混淆字段
    final iemi = base64Url
        .encode(utf8.encode(phoneImei.split('').reversed.join()))
        .replaceAll('=', '');
    final diDiordna = base64Url
        .encode(utf8.encode(androidId.split('').reversed.join()))
        .replaceAll('=', '');
    final ledom = base64Url
        .encode(utf8.encode(model.split('').reversed.join()))
        .replaceAll('=', '');
    final dnarb = base64Url
        .encode(utf8.encode(brand.split('').reversed.join()))
        .replaceAll('=', '');
    final cam = base64Url
        .encode(utf8.encode("02:00:00:00:00:00"))
        .replaceAll('=', '');

    final common = CommonReq(
      clientType: 2,
      clientVersion: _clientVersion,
      clientId: clientId,
      from: "1015363f",
      cuid: cuid,
      timestamp: Int64(timestamp),
      bDUSS: bduss,
      netType: 1,
      pversion: "1.0",
      legoLibVersion: "3004000",
      stoken: stoken,
      zId: zId ?? '',
      cuidGalaxy2: cuid,
      cuidGid: '',
      c3Aid: c3Aid,
      sampleId: _syncSampleId ?? '',
      scrW: di.scrW,
      scrH: di.scrH,
      scrDip: di.scrDip,
      qType: 2,
      isTeenager: 0,
      sdkVer: "2.34.0",
      frameworkVer: "3340042",
      nawsGameVer: "1038000",
      activeTimestamp: Int64(di.activeTimestamp),
      firstInstallTime: Int64(di.firstInstallTime),
      lastUpdateTime: Int64(di.lastUpdateTime),
      eventDay: eventDay,
      cmode: 1,
      startScheme: '',
      startType: 1,
      extra: '',
      userAgent: di.userAgent(_clientVersion),
      personalizedRecSwitch: 0,
      iemi: iemi,
      cam: cam,
      diDiordna: diDiordna,
      ledom: ledom,
      diao: '',
      dnarb: dnarb,
      needDecrypt: 1,
      needCamDecrypt: 1,
      supportImage: "1",
      packageVersion: "0",
    );

    final reqData = PbFloorRequestData(
      common: common,
      kz: Int64.parseInt(threadId),
      pid: Int64.parseInt(postId),
      spid: Int64.ZERO,
      pn: page,
      scrW: di.scrW,
      scrH: di.scrH,
      scrDip: di.scrDip,
      forumId: Int64.ZERO,
      isCommReverse: 0,
      oriUgcType: 0,
      requestTimes: requestTimes,
    );

    final request = PbFloorRequest(data: reqData);
    final bodyBytes = request.writeToBuffer();

    // ST 反垃圾参数
    final stNum = Random().nextInt(750) + 100;
    final stTime = stNum.toString();
    final stSize = ((Random().nextDouble() * 8 + 0.4) * stNum)
        .round()
        .toString();
    const stMethod = "1";
    const stMode = "1";
    const stTimesNum = "1";
    const stErrorNums = "1";

    final formParams = <List<String>>[
      ["BDUSS", bduss],
      ["stErrorNums", stErrorNums],
      ["stMethod", stMethod],
      ["stMode", stMode],
      ["stSize", stSize],
      ["stTime", stTime],
      ["stTimesNum", stTimesNum],
      ["stoken", stoken],
    ];
    final sign = _computeSign(formParams);

    final uri = Uri.parse("$_baseHost/c/f/pb/floor?cmd=302002&format=protobuf");

    final client = http.Client();
    try {
      final multipart = http.MultipartRequest('POST', uri)
        ..headers.addAll({
          "x_bd_data_type": "protobuf",
          "User-Agent": DeviceInfo().userAgent(_clientVersion),
          "cuid": cuid,
          "c3_aid": c3Aid,
          "Connection": "Keep-Alive",
          "cuid_gid": "",
          "Charset": "UTF-8",
          "cuid_galaxy2": cuid,
          "Accept-Encoding": "gzip",
          "client_logid": "${DeviceInfo.initTime}",
          "X-Bd-Traceid":
              "${_randomHex(8)}-${_randomHex(4)}-${_randomHex(4)}-${_randomHex(4)}-${_randomHex(12)}",
          "Host": "tiebac.baidu.com",
        })
        ..fields['BDUSS'] = bduss
        ..fields['sign'] = sign
        ..fields['stErrorNums'] = stErrorNums
        ..fields['stMethod'] = stMethod
        ..fields['stMode'] = stMode
        ..fields['stSize'] = stSize
        ..fields['stTime'] = stTime
        ..fields['stTimesNum'] = stTimesNum
        ..fields['STOKEN'] = stoken
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
}
