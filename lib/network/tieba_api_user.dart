part of 'tieba_api.dart';

class _UserApi {
  static Future<List<PostItem>> fetchUserPosts({
    required String bduss,
    required String stoken,
    required String uid,
    int page = 1,
    int isThread = 1,
    int rn = 20,
  }) async {
    final timestamp = "${DateTime.now().millisecondsSinceEpoch}";
    final phoneImei = DeviceInfo().phoneImei;
    final cuid = DeviceInfo().cuid;
    // final clientId = "wappc_${timestamp}_${Random().nextInt(1000)}";

    final params = [
      ["BDUSS", bduss],
      ["STOKEN", stoken],
      ["_client_id", _syncClientId ?? ""],
      ["_client_type", "2"],
      ["_client_version", _clientVersion],
      ["_os_version", DeviceInfo().osVersion],
      ["cuid", cuid],
      ["cuid_galaxy2", cuid],
      ["cuid_gid", ""],
      ["from", "tieba"],
      ["model", DeviceInfo().model],
      ["net_type", "1"],
      ["_phone_imei", phoneImei],
      ["uid", uid],
      ["page", "$page"],
      ["is_thread", "$isThread"],
      ["rn", "$rn"],
      ["need_content", "1"],
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
              Uri.parse("http://c.tieba.baidu.com/c/u/feed/userpost"),
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

      if (response.statusCode != 200) return [];

      final json = jsonDecode(response.body) as Map<String, dynamic>;
      final err = json["error_code"];
      if (err != null && err != "0" && err != 0) {
        _logger.w("【用户帖子失败】error_code=$err msg=${json["error_msg"]}");
        return [];
      }

      final postList = json["post_list"];
      if (postList is! List) return [];

      final posts = <PostItem>[];
      for (final item in postList) {
        final itemMap = item as Map<String, dynamic>;
        // 提取正文文本
        String? absText;
        final content = itemMap["content"];
        if (content is List && content.isNotEmpty) {
          final firstContent = content[0] as Map<String, dynamic>?;
          if (firstContent != null) {
            final postContent = firstContent["post_content"];
            if (postContent is List && postContent.isNotEmpty) {
              final texts = postContent
                  .map(
                    (c) =>
                        (c as Map<String, dynamic>)["text"]?.toString() ?? "",
                  )
                  .where((t) => t.isNotEmpty)
                  .toList();
              if (texts.isNotEmpty) absText = texts.join(" ");
            }
          }
        }

        // 尝试从 abstracts 提取
        if ((absText == null || absText.isEmpty) &&
            itemMap["abstracts"] is List) {
          final abstractsList = itemMap["abstracts"] as List;
          if (abstractsList.isNotEmpty) {
            absText = abstractsList
                .map(
                  (a) => (a as Map<String, dynamic>)["text"]?.toString() ?? "",
                )
                .where((t) => t.isNotEmpty)
                .join(" ");
          }
        }

        final tid = _s(itemMap["thread_id"]);
        if (tid.isEmpty) continue;

        final isThreadVal = _s(itemMap["is_thread"]);
        String? lastTime;
        try {
          final ct = int.tryParse(_s(itemMap["create_time"]));
          if (ct != null && ct > 0) {
            final dt = DateTime.fromMillisecondsSinceEpoch(ct * 1000);
            final now = DateTime.now();
            if (now.year == dt.year) {
              if (now.day == dt.day && now.month == dt.month) {
                final diff = now.difference(dt);
                if (diff.inMinutes < 1) {
                  lastTime = null;
                } else if (diff.inMinutes <= 40) {
                  lastTime = "${diff.inMinutes} 分钟前";
                } else {
                  lastTime =
                      "今天 ${dt.hour.toString().padLeft(2, '0')}:${dt.minute.toString().padLeft(2, '0')}";
                }
              } else {
                lastTime =
                    "${dt.month.toString().padLeft(2, '0')}-${dt.day.toString().padLeft(2, '0')} ${dt.hour.toString().padLeft(2, '0')}:${dt.minute.toString().padLeft(2, '0')}";
              }
            } else {
              lastTime =
                  "${dt.year}-${dt.month.toString().padLeft(2, '0')}-${dt.day.toString().padLeft(2, '0')} ${dt.hour.toString().padLeft(2, '0')}:${dt.minute.toString().padLeft(2, '0')}";
            }
          }
        } catch (_) {}

        posts.add(
          PostItem(
            tid: tid,
            title: _s(itemMap["title"]),
            authorId: _s(itemMap["user_id"]),
            authorName: _s(itemMap["name_show"]),
            authorPortrait: itemMap["user_portrait"]?.toString(),
            forumId: _s(itemMap["forum_id"]),
            forumName: _s(itemMap["forum_name"]),
            replyNum: _s(itemMap["reply_num"]),
            agreeNum: _s(itemMap["agree_num"]),
            abstractText: absText,
            lastTime: lastTime,
            isAd: false,
            isTop:
                isThreadVal == "1" && int.tryParse(_s(itemMap["is_top"])) == 1,
          ),
        );
      }
      return posts;
    } catch (e) {
      _logger.w("【用户帖子异常】$e");
      return [];
    } finally {
      client.close();
    }
  }

