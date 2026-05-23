import 'package:flutter/foundation.dart';

/// Optimistic like/unlike manager with request queue and rollback.
///
/// Each page creates its own instance. Toggle returns new state immediately
/// for optimistic UI, processes requests in background, and rolls back on failure.
class LikeManager {
  final Map<String, _LikeItem> _items = {};

  /// Toggle like for [key]. Returns (newIsLiked, newAgreeNum) for immediate UI update.
  ///
  /// [request] receives opType (0=like, 1=unlike), returns true on success.
  /// [onUpdate] is called when background processing changes state — page should setState.
  /// The [isRollback] parameter on [onUpdate] is true when a request failed and state was reverted.
  (bool isLiked, int agreeNum) toggle({
    required String key,
    required bool serverLiked,
    required int serverAgreeNum,
    required Future<bool> Function(int opType) request,
    required void Function(bool isRollback) onUpdate,
  }) {
    final item = _items.putIfAbsent(key, () => _LikeItem(serverLiked, serverAgreeNum));
    // 注：不在此覆盖 serverLiked，初始状态由 sync() 负责

    final opType = item.isLiked ? 1 : 0;
    debugPrint("【LikeManager.toggle】key=$key opType=$opType queue=${item._queue} serverLiked=${item.serverLiked}");
    item._queue.add(opType);
    _processQueue(key, request, onUpdate);
    return (item.isLiked, item.agreeNum);
  }

  /// Whether [key] is currently shown as liked (includes optimistic state).
  bool isLiked(String key) => _items[key]?.isLiked ?? false;

  /// Current displayed agreeNum for [key] (includes optimistic changes).
  int agreeNum(String key) => _items[key]?.agreeNum ?? 0;

  /// Whether the manager has state for [key].
  bool hasKey(String key) => _items.containsKey(key);

  /// Sync server-confirmed state for [key]. Only applies when queue is idle
  /// (no pending operations). Call this after loading fresh data from the server.
  void sync(String key, {required bool serverLiked, required int serverAgreeNum}) {
    final item = _items.putIfAbsent(key, () => _LikeItem(serverLiked, serverAgreeNum));
    if (item._queue.isEmpty) {
      item.serverLiked = serverLiked;
      item.serverAgreeNum = serverAgreeNum;
    }
  }

  /// Remove stored state for [key].
  void remove(String key) => _items.remove(key);

  /// Clear all stored state.
  void clear() => _items.clear();

  Future<void> _processQueue(
    String key,
    Future<bool> Function(int opType) request,
    void Function(bool isRollback) onUpdate,
  ) async {
    final item = _items[key];
    if (item == null || item._processing || item._queue.isEmpty) return;
    item._processing = true;

    while (item._queue.isNotEmpty) {
      final opType = item._queue.first;
      item._serial++;
      final serial = item._serial;

      final success = await request(opType);

      if (!_items.containsKey(key) || serial != item._serial) return;

      if (success) {
        item.serverLiked = opType == 0;
        item.serverAgreeNum += opType == 0 ? 1 : -1;
        item._queue.removeAt(0);
        if (item._queue.isNotEmpty) {
          onUpdate(false);
        }
      } else {
        item._queue.clear();
        item._processing = false;
        onUpdate(true);
        return;
      }
    }

    item._processing = false;
  }
}

class _LikeItem {
  bool serverLiked;
  int serverAgreeNum;
  final List<int> _queue = [];
  bool _processing = false;
  int _serial = 0;

  _LikeItem(this.serverLiked, this.serverAgreeNum);

  bool get isLiked {
    bool r = serverLiked;
    for (final _ in _queue) {
      r = !r;
    }
    return r;
  }

  int get agreeNum {
    int r = serverAgreeNum;
    for (final op in _queue) {
      r += op == 0 ? 1 : -1;
    }
    return r;
  }
}
