part of 'tieba_api.dart';

class _SearchApi {
  /// 搜索贴吧 — GET
  static Future<Map<String, dynamic>?> searchForum(
    String keyword, {
    String? bduss,
  }) async {
    final uri = Uri.parse(
      "https://tieba.baidu.com/mo/q/search/forum?word=${Uri.encodeComponent(keyword)}",
    );
    final client = http.Client();
    try {
      final request = http.Request('GET', uri)
        ..headers.addAll(_searchHeaders(bduss))
        ..headers["Referer"] =
            "https://tieba.baidu.com/mo/q/hybrid/search?keyword=${Uri.encodeComponent(keyword)}";
      final response = await http.Response.fromStream(
        await client.send(request),
      );
      if (response.statusCode != 200) return null;
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      if (json["no"] != 0) return null;
      return json["data"] as Map<String, dynamic>?;
    } catch (e) {
      _logger.w("【搜索贴吧异常】$e");
      return null;
    } finally {
      client.close();
    }
  }

  /// 搜索帖子 — GET
  static Future<Map<String, dynamic>?> searchThread({
    required String keyword,
    int page = 1,
    String? bduss,
  }) async {
    final uri = Uri.parse(
      "https://tieba.baidu.com/mo/q/search/thread"
      "?word=${Uri.encodeComponent(keyword)}"
      "&pn=$page&st=5&tt=1&ct=1&is_use_zonghe=1&cv=99.9.101",
    );
    final client = http.Client();
    try {
      final request = http.Request('GET', uri)
        ..headers.addAll(_searchHeaders(bduss))
        ..headers["Referer"] =
            "https://tieba.baidu.com/mo/q/hybrid/search?keyword=${Uri.encodeComponent(keyword)}";
      final response = await http.Response.fromStream(
        await client.send(request),
      );
      if (response.statusCode != 200) return null;
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      if (json["no"] != 0) return null;
      return json["data"] as Map<String, dynamic>?;
    } catch (e) {
      _logger.w("【搜索帖子异常】$e");
      return null;
    } finally {
      client.close();
    }
  }

  /// 搜索用户 — GET
  static Future<Map<String, dynamic>?> searchUser(
    String keyword, {
    String? bduss,
  }) async {
    final uri = Uri.parse(
      "https://tieba.baidu.com/mo/q/search/user?word=${Uri.encodeComponent(keyword)}",
    );
    final client = http.Client();
    try {
      final request = http.Request('GET', uri)
        ..headers.addAll(_searchHeaders(bduss))
        ..headers["Referer"] =
            "https://tieba.baidu.com/mo/q/hybrid/search?keyword=${Uri.encodeComponent(keyword)}";
      final response = await http.Response.fromStream(
        await client.send(request),
      );
      if (response.statusCode != 200) return null;
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      if (json["no"] != 0) return null;
      return json["data"] as Map<String, dynamic>?;
    } catch (e) {
      _logger.w("【搜索用户异常】$e");
      return null;
    } finally {
      client.close();
    }
  }

  /// 吧内搜索
  static Future<Map<String, dynamic>?> searchForumThreads({
    required String keyword,
    required String fname,
    int page = 1,
    int rn = 20,
    int st = 1,
    int tt = 2,
    String? bduss,
  }) async {
    final uri = Uri.parse(
      "https://tieba.baidu.com/mo/q/search/thread"
      "?word=${Uri.encodeComponent(keyword)}"
      "&pn=$page&rn=$rn&fname=${Uri.encodeComponent(fname)}"
      "&st=$st&tt=$tt&ct=2&cv=$_clientVersion",
    );
    final client = http.Client();
    try {
      final request = http.Request('GET', uri)
        ..headers.addAll(_searchHeaders(bduss))
        ..headers["Referer"] =
            "https://tieba.baidu.com/mo/q/hybrid/search?keyword=${Uri.encodeComponent(keyword)}";
      final response = await http.Response.fromStream(
        await client.send(request),
      );
      if (response.statusCode != 200) return null;
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      if (json["no"] != 0) return null;
      return json["data"] as Map<String, dynamic>?;
    } catch (e) {
      _logger.w("【吧内搜索异常】$e");
      return null;
    } finally {
      client.close();
    }
  }
}
