part of 'tieba_api.dart';

class _AgreeMeApi {
  /// 获取点赞消息列表（AgreeMe Protobuf API）
  /// [id] 分页ID, 第一页传0, 后续传上一页最后一条的id
  static Future<DataRes?> fetchAgreeMe({
    required String bduss,
    required String stoken,
    required String userId,
    Int64 id = Int64.ZERO,
    int rn = 20,
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
    // final clientId = "wappc_${timestamp}_${Random().nextInt(1000)}";
    final clientId = _syncClientId;
    final zId = await getCachedZid();

    // 同项目其他 API 一致的混淆字段
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
      from: "1020031h",
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
      cam: '',
      diDiordna: diDiordna,
      ledom: ledom,
      diao: '',
      dnarb: dnarb,
      needDecrypt: 1,
      needCamDecrypt: 1,
    );

    final reqData = DataReq(
      common: common,
      id: id,
      rn: rn,
      scrW: di.scrW,
      scrH: di.scrH,
      scrDip: di.scrDip.toInt(),
      qType: 0,
    );

    final request = AgreeMeReqIdl(data: reqData);
    final bodyBytes = request.writeToBuffer();

    // ST 反垃圾参数（同项目其他 API 一致）
    final stNum = Random().nextInt(750) + 100;
    final stTime = stNum.toString();
    final stSize = ((Random().nextDouble() * 8 + 0.4) * stNum)
        .round()
        .toString();
    const stMethod = "1";
    const stMode = "1";
    const stTimesNum = "1";
    const stErrorNums = "1";

    // 构建签名参数列表
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
      "$_baseHost/c/u/feed/agreeme?cmd=309593&format=protobuf",
    );

    final client = http.Client();
    try {
      final multipart = http.MultipartRequest('POST', uri)
        ..headers.addAll({
          "x_bd_data_type": "protobuf",
          "User-Agent": DeviceInfo().userAgent(_clientVersion),
          "Charset": "UTF-8",
          "Client-Type": "2",
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
        _logger.w("【AgreeMe】非200响应: ${response.statusCode}");
        return null;
      }

      final pb = AgreeMeResIdl.fromBuffer(response.bodyBytes);

      if (pb.hasError() && pb.error.errorCode != 0) {
        _logger.w(
          "【AgreeMe】API错误: code=${pb.error.errorCode}, msg=${pb.error.errorMsg}",
        );
        return null;
      }

      if (!pb.hasData()) {
        _logger.w("【AgreeMe】响应中data字段为空");
        return null;
      }

      return pb.data;
    } catch (e) {
      _logger.w("【AgreeMe】请求异常: $e");
      return null;
    } finally {
      client.close();
    }
  }
}