  static Future<(UserProfileData?, List<ForumItem>)> fetchUserProfilePb({
    required String bduss,
    required String stoken,
    required String uid,
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

    final reqData = ProfileRequestData(
      common: common,
      uid: Int64.parseInt(uid),
      needPostCount: 1,
      friendUid: Int64.ZERO,
      isGuest: 0,
    );
    final request = ProfileRequest(data: reqData);
    final bodyBytes = request.writeToBuffer();

    final uri = Uri.parse(
      "$_baseHost/c/u/user/profile?cmd=303012&format=protobuf",
    );

    final client = http.Client();
    try {
      final multipart = http.MultipartRequest('POST', uri)
        ..headers.addAll({
          "x_bd_data_type": "protobuf",
          "User-Agent": DeviceInfo().userAgent(_clientVersion),
          "Cookie":
              "ka=open; CUID=${common.cuid}; TBBRAND=${DeviceInfo().model}",
          "Charset": "UTF-8",
          "Client-Type": "2",
          "client_user_token": uid,
          "Cuid": common.cuid,
          "Cuid-Galaxy2": common.cuid,
          "Cuid-Gid": "",
        })
        ..files.add(
          http.MultipartFile.fromBytes('data', bodyBytes, filename: 'file'),
        );

      final streamedResponse = await client.send(multipart);
      final response = await http.Response.fromStream(streamedResponse);

      if (response.statusCode != 200) return (null, <ForumItem>[]);

      final pb = ProfileResponse.fromBuffer(response.bodyBytes);
      if (pb.hasError() && pb.error.errorCode != 0) {
        _logger.w("【用户资料Pb】错误：${pb.error.errorCode} ${pb.error.errorMsg}");
        return (null, <ForumItem>[]);
      }
      if (!pb.hasData() || !pb.data.hasUser()) {
        _logger.w("【用户资料Pb】data 或 user 为空");
        return (null, <ForumItem>[]);
      }

      final user = pb.data.user;

      final forums = pb.data.concernedForumList
          .where((f) => f.forumName.isNotEmpty)
          .map(
            (f) => ForumItem(
              forumId: f.forumId.toInt().toString(),
              forumName: f.forumName,
              avatar: f.avatar,
              levelId: 0,
              isSign: false,
            ),
          )
          .toList();

      return (UserProfileData.fromUserProto(user), forums);
    } catch (e) {
      _logger.w("【用户资料Pb异常】$e");
      return (null, <ForumItem>[]);
    } finally {
      client.close();
    }
  }

  static Future<List<PostItem>> fetchUserPostsPb({
    required String bduss,
    required String stoken,
    required String uid,
    int page = 1,
    int rn = 20,
    int isThread = 1,
    Map<String, String>? forumAvatarMap,
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

    final reqData = UserPostRequestData(
      common: common,
      uid: Int64.parseInt(uid),
      pn: page,
      rn: rn,
      isThread: isThread,
      needContent: 1,
    );
    final request = UserPostRequest(data: reqData);
    final bodyBytes = request.writeToBuffer();

    final uri = Uri.parse(
      "$_baseHost/c/u/feed/userpost?cmd=303002&format=protobuf",
    );

    // ST 反垃圾参数
    final stNum = Random().nextInt(750) + 100;
    final stTimeVal = stNum.toString();
    final stSizeVal = ((Random().nextDouble() * 8 + 0.4) * stNum)
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
      ["stSize", stSizeVal],
      ["stTime", stTimeVal],
      ["stTimesNum", stTimesNum],
      ["stoken", stoken],
    ];
    final sign = _computeSign(signParams);

    final client = http.Client();
    try {
      final multipart = http.MultipartRequest('POST', uri)
        ..headers.addAll({
          "x_bd_data_type": "protobuf",
          "User-Agent": DeviceInfo().userAgent(_clientVersion),
          // "Cookie": "BDUSS=$bduss; STOKEN=$stoken",
          "cuid": cuid,
          "Connection": "Keep-Alive",
          "c3_aid": DeviceInfo().c3Aid,
          "cuid_gid": '',
          "Charset": "UTF-8",
          "cuid_galaxy2": cuid,
          "Accept-Encoding": "gzip",
          "client_user_token": uid,
          "client_logid": "${DeviceInfo.initTime}",
          "X-Bd-Traceid":
              "${_randomHex(8)}-${_randomHex(4)}-${_randomHex(4)}-${_randomHex(4)}-${_randomHex(12)}",
          "Content-Type": "application/x-www-form-urlencoded",
          "Host": "tiebac.baidu.com",
        })
        ..fields['BDUSS'] = bduss
        ..fields['sign'] = sign
        ..fields['stErrorNums'] = stErrorNums
        ..fields['stMethod'] = stMethod
        ..fields['stMode'] = stMode
        ..fields['stSize'] = stSizeVal
        ..fields['stTime'] = stTimeVal
        ..fields['stTimesNum'] = stTimesNum
        ..fields['STOKEN'] = stoken
        ..files.add(
          http.MultipartFile.fromBytes('data', bodyBytes, filename: 'file'),
        );

      final streamedResponse = await client.send(multipart);
      final response = await http.Response.fromStream(streamedResponse);

      if (response.statusCode != 200) return [];

      final pb = UserPostResponse.fromBuffer(response.bodyBytes);
      // pb.data.postList.forEach((post) {
      //   _logger.i("postinfoContent :: ${post.content}");
      // });
      if (pb.hasError() && pb.error.errorCode != 0) {
        _logger.w("【用户帖子Pb】错误：${pb.error.errorCode} ${pb.error.errorMsg}");
        return [];
      }
      if (!pb.hasData()) return [];

      final posts = pb.data.postList.map((info) {
        // 提取正文文本
        String? absText;
        for (final pic in info.content) {
          for (final a in pic.postContent) {
            if (a.type == 0 && a.text.isNotEmpty) {
              absText = (absText == null) ? a.text : "$absText ${a.text}";
            }
          }
          if (absText != null && absText.length > 150) {
            absText = absText.substring(0, 150);
            break;
          }
        }

        // 提取图片
        final images = <String>[];
        for (final m in info.media) {
          if (m.bigPic.isNotEmpty) {
            images.add(m.bigPic);
          } else if (m.srcPic.isNotEmpty) {
            images.add(m.srcPic);
          }
          if (images.length >= 3) break;
        }

        // 格式化时间
        String? lastTime;
        final ct = info.createTime;
        if (ct > 0) {
          final dt = DateTime.fromMillisecondsSinceEpoch(ct * 1000);
          final now = DateTime.now();
          if (now.year == dt.year) {
            if (now.day == dt.day && now.month == dt.month) {
              final diff = now.difference(dt);
              if (diff.inMinutes < 1) {
                lastTime = null;
              } else if (diff.inMinutes <= 40) {
                lastTime = "${diff.inMinutes} 分钟前";
              } else {
                lastTime =
                    "今天 ${dt.hour.toString().padLeft(2, '0')}:${dt.minute.toString().padLeft(2, '0')}";
              }
            } else {
              lastTime =
                  "${dt.month.toString().padLeft(2, '0')}-${dt.day.toString().padLeft(2, '0')} ${dt.hour.toString().padLeft(2, '0')}:${dt.minute.toString().padLeft(2, '0')}";
            }
          } else {
            lastTime =
                "${dt.year}-${dt.month.toString().padLeft(2, '0')}-${dt.day.toString().padLeft(2, '0')} ${dt.hour.toString().padLeft(2, '0')}:${dt.minute.toString().padLeft(2, '0')}";
          }
        }

        bool isLiked = info.agree.hasAgree == 1 ? true : false;

        return PostItem(
          tid: info.threadId.toInt().toString(),
          title: info.title,
          authorId: info.userId.toInt() > 0
              ? info.userId.toInt().toString()
              : '',
          authorName: info.nameShow.isNotEmpty ? info.nameShow : info.userName,
          authorPortrait: info.userPortrait.isNotEmpty
              ? info.userPortrait
              : null,
          forumId: info.forumId.toInt().toString(),
          forumName: info.forumName,
          forumAvatar: forumAvatarMap?[info.forumId.toInt().toString()],
          replyNum: info.replyNum.toString(),
          agreeNum: info.agreeNum.toString(),
          abstractText: absText,
          lastTime: lastTime,
          imageUrls: images,
          isAd: false,
          isTop: false,
          isLiked: isLiked,
          firstPostId: info.postId.toInt().toString(),
        );
      }).toList();

      return posts;
    } catch (e) {
      _logger.w("【用户帖子Pb异常】$e");
      return [];
    } finally {
      client.close();
    }
  }

  static Future<List<PostInfoList>> fetchUserRepliesPb({
    required String bduss,
    required String stoken,
    required String uid,
    int page = 1,
    int rn = 20,
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

    final reqData = UserPostRequestData(
      common: common,
      uid: Int64.parseInt(uid),
      pn: page,
      rn: rn,
      isThread: 0,
      needContent: 1,
    );
    final request = UserPostRequest(data: reqData);
    final bodyBytes = request.writeToBuffer();

    final uri = Uri.parse(
      "$_baseHost/c/u/feed/userpost?cmd=303002&format=protobuf",
    );

    // ST 反垃圾参数
    final stNum = Random().nextInt(750) + 100;
    final stTimeVal = stNum.toString();
    final stSizeVal = ((Random().nextDouble() * 8 + 0.4) * stNum)
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
      ["stSize", stSizeVal],
      ["stTime", stTimeVal],
      ["stTimesNum", stTimesNum],
      ["stoken", stoken],
    ];
    final sign = _computeSign(signParams);

    final client = http.Client();
    try {
      final multipart = http.MultipartRequest('POST', uri)
        ..headers.addAll({
          "x_bd_data_type": "protobuf",
          "User-Agent": DeviceInfo().userAgent(_clientVersion),
          // "Cookie": "BDUSS=$bduss; STOKEN=$stoken",
          "cuid": cuid,
          "Connection": "Keep-Alive",
          "c3_aid": DeviceInfo().c3Aid,
          "cuid_gid": '',
          "Charset": "UTF-8",
          "cuid_galaxy2": cuid,
          "Accept-Encoding": "gzip",
          "client_user_token": uid,
          "client_logid": "${DeviceInfo.initTime}",
          "X-Bd-Traceid":
              "${_randomHex(8)}-${_randomHex(4)}-${_randomHex(4)}-${_randomHex(4)}-${_randomHex(12)}",
          "Content-Type": "application/x-www-form-urlencoded",
          "Host": "tiebac.baidu.com",
        })
        ..fields['BDUSS'] = bduss
        ..fields['sign'] = sign
        ..fields['stErrorNums'] = stErrorNums
        ..fields['stMethod'] = stMethod
        ..fields['stMode'] = stMode
        ..fields['stSize'] = stSizeVal
        ..fields['stTime'] = stTimeVal
        ..fields['stTimesNum'] = stTimesNum
        ..fields['STOKEN'] = stoken
        ..files.add(
          http.MultipartFile.fromBytes('data', bodyBytes, filename: 'file'),
        );

      final streamedResponse = await client.send(multipart);
      final response = await http.Response.fromStream(streamedResponse);

      if (response.statusCode != 200) return [];

      final pb = UserPostResponse.fromBuffer(response.bodyBytes);
      if (pb.hasError() && pb.error.errorCode != 0) {
        _logger.w("【用户回帖Pb】错误：${pb.error.errorCode} ${pb.error.errorMsg}");
        return [];
      }
      if (!pb.hasData()) return [];
      // pb.data.postList.forEach((post) {
      //   _logger.i("post :: $post");
      // });

      return pb.data.postList.toList();
    } catch (e) {
      _logger.w("【用户回帖Pb异常】$e");
      return [];
    } finally {
      client.close();
    }
  }

  static Future<List<ForumItem>> fetchUserLikeForums({
    required String bduss,
    required String stoken,
    required String uid,
    required String baiduid,
    String? friendUid,
    int pageNo = 1,
    int pageSize = 50,
  }) async {
    final timestamp = "${DateTime.now().millisecondsSinceEpoch}";
    final phoneImei = DeviceInfo().phoneImei;
    final cuid = DeviceInfo().cuid;
    // final clientId = "wappc_${timestamp}_${Random().nextInt(1000)}";

    final params = [
      ["BDUSS", bduss],
      ["STOKEN", stoken],
      ["_client_id", _syncClientId ?? ""],
      ["_client_type", "2"],
      ["_client_version", _clientVersion],
      ["_os_version", DeviceInfo().osVersion],
      ["cuid", cuid],
      ["cuid_galaxy2", cuid],
      ["cuid_gid", ""],
      ["from", "tieba"],
      ["model", DeviceInfo().model],
      ["net_type", "1"],
      ["_phone_imei", phoneImei],
      ["uid", uid],
      ["friend_uid", friendUid ?? uid],
      ["is_guest", friendUid != null ? "1" : "0"],
      ["page_no", "$pageNo"],
      ["page_size", "$pageSize"],
      ["timestamp", timestamp],
    ];
    final sign = _computeSign(params);
    params.add(["sign", sign]);
    final bodyStr = params
        .map((p) => "${p[0]}=${Uri.encodeComponent(p[1])}")
        .join("&");

    final client = http.Client();
    try {
      final request = http.Request('POST', Uri.parse("$_baseHost/c/f/forum/like"))
        ..followRedirects = false
        ..headers.addAll({
          "Content-Type": "application/x-www-form-urlencoded",
          "User-Agent": DeviceInfo().userAgent(_clientVersion),
          "Cookie":
              "CUID=$cuid;ka=open;TBBRAND=${DeviceInfo().model};BAIDUID=$baiduid;",
          "Cuid": cuid,
          "Cuid-Galaxy2": cuid,
          "Cuid-Gid": "",
          "Client-Type": "2",
          "Charset": "UTF-8",
          "client_logid": "${DeviceInfo.initTime}",
        })
        ..body = bodyStr;

      final response = await http.Response.fromStream(
        await client.send(request),
      );

      if (response.statusCode != 200) return [];

      final json = jsonDecode(response.body) as Map<String, dynamic>;
      final err = json["error_code"];
      if (err != null && err != "0" && err != 0) {
        _logger.w("【用户关注吧失败】error_code=$err msg=${json["error_msg"]}");
        return [];
      }

      // 响应结构：{"forum_list": {"non-gconforum": [...]}}
      final forumListWrapper = json["forum_list"];
      if (forumListWrapper is! Map) {
        _logger.w("【用户关注吧】forum_list 不是对象");
        return [];
      }
      final items = forumListWrapper["non-gconforum"];
      if (items is! List) {
        _logger.w("【用户关注吧】non-gconforum 为空或不是列表");
        return [];
      }

      final forums = items.map((f) {
        final fMap = f as Map<String, dynamic>;
        return ForumItem(
          forumId: _s(fMap["id"]),
          forumName: _s(fMap["name"]),
          avatar: _s(fMap["avatar"]),
          levelId: int.tryParse(_s(fMap["level_id"])) ?? 0,
          isSign: false,
        );
      }).toList();

      return forums;
    } catch (e) {
      _logger.w("【用户关注吧异常】$e");
      return [];
    } finally {
      client.close();
    }
  }

  /// 获取用户粉丝列表 — POST（签名）
  static Future<Map<String, dynamic>?> fetchFansList({
    required String bduss,
    required String stoken,
    required String tbs,
    required String uid,
    int pn = 1,
  }) async {
    final refTimestamp = "${DateTime.now().millisecondsSinceEpoch}";
    final timestamp = "${DateTime.now().millisecondsSinceEpoch}";
    final cuid = DeviceInfo().cuid;
    final phoneImei = DeviceInfo().phoneImei;
    final c3Aid = DeviceInfo().c3Aid;
    final brand = DeviceInfo().brand;
    final model = DeviceInfo().model;
    final androidId = DeviceInfo().androidId;
    final di = DeviceInfo();
    final now = DateTime.now();
    final eventDay = "${now.year}${now.month}${now.day}";
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

    final params = <List<String>>[
      ["BDUSS", bduss],
      ["STOKEN", stoken],
      ["_client_id", _syncClientId ?? ""],
      ["_client_type", "2"],
      ["_client_version", _clientVersion],
      ["_timestamp", timestamp],
      ["active_timestamp", "${di.activeTimestamp}"],
      ["applist", ""],
      ["c3_aid", c3Aid],
      ["cam", ""],
      ["cmode", "1"],
      ["cuid", cuid],
      ["cuid_galaxy2", cuid],
      ["cuid_gid", ""],
      ["device_score", "0.5"],
      ["diao", ""],
      [
        "di_diordna",
        base64Url
            .encode(utf8.encode(androidId.split('').reversed.join()))
            .replaceAll('=', ''),
      ],
      [
        "dnarb",
        base64Url
            .encode(utf8.encode(brand.split('').reversed.join()))
            .replaceAll('=', ''),
      ],
      ["event_day", eventDay],
      ["extra", ""],
      ["first_install_time", "${di.firstInstallTime}"],
      ["follow_list_switch", "1"],
      ["framework_ver", "4220001"],
      ["from", "1015363f"],
      [
        "iemi",
        base64Url
            .encode(utf8.encode(phoneImei.split('').reversed.join()))
            .replaceAll('=', ''),
      ],
      ["is_teenager", "0"],
      ["last_update_time", "${di.lastUpdateTime}"],
      [
        "ledom",
        base64Url
            .encode(utf8.encode(model.split('').reversed.join()))
            .replaceAll('=', ''),
      ],
      ["lego_lib_version", "3.0.0"],
      ["naws_game_ver", "2035000"],
      ["need_cam_decrypt", "1"],
      ["need_decrypt", "1"],
      ["net_type", "1"],
      [
        "noisrev_so",
        base64Url
            .encode(
              utf8.encode(DeviceInfo().osVersion.split('').reversed.join()),
            )
            .replaceAll('=', ''),
      ],
      ["package_version", "hybrid-main-pb_1.0.302.1"],
      ["personalized_rec_switch", "1"],
      ["pn", "$pn"],
      ["pversion", "1.0.3"],
      ["q_type", "0"],
      ["sample_id", _syncSampleId ?? ''],
      ["sdk_ver", "3.36.0"],
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
      ["subapp_type", "client_fe"],
      ["tbs", tbs],
      ["uid", uid],
      ["user_agent", DeviceInfo().userAgent(_clientVersion)],
    ];
    // 需要 z_id 时添加
    final zId = await getCachedZid();
    if (zId != null && zId.isNotEmpty) {
      params.add(["z_id", zId]);
    }
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
              Uri.parse("https://tieba.baidu.com/c/u/fans/page"),
            )
            ..followRedirects = false
            ..headers.addAll({
              "Content-Type": "application/x-www-form-urlencoded",
              "User-Agent": DeviceInfo().userAgent(_clientVersion),
              "Cookie":
                  "CUID=$cuid; ka=open; cuid_galaxy2=$cuid; BDUSS=$bduss; BDUSS_BFESS=$bduss; STOKEN=$stoken; BAIDUID=${UserManager.baiduId}; BAIDUID_BFESS=${UserManager.baiduId}; need_cookie_decrypt=1; USER_JUMP=-1; TBBRAND=${DeviceInfo().model}",
              "cuid": cuid,
              "cuid_galaxy2": cuid,
              "client_logid": "${DeviceInfo.initTime}",
              "Charset": "UTF-8",
              "Accept-Encoding": "gzip, deflate",
              "Accept-Language": "zh-CN,zh;q=0.9,en-US;q=0.8,en;q=0.7",
              "Host": "tieba.baidu.com",
              "Connection": "keep-alive",
              "Sec-Fetch-Site": "same-origin",
              "Sec-Fetch-Mode": "cors",
              "Sec-Fetch-Dest": "empty",
              "Referer":
                  "https://tieba.baidu.com/mo/q/hybrid-main-usercenter/userFans/hybrid?customfullscreen=1&nonavigationbar=1&loadingSignal=1&cuid=$cuid&cuid_galaxy2=$cuid&cuid_gid=&timestamp=$refTimestamp&_client_version=$_clientVersion&_client_type=2&nohead=1&skin=default",
            })
            ..body = bodyStr;

      final response = await http.Response.fromStream(
        await client.send(request),
      );

      if (response.statusCode != 200) return null;

      final json = jsonDecode(response.body) as Map<String, dynamic>;
      final err = json["error_code"];
      if (err != null && err != "0" && err != 0) {
        _logger.w("【粉丝列表失败】error_code=$err");
        return null;
      }

      return json;
    } catch (e) {
      _logger.w("【粉丝列表异常】$e");
      return null;
    } finally {
      client.close();
    }
  }

  /// 获取用户关注列表 — GET（签名）
  static Future<Map<String, dynamic>?> fetchFollowList({
    required String bduss,
    required String stoken,
    required String tbs,
    required String uid,
    int pn = 1,
  }) async {
    final refTimestamp = "${DateTime.now().millisecondsSinceEpoch}";
    final timestamp = "${DateTime.now().millisecondsSinceEpoch}";
    final cuid = DeviceInfo().cuid;
    final phoneImei = DeviceInfo().phoneImei;
    final c3Aid = DeviceInfo().c3Aid;
    final brand = DeviceInfo().brand;
    final model = DeviceInfo().model;
    final androidId = DeviceInfo().androidId;
    final di = DeviceInfo();
    final now = DateTime.now();
    final eventDay = "${now.year}${now.month}${now.day}";

    final params = <List<String>>[
      ["BDUSS", bduss],
      ["STOKEN", stoken],
      ["_client_id", _syncClientId ?? ""],
      ["_client_type", "2"],
      ["_client_version", _clientVersion],
      ["_timestamp", timestamp],
      ["active_timestamp", "${di.activeTimestamp}"],
      ["applist", ""],
      ["c3_aid", c3Aid],
      ["cam", ""],
      ["cmode", "1"],
      ["cuid", cuid],
      ["cuid_galaxy2", cuid],
      ["cuid_gid", ""],
      ["device_score", "0.5"],
      ["diao", ""],
      [
        "di_diordna",
        base64Url
            .encode(utf8.encode(androidId.split('').reversed.join()))
            .replaceAll('=', ''),
      ],
      [
        "dnarb",
        base64Url
            .encode(utf8.encode(brand.split('').reversed.join()))
            .replaceAll('=', ''),
      ],
      ["event_day", eventDay],
      ["extra", ""],
      ["first_install_time", "${di.firstInstallTime}"],
      ["follow_list_switch", "1"],
      ["framework_ver", "4220001"],
      ["from", "1015363f"],
      [
        "iemi",
        base64Url
            .encode(utf8.encode(phoneImei.split('').reversed.join()))
            .replaceAll('=', ''),
      ],
      ["is_teenager", "0"],
      ["last_update_time", "${di.lastUpdateTime}"],
      [
        "ledom",
        base64Url
            .encode(utf8.encode(model.split('').reversed.join()))
            .replaceAll('=', ''),
      ],
      ["lego_lib_version", "3.0.0"],
      ["naws_game_ver", "2035000"],
      ["need_cam_decrypt", "1"],
      ["need_decrypt", "1"],
      ["net_type", "1"],
      [
        "noisrev_so",
        base64Url
            .encode(utf8.encode(di.osVersion.split('').reversed.join()))
            .replaceAll('=', ''),
      ],
      ["package_version", "hybrid-main-pb_1.0.302.1"],
      ["personalized_rec_switch", "1"],
      ["pn", "$pn"],
      ["pversion", "1.0.3"],
      ["q_type", "0"],
      ["sample_id", _syncSampleId ?? ''],
      ["sdk_ver", "3.36.0"],
      ["scr_dip", "${di.scrDip}"],
      ["scr_h", "${di.scrH}"],
      ["scr_w", "${di.scrW}"],
      ["start_scheme", ""],
      ["start_type", "1"],
      ["subapp_type", "client_fe"],
      ["tab", "0"],
      ["tbs", tbs],
      ["uid", uid],
      ["user_agent", DeviceInfo().userAgent(_clientVersion)],
    ];
    // 需要 z_id 时添加
    final zId = await getCachedZid();
    if (zId != null && zId.isNotEmpty) {
      params.add(["z_id", zId]);
    }

    final sign = _computeSign(params);
    params.add(["sign", sign]);

    final uri = Uri.parse(
      "https://tieba.baidu.com/c/u/follow/followList?${params.map((p) => "${p[0]}=${Uri.encodeComponent(p[1])}").join("&")}",
    );

    final client = http.Client();
    try {
      final request = http.Request('GET', uri)
        ..followRedirects = false
        ..headers.addAll({
          "Accept": "application/json, text/plain, */*",
          "User-Agent": DeviceInfo().userAgent(_clientVersion),
          "x-requested-with": "XMLHttpRequest",
          "Sec-Fetch-Site": "same-origin",
          "Sec-Fetch-Mode": "cors",
          "Sec-Fetch-Dest": "empty",
          "Referer":
              "https://tieba.baidu.com/mo/q/hybrid-main-usercenter/userFollow/hybrid?customfullscreen=1&nonavigationbar=1&loadingSignal=1&cuid=$cuid&cuid_galaxy2=$cuid&cuid_gid=&timestamp=$refTimestamp&_client_version=$_clientVersion&_client_type=2&nohead=1&skin=default",
          "Accept-Encoding": "gzip, deflate",
          "Accept-Language": "zh-CN,zh;q=0.9,en-US;q=0.8,en;q=0.7",
          "Cookie":
              "CUID=$cuid; TBBRAND=; BAIDUID=${UserManager.baiduId ?? ''}; cuid_galaxy2=$cuid; cuid_gid=; BDUSS=$bduss; BDUSS_BFESS=$bduss; STOKEN=$stoken; need_cookie_decrypt=1",
        });
      final response = await http.Response.fromStream(
        await client.send(request),
      );
      if (response.statusCode != 200) return null;
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      if (json["error_code"] != null &&
          json["error_code"] != "0" &&
          json["error_code"] != 0) {
        _logger.w("【关注列表失败】error_code=${json["error_code"]}");
        return null;
      }
      return json;
    } catch (e) {
      _logger.w("【关注列表异常】$e");
      return null;
    } finally {
      client.close();
    }
  }

  static Future<Map<String, dynamic>?> fetchLikedPosts({
    required String bduss,
    required String stoken,
    required String tbs,
    required int tabId,
    required int page,
    int rn = 20,
  }) async {
    final timestamp = "${DateTime.now().millisecondsSinceEpoch}";
    final cuid = DeviceInfo().cuid;
    final zId = await getCachedZid();
    final di = DeviceInfo();
    final now = DateTime.now();
    final eventDay = "${now.year}${now.month}${now.day}";

    final params = [
      ["BDUSS", bduss],
      ["_client_type", "2"],
      ["_client_version", _clientVersion],
      ["_client_id", _syncClientId ?? ""],
      ["cuid", cuid],
      ["cuid_galaxy2", cuid],
      ["cuid_gid", ""],
      ["c3_aid", DeviceInfo().c3Aid],
      ["stoken", stoken],
      ["tbs", tbs],
      ["tab_id", "$tabId"],
      ["pn", "$page"],
      ["rn", "$rn"],
      ["_timestamp", timestamp],
      ["from", "1015363f"],
      ["subapp_type", "hybrid"],
      ["net_type", "1"],
      ["q_type", "0"],
      ["sdk_ver", "2.34.0"],
      ["cmode", "1"],
      ["start_type", "1"],
      ["extra", ""],
      ["device_score", "0.5"],
      ["is_teenager", "0"],
      ["need_decrypt", "1"],
      ["user_agent", DeviceInfo().userAgent(_clientVersion)],
      ["scr_h", DeviceInfo().scrH.toString()],
      ["scr_w", DeviceInfo().scrW.toString()],
      ["scr_dip", DeviceInfo().scrDip.toString()],
      ["active_timestamp", "${di.activeTimestamp}"],
      ["first_install_time", "${di.firstInstallTime}"],
      ["last_update_time", "${di.lastUpdateTime}"],
      ["event_day", eventDay],
    ];
    if (zId != null && zId.isNotEmpty) params.add(["z_id", zId]);
    final sign = _computeSign(params);
    params.add(["sign", sign]);
    final bodyStr = params
        .map((p) => "${p[0]}=${Uri.encodeComponent(p[1])}")
        .join("&");

    final ua = DeviceInfo().userAgent(_clientVersion);

    final client = http.Client();
    try {
      final request =
          http.Request(
              'POST',
              Uri.parse("https://tieba.baidu.com/c/u/feed/userAgree"),
            )
            ..followRedirects = false
            ..headers.addAll({
              "Content-Type": "application/x-www-form-urlencoded;charset=UTF-8",
              "User-Agent": ua,
              "Cookie":
                  "BDUSS_BFESS=$bduss;BDUSS=$bduss;STOKEN=$stoken;BAIDUID=${UserManager.baiduId};cuid_galaxy2=$cuid;CUID=$cuid;cuid_gid=;BAIDUID_BFESS=${UserManager.baiduId};TBBRAND=;ka=open;RT=${UserManager.cookie("RT")}",
              "cuid": cuid,
              "cuid_galaxy2": cuid,
              "c3_aid": DeviceInfo().c3Aid,
              "Origin": "https://tieba.baidu.com",
              "Referer":
                  "https://tieba.baidu.com/mo/q/hybrid-main-usercenter/myLike/hybrid?nonavigationbar=1",
              "x-requested-with": "XMLHttpRequest",
              "Subapp-Type": "hybrid",
              "Sec-Fetch-Dest": "empty",
              "Sec-Fetch-Site": "same-origin",
              "Sec-Fetch-Mode": "cors",
              "Accept": "application/json, text/plain, */*",
              "Connection": "keep-alive",
              "Accept-Encoding": "gzip, deflate",
              "Accept-Language": "zh-CN,zh;q=0.9,en-US;q=0.8,en;q=0.7",
            })
            ..body = bodyStr;

      final response = await http.Response.fromStream(
        await client.send(request),
      );

      if (response.statusCode != 200) {
        return null;
      }

      final json = jsonDecode(response.body) as Map<String, dynamic>;

      // 兼容两种响应格式：hybrid API (error_code) / 旧 API (error.errno)
      final errCode = json['error_code'];
      if (errCode != null && errCode != 0 && errCode != "0") return null;
      final errno = json['error']?['errno'];
      if (errno != null && errno != 0 && errno != "0") return null;
      return json;
    } catch (e) {
      return null;
    } finally {
      client.close();
    }
  }
}
