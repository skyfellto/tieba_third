part of 'tieba_api.dart';

class _ReplyMeApi {
  /// 获取回复消息列表（ReplyMe Protobuf API）
  /// [pn] 页码，首次为1
  /// [ids] 分页ID，首次为"0"，后续为"threadId,postId"
  /// [isFirst] 首次请求为1，后续为0
  static Future<reply.DataRes?> fetchReplyMe({
    required String bduss,
    required String stoken,
    required String userId,
    int pn = 1,
    String ids = '0',
    int isFirst = 1,
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

    // 混淆字段（同项目其他 API 一致）
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
      startType: 1,
      userAgent: di.userAgent(_clientVersion),
      personalizedRecSwitch: 0,
      iemi: iemi,
      diDiordna: diDiordna,
      ledom: ledom,
      dnarb: dnarb,
      needDecrypt: 0,
      needCamDecrypt: 0,
      supportImage: "1",
      packageVersion: "0",
    );

    final reqData = reply_req.DataReq(
      common: common,
      pn: pn,
      ids: ids,
      isFirst: isFirst,
      callFrom: '',
      scrW: di.scrW,
      scrH: di.scrH,
      scrDip: di.scrDip,
      qType: 0,
      time: Int64.ZERO,
      tid: Int64.ZERO,
    );

    final request = ReplyMeReqIdl(data: reqData);
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

    final signParams = [
      ["BDUSS", bduss],
      ["stErrorNums", stErrorNums],
      ["stMethod", stMethod],
      ["stMode", stMode],
      ["stSize", stSize],
      ["stTime", stTime],
      ["stTimesNum", stTimesNum],
      ["stoken", stoken],
    ];
    final sign = _computeSign(signParams);

    final uri = Uri.parse(
      "$_baseHost/c/u/feed/replyme?cmd=303007&format=protobuf",
    );

    final client = http.Client();
    try {
      final multipart = http.MultipartRequest('POST', uri)
        ..headers.addAll({
          "x_bd_data_type": "protobuf",
          "Cookie":
              "ka=open;BAIDUID=${UserManager.baiduId};CUID=$cuid;need_cookie_decrypt=1;BAIDUZID=$zId;DNARBBT=$ledom",
          "User-Agent": DeviceInfo().userAgent(_clientVersion),
          "Charset": "UTF-8",
          "client_user_token": userId,
          "Cuid": cuid,
          "Cuid-Galaxy2": cuid,
          "Cuid-Gid": "",
          "c3_aid": c3Aid,
          "Host": "tiebac.baidu.com",
          "Connection": "Keep-Alive",
          "Accept-Encoding": "gzip",
          "X-Bd-Traceid":
              "${_randomHex(8)}-${_randomHex(4)}-${_randomHex(4)}-${_randomHex(4)}-${_randomHex(12)}",
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

      if (response.statusCode != 200) {
        _logger.w("【ReplyMe】非200响应: ${response.statusCode}");
        return null;
      }

      final pb = ReplyMeResIdl.fromBuffer(response.bodyBytes);

      if (pb.hasError() && pb.error.errorCode != 0) {
        _logger.w(
          "【ReplyMe】API错误: code=${pb.error.errorCode}, msg=${pb.error.errorMsg}",
        );
        return null;
      }

      if (!pb.hasData()) {
        _logger.w("【ReplyMe】响应中data字段为空");
        return null;
      }
      // pb.data.replyList.forEach((reply) {
      //   _logger.i("agree :: ${reply.zan}");
      // });
      return pb.data;
    } catch (e) {
      _logger.w("【ReplyMe】请求异常: $e");
      return null;
    } finally {
      client.close();
    }
  }
}
