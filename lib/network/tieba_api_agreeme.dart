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
    final timestamp = DateTime.now().millisecondsSinceEpoch ~/ 1000;
    final clientId = "wappc_${timestamp}_${Random().nextInt(1000)}";

    final common = CommonReq(
      clientType: 2,
      clientVersion: _clientVersion,
      clientId: clientId,
      phoneImei: phoneImei,
      cuid: cuid,
      cuidGalaxy2: cuid,
      timestamp: Int64(timestamp),
      netType: 1,
      bDUSS: bduss,
      stoken: stoken,
      model: DeviceInfo().model,
      brand: DeviceInfo().brand,
      osVersion: "12",
      from: "1020031h",
      phoneNewimei: phoneImei,
      scrW: DeviceInfo().scrW,
      scrH: DeviceInfo().scrH,
      scrDip: DeviceInfo().scrDip,
      qType: 2,
    );

    final reqData = DataReq(
      common: common,
      id: id,
      rn: rn,
      scrW: DeviceInfo().scrW,
      scrH: DeviceInfo().scrH,
      scrDip: DeviceInfo().scrDip.toInt(),
      qType: 0,
    );

    final request = AgreeMeReqIdl(data: reqData);
    final bodyBytes = request.writeToBuffer();

    final uri = Uri.parse(
      "$_baseHost/c/u/feed/agreeme?cmd=309593&format=protobuf",
    );

    final client = http.Client();
    try {
      final multipart = http.MultipartRequest('POST', uri)
        ..headers.addAll({
          "x_bd_data_type": "protobuf",
          "User-Agent": DeviceInfo().userAgent(_clientVersion),
          "Cookie": "ka: open; CUID: $cuid; TBBRAND: ${DeviceInfo().model}",
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
