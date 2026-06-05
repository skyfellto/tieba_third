import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:go_router/go_router.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../network/tieba_api.dart';
import '../utils/user_manager.dart';
import '../utils/emoticon_helper.dart';
import '../widgets/text_with_emoji.dart';
import '../widgets/message_error_state.dart';
import '../widgets/message_list_footer.dart';

/// @我的消息页面
class AtMeMessagePage extends StatefulWidget {
  const AtMeMessagePage({super.key});

  @override
  State<AtMeMessagePage> createState() => _AtMeMessagePageState();
}

class _AtMeMessagePageState extends State<AtMeMessagePage> {
  final List<Map<String, dynamic>> _messages = [];
  bool _isLoading = false;
  bool _loadingMore = false;
  bool _hasMore = true;
  bool _isError = false;
  int _pn = 1;
  String _tid = '0';
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
    _loadData(refresh: true);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
            _scrollController.position.maxScrollExtent - 100 &&
        !_loadingMore &&
        _hasMore &&
        !_isError) {
      _loadData(refresh: false);
    }
  }

  Future<void> _loadData({required bool refresh}) async {
    if (!UserManager.isLogin) return;

    if (refresh) {
      if (_isLoading) return;
      setState(() {
        _isLoading = true;
        _isError = false;
      });
    } else {
      if (_loadingMore) return;
      setState(() => _loadingMore = true);
    }

    try {
      final data = await TiebaApi.fetchAtMe(
        bduss: UserManager.bduss!,
        stoken: UserManager.stoken!,
        uid: UserManager.userId ?? '',
        pn: refresh ? 1 : _pn,
        tid: refresh ? '0' : _tid,
      );

      if (!mounted) return;

      if (data == null) {
        if (refresh) {
          setState(() {
            _isLoading = false;
            _isError = _messages.isEmpty;
          });
        } else {
          setState(() => _loadingMore = false);
        }
        return;
      }

      final rawList = data['at_list'];
      final list = (rawList is List) ? rawList : <dynamic>[];
      final page = data['page'] as Map<String, dynamic>? ?? {};
      final hasMore = page['has_more'] == 1;

      setState(() {
        if (refresh) _messages.clear();
        for (final item in list) {
          _messages.add(item as Map<String, dynamic>);
        }
        _hasMore = hasMore;
        if (list.isNotEmpty) {
          final last = _messages.last;
          _tid = (last['thread_id'] as String? ?? '0');
          _pn = refresh ? 2 : _pn + 1;
        }
        _isLoading = false;
        _loadingMore = false;
        _isError = false;
      });
    } catch (_) {
      if (mounted) {
        setState(() {
          _isLoading = false;
          _loadingMore = false;
          if (_messages.isEmpty) _isError = true;
        });
      }
    }
  }

  Future<void> _onRefresh() async {
    _pn = 1;
    _tid = '0';
    await _loadData(refresh: true);
  }

  void _onRetry() {
    _loadData(refresh: _messages.isEmpty);
  }

  // ───── 数据提取 ─────

  /// 安全解析 type 字段（JSON 中可能是 int 或 String）
  int _getItemType(Map<String, dynamic> item) {
    final v = item['type'];
    if (v is int) return v;
    if (v is String) return int.tryParse(v) ?? 2;
    return 2;
  }

  String _getUserName(Map<String, dynamic> item) {
    final replyer = item['replyer'] as Map<String, dynamic>?;
    if (replyer == null) return '百度用户';
    final nameShow = replyer['name_show'] as String? ?? '';
    final name = replyer['name'] as String? ?? '';
    return nameShow.isNotEmpty ? nameShow : (name.isNotEmpty ? name : '百度用户');
  }

  String _getAvatarUrl(Map<String, dynamic> item) {
    final replyer = item['replyer'] as Map<String, dynamic>?;
    if (replyer == null) return '';
    final portrait = replyer['portrait'] as String? ?? '';
    if (portrait.isEmpty) return '';
    return 'https://gss0.bdstatic.com/6LZ1dD3d1sgCo2Kml5_Y_D3/sys/portrait/item/$portrait';
  }

  int _getReplyerUid(Map<String, dynamic> item) {
    final replyer = item['replyer'] as Map<String, dynamic>?;
    if (replyer == null) return 0;
    final id = replyer['id'] as String? ?? '0';
    return int.tryParse(id) ?? 0;
  }

  /// 获取 @内容列表
  /// type=3（回复@）：索引 2
  /// type=2（帖子@）：索引 1
  List<dynamic>? _getAtContent(Map<String, dynamic> item) {
    final type = _getItemType(item);
    final floorInfo = item['new_floor_info'] as List<dynamic>?;
    if (floorInfo == null || floorInfo.isEmpty) return null;
    final idx = type == 3 ? 2 : 1;
    if (idx >= floorInfo.length) return null;
    final entry = floorInfo[idx] as Map<String, dynamic>?;
    if (entry == null) return null;
    return entry['content'] as List<dynamic>?;
  }

  /// 获取被回复内容列表（仅 type=3）
  List<dynamic>? _getQuoteContent(Map<String, dynamic> item) {
    final type = _getItemType(item);
    if (type != 3) return null;
    final floorInfo = item['new_floor_info'] as List<dynamic>?;
    if (floorInfo == null || floorInfo.length < 2) return null;
    final entry = floorInfo[1] as Map<String, dynamic>?;
    if (entry == null) return null;
    return entry['content'] as List<dynamic>?;
  }

  /// 获取帖子标题文本
  String _getThreadTitle(Map<String, dynamic> item) {
    final floorInfo = item['new_floor_info'] as List<dynamic>?;
    if (floorInfo == null || floorInfo.isEmpty) return '';
    final first = floorInfo[0] as Map<String, dynamic>?;
    if (first == null) return '';
    final content = first['content'] as List<dynamic>?;
    if (content == null || content.isEmpty) return '';
    final texts = content
        .map((c) => c as Map<String, dynamic>)
        .where((c) {
          final t = c['type'] as String? ?? '0';
          return ['0', '1', '4', '9'].contains(t);
        })
        .map((c) => c['text'] as String? ?? '')
        .where((t) => t.isNotEmpty)
        .join(' ');
    return texts;
  }

  String _getForumName(Map<String, dynamic> item) {
    return item['fname'] as String? ?? '';
  }

  bool _isType3(Map<String, dynamic> item) {
    return _getItemType(item) == 3;
  }

  String? _getThreadId(Map<String, dynamic> item) {
    final tid = item['thread_id'] as String? ?? '0';
    return tid != '0' ? tid : null;
  }

  String? _getPostId(Map<String, dynamic> item) {
    final pid = item['post_id'] as String? ?? '0';
    return pid != '0' ? pid : null;
  }

  // ───── UI ─────

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.pop(),
        ),
        title: const Text('@我的', style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    if (_isLoading && _messages.isEmpty) {
      return const Center(child: CircularProgressIndicator());
    }
    if (_isError && _messages.isEmpty) return MessageErrorState(onRetry: _onRetry);
    if (!_isLoading && _messages.isEmpty) return _buildEmptyState();

    return RefreshIndicator(
      onRefresh: _onRefresh,
      child: ListView.builder(
        controller: _scrollController,
        physics: const AlwaysScrollableScrollPhysics(),
        padding: const EdgeInsets.symmetric(vertical: 8),
        itemCount: _messages.length + (_loadingMore || !_hasMore ? 1 : 0),
        itemBuilder: (context, index) {
          if (index == _messages.length) {
            return MessageListFooter(isLoading: _loadingMore);
          }
          return _buildMessageItem(_messages[index]);
        },
      ),
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.alternate_email, size: 64, color: Colors.grey[300]),
          const SizedBox(height: 12),
          const Text(
            '暂无 @我的消息',
            style: TextStyle(color: Colors.grey, fontSize: 14),
          ),
        ],
      ),
    );
  }

  Widget _buildMessageItem(Map<String, dynamic> item) {
    final userName = _getUserName(item);
    final avatarUrl = _getAvatarUrl(item);
    final displayText = item['display_text'] as String? ?? '';
    final forumName = _getForumName(item);
    final atContent = _getAtContent(item);
    final quoteContent = _getQuoteContent(item);
    final threadTitle = _getThreadTitle(item);
    final isType3 = _isType3(item);

    return GestureDetector(
      onTap: () => _onItemTap(item),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ── 头部：头像 + 用户名 + displayText ──
            Row(
              children: [
                GestureDetector(
                  onTap: () => _onUserTap(item),
                  child: CircleAvatar(
                    radius: 18,
                    backgroundColor: Colors.grey[200],
                    backgroundImage: avatarUrl.isNotEmpty
                        ? NetworkImage(avatarUrl)
                        : null,
                    child: avatarUrl.isEmpty
                        ? const Icon(Icons.person, size: 18, color: Colors.grey)
                        : null,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () => _onUserTap(item),
                        child: Text(
                          userName,
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      if (displayText.isNotEmpty)
                        Padding(
                          padding: const EdgeInsets.only(top: 1),
                          child: Text(
                            displayText,
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey[500],
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
            const SizedBox(height: 8),

            // ── @内容区 ──
            if (atContent != null && atContent.isNotEmpty)
              _buildAtContent(atContent),

            // ── 被回复内容区（仅 type=3） ──
            if (isType3 && quoteContent != null && quoteContent.isNotEmpty)
              Padding(
                padding: const EdgeInsets.only(top: 6),
                child: _buildQuoteContent(quoteContent),
              ),

            // ── 关联帖子区（仅标题，不显示图片） ──
            if (threadTitle.isNotEmpty)
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: _buildThreadSection(threadTitle),
              ),

            // ── 底部：吧名 ──
            if (forumName.isNotEmpty)
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Text(
                  forumName,
                  style: TextStyle(fontSize: 12, color: Colors.grey[500]),
                ),
              ),
            const Divider(height: 16),
          ],
        ),
      ),
    );
  }

  /// @内容渲染（富文本：文字 + 表情 + @用户）
  Widget _buildAtContent(List<dynamic> contents) {
    final spans = _buildContentSpans(contents);
    if (spans.isEmpty) return const SizedBox.shrink();
    return Text.rich(
      TextSpan(children: spans),
      maxLines: 4,
      overflow: TextOverflow.ellipsis,
      style: const TextStyle(fontSize: 13),
    );
  }

  /// 构建富文本 InlineSpan 列表（文字 + 表情图片 + @用户高亮可点击）
  List<InlineSpan> _buildContentSpans(
    List<dynamic> contents, {
    TextStyle? textStyle,
    bool highlightMentions = true,
  }) {
    final spans = <InlineSpan>[];
    final defaultStyle = textStyle ?? const TextStyle(fontSize: 13);

    for (final item in contents) {
      final map = item as Map<String, dynamic>;
      final type = map['type'] as String? ?? '0';

      // 表情（type=2，名称在 c 字段）
      if (type == '2') {
        final emojiName = map['c'] as String? ?? '';
        if (emojiName.isNotEmpty) {
          final imgPath = EmoticonHelper.getImagePath(emojiName);
          if (imgPath != null) {
            spans.add(
              WidgetSpan(
                alignment: PlaceholderAlignment.middle,
                child: Image.asset(imgPath, width: 16, height: 16),
              ),
            );
          } else {
            spans.add(TextSpan(text: emojiName, style: defaultStyle));
          }
        }
        continue;
      }

      // @用户高亮（type=4，带 uid）
      if (type == '4') {
        final text = map['text'] as String? ?? '';
        final uidStr = map['uid'] as String? ?? '0';
        if (text.isNotEmpty) {
          final uid = int.tryParse(uidStr) ?? 0;
          // 仅以 @ 开头的才是真正 @提及，需要高亮+可点击
          final isAtMention = text.startsWith('@') && uid > 0;
          spans.add(
            TextSpan(
              text: text,
              style: isAtMention && highlightMentions
                  ? defaultStyle.copyWith(
                      color: Theme.of(context).brightness == Brightness.dark
                          ? Colors.lightBlue.shade200
                          : Colors.blue,
                    )
                  : defaultStyle,
              recognizer: isAtMention
                  ? (TapGestureRecognizer()
                      ..onTap = () {
                        if (uid > 0 && context.mounted) {
                          context.push('/user/$uid');
                        }
                      })
                  : null,
            ),
          );
        }
        continue;
      }

      // 图片（type=3，有 src 字段）
      if (type == '3') {
        final src = map['src'] as String? ?? '';
        if (src.isNotEmpty) {
          spans.add(
            WidgetSpan(
              alignment: PlaceholderAlignment.middle,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 2),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(4),
                  child: CachedNetworkImage(
                    imageUrl: src,
                    width: 60,
                    height: 60,
                    fit: BoxFit.cover,
                    placeholder: (_, _) => Container(
                      color: Colors.grey[200],
                      width: 60,
                      height: 60,
                    ),
                    errorWidget: (_, _, _) => Container(
                      color: Colors.grey[200],
                      width: 60,
                      height: 60,
                      child: const Icon(Icons.broken_image, color: Colors.grey),
                    ),
                  ),
                ),
              ),
            ),
          );
        }
        continue;
      }

      // 文字（type 0, 1, 9 等）
      if (['0', '1', '9'].contains(type)) {
        final text = map['text'] as String? ?? '';
        if (text.isNotEmpty) {
          spans.add(TextSpan(text: text, style: defaultStyle));
        }
      }
    }

    return spans;
  }

  /// 被回复内容区（左侧蓝色竖线 + 灰色内容）
  Widget _buildQuoteContent(List<dynamic> contents) {
    final spans = _buildContentSpans(
      contents,
      textStyle: TextStyle(fontSize: 12, color: Colors.grey[500]),
      highlightMentions: false,
    );

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
        border: Border(
          left: BorderSide(
            color: Theme.of(context).brightness == Brightness.dark
                ? Colors.white38
                : Colors.blue.withValues(alpha: 0.4),
            width: 3,
          ),
        ),
      ),
      child: spans.isNotEmpty
          ? Text.rich(
              TextSpan(children: spans),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 12, color: Colors.grey[500]),
            )
          : const SizedBox.shrink(),
    );
  }

  /// 关联帖子区（仅标题，不显示图片，最多两行）
  Widget _buildThreadSection(String title) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Theme.of(context).brightness == Brightness.dark
            ? const Color(0xFF2C2E42)
            : Colors.grey[100],
        borderRadius: BorderRadius.circular(8),
      ),
      child: TextWithEmoji(
        title,
        maxLines: 2,
        emojiSize: 16,
        style: const TextStyle(fontSize: 14),
      ),
    );
  }

  // ───── 导航 ─────

  void _onItemTap(Map<String, dynamic> item) {
    final tid = _getThreadId(item);
    if (tid == null) return;
    final pid = _getPostId(item);
    final queryParams = <String, String>{};
    if (pid != null) queryParams['pid'] = pid;
    final uri = Uri(
      path: '/post/$tid',
      queryParameters: queryParams.isNotEmpty ? queryParams : null,
    );
    context.push(uri.toString());
  }

  void _onUserTap(Map<String, dynamic> item) {
    final uid = _getReplyerUid(item);
    if (uid > 0) context.push('/user/$uid');
  }
}
