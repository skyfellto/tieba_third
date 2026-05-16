import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../network/tieba_api.dart';
import '../utils/user_manager.dart';

class SearchForumResult extends StatefulWidget {
  final String keyword;
  const SearchForumResult({super.key, required this.keyword});

  @override
  State<SearchForumResult> createState() => _SearchForumResultState();
}

class _SearchForumResultState extends State<SearchForumResult>
    with AutomaticKeepAliveClientMixin {
  Map<String, dynamic>? _exactMatch;
  List<Map<String, dynamic>> _fuzzyMatch = [];
  bool _isLoading = true;

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    _load();
  }

  @override
  void didUpdateWidget(SearchForumResult old) {
    if (old.keyword != widget.keyword) {
      _load();
    }
    super.didUpdateWidget(old);
  }

  Future<void> _load() async {
    setState(() => _isLoading = true);
    final data = await TiebaApi.searchForum(
      widget.keyword,
      bduss: UserManager.bduss,
    );
    if (!mounted) return;
    setState(() {
      final em = data?['exactMatch'];
      if (em is List && em.isNotEmpty) {
        _exactMatch = em[0] as Map<String, dynamic>?;
      } else if (em is Map) {
        _exactMatch = em as Map<String, dynamic>?;
      } else {
        _exactMatch = null;
      }
      final fm = data?['fuzzyMatch'];
      _fuzzyMatch = fm is List ? fm.cast<Map<String, dynamic>>() : [];
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    if (_isLoading) {
      return const Center(child: CircularProgressIndicator());
    }
    return ListView(
      padding: const EdgeInsets.all(12),
      children: [
        if (_exactMatch != null) ...[
          _buildSectionLabel(context, '推荐'),
          _buildForumItem(context, _exactMatch!, isExact: true),
          const SizedBox(height: 8),
        ],
        if (_fuzzyMatch.isNotEmpty) ...[
          _buildSectionLabel(context, '相关吧'),
          ..._fuzzyMatch.map(
            (f) => Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: _buildForumItem(context, f, isExact: false),
            ),
          ),
        ],
        if (_exactMatch == null && _fuzzyMatch.isEmpty)
          const Center(
            child: Padding(
              padding: EdgeInsets.only(top: 32),
              child: Text('未找到相关贴吧', style: TextStyle(color: Colors.grey)),
            ),
          ),
      ],
    );
  }

  Widget _buildSectionLabel(BuildContext context, String label) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        children: [
          // const Spacer(),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
            decoration: BoxDecoration(
              color: theme.primaryColor.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              label,
              style: TextStyle(
                color: theme.brightness == Brightness.dark
                    ? Colors.white
                    : Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildForumItem(
    BuildContext context,
    Map<String, dynamic> forum, {
    required bool isExact,
  }) {
    final theme = Theme.of(context);
    final forumId = forum['forum_id'] is int
        ? forum['forum_id']
        : int.tryParse(forum['forum_id']?.toString() ?? '') ?? 0;
    final forumName = forum['forum_name']?.toString() ?? '';
    final avatar = forum['avatar']?.toString() ?? '';
    final slogan = forum['slogan']?.toString() ?? '';
    final postNum = forum['post_num']?.toString() ?? '0';
    final concernNum = forum['concern_num']?.toString() ?? '0';

    return Card(
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        onTap: forumId > 0
            ? () => context.push(
                '/forum/$forumId?name=${Uri.encodeComponent(forumName)}&avatar=${Uri.encodeComponent(avatar)}',
              )
            : null,
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            children: [
              CircleAvatar(
                radius: 24,
                backgroundColor: Colors.grey[200],
                backgroundImage: avatar.isNotEmpty
                    ? NetworkImage(
                        avatar,
                        headers: const {"Referer": "https://tieba.baidu.com"},
                      )
                    : null,
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      forumName,
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    if (isExact && slogan.isNotEmpty)
                      Padding(
                        padding: const EdgeInsets.only(top: 1),
                        child: Text(
                          slogan,
                          style: TextStyle(
                            color: theme.brightness == Brightness.dark
                                ? Colors.grey[500]
                                : Colors.grey[800],
                            fontSize: 12,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    Padding(
                      padding: const EdgeInsets.only(top: 2),
                      child: Text(
                        '关注：$concernNum  帖子：$postNum',
                        style: TextStyle(
                          color: theme.textTheme.bodyMedium?.color,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
