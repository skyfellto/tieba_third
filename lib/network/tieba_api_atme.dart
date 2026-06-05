part of 'tieba_api.dart';

class _AtMeApi {
  /// 获取@我的消息列表（Form-URL-encoded JSON API）
  /// [pn] 页码，首次为 1
  /// [tid] 分页参数，首次为 "0"，后续为上一页最后一条消息的 thread_id
  static Future<Map<String, dynamic>?> fetchAtMe({
    required String bduss,
    required String stoken,
    required String uid,
    int pn = 1,
    String tid = '0',
  }) async {
    final phoneImei = DeviceInfo().phoneImei;
    final cuid = DeviceInfo().cuid;
    final c3Aid = DeviceInfo().c3Aid;
    final brand = DeviceInfo().brand;
    final model = DeviceInfo().model;
    final androidId = DeviceInfo().androidId;
    final di = DeviceInfo();
    final timestamp = "${DateTime.now().millisecondsSinceEpoch}";
    final now = DateTime.now();
    final eventDay = "${now.year}${now.month}${now.day}";
    final clientId = _syncClientId ?? '';

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

    // 所有请求参数（sign 除外）
    final params = <List<String>>[
      ["BDUSS", bduss],
      ["STOKEN", stoken],
      ["_client_id", clientId],
      ["_client_type", "2"],
      ["_client_version", _clientVersion],
      ["active_timestamp", "${di.activeTimestamp}"],
      ["baiduid", UserManager.baiduId ?? ''],
      ["c3_aid", c3Aid],
      ["call_from", ""],
      ["cam", ""],
      ["cmode", "1"],
      ["cuid", cuid],
      ["cuid_galaxy2", cuid],
      ["cuid_gid", ""],
      ["di_diordna", diDiordna],
      ["diao", ""],
      ["dnarb", dnarb],
      ["event_day", eventDay],
      ["first_install_time", "${di.firstInstallTime}"],
      ["from", "1015363f"],
      ["iemi", iemi],
      ["is_teenager", "0"],
      ["last_update_time", "${di.lastUpdateTime}"],
      ["ledom", ledom],
      ["need_cam_decrypt", "1"],
      ["need_decrypt", "1"],
      ["net_type", "1"],
      ["pn", "$pn"],
      ["q_type", "0"],
      ["sample_id", _syncSampleId ?? ''],
      ["scr_dip", "${di.scrDip}"],
      ["scr_h", "${di.scrH}"],
      ["scr_w", "${di.scrW}"],
      ["stErrorNums", stErrorNums],
      ["stMethod", stMethod],
      ["stMode", stMode],
      ["stSize", stSize],
      ["stTime", stTime],
      ["stTimesNum", stTimesNum],
      ["start_scheme", ""],
      ["start_type", "1"],
      ["support_image", "jepgwebp"],
      ["tid", tid],
      ["time", "0"],
      ["timestamp", timestamp],
      ["uid", uid],
      ["user_agent", DeviceInfo().userAgent(_clientVersion)],
    ];

    // 添加 z_id
    final zId = await getCachedZid();
    if (zId != null && zId.isNotEmpty) {
      params.add(["z_id", zId]);
    }

    final sign = _computeSign(params);
    params.add(["sign", sign]);

    final bodyStr = params
        .map((p) => "${p[0]}=${Uri.encodeComponent(p[1])}")
        .join("&");

    final uri = Uri.parse("$_baseHost/c/u/feed/atme");

    final client = http.Client();
    try {
      final request = http.Request('POST', uri)
        ..followRedirects = false
        ..headers.addAll({
          "Content-Type": "application/x-www-form-urlencoded",
          "User-Agent": DeviceInfo().userAgent(_clientVersion),
          "Cookie":
              "CUID=$cuid; ka=open; cuid_galaxy2=$cuid; BDUSS=$bduss; STOKEN=$stoken; BAIDUID=${UserManager.baiduId ?? ''}; need_cookie_decrypt=1; TBBRAND=$model",
          "cuid": cuid,
          "c3_aid": c3Aid,
          "cuid_galaxy2": cuid,
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
      _logger.w("【AtMe】请求异常：$e");
      return null;
    } finally {
      client.close();
    }
  }
}
