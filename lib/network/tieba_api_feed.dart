part of 'tieba_api.dart';

class _FeedApi {
  static Future<List<PostItem>> fetchPersonalizedThreads({
    required String bduss,
    required String stoken,
    int page = 1,
    int loadType = 1,
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

    final reqData = PersonalizedRequestData(
      common: common,
      loadType: loadType,
      pn: page,
      pageThreadCount: 15,
      tagCode: 0,
      needTags: 0,
      qType: 1,
      needForumlist: 0,
      newNetType: 1,
      scrW: DeviceInfo().scrW,
      scrH: DeviceInfo().scrH,
      scrDip: DeviceInfo().scrDip,
    );

    final request = PersonalizedRequest(data: reqData);
    final bodyBytes = request.writeToBuffer();

    final uri = Uri.parse("$_baseHost/c/f/excellent/personalized?cmd=309264");

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

      if (response.statusCode != 200) {
        return [];
      }

      final pb = PersonalizedResponse.fromBuffer(response.bodyBytes);
      if (pb.error.hasErrorCode() && pb.error.errorCode != 0) {
        return [];
      }

      final threadList = pb.data.threadList;
      if (threadList.isEmpty) {
        return [];
      }

      final posts = threadList
          .where((t) => !t.hasAlaInfo())
          .map((t) => PostItem.fromThreadInfo(t))
          .where((p) => p.title.isNotEmpty && p.tid.isNotEmpty)
          .toList();
      return posts;
    } catch (e) {
      _logger.w("【调试】请求异常：$e");
      return [];
    } finally {
      client.close();
    }
  }

  static Future<List<ForumItem>> fetchForumRecommend({
    required String bduss,
    required String stoken,
  }) async {
    final reqData = ForumGuideRequestData(sortType: 1, callFrom: 4);
    final request = ForumGuideRequest(data: reqData);
    final bodyBytes = request.writeToBuffer();

    final uri = Uri.parse(
      "$_baseHost/c/f/forum/forumGuide?cmd=309683&format=protobuf",
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

      if (response.statusCode != 200) return [];

      final pb = ForumGuideResponse.fromBuffer(response.bodyBytes);
      if (pb.error.errorCode != 0) return [];

      return pb.data.likeForum
          .map(
            (f) => ForumItem(
              forumId: f.forumId.toString(),
              forumName: f.forumName,
              avatar: f.avatar,
              levelId: f.levelId,
              isSign: f.isSign == 1,
            ),
          )
          .toList();
    } catch (_) {
      return [];
    } finally {
      client.close();
    }
  }
}
