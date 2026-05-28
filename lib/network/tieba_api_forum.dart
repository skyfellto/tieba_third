part of 'tieba_api.dart';

class _ForumApi {
  /// 获取贴吧详细信息（GetForumDetail API）
  static Future<GetForumDetailResponseData?> fetchForumDetail({
    required String bduss,
    required String stoken,
    required String forumId,
    required String userId,
  }) async {
    final phoneImei = DeviceInfo().phoneImei;
    final cuid = DeviceInfo().cuid;
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

    final reqData = GetForumDetailRequestData(
      forumId: Int64.parseInt(forumId),
      common: common,
    );

    final request = GetForumDetailRequest(data: reqData);
    final bodyBytes = request.writeToBuffer();

    final uri = Uri.parse(
      "$_baseHost/c/f/forum/getforumdetail?cmd=303021&format=protobuf",
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
        _logger.w("【论坛详情】非200响应：${response.statusCode}");
        return null;
      }

      final pb = GetForumDetailResponse.fromBuffer(response.bodyBytes);
      if (pb.hasError()) {
        _logger.w(
          "【论坛详情】error子消息存在: code=${pb.error.errorCode} msg='${pb.error.errorMsg}' userMsg='${pb.error.userMsg}'",
        );
        if (pb.error.errorCode != 0) return null;
      }

      if (!pb.hasData()) {
        _logger.w("【论坛详情】data为空");
        return null;
      }

      return pb.data;
    } catch (e) {
      _logger.w("【论坛详情】请求异常：$e");
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
    final phoneImei = DeviceInfo().phoneImei;
    final cuid = DeviceInfo().cuid;
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

    final reqData = GetLevelInfoRequestData(
      forumId: Int64.parseInt(forumId),
      common: common,
    );

    final request = GetLevelInfoRequest(data: reqData);
    final bodyBytes = request.writeToBuffer();

    final uri = Uri.parse(
      "$_baseHost/c/f/forum/getLevelInfo?cmd=301005&format=protobuf",
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
        _logger.w("【等级信息】非200响应：${response.statusCode}");
        return null;
      }

      final pb = GetLevelInfoResponse.fromBuffer(response.bodyBytes);
      if (pb.hasError()) {
        if (pb.error.errorCode != 0) return null;
      }

      if (!pb.hasData()) {
        _logger.w("【等级信息】data为空");
        return null;
      }

      return pb.data;
    } catch (e) {
      _logger.w("【等级信息】请求异常：$e");
      return null;
    } finally {
      client.close();
    }
  }

  /// 获取贴吧页面信息（FrsPage API）
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
    final phoneImei = DeviceInfo().phoneImei;
    final cuid = DeviceInfo().cuid;
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

    final reqData = FrsPageRequestData(
      kw: forumName,
      pn: page,
      rn: 90,
      rnNeed: 30,
      loadType: loadType,
      sortType: sortType,
      isGood: isGood,
      common: common,
      stType: "tb_forumlist",
      scrW: DeviceInfo().scrW,
      scrH: DeviceInfo().scrH,
      scrDip: DeviceInfo().scrDip,
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
        _logger.w("【FrsPage】非200响应：${response.statusCode}");
        return null;
      }

      final pb = FrsPageResponse.fromBuffer(response.bodyBytes);
      if (pb.hasError() && pb.error.errorCode != 0) {
        _logger.w("【FrsPage】API错误：${pb.error.errorCode} ${pb.error.errorMsg}");
        return null;
      }

      if (!pb.hasData()) {
        _logger.w("【FrsPage】data为空");
        return null;
      }

      final d = pb.data;
      d.threadList.removeWhere((t) => t.hasAlaInfo());
      return d;
    } catch (e) {
      _logger.w("【FrsPage】请求异常：$e");
      return null;
    } finally {
      client.close();
    }
  }

  /// 增量加载帖子列表
  static Future<ThreadListResponseData?> fetchThreadList({
    required String bduss,
    required String stoken,
    required String forumName,
    required String forumId,
    required String userId,
    required String threadIds,
    int sortType = 0,
    int page = 1,
  }) async {
    final phoneImei = DeviceInfo().phoneImei;
    final cuid = DeviceInfo().cuid;
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

    final reqData = ThreadListRequestData(
      threadIds: threadIds,
      forumId: Int64.parseInt(forumId),
      forumName: forumName,
      pn: page,
      sortType: sortType,
      needAbstract: 0,
      stType: 0,
      scrW: DeviceInfo().scrW,
      scrH: DeviceInfo().scrH,
      scrDip: DeviceInfo().scrDip,
      qType: 2,
      common: common,
      appPos: AppPosInfo(),
      adParam: tl_ad_param.AdParam(loadCount: 0, refreshCount: 1),
    );

    final request = ThreadListRequest(data: reqData);
    final bodyBytes = request.writeToBuffer();

    final uri = Uri.parse("$_baseHost/c/f/frs/threadlist?cmd=301002");

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
        _logger.w("【ThreadList】非200响应：${response.statusCode}");
        return null;
      }

      final pb = ThreadListResponse.fromBuffer(response.bodyBytes);
      if (pb.hasError() && pb.error.errorCode != 0) {
        _logger.w(
          "【ThreadList】API错误：${pb.error.errorCode} ${pb.error.errorMsg}",
        );
        return null;
      }

      if (!pb.hasData()) {
        _logger.w("【ThreadList】data为空");
        return null;
      }

      return pb.data;
    } catch (e) {
      _logger.w("【ThreadList】请求异常：$e");
      return null;
    } finally {
      client.close();
    }
  }

  static Future<Map<String, dynamic>?> signForum({
    required String bduss,
    required String stoken,
    required String tbs,
    required String forumId,
    required String forumName,
  }) async {
    final timestamp = "${DateTime.now().millisecondsSinceEpoch}";
    final phoneImei = DeviceInfo().phoneImei;
    final cuid = DeviceInfo().cuid;
    // final clientId = "wappc_${timestamp}_${Random().nextInt(1000)}";

    // tiebalite signFlow: Cookie=ka=open, _client_version=11.10.8.6
    // 使用 defaultCommonParamInterceptor 风格参数 + 签到专有字段
    final params = [
      ["BDUSS", bduss],
      ["_client_id", _syncClientId ?? ""],
      ["_client_type", "2"],
      ["_client_version", _clientVersion],
      ["_os_version", DeviceInfo().osVersion],
      ["cuid", cuid],
      ["cuid_galaxy2", cuid],
      ["cuid_gid", ""],
      ["fid", forumId],
      ["from", "tieba"],
      ["kw", forumName],
      ["model", DeviceInfo().model],
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

      if (response.statusCode != 200) {
        _logger.w("【签到失败】非200状态码");
        return null;
      }

      final json = jsonDecode(response.body) as Map<String, dynamic>;
      final err = json["error_code"];
      if (err != null && err != "0" && err != 0) {
        _logger.w("【签到失败】error_code=$err msg=${json["error_msg"]}");
        return null;
      }
      // tiebalite SignResultBean: userInfo 为空表示签到失败
      if (json["user_info"] == null) {
        _logger.w("【签到失败】user_info 为空");
        return null;
      }
      return json;
    } catch (e) {
      _logger.w("【签到异常】$e");
      return null;
    } finally {
      client.close();
    }
  }

  static Future<Map<String, dynamic>?> likeForum({
    required String bduss,
    required String stoken,
    required String tbs,
    required String forumId,
    required String forumName,
  }) async {
    final timestamp = "${DateTime.now().millisecondsSinceEpoch}";
    final cuid = DeviceInfo().cuid;

    final params = [
      ["BDUSS", bduss],
      ["_client_type", "2"],
      ["_client_version", _clientVersion],
      ["cuid", cuid],
      ["fid", forumId],
      ["kw", forumName],
      ["stoken", stoken],
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
              Uri.parse("http://c.tieba.baidu.com/c/c/forum/like"),
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

      if (response.statusCode != 200) {
        _logger.w("【关注贴吧】非200状态码");
        return null;
      }

      final json = jsonDecode(response.body) as Map<String, dynamic>;
      final err = json["error_code"];
      if (err != null && err != "0" && err != 0) {
        _logger.w("【关注贴吧】error_code=$err msg=${json["error_msg"]}");
        return null;
      }
      return json;
    } catch (e) {
      _logger.w("【关注贴吧】异常：$e");
      return null;
    } finally {
      client.close();
    }
  }

  static Future<bool> unlikeForum({
    required String bduss,
    required String stoken,
    required String tbs,
    required String forumId,
    required String forumName,
  }) async {
    final timestamp = "${DateTime.now().millisecondsSinceEpoch}";
    final cuid = DeviceInfo().cuid;
    final c3Aid = DeviceInfo().c3Aid;

    final params = [
      ["BDUSS", bduss],
      ["_client_type", "2"],
      ["_client_version", _clientVersion],
      ["c3_aid", c3Aid],
      ["cuid", cuid],
      ["cuid_galaxy2", cuid],
      ["fid", forumId],
      ["kw", forumName],
      ["stoken", stoken],
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
              Uri.parse("http://c.tieba.baidu.com/c/c/forum/unfavolike"),
            )
            ..followRedirects = false
            ..headers.addAll({
              "Content-Type": "application/x-www-form-urlencoded",
              "User-Agent": DeviceInfo().userAgent(_clientVersion),
              "Cookie": "ka=open",
              "cuid": cuid,
              "cuid_galaxy2": cuid,
              "c3_aid": c3Aid,
              "client_logid": "${DeviceInfo.initTime}",
            })
            ..body = bodyStr;

      final response = await http.Response.fromStream(
        await client.send(request),
      );

      if (response.statusCode != 200) {
        _logger.w("【取消关注】非200状态码");
        return false;
      }

      final json = jsonDecode(response.body) as Map<String, dynamic>;
      final err = json["error_code"];
      if (err != null && err != "0" && err != 0) {
        _logger.w("【取消关注】error_code=$err msg=${json["error_msg"]}");
        return false;
      }
      return true;
    } catch (e) {
      _logger.w("【取消关注】异常：$e");
      return false;
    } finally {
      client.close();
    }
  }

  /// 参考官方抓包参数
  static Future<Map<String, dynamic>?> mSign({
    required String bduss,
    required String stoken,
    required String tbs,
    required String forumIds,
    required String userId,
    required String baiduId,
  }) async {
    final timestamp = "${DateTime.now().millisecondsSinceEpoch}";
    final phoneImei = DeviceInfo().phoneImei;
    final cuid = DeviceInfo().cuid;
    // final clientId = "wappc_${timestamp}_${Random().nextInt(1000)}";
    final di = DeviceInfo();
    final now = DateTime.now();
    final eventDay = "${now.year}${now.month}${now.day}";

    // oaid: 模拟 OAID 对象
    final oaid = jsonEncode({
      "v": "",
      "isTrackLimited": 0,
      "sc": -200,
      "sup": 0,
    });

    final params = [
      ["BDUSS", bduss],
      ["STOKEN", stoken],
      ["_client_id", _syncClientId ?? ""],
      ["_client_type", "2"],
      ["_client_version", _clientVersion],
      ["_os_version", "${di.sdkInt}"],
      ["_phone_imei", phoneImei],
      ["active_timestamp", "${di.activeTimestamp}"],
      ["android_id", di.androidId],
      ["authsid", "null"],
      ["baidu_id", baiduId],
      ["brand", di.brand],
      ["c3_aid", di.c3Aid],
      ["cmode", "1"],
      ["cuid", cuid],
      ["cuid_galaxy2", cuid],
      ["cuid_gid", ""],
      ["event_day", eventDay],
      ["extra", ""],
      ["first_install_time", "${di.firstInstallTime}"],
      ["forum_ids", forumIds],
      ["framework_ver", "3340042"],
      ["from", "tieba"],
      ["is_teenager", "0"],
      ["last_update_time", "${di.lastUpdateTime}"],
      ["mac", "02:00:00:00:00:00"],
      ["model", di.model],
      ["net_type", "1"],
      ["oaid", oaid],
      ["sdk_ver", "2.34.0"],
      ["stErrorNums", "0"],
      ["start_scheme", ""],
      ["start_type", "1"],
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

    final cookie = "CUID=$cuid;ka=open;TBBRAND=${di.model};BAIDUID=$baiduId;";
    final ua = di.userAgent(_clientVersion);

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
              "User-Agent": ua,
              "Cookie": cookie,
              "client_logid": "${DeviceInfo.initTime}",
              "Accept-Encoding": "gzip",
              "Host": "c.tieba.baidu.com",
              "Connection": "Keep-Alive",
              "Charset": "UTF-8",
            })
            ..body = bodyStr;

      final response = await http.Response.fromStream(
        await client.send(request),
      );

      if (response.statusCode != 200) {
        _logger.w("【一键签到失败】非200状态码 statusCode=${response.statusCode}");
        _logger.w("【一键签到失败】响应body=${response.body}");
        return null;
      }

      final json = jsonDecode(response.body) as Map<String, dynamic>;
      _logger.i("【一键签到JSON】$json");

      final err = json["error_code"];
      if (err != null && err != "0" && err != 0) {
        _logger.w(
          "【一键签到失败】error_code=$err msg=${json["error_msg"]} error_info=${json["error_info"]}",
        );
        return null;
      }
      // info 为字符串时表示失败（含空字符串），为数组时才是签到结果
      final info = json["info"];
      _logger.i("【一键签到info】type=${info.runtimeType} value=$info");
      if (info is String) {
        _logger.w("【一键签到失败】info 为字符串: $info");
        _logger.w("【一键签到失败】完整响应: ${response.body}");
        return null;
      }
      _logger.i("sign_map :: ${json["json_map"]}");
      return json;
    } catch (e) {
      _logger.w("【一键签到异常】$e");
      return null;
    } finally {
      client.close();
    }
  }

  static Future<SearchSugResponseData?> fetchSearchSug({
    required String bduss,
    required String stoken,
    required String word,
    String isforum = '0',
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
          "User-Agent": DeviceInfo().userAgent(_clientVersion),
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
      _logger.w("【搜索联想异常】$e");
      return null;
    } finally {
      client.close();
    }
  }

  static Future<Map<String, dynamic>?> fetchBawuList({
    required String bduss,
    required String stoken,
    required String fid,
  }) async {
    final uri = Uri.parse(
      "https://tieba.baidu.com/mo/q/bawulist?fid=$fid&_client_type=2&_client_version=$_clientVersion",
    );
    final client = http.Client();
    try {
      final cuid = DeviceInfo().cuid;
      final request = http.Request('GET', uri)
        ..headers.addAll({
          "User-Agent": DeviceInfo().userAgent(_clientVersion),
          "X-Requested-With": "com.baidu.tieba",
          "Accept": "application/json, text/plain, */*",
          "Accept-Language": "zh-CN,zh;q=0.9",
          "Cookie":
              "BDUSS=$bduss; STOKEN=$stoken; cuid_galaxy2=$cuid; CUID=$cuid; BDUSS_BFESS=$bduss; BAIDUID=${UserManager.baiduId}; BAIDUID_BFESS=${UserManager.baiduId}",
        });
      final response = await http.Response.fromStream(
        await client.send(request),
      );
      if (response.statusCode != 200) {
        _logger.w("【吧务列表】非200状态码");
        return null;
      }
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      if (json["no"] != 0) {
        _logger.w("【吧务列表】error_no=${json["no"]} error=${json["error"]}");
        return null;
      }
      return json;
    } catch (e) {
      _logger.w("【吧务列表异常】$e");
      return null;
    } finally {
      client.close();
    }
  }
}
