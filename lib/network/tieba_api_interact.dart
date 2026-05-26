part of 'tieba_api.dart';

class _InteractApi {
  /// 点赞帖子（基于 MiniTiebaApi 实现）
  /// 点赞帖子，返回新点赞数，失败返回 null
  /// 统一点赞/取消点赞
  /// [objType]: 3=帖子, 1=回复, 2=楼中楼回复
  /// [postId]: 回复/楼中楼时传入
  /// [forumId]: 楼中楼时传入
  /// 统一点赞/取消点赞
  /// [objType]: 3=帖子, 1=回复, 2=楼中楼回复
  static Future<int?> likeAgree({
    required String bduss,
    required String stoken,
    required String tbs,
    required String userId,
    required String threadId,
    String postId = '',
    String forumId = '',
    int objType = 3,
    int opType = 0,
    bool allowAlreadyLiked = false,
  }) async {
    final timestamp = "${DateTime.now().millisecondsSinceEpoch}";
    final clientLogid = timestamp + Random().nextInt(9999).toString();
    // ignore: unnecessary_brace_in_string_interps
    final cuid = DeviceInfo().cuid;
    final phoneImei = DeviceInfo().phoneImei;
    final c3Aid = DeviceInfo().c3Aid;
    final brand = DeviceInfo().brand;
    final model = DeviceInfo().model;
    final androidId = DeviceInfo().androidId;
    final stTime = "${Random().nextInt(730) + 121}";
    final stSize =
        "${((Random().nextDouble() * 8 + 0.4) * int.parse(stTime)).round()}";
    final prefs = await SharedPreferences.getInstance();
    final now = DateTime.now();
    final eventDay = "${now.year}${now.month}${now.day}";
    final firstInstallTime =
        prefs.getInt('_first_install_time') ??
        DateTime.now().millisecondsSinceEpoch;
    if (!prefs.containsKey('_first_install_time')) {
      await prefs.setInt('_first_install_time', firstInstallTime);
    }
    final lastUpdateTime =
        prefs.getInt('_last_update_time') ?? firstInstallTime;
    if (DateTime.now().millisecondsSinceEpoch - lastUpdateTime > 7 * 86400000) {
      await prefs.setInt(
        '_last_update_time',
        DateTime.now().millisecondsSinceEpoch,
      );
    }
    // active_timestamp 是首次活跃时间（非当前时间），持久化存一份
    final activeTimestamp =
        prefs.getInt('_active_timestamp') ??
        DateTime.now().millisecondsSinceEpoch;
    if (!prefs.containsKey('_active_timestamp')) {
      await prefs.setInt('_active_timestamp', activeTimestamp);
    }

    final params = [
      ["BDUSS", bduss],
      ["_client_type", "2"],
      ["_client_version", _clientVersion],
      ["agree_type", "2"],
      ["_client_id", _syncClientId ?? ""],
      ["cuid", cuid],
      ["cuid_galaxy2", cuid],
      ["cuid_gid", ""],
      ["from", "1015363f"],
      ["net_type", "1"],
      ["obj_type", "$objType"],
      ["op_type", "$opType"],
      ["os_version", DeviceInfo().osVersion],
      ["stErrorNums", "1"],
      ["stMethod", "1"],
      ["stMode", "1"],
      ["stSize", stSize],
      ["stTime", stTime],
      ["stTimesNum", "1"],
      ["stoken", stoken],
      ["tbs", tbs],
      ["thread_id", threadId],
      ["timestamp", timestamp],
      ["last_update_time", "$lastUpdateTime"],
      ["first_install_time", "$firstInstallTime"],
      ["active_timestamp", "$activeTimestamp"],
      ["event_day", eventDay],
      ["need_cam_decrypt", "1"],
      ["need_decrypt", "1"],
      ["cmode", "1"],
      ["sdk_ver", "2.34.0"],
      ["diao", ""],
      ["extra", ""],
      ["is_teenager", "0"],
      ["is_long_press_agree", "0"],
      ["personalized_rec_switch", "1"],
      ["sample_id", _syncSampleId ?? ''],
      [
        "iemi",
        base64Url
            .encode(utf8.encode(phoneImei.split('').reversed.join()))
            .replaceAll('=', ''),
      ],
      [
        "ledom",
        base64Url
            .encode(utf8.encode(model.split('').reversed.join()))
            .replaceAll('=', ''),
      ],
      [
        "dnarb",
        base64Url
            .encode(utf8.encode(brand.split('').reversed.join()))
            .replaceAll('=', ''),
      ],
      [
        "di_diordna",
        base64Url
            .encode(utf8.encode(androidId.split('').reversed.join()))
            .replaceAll('=', ''),
      ],
      ["framework_ver", "3340042"],
      ["naws_game_ver", "2035000"],
      ["c3_aid", c3Aid],
      ["cam", ""],
      ["start_scheme", ""],
      ["start_type", "1"],
      ["device_score", "0.5"],
    ];
    if (objType == 1) {
      params.add(["obj_source", "a005"]);
    } else if (objType == 2) {
      params.add(["obj_source", "a007"]);
    } else if (objType == 3) {
      params.add(["obj_source", "a002"]);
    }
    // post_id: 回复/楼中楼时传入
    if (postId.isNotEmpty) params.add(["post_id", postId]);
    // forum_id: 始终传入，空字符串表示不适用
    params.add(["forum_id", forumId.isNotEmpty ? forumId : ""]);
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
              Uri.parse("https://tiebac.baidu.com/c/c/agree/opAgree"),
            )
            ..followRedirects = false
            ..headers.addAll({
              "Content-Type": "application/x-www-form-urlencoded",
              "User-Agent": DeviceInfo().userAgent(_clientVersion),
              "Cookie": "ka=open",
              "cuid": cuid,
              "cuid_galaxy2": cuid,
              "client_logid": clientLogid,
              "client_user_token": userId,
              // "c3_aid": c3Aid,
              "Connection": "Keep-Alive",
              "cuid_gid": "",
              "Charset": "UTF-8",
              "Accept-Encoding": "gzip",
            })
            ..body = bodyStr;

