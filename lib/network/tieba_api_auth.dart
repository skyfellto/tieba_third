part of 'tieba_api.dart';

class _AuthApi {
  /// 调用 /c/s/sync 获取 sample_id 和 client_id
  static Future<Map<String, String>?> fetchSync({
    required String bduss,
    required String stoken,
  }) async {
    final timestamp = "${DateTime.now().millisecondsSinceEpoch}";
    final cuid = DeviceInfo().cuid;
    final phoneImei = DeviceInfo().phoneImei;
    final brand = DeviceInfo().brand;
    final model = DeviceInfo().model;
    final androidId = DeviceInfo().androidId;
    final baiDuId = UserManager.baiduId;

    final params = [
      ["BDUSS", bduss],
      [
        "_client_id",
        "wappc_${DateTime.now().millisecondsSinceEpoch}_${Random().nextInt(1000)}",
      ],
      ["_client_type", "2"],
      ["_client_version", "12.41.7.1"],
      ["_msg_status", "1"],
      ["_phone_screen", "0,0"],
      ["_pic_quality", "0"],
      ["active_timestamp", "${DeviceInfo().activeTimestamp}"],
      ["baiduid", baiDuId ?? ''],
      ["board", model],
      ["brand", brand],
      ["c3_aid", DeviceInfo().c3Aid],
      [
        "cam",
        base64Url.encode(utf8.encode("02:00:00:00:00:00")).replaceAll('=', ''),
      ],
      ["cmode", "1"],
      ["cuid", cuid],
      ["cuid_galaxy2", cuid],
      ["cuid_gid", ""],
      [
        "di_diordna",
        base64Url
            .encode(utf8.encode(androidId.split('').reversed.join()))
            .replaceAll('=', ''),
      ],
      [
        "event_day",
        "${DateTime.now().year}${DateTime.now().month}${DateTime.now().day}",
      ],
      ["extra", ""],
      ["first_install_time", "${DeviceInfo().firstInstallTime}"],
      ["framework_ver", "3340042"],
      ["from", "tieba"],
      [
        "iemi",
        base64Url
            .encode(utf8.encode(phoneImei.split('').reversed.join()))
            .replaceAll('=', ''),
      ],
      ["incremental", "1024"],
      ["is_teenager", "0"],
      ["last_update_time", "${DeviceInfo().lastUpdateTime}"],
      ["md5", "F86F4C238491AB3BEBFA33AC42C1582B"],
      ["model", model],
      ["net_type", "1"],
      ["package", "com.baidu.tieba"],
      ["running_abi", "64"],
      ["scr_dip", "0.0"],
      ["scr_h", "0"],
      ["scr_w", "0"],
      ["signmd5", "225172691"],
      ["stErrorNums", "1"],
      ["stMethod", "1"],
      ["stMode", "1"],
      [
        "stSize",
        "${((Random().nextDouble() * 8 + 0.4) * int.parse("${Random().nextInt(730) + 121}")).round()}",
      ],
      ["stTime", "${Random().nextInt(730) + 121}"],
      ["stTimesNum", "1"],
      ["start_scheme", ""],
      ["start_type", "1"],
      ["stoken", stoken],
      ["support_abi", "64"],
      ["timestamp", timestamp],
      ["versioncode", "202965248"],
    ];
    final sign = _computeSign(params);
    params.add(["sign", sign]);
    final bodyStr = params
        .map((p) => "${p[0]}=${Uri.encodeComponent(p[1])}")
        .join("&");

    final client = http.Client();
    try {
      final request =
          http.Request('POST', Uri.parse("https://c.tieba.baidu.com/c/s/sync"))
            ..followRedirects = false
            ..headers.addAll({
              "Content-Type": "application/x-www-form-urlencoded",
              "User-Agent": "bdtb for Android 12.41.7.1",
              "Cookie": "ka=open;BAIDUID=$baiDuId",
              "cuid": cuid,
              "cuid_galaxy2": cuid,
              "cuid_gid": "",
              "c3_aid": DeviceInfo().c3Aid,
              "client_logid": "${DeviceInfo.initTime}",
              "Connection": "Keep-Alive",
              "Accept-Encoding": "gzip",
            })
            ..body = bodyStr;

      final response = await http.Response.fromStream(
        await client.send(request),
      );

      if (response.statusCode != 200) return null;
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      final err = json["error_code"];
      if (err != null && err != "0" && err != 0) return null;

      final clientData = json["client"];
      final wlConfig = json["wl_config"];
      if (clientData is Map && wlConfig is Map) {
        final clientId = "${clientData["client_id"] ?? ''}";
        final sampleId = "${wlConfig["sample_id"] ?? ''}";
        await _saveSyncData(clientId, sampleId);
        return {"clientId": clientId, "sampleId": sampleId};
      }
      return null;
    } catch (e) {
      _logger.w("【sync异常】$e");
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
          "User-Agent": DeviceInfo().userAgent(_clientVersion),
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
}
