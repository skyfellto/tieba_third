import 'dart:math';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tieba_third/utils/toast_utils.dart';
import '../widgets/forum_grid_tile.dart';
import '../models/forum_item.dart';
import '../models/forum_browse_record.dart';
import '../network/tieba_api.dart';
import '../utils/data_cache.dart';
import '../utils/user_manager.dart';
import '../utils/forum_browse_history_manager.dart';
import '../utils/personalization_manager.dart';
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
  List<ForumBrowseRecord> _forumRecords = [];
  bool _forumCollapsed = false;

  static const String _storageKey = 'tieba_grid_layout';
  static const String _forumCollapsedKey = 'tieba_forum_collapsed';

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    _initLayoutConfig();
    _loadForumsFromCache();
    _loadForums();
    _loadForumRecords();
    _initForumCollapsed();
  }

  Future<void> _loadForumsFromCache() async {
    final cached = await DataCache.forums;
    if (cached.isNotEmpty && mounted) setState(() => _forums = cached);
  }

  Future<void> _initLayoutConfig() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _isDoubleColumn = prefs.getBool(_storageKey) ?? false;
      _configLoaded = true;
    });
  }

  Future<void> _loadForumRecords() async {
    final records = await ForumBrowseHistoryManager.loadRecords();
    if (mounted) setState(() => _forumRecords = records);
  }

  Future<void> _initForumCollapsed() async {
    final prefs = await SharedPreferences.getInstance();
    setState(
      () => _forumCollapsed = prefs.getBool(_forumCollapsedKey) ?? false,
    );
  }

  Future<void> _toggleForumCollapsed() async {
    setState(() => _forumCollapsed = !_forumCollapsed);
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_forumCollapsedKey, _forumCollapsed);
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
          showInfo(context, '签到失败，请稍后重试');
        }
      }
    } catch (e) {
      // debugPrint("【签到异常】$e");
      if (mounted) {
        showInfo(context, '签到失败，请稍后重试');
      }
    } finally {
      if (mounted) setState(() => _signingForums.remove(forum.forumId));
    }
  }

  /// 一键签到（优先批量，失败的吧逐个补签）
  Future<void> _handleSignAll() async {
    if (_isSigningAll) return;
    setState(() => _isSigningAll = true);
    try {
      var unsigned = _forums.where((f) => !f.isSign).toList();
      if (unsigned.isEmpty) {
        if (mounted) {
          showInfo(context, '今天已经全部签到过了');
        }
        return;
      }

      int success = 0;

      // 第一步：批量签到
      {
        final forumIds = unsigned.map((f) => f.forumId).join(',');
        final result = await TiebaApi.mSign(
          bduss: UserManager.bduss!,
          stoken: UserManager.stoken!,
          tbs: UserManager.tbs ?? '',
          forumIds: forumIds,
          userId: UserManager.userId ?? '',
          baiduId: UserManager.baiduId!,
        );

        if (result != null) {
          final info = result['info'];
          if (info is List) {
            // 一键签到接口调用成功，立即提示
            if (mounted) {
              showInfo(context, '一键签到成功');
            }
            for (final item in info) {
              if (item is Map) {
                final fid = item['forum_id']?.toString();
                if (fid != null && item['signed'] == '1') {
                  success++;
                  final idx = _forums.indexWhere((f) => f.forumId == fid);
                  if (idx != -1) {
                    _forums[idx] = _forums[idx].copyWith(isSign: true);
                    if (mounted) setState(() {});
                  }
                }
              }
            }
          }
        }
      }

      // 第二步：剩余的补签
      unsigned = _forums.where((f) => !f.isSign).toList();
      if (unsigned.isNotEmpty) {
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
                final idx = _forums.indexWhere(
                  (f) => f.forumId == forum.forumId,
                );
                if (idx != -1) {
                  _forums[idx] = _forums[idx].copyWith(isSign: true);
                }
              }
            }
          } catch (_) {}

          if (i < unsigned.length - 1) {
            await Future.delayed(
              Duration(milliseconds: 700 + Random().nextInt(1300)),
            );
          }
        }
      }

      if (mounted) {
        setState(() {});
        final failed = _forums.where((f) => !f.isSign).length;
        String msg;
        if (success == 0 && failed > 0) {
          msg = '一键签到失败，剩余 $failed 个未签到';
        } else if (failed == 0) {
          msg = '一键签到成功，共 $success 个吧';
        } else {
          msg = '共成功签到 $success 个吧，剩余 $failed 个未签到';
        }
        showInfo(context, msg);
      }
    } finally {
      if (mounted) setState(() => _isSigningAll = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    _loadForumRecords();

    if (!_configLoaded) {
      return const Scaffold(body: Center(child: CircularProgressIndicator()));
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("贴吧", style: TextStyle(fontWeight: FontWeight.bold)),
        actions: [
          if (UserManager.isLogin && !_isSigningAll)
            TextButton.icon(
              onPressed: _handleSignAll,
              icon: const Icon(Icons.task_alt, size: 20),
              label: const Text("一键签到", style: TextStyle(fontSize: 13)),
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
                child: CircularProgressIndicator(strokeWidth: 2),
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
      body: _forums.isEmpty
          ? ListView()
          : RefreshIndicator(onRefresh: _refreshAll, child: _buildForumList()),
    );
  }

  Future<void> _refreshAll() async {
    await Future.wait([_loadForums(), _loadForumRecords()]);
  }

  Widget _buildPassedForums() {
    if (_forumRecords.isEmpty || !PersonalizationManager.showPassedForums) return const SizedBox.shrink();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  "经过贴吧",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Theme.of(context).textTheme.bodyLarge?.color,
                  ),
                ),
              ),
              IconButton(
                icon: Icon(
                  _forumCollapsed
                      ? Icons.keyboard_arrow_up
                      : Icons.keyboard_arrow_down,
                  color: Theme.of(context).iconTheme.color,
                  size: 22,
                ),
                onPressed: _toggleForumCollapsed,
                splashRadius: 16,
                constraints: const BoxConstraints(),
                padding: EdgeInsets.zero,
              ),
            ],
          ),
        ),
        if (!_forumCollapsed)
          SizedBox(
            height: 32,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 12),
              itemCount: _forumRecords.length,
              itemBuilder: (context, index) {
                final r = _forumRecords[index];
                return GestureDetector(
                  onTap: () => context.push(
                    '/forum/${r.fid}?name=${Uri.encodeComponent(r.forumName)}&avatar=${Uri.encodeComponent(r.forumAvatar ?? '')}',
                  ),
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    padding: const EdgeInsets.fromLTRB(4, 6, 12, 6),
                    decoration: BoxDecoration(
                      color: Theme.of(context).brightness == Brightness.dark
                          ? const Color(0xFF3A3E5C)
                          : Colors.grey[100],
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CircleAvatar(
                          radius: 14,
                          backgroundColor: Colors.grey[300],
                          backgroundImage:
                              r.forumAvatar != null && r.forumAvatar!.isNotEmpty
                              ? NetworkImage(r.forumAvatar!)
                              : null,
                        ),
                        const SizedBox(width: 6),
                        Text(
                          r.forumName,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: TextStyle(
                            fontSize: 12,
                            color: Theme.of(context).textTheme.bodyLarge?.color,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
      ],
    );
  }

  Widget _buildForumList() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildPassedForums(),
        const Padding(
          padding: EdgeInsets.fromLTRB(16, 8, 16, 4),
          child: Text(
            "关注的吧",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
          ),
        ),
        Expanded(
          child: _isDoubleColumn
              ? GridView.builder(
                  padding: const EdgeInsets.fromLTRB(8, 0, 8, 16),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 3.2,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                  ),
                  itemCount: _forums.length,
                  itemBuilder: (context, index) {
                    final forum = _forums[index];
                    return ForumGridTile(
                      forum: forum,
                      isSigned: forum.isSign,
                      isSigning: _signingForums.contains(forum.forumId),
                      onSignTap: () => _handleSignForum(forum),
                    );
                  },
                )
              : ListView.builder(
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
      ],
    );
  }
}