      final response = await http.Response.fromStream(
        await client.send(request),
      );
      if (response.statusCode != 200) return null;
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      final err = json["error_code"];
      if (err != null && err != "0" && err != 0) {
        if (err == "3280001" && allowAlreadyLiked) {
          return -1;
        }
        return null;
      }
      if (json["data"] == null) return null;
      await _updateLastLikeTime();
      return 1;
    } catch (e) {
      return null;
    } finally {
      client.close();
    }
  }

  static Future<bool> addStore({
    required String bduss,
    required String stoken,
    required String threadId,
    required String userId,
    required String tbs,
    required String postId,
  }) async {
    final timestamp = "${DateTime.now().millisecondsSinceEpoch}";
    final phoneImei = DeviceInfo().phoneImei;
    final cuid = DeviceInfo().cuid;
    // final clientId = "wappc_${timestamp}_${Random().nextInt(1000)}";
    final today = DateTime.now();
    final eventDay = "${today.year}${today.month}${today.day}";
    final stNum = Random().nextInt(750) + 100;
    final stTime = stNum.toString();
    final stSize = ((Random().nextDouble() * 8 + 0.4) * stNum)
        .round()
        .toString();
    final hasStParams = stNum > 120;
    final zId = await getCachedZid();
    // data: [{"pid":"真实postId","status":1,"tid":"threadId"}] — 匹配抓包
    final data = jsonEncode([
      {"pid": postId, "status": 1, "tid": threadId},
    ]);

    final params = [
      ["BDUSS", bduss],
      ["_client_id", _syncClientId ?? ""],
      ["_client_type", "2"],
      ["_client_version", _clientVersion],
      ["_os_version", DeviceInfo().osVersion],
      ["active_timestamp", "${DateTime.now().millisecondsSinceEpoch ~/ 1000}"],
      ["baiduid", cuid],
      ["brand", DeviceInfo().brand],
      ["c3_aid", DeviceInfo().c3Aid],
      ["cmode", "1"],
      ["cuid", cuid],
      ["cuid_galaxy2", cuid],
      ["cuid_gid", ""],
      ["data", data],
      ["event_day", eventDay],
      ["extra", ""],
      ["first_install_time", "${DeviceInfo().firstInstallTime}"],
      ["framework_ver", "3340042"],
      ["from", "tieba"],
      ["is_teenager", "0"],
      ["last_update_time", "${DeviceInfo().lastUpdateTime}"],
      ["mac", "02:00:00:00:00:00"],
      ["model", DeviceInfo().model],
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
    if (zId != null && zId.isNotEmpty) params.add(["z_id", zId]);
    final sign = _computeSign(params);
    params.add(["sign", sign]);
    final bodyStr = params
        .map((p) => "${p[0]}=${Uri.encodeComponent(p[1])}")
        .join("&");

    final client = http.Client();
    try {
      final request =
          http.Request('POST', Uri.parse("$_baseHost/c/c/post/addstore"))
            ..followRedirects = false
            ..headers.addAll({
              "Content-Type": "application/x-www-form-urlencoded",
              "User-Agent": DeviceInfo().userAgent(_clientVersion),
              "Cookie":
                  "CUID=$cuid;ka=open;TBBRAND=${DeviceInfo().model};BAIDUID=$cuid;",
              "client_user_token": userId,
              "cuid": cuid,
              "cuid_galaxy2": cuid,
              "cuid_gid": "",
              "c3_aid": DeviceInfo().c3Aid,
              "_client_type": "2",
              "Charset": "UTF-8",
              "client_logid": "${DeviceInfo.initTime}",
            })
            ..body = bodyStr;

      final response = await http.Response.fromStream(
        await client.send(request),
      );
      if (response.statusCode != 200) return false;
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      final err = json["error_code"];
      return err == null || err == "0" || err == 0;
    } catch (e) {
      _logger.w("【收藏addStore异常】$e");
      return false;
    } finally {
      client.close();
    }
  }

  static Future<bool> removeStore({
    required String bduss,
    required String stoken,
    required String threadId,
    required String userId,
    required String tbs,
    String forumId = 'null',
  }) async {
    final timestamp = "${DateTime.now().millisecondsSinceEpoch}";
    final phoneImei = DeviceInfo().phoneImei;
    final cuid = DeviceInfo().cuid;
    // final clientId = "wappc_${timestamp}_${Random().nextInt(1000)}";
    final today = DateTime.now();
    final eventDay = "${today.year}${today.month}${today.day}";
    final stNum = Random().nextInt(750) + 100;
    final stTime = stNum.toString();
    final stSize = ((Random().nextDouble() * 8 + 0.4) * stNum)
        .round()
        .toString();
    final hasStParams = stNum > 120;
    final zId = await getCachedZid();

    final params = [
      ["BDUSS", bduss],
      ["_client_id", _syncClientId ?? ""],
      ["_client_type", "2"],
      ["_client_version", _clientVersion],
      ["_os_version", DeviceInfo().osVersion],
      ["active_timestamp", "${DateTime.now().millisecondsSinceEpoch ~/ 1000}"],
      ["baiduid", cuid],
      ["brand", DeviceInfo().brand],
      ["c3_aid", DeviceInfo().c3Aid],
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
      ["model", DeviceInfo().model],
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
    if (zId != null && zId.isNotEmpty) params.add(["z_id", zId]);
    final sign = _computeSign(params);
    params.add(["sign", sign]);
    final bodyStr = params
        .map((p) => "${p[0]}=${Uri.encodeComponent(p[1])}")
        .join("&");

    final client = http.Client();
    try {
      final request = http.Request('POST', Uri.parse("$_baseHost/c/c/post/rmstore"))
        ..followRedirects = false
        ..headers.addAll({
          "Content-Type": "application/x-www-form-urlencoded",
          "User-Agent": DeviceInfo().userAgent(_clientVersion),
          "Cookie":
              "CUID=$cuid;ka=open;TBBRAND=${DeviceInfo().model};BAIDUID=$cuid;",
          "client_user_token": userId,
          "cuid": cuid,
          "cuid_galaxy2": cuid,
          "cuid_gid": "",
          "c3_aid": DeviceInfo().c3Aid,
          "_client_type": "2",
          "Charset": "UTF-8",
          "client_logid": "${DeviceInfo.initTime}",
        })
        ..body = bodyStr;

      final response = await http.Response.fromStream(
        await client.send(request),
      );
      if (response.statusCode != 200) return false;
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      final err = json["error_code"];
      return err == null || err == "0" || err == 0;
    } catch (e) {
      _logger.w("【收藏removeStore异常】$e");
      return false;
    } finally {
      client.close();
    }
  }

  static Future<List<Map<String, dynamic>>> fetchThreadStore({
    required String bduss,
    required String stoken,
    int rn = 20,
    int offset = 0,
    String userId = '',
  }) async {
    final timestamp = "${DateTime.now().millisecondsSinceEpoch}";
    final phoneImei = DeviceInfo().phoneImei;
    final cuid = DeviceInfo().cuid;
    // final clientId = "wappc_${timestamp}_${Random().nextInt(1000)}";
    final today = DateTime.now();
    final eventDay = "${today.year}${today.month}${today.day}";
    final stNum = Random().nextInt(750) + 100;
    final stTime = stNum.toString();
    final stSize = ((Random().nextDouble() * 8 + 0.4) * stNum)
        .round()
        .toString();
    final hasStParams = stNum > 120;
    final zId = await getCachedZid();

    final params = [
      ["BDUSS", bduss],
      ["STOKEN", stoken],
      ["_client_id", _syncClientId ?? ""],
      ["_client_type", "2"],
      ["_client_version", _clientVersion],
      ["_os_version", DeviceInfo().osVersion],
      ["active_timestamp", "${DateTime.now().millisecondsSinceEpoch ~/ 1000}"],
      ["baiduid", cuid],
      ["brand", DeviceInfo().brand],
      ["c3_aid", DeviceInfo().c3Aid],
      ["cmode", "1"],
      ["cuid", cuid],
      ["cuid_galaxy2", cuid],
      ["cuid_gid", ""],
      ["event_day", eventDay],
      ["extra", ""],
      ["first_install_time", "${DeviceInfo().firstInstallTime}"],
      ["framework_ver", "3340042"],
      ["from", "tieba"],
      ["is_teenager", "0"],
      ["last_update_time", "${DeviceInfo().lastUpdateTime}"],
      ["mac", "02:00:00:00:00:00"],
      ["model", DeviceInfo().model],
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
    if (zId != null && zId.isNotEmpty) params.add(["z_id", zId]);
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
              Uri.parse("https://tiebac.baidu.com/c/f/post/threadstore"),
            )
            ..followRedirects = false
            ..headers.addAll({
              "Content-Type": "application/x-www-form-urlencoded",
              "User-Agent": DeviceInfo().userAgent(_clientVersion),
              "Cookie":
                  "CUID=$cuid;ka=open;TBBRAND=${DeviceInfo().model};BAIDUID=$cuid;",
              "client_user_token": userId,
              "cuid": cuid,
              "cuid_galaxy2": cuid,
              "cuid_gid": "",
              "c3_aid": DeviceInfo().c3Aid,
              "_client_type": "2",
              "Charset": "UTF-8",
              "client_logid": "${DeviceInfo.initTime}",
            })
            ..body = bodyStr;

      final response = await http.Response.fromStream(
        await client.send(request),
      );
      // _logger.i(
      //   "【收藏threadStore】status=${response.statusCode} body=${response.body}",
      // );
      if (response.statusCode != 200) return [];
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      final err = json["error_code"];
      if (err != null && err != "0" && err != 0) return [];
      final list = json["store_thread"];
      if (list is! List) return [];
      return list.cast<Map<String, dynamic>>();
    } catch (e) {
      _logger.w("【收藏列表异常】$e");
      return [];
    } finally {
      client.close();
    }
  }

  static Future<bool> voteSubmit({
    required String bduss,
    required String stoken,
    required String tid,
    required String optionIds,
    required String fid,
    String? userId = "7019922344",
    // String? zId,
  }) async {
    final cuid = DeviceInfo().cuid;
    final zId = await getCachedZid();

    final now = DateTime.now();
    final msTs = now.millisecondsSinceEpoch;
    final eventDay = "${now.year}${now.month}${now.day}";
    final clientId = "wappc_${msTs}_${Random().nextInt(1000)}";
    final c3Aid = DeviceInfo().c3Aid;
    final di = DeviceInfo();
    // final clientId = "wappc_1778822989595_244";

    final common = CommonReq(
      // userAgent: "bdtb for Android 22.5.3.0",
      userAgent: DeviceInfo().userAgent(_clientVersion),
      bDUSS: bduss,
      stoken: stoken,
      cuid: cuid,
      cuidGalaxy2: cuid,
      clientId: clientId,
      clientType: 2,
      // clientVersion: "22.5.3.0",
      clientVersion: _clientVersion,
      timestamp: Int64(msTs),
      netType: 1,
      scrW: DeviceInfo().scrW,
      scrH: DeviceInfo().scrH,
      scrDip: DeviceInfo().scrDip,
      c3Aid: c3Aid,
      cmode: 1,
      sdkVer: "3.36.0",
      frameworkVer: "4220001",
      pversion: "1.0.3",
      startType: 1,
      eventDay: eventDay,
      activeTimestamp: Int64(di.activeTimestamp),
      firstInstallTime: Int64(di.firstInstallTime),
      lastUpdateTime: Int64(di.lastUpdateTime),
      personalizedRecSwitch: 1,
      zId: zId,
      needDecrypt: 1,
      needCamDecrypt: 1,
      phoneImei: DeviceInfo().phoneImei,
    );

    // 手动 setter 避免 from 命名冲突
    common.from = "1015363f";

    // _logger.i("【投票CommonReq】from=${common.from} clientId=$clientId");

    final requestPb = VoteRequest(
      data: Data(
        tid: Int64.parseInt(tid),
        optionIds: optionIds,
        fid: Int64.parseInt(fid),
        common: common,
      ),
    );

    final bodyBytes = requestPb.writeToBuffer();

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

    // 计算 sign：所有表单字段（data 和 sign 除外），按 key 排序
    final signFields = <List<String>>[
      ["BDUSS", bduss],
      ["stErrorNums", stErrorNums],
      ["stMethod", stMethod],
      ["stMode", stMode],
      ["stSize", stSize],
      ["stTime", stTime],
      ["stTimesNum", stTimesNum],
      ["stoken", stoken],
    ];
    signFields.sort((a, b) => a[0].compareTo(b[0]));
    final signBuf = StringBuffer();
    for (final f in signFields) {
      signBuf.write("${f[0]}=${f[1]}");
    }
    final sign = md5
        .convert(utf8.encode("${signBuf.toString()}tiebaclient!!!"))
        .toString()
        .toUpperCase();
    // _logger.i("【投票sign】$sign stNum=$stNum stTime=$stTime stSize=$stSize");

    final uri = Uri.parse(
      "https://tiebac.baidu.com/c/c/post/addPollPost?cmd=309006&format=protobuf",
    );

    final client = http.Client();
    try {
      final multipart = http.MultipartRequest('POST', uri)
        ..headers.addAll({
          "Content-Type":
              "multipart/form-data; boundary=--------7da3d81520810*",
          "x_bd_data_type": "protobuf",
          // "User-Agent": "bdtb for Android 22.5.3.0",
          "User-Agent": DeviceInfo().userAgent(_clientVersion),
          "cuid": cuid,
          "cuid_galaxy2": cuid,
          "cuid_gid": "",
          "c3_aid": c3Aid,
          // "c3_aid": "A00-${Random().nextInt(900000000) + 100000000}",
          "Charset": "UTF-8",
          "client_logid": "${DeviceInfo.initTime}",
          "client_user_token": userId ?? '',
          "Connection": "Keep-Alive",
          "Accept-Encoding": "gzip",
          "X-Bd-Traceid":
              "${_randomHex(8)}-${_randomHex(4)}-${_randomHex(4)}-${_randomHex(4)}-${_randomHex(12)}",
          "Host": "tiebac.baidu.com",
        })
        ..files.add(
          http.MultipartFile.fromBytes('data', bodyBytes, filename: 'file'),
        )
        ..fields['BDUSS'] = bduss
        ..fields['sign'] = sign
        ..fields['stErrorNums'] = stErrorNums
        ..fields['stMethod'] = stMethod
        ..fields['stMode'] = stMode
        ..fields['stSize'] = stSize
        ..fields['stTime'] = stTime
        ..fields['stTimesNum'] = stTimesNum
        ..fields['stoken'] = stoken;

      final streamedResponse = await client.send(multipart);
      final response = await http.Response.fromStream(streamedResponse);

      // _logger.i("【投票请求】uri=$uri");
      // _logger.i("【投票请求】optionIds=$optionIds tid=$tid, fid=$fid");

      if (response.statusCode != 200) {
        _logger.w("【投票响应】状态码=${response.statusCode}");
        return false;
      }

      // _logger.i("【投票响应】body字节数=${response.bodyBytes.length}");

      // 尝试解析为 VoteResponse
      try {
        final voteResp = VoteResponse.fromBuffer(response.bodyBytes);
        // final code1 = voteResp.hasRes1() ? voteResp.res1.code : -1;
        // final msg1 = voteResp.hasRes1() ? voteResp.res1.msg : '';
        // final code2 = voteResp.hasRes2() ? voteResp.res2.code : -1;
        // final msg2 = voteResp.hasRes2() ? voteResp.res2.msg : '';
        // final extra2 = voteResp.hasRes2() ? voteResp.res2.extra : '';
        // _logger.i("【投票响应】res1: code=$code1 msg=$msg1");
        // _logger.i("【投票响应】res2: code=$code2 msg=$msg2 extra=$extra2");
        if (voteResp.hasRes1() && voteResp.res1.code == 0) {
          // _logger.i("【投票成功】");
          return true;
        }
        return false;
      } catch (e) {
        _logger.w("【投票解析失败】$e");
        // 尝试解析为 JSON（错误时返回 JSON）
        try {
          final text = String.fromCharCodes(response.bodyBytes);
          final json = jsonDecode(text) as Map<String, dynamic>;
          _logger.w(
            "【投票JSON响应】error_code=${json['error_code']} error_msg=${json['error_msg']}",
          );
        } catch (_) {
          _logger.w("【投票原始响应】${String.fromCharCodes(response.bodyBytes)}");
        }
        return false;
      }
    } catch (e) {
      _logger.w("【投票提交异常】$e");
      return false;
    } finally {
      client.close();
    }
  }
}
