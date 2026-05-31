import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../network/tieba_api.dart';
import '../utils/user_manager.dart';
import '../utils/user_browse_history_manager.dart';

class FansPage extends StatefulWidget {
  final String uid;
  final String? userName;

  const FansPage({super.key, required this.uid, this.userName});

  @override
  State<FansPage> createState() => _FansPageState();
}

class _FansPageState extends State<FansPage> {
  List<Map<String, dynamic>> _fans = [];
  bool _loading = false;
  bool _loadingMore = false;
  bool _hasMore = true;
  int _pn = 1;
  bool _hasError = false;

  @override
  void initState() {
    super.initState();
    _loadData(refresh: true);
  }

  Future<void> _loadData({bool refresh = false}) async {
    if (!UserManager.isLogin) return;
    if (refresh) {
      _pn = 1;
      _hasMore = true;
      _hasError = false;
    }
    final isRefresh = refresh;
    if (isRefresh) {
      if (_loading) return;
      setState(() => _loading = true);
    } else {
      if (_loadingMore || !_hasMore) return;
      setState(() => _loadingMore = true);
    }

    final result = await TiebaApi.fetchFansList(
      bduss: UserManager.bduss!,
      stoken: UserManager.stoken!,
      tbs: UserManager.tbs ?? '',
      uid: widget.uid,
      pn: _pn,
    );

    if (!mounted) return;

    if (result == null) {
      setState(() {
        _loading = false;
        _loadingMore = false;
        _hasError = true;
      });
      return;
    }

    final userList = result["user_list"];
    final pageData = result["page"] as Map<String, dynamic>?;
    final hasMore = pageData?["has_more"] == 1 || pageData?["has_more"] == "1";

    setState(() {
      _loading = false;
      _loadingMore = false;
      if (isRefresh) {
        _fans = (userList is List)
            ? userList.cast<Map<String, dynamic>>()
            : const [];
      } else {
        if (userList is List) {
          _fans.addAll(userList.cast<Map<String, dynamic>>());
        }
      }
      _hasMore = hasMore;
      _pn++;
      _hasError = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('TA 的粉丝'), centerTitle: true),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    if (_loading && _fans.isEmpty) {
      return const Center(child: CircularProgressIndicator());
    }
    if (_hasError && _fans.isEmpty) {
      return Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('网络不给力，小稽直叹气', style: TextStyle(fontSize: 15)),
            const SizedBox(height: 4),
            const Text(
              '戳这里重试',
              style: TextStyle(fontSize: 13, color: Colors.grey),
            ),
            const SizedBox(height: 12),
            TextButton(
              onPressed: () => _loadData(refresh: true),
              child: const Text('重试'),
            ),
          ],
        ),
      );
    }
    if (_fans.isEmpty) {
      return const Center(
        child: Text('暂无粉丝', style: TextStyle(color: Colors.grey, fontSize: 15)),
      );
    }
    return NotificationListener<ScrollNotification>(
      onNotification: (n) {
        if (n is ScrollUpdateNotification &&
            !_loadingMore &&
            _hasMore &&
            n.metrics.pixels >= n.metrics.maxScrollExtent - 200) {
          _loadData();
        }
        return false;
      },
      child: RefreshIndicator(
        onRefresh: () => _loadData(refresh: true),
        child: ListView.builder(
          padding: const EdgeInsets.symmetric(vertical: 8),
          itemCount:
              _fans.length +
              (_loadingMore || (!_hasMore && _fans.isNotEmpty) ? 1 : 0),
          itemBuilder: (context, index) {
            if (index >= _fans.length) {
              if (_loadingMore) {
                return const Padding(
                  padding: EdgeInsets.all(16),
                  child: Center(
                    child: SizedBox(
                      width: 16,
                      height: 16,
                      child: CircularProgressIndicator(strokeWidth: 2),
                    ),
                  ),
                );
              }
              return const Padding(
                padding: EdgeInsets.all(16),
                child: Center(
                  child: Text(
                    '没有更多了',
                    style: TextStyle(color: Colors.grey, fontSize: 13),
                  ),
                ),
              );
            }
            return _buildFanItem(_fans[index]);
          },
        ),
      ),
    );
  }

  Widget _buildFanItem(Map<String, dynamic> fan) {
    final uid = _s(fan["id"]);
    final nameShow = _s(fan["name_show"]);
    final name = _s(fan["name"]);
    final displayName = nameShow.isNotEmpty ? nameShow : name;
    final portrait = _s(fan["portrait"]);
    final followFrom = _s(fan["follow_from"]);

    return ListTile(
      leading: CircleAvatar(
        radius: 20,
        backgroundColor: Colors.grey[300],
        backgroundImage: portrait.isNotEmpty
            ? NetworkImage(
                'https://gss0.bdstatic.com/6LZ1dD3d1sgCo2Kml5_Y_D3/sys/portrait/item/$portrait',
                headers: UserManager.avatarHeaders,
              )
            : null,
      ),
      title: Text(
        displayName,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
      ),
      subtitle: followFrom.isNotEmpty
          ? Text(
              followFrom,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 13, color: Colors.grey[500]),
            )
          : null,
      onTap: () {
        if (uid.isNotEmpty) {
          UserBrowseHistoryManager.saveRecord(
            uid: uid,
            userName: displayName,
            portrait: portrait,
          );
          context.push('/user/$uid');
        }
      },
    );
  }

  String _s(dynamic v) => v?.toString() ?? '';
}
