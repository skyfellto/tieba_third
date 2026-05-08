import 'dart:math';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/forum_item.dart';
import '../network/tieba_api.dart';
import '../utils/data_cache.dart';
import '../utils/user_manager.dart';
import '../constants/app_colors.dart';
import '../widgets/followed_forum_tile.dart';

class TiebaPage extends StatefulWidget {
  const TiebaPage({super.key});

  @override
  State<TiebaPage> createState() => _TiebaPageState();
}

class _TiebaPageState extends State<TiebaPage>
    with AutomaticKeepAliveClientMixin {
  bool _configLoaded = false;
  bool _isDoubleColumn = true;
  List<ForumItem> _forums = [];
  bool _isSigningAll = false;
  final Set<String> _signingForums = {};

  static const String _storageKey = 'tieba_grid_layout';

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    _initLayoutConfig();
    _loadForumsFromCache();
    _loadForums();
  }

  Future<void> _loadForumsFromCache() async {
    final cached = await DataCache.forums;
    if (cached.isNotEmpty && mounted) setState(() => _forums = cached);
  }

  Future<void> _initLayoutConfig() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _isDoubleColumn = prefs.getBool(_storageKey) ?? true;
      _configLoaded = true;
    });
  }

  Future<void> _saveLayoutConfig() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_storageKey, _isDoubleColumn);
  }

  Future<void> _loadForums() async {
    if (!UserManager.isLogin) return;
    try {
      final forums = await TiebaApi.fetchForumRecommend(
        bduss: UserManager.bduss!,
        stoken: UserManager.stoken!,
      );
      forums.sort((a, b) {
        int levelDiff = b.levelId - a.levelId;
        if (levelDiff != 0) {
          return levelDiff;
        }
        return a.forumName.compareTo(b.forumName);
      });
      if (mounted) setState(() => _forums = forums);
    } catch (_) {}
  }

  /// 单独签到
  Future<void> _handleSignForum(ForumItem forum) async {
    if (_signingForums.contains(forum.forumId) || forum.isSign) return;
    setState(() => _signingForums.add(forum.forumId));
    try {
      final result = await TiebaApi.signForum(
        bduss: UserManager.bduss!,
        stoken: UserManager.stoken!,
        tbs: UserManager.tbs ?? '',
        forumId: forum.forumId,
        forumName: forum.forumName,
      );
      if (mounted) {
        if (result != null) {
          // debugPrint(
          //   "【签到成功】${forum.forumName} user_info=${result["user_info"]}",
          // );
          setState(() {
            final idx = _forums.indexWhere((f) => f.forumId == forum.forumId);
            if (idx != -1) {
              _forums[idx] = _forums[idx].copyWith(isSign: true);
            }
          });
        } else {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(const SnackBar(content: Text('签到失败，请稍后重试')));
        }
      }
    } catch (e) {
      // debugPrint("【签到异常】$e");
      if (mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(const SnackBar(content: Text('签到失败，请稍后重试')));
      }
    } finally {
      if (mounted) setState(() => _signingForums.remove(forum.forumId));
    }
  }

  /// 一键签到（逐个单独签到，每次间隔随机延迟）
  Future<void> _handleSignAll() async {
    if (_isSigningAll) return;
    setState(() => _isSigningAll = true);
    try {
      final unsigned = _forums.where((f) => !f.isSign).toList();
      if (unsigned.isEmpty) {
        if (mounted) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(const SnackBar(content: Text('今天已经全部签到过了')));
        }
        return;
      }

      int success = 0;
      for (int i = 0; i < unsigned.length; i++) {
        final forum = unsigned[i];
        try {
          final r = await TiebaApi.signForum(
            bduss: UserManager.bduss!,
            stoken: UserManager.stoken!,
            tbs: UserManager.tbs ?? '',
            forumId: forum.forumId,
            forumName: forum.forumName,
          );
          if (r != null) {
            success++;
            if (mounted) {
              final idx = _forums.indexWhere((f) => f.forumId == forum.forumId);
              if (idx != -1) _forums[idx] = _forums[idx].copyWith(isSign: true);
            }
            // debugPrint(
            //   "【一键签到】${forum.forumName} 成功 ($success/${unsigned.length})",
            // );
          } else {
            // debugPrint("【一键签到】${forum.forumName} 失败");
          }
        } catch (e) {
          // debugPrint("【一键签到异常】${forum.forumName}: $e");
        }

        // 非最后一个时，间隔随机延迟 0.7~2 秒
        if (i < unsigned.length - 1) {
          final delay = 700 + Random().nextInt(1300);
          // debugPrint("【一键签到】等待 ${delay}ms 后签下一个");
          await Future.delayed(Duration(milliseconds: delay));
        }
      }

      if (mounted) {
        setState(() {});
        final failed = unsigned.length - success;
        if (failed > 0) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('共成功签到 $success 个吧，失败 $failed 个吧')),
          );
        }
      }
    } finally {
      if (mounted) setState(() => _isSigningAll = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    if (!_configLoaded) {
      return const Scaffold(body: Center(child: CircularProgressIndicator()));
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "贴吧",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: AppColors.moonlightGradient[1],
        actions: [
          // 一键签到
          if (UserManager.isLogin && !_isSigningAll)
            TextButton.icon(
              onPressed: _handleSignAll,
              icon: const Icon(Icons.task_alt, size: 20, color: Colors.white),
              label: const Text(
                "一键签到",
                style: TextStyle(color: Colors.white, fontSize: 13),
              ),
              style: TextButton.styleFrom(
                padding: const EdgeInsets.only(right: 4),
              ),
            )
          else if (_isSigningAll)
            const Padding(
              padding: EdgeInsets.only(right: 12),
              child: SizedBox(
                width: 20,
                height: 20,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                ),
              ),
            ),
          IconButton(
            icon: Icon(_isDoubleColumn ? Icons.view_agenda : Icons.grid_view),
            onPressed: () {
              setState(() => _isDoubleColumn = !_isDoubleColumn);
              _saveLayoutConfig();
            },
          ),
        ],
      ),
      body: _forums.isEmpty ? ListView() : _buildForumList(),
    );
  }

  Widget _buildForumList() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.fromLTRB(16, 12, 16, 4),
          child: Text(
            "关注的吧",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
          ),
        ),
        // TODO: "经过的吧" 横向列表（后续接入 GetHistoryForum）
        Expanded(
          child: RefreshIndicator(
            onRefresh: _loadForums,
            child: ListView.builder(
              padding: const EdgeInsets.only(bottom: 16),
              itemCount: _forums.length,
              itemBuilder: (context, index) => FollowedForumTile(
                forum: _forums[index],
                isSigning: _signingForums.contains(_forums[index].forumId),
                onTap: () {
                  final f = _forums[index];
                  context.push(
                    '/forum/${f.forumId}?name=${Uri.encodeComponent(f.forumName)}&avatar=${Uri.encodeComponent(f.avatar)}',
                  );
                },
                onSign: () {
                  _handleSignForum(_forums[index]);
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
