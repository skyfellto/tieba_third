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
                onTap: () {
                  final f = _forums[index];
                  context.push('/forum/${f.forumId}?name=${Uri.encodeComponent(f.forumName)}&avatar=${Uri.encodeComponent(f.avatar)}');
                },
                onSign: () {
                  // TODO: 签到操作
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
