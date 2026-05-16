import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../network/tieba_api.dart';
import '../utils/user_manager.dart';
import '../utils/user_browse_history_manager.dart';

class SearchUserResult extends StatefulWidget {
  final String keyword;
  const SearchUserResult({super.key, required this.keyword});

  @override
  State<SearchUserResult> createState() => _SearchUserResultState();
}

class _SearchUserResultState extends State<SearchUserResult>
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
  void didUpdateWidget(SearchUserResult old) {
    if (old.keyword != widget.keyword) {
      _load();
    }
    super.didUpdateWidget(old);
  }

  Future<void> _load() async {
    setState(() => _isLoading = true);
    final data = await TiebaApi.searchUser(
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
          _buildUserItem(context, _exactMatch!),
          const SizedBox(height: 8),
        ],
        if (_fuzzyMatch.isNotEmpty) ...[
          _buildSectionLabel(context, '相关用户'),
          ..._fuzzyMatch.map(
            (u) => Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: _buildUserItem(context, u),
            ),
          ),
        ],
        if (_exactMatch == null && _fuzzyMatch.isEmpty)
          const Center(
            child: Padding(
              padding: EdgeInsets.only(top: 32),
              child: Text('未找到相关用户', style: TextStyle(color: Colors.grey)),
            ),
          ),
      ],
    );
  }

  Widget _buildSectionLabel(BuildContext context, String label) {
    final theme = Theme.of(context);
    // final isFuzzy = label == '相关用户';
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

  Widget _buildUserItem(BuildContext context, Map<String, dynamic> user) {
    final id = user['id'] is int
        ? user['id'].toString()
        : user['id']?.toString() ?? '';
    final name = user['name']?.toString() ?? '';
    final userNickname = user['user_nickname']?.toString() ?? '';
    final showNickname = user['show_nickname']?.toString() ?? '';
    final portrait = user['portrait']?.toString() ?? '';
    final encryUid = user['encry_uid']?.toString() ?? '';
    final intro = user['intro']?.toString() ?? '';

    // 用户名显示：优先 show_nickname，旁边加 (user_nickname)
    String displayName;
    if (showNickname.isNotEmpty) {
      displayName = userNickname.isNotEmpty
          ? '$showNickname  ($userNickname)'
          : showNickname;
    } else {
      displayName = userNickname.isNotEmpty ? userNickname : name;
    }

    String portraitUrl(String p) => p.startsWith('http')
        ? p
        : 'http://tb.himg.baidu.com/sys/portrait/item/$p';

    final uid = encryUid.isNotEmpty ? encryUid : id;

    return Card(
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        onTap: uid.isNotEmpty
            ? () {
                UserBrowseHistoryManager.saveRecord(
                  uid: uid,
                  userName: displayName,
                  portrait: portrait,
                );
                context.push('/user/$uid');
              }
            : null,
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            children: [
              CircleAvatar(
                radius: 24,
                backgroundColor: Colors.grey[200],
                backgroundImage: portrait.isNotEmpty
                    ? NetworkImage(
                        portraitUrl(portrait),
                        headers: UserManager.avatarHeaders,
                      )
                    : null,
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      displayName,
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    if (intro.isNotEmpty)
                      Padding(
                        padding: const EdgeInsets.only(top: 2),
                        child: Text(
                          intro,
                          style: TextStyle(
                            color: Colors.grey[500],
                            fontSize: 12,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
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
