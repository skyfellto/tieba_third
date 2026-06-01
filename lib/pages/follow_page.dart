import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../network/tieba_api.dart';
import '../utils/user_manager.dart';
import '../utils/user_browse_history_manager.dart';

class FollowPage extends StatefulWidget {
  final String uid;
  final String? userName;

  const FollowPage({super.key, required this.uid, this.userName});

  @override
  State<FollowPage> createState() => _FollowPageState();
}

class _FollowPageState extends State<FollowPage> {
  List<Map<String, dynamic>> _followList = [];
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

    final result = await TiebaApi.fetchFollowList(
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

    final followList = result["follow_list"];
    final hasMore = result["has_more"] == 1 || result["has_more"] == "1";

    setState(() {
      _loading = false;
      _loadingMore = false;
      if (isRefresh) {
        _followList = (followList is List)
            ? followList.cast<Map<String, dynamic>>()
            : const [];
      } else {
        if (followList is List) {
          _followList.addAll(followList.cast<Map<String, dynamic>>());
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
      appBar: AppBar(title: const Text('TA 的关注'), centerTitle: true),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    if (_loading && _followList.isEmpty) {
      return const Center(child: CircularProgressIndicator());
    }
    if (_hasError && _followList.isEmpty) {
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
    if (_followList.isEmpty) {
      return const Center(
        child: Text('暂无关注', style: TextStyle(color: Colors.grey, fontSize: 15)),
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
              _followList.length +
              (_loadingMore || (!_hasMore && _followList.isNotEmpty) ? 1 : 0),
          itemBuilder: (context, index) {
            if (index >= _followList.length) {
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
            return _buildFollowItem(_followList[index]);
          },
        ),
      ),
    );
  }

  Widget _buildFollowItem(Map<String, dynamic> item) {
    final uid = _s(item["id"]);
    final nameShow = _s(item["name_show"]);
    final name = _s(item["name"]);
    final displayName = nameShow.isNotEmpty ? nameShow : name;
    final portraitH = _s(item["portraith"]);
    final portrait = portraitH.isNotEmpty ? portraitH : _s(item["portrait"]);
    final followFrom = _s(item["follow_from"]);
    final intro = _s(item["intro"]);

    String? subtitle;
    if (followFrom.isNotEmpty && intro.isNotEmpty) {
      subtitle = "$followFrom $intro";
    } else if (followFrom.isNotEmpty) {
      subtitle = followFrom;
    } else if (intro.isNotEmpty) {
      subtitle = intro;
    }

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
      subtitle: subtitle != null
          ? Text(
              subtitle,
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