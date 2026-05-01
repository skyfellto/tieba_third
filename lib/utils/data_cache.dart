import 'dart:async';
import '../models/post_item.dart';
import '../models/forum_item.dart';

/// 预加载数据缓存 — 登录后立即发起请求，页面打开时 await 等待结果
class DataCache {
  static Completer<List<PostItem>>? _postsCompleter;
  static Completer<List<ForumItem>>? _forumsCompleter;

  /// 传入 Future，页面层 await 此 Future 即可拿到数据
  static void preloadPosts(Future<List<PostItem>> future) {
    _postsCompleter = Completer<List<PostItem>>();
    future.then((v) => _postsCompleter!.complete(v),
        onError: (_) => _postsCompleter!.complete([]));
  }

  static void preloadForums(Future<List<ForumItem>> future) {
    _forumsCompleter = Completer<List<ForumItem>>();
    future.then((v) => _forumsCompleter!.complete(v),
        onError: (_) => _forumsCompleter!.complete([]));
  }

  /// 页面层调用：await 获取数据，页面构建时就能拿到结果
  static Future<List<PostItem>> get posts async =>
      _postsCompleter?.future ?? Future.value([]);

  static Future<List<ForumItem>> get forums async =>
      _forumsCompleter?.future ?? Future.value([]);

  static void clear() {
    _postsCompleter = null;
    _forumsCompleter = null;
  }
}
