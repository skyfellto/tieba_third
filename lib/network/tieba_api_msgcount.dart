part of 'tieba_api.dart';

class _MsgCountApi {
  /// 获取用户消息未读数（Form-URL-encoded JSON API）
  /// 响应中 message.agree / replyme / atme 分别为点赞/回复/@消息未读数
  static Future<Map<String, dynamic>?> fetchMessageCounts({
    required String bduss,
    required String stoken,
  }) async {
    final cuid = DeviceInfo().cuid;
    final c3Aid = DeviceInfo().c3Aid;
    final brand = DeviceInfo().brand;
    final model = DeviceInfo().model;
    final phoneImei = DeviceInfo().phoneImei;
    final androidId = DeviceInfo().androidId;
    final di = DeviceInfo();
    final timestamp = "${DateTime.now().millisecondsSinceEpoch}";
    final now = DateTime.now();
    final eventDay = "${now.year}${now.month}${now.day}";
    final clientId = _syncClientId ?? '';
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

    final params = <List<String>>[
      ["BDUSS", bduss],
      ["STOKEN", stoken],
      ["_client_id", clientId],
      ["_client_type", "2"],
      ["_client_version", _clientVersion],
      ["active_timestamp", "0"],
      ["baiduid", UserManager.baiduId ?? ''],
      ["c3_aid", c3Aid],
      ["cam", ""],
      ["cmode", "1"],
      ["cuid", cuid],
      ["cuid_galaxy2", cuid],
      ["cuid_gid", ""],
      ["device_score", "0.5"],
      ["di_diordna", diDiordna],
      ["diao", ""],
      ["dnarb", dnarb],
      ["event_day", eventDay],
      ["extra", ""],
      ["first_install_time", "${di.firstInstallTime}"],
      ["framework_ver", "4220001"],
      ["from", "1015363f"],
      ["iemi", iemi],
      ["is_teenager", "0"],
      ["last_update_time", "${di.lastUpdateTime}"],
      ["ledom", ledom],
      ["naws_game_ver", "2035000"],
      ["need_cam_decrypt", "1"],
      ["need_decrypt", "1"],
      ["net_type", "1"],
      ["os_version", "12"],
      ["personalized_rec_switch", "1"],
      ["sample_id", _syncSampleId ?? ''],
      ["sdk_ver", "3.36.0"],
      ["stErrorNums", "0"],
      ["start_scheme", "com.baidu.tieba:remote"],
      ["start_type", "99"],
      ["timestamp", timestamp],
      ["z_id", zId ?? ''],
    ];
    final sign = _computeSign(params);
    params.add(["sign", sign]);

    final bodyStr = params
        .map((p) => "${p[0]}=${Uri.encodeComponent(p[1])}")
        .join("&");

    final uri = Uri.parse("$_baseHost/c/s/msg");

    final client = http.Client();
    try {
      final request = http.Request('POST', uri)
        ..followRedirects = false
        ..headers.addAll({
          "Content-Type": "application/x-www-form-urlencoded",
          "User-Agent": DeviceInfo().userAgent(_clientVersion),
          "Cookie":
              "CUID=$cuid;ka=open;cuid_galaxy2=$cuid;BDUSS=$bduss;STOKEN=$stoken; BAIDUID=${UserManager.baiduId ?? ''}; need_cookie_decrypt=1; TBBRAND=$model",
          "cuid": cuid,
          "c3_aid": c3Aid,
          "cuid_galaxy2": cuid,
          "client_user_token": UserManager.userId ?? '',
          "client_logid": "${DeviceInfo.initTime}",
          "Charset": "UTF-8",
          "Accept-Encoding": "gzip",
          "Connection": "Keep-Alive",
          "Host": "tiebac.baidu.com",
          "X-Bd-Traceid":
              "${_randomHex(8)}-${_randomHex(4)}-${_randomHex(4)}-${_randomHex(4)}-${_randomHex(12)}",
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
      _logger.w("【MsgCount】请求异常: $e");
      return null;
    } finally {
      client.close();
    }
  }
}
