import 'dart:async';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../generated/SearchSug/SearchSugResponseData.pb.dart';
import '../generated/RecommendForumInfo.pb.dart';
import '../network/tieba_api.dart';
import '../utils/user_manager.dart';
import '../utils/search_history_manager.dart';

class SearchPage extends StatefulWidget {
  final bool disableSuggestion;
  final String? forumName;

  const SearchPage({super.key, this.disableSuggestion = false, this.forumName});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final TextEditingController _controller = TextEditingController();
  final FocusNode _focusNode = FocusNode();

  SearchSugResponseData? _sugData;
  List<SearchRecord> _history = [];
  bool _expanded = false;
  Timer? _debounce;
  bool _isLoadingSug = false;
  bool _showDeleteMode = false;
  String? _longPressKeyword;

  @override
  void initState() {
    super.initState();
    // 等 200ms 首帧渲染稳定后再弹出键盘，避免键盘动画与页面首帧冲突
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _loadHistory();
      Future.delayed(const Duration(milliseconds: 200), () {
        if (mounted) _focusNode.requestFocus();
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    _debounce?.cancel();
    super.dispose();
  }

  Future<void> _loadHistory() async {
    final history = await SearchHistoryManager.load();
    if (mounted) setState(() => _history = history);
  }

  void _onSearchChanged(String text) {
    _debounce?.cancel();
    if (widget.disableSuggestion) return;
    if (text.isEmpty) {
      setState(() => _sugData = null);
      return;
    }
    _debounce = Timer(const Duration(milliseconds: 300), () => _fetchSug(text));
  }

  Future<void> _fetchSug(String word) async {
    if (!UserManager.isLogin) return;
    setState(() => _isLoadingSug = true);
    final data = await TiebaApi.fetchSearchSug(
      bduss: UserManager.bduss!,
      stoken: UserManager.stoken!,
      word: word,
    );
    if (mounted) {
      setState(() {
        _sugData = data;
        _isLoadingSug = false;
      });
    }
  }

  void _onSearch(String keyword) {
    if (keyword.trim().isEmpty) return;
    if (_showDeleteMode) {
      setState(() {
        _showDeleteMode = false;
        _longPressKeyword = null;
      });
    }
    SearchHistoryManager.save(keyword.trim());
    _loadHistory();
    _focusNode.unfocus();
    if (widget.disableSuggestion && widget.forumName != null) {
      context.pushReplacement(
        '/forum-search?keyword=${Uri.encodeComponent(keyword.trim())}&forumName=${Uri.encodeComponent(widget.forumName!)}',
      );
    } else {
      context.push(
        '/search-result?keyword=${Uri.encodeComponent(keyword.trim())}',
      );
    }
  }

  void _onSuggestionTap(String keyword) {
    _onSearch(keyword);
  }

  void _onForumTap(int forumId, String forumName) {
    _focusNode.unfocus();
    context.push(
      '/forum/$forumId?name=${Uri.encodeComponent(forumName)}&avatar=',
    );
  }

  Future<void> _clearAll() async {
    await SearchHistoryManager.clearAll();
    _loadHistory();
  }

  Future<void> _deleteRecord(String keyword) async {
    await SearchHistoryManager.delete(keyword);
    _loadHistory();
  }

  List<SearchRecord> get _displayHistory {
    if (_expanded) return _history;
    return _history.length > 7 ? _history.sublist(0, 7) : _history;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final topPad = MediaQuery.of(context).padding.top;

    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      body: GestureDetector(
        behavior: HitTestBehavior.translucent, // 关键：允许点击穿透到子组件
        onTap: () {
          // 点击任意空白处时隐藏删除标识
          if (_showDeleteMode) {
            setState(() {
              _showDeleteMode = false;
              _longPressKeyword = null;
            });
          }
          FocusScope.of(context).unfocus();
        },
        child: Column(
          children: [
            // 顶部安全区 + 搜索框
            Container(
              padding: EdgeInsets.fromLTRB(16, topPad + 8, 16, 12),
              decoration: BoxDecoration(
                color: theme.scaffoldBackgroundColor,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.05),
                    blurRadius: 4,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Row(
                children: [
                  // 返回按钮
                  GestureDetector(
                    onTap: () => context.pop(),
                    child: Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: Icon(
                        Icons.arrow_back,
                        color: theme.iconTheme.color,
                      ),
                    ),
                  ),
                  // 搜索框
                  Expanded(
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                        color: isDark ? Colors.grey[800] : Colors.grey[100],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: TextField(
                        controller: _controller,
                        focusNode: _focusNode,
                        textAlignVertical: TextAlignVertical.center,
                        textInputAction: TextInputAction.search,
                        onChanged: _onSearchChanged,
                        onSubmitted: (v) => _onSearch(v),
                        onTap: () {
                          if (_showDeleteMode) {
                            setState(() {
                              _showDeleteMode = false;
                              _longPressKeyword = null;
                            });
                          }
                        },
                        decoration: InputDecoration(
                          hintText: '发现更多',
                          hintStyle: TextStyle(
                            color: Colors.grey[400],
                            fontSize: 15,
                          ),
                          border: InputBorder.none,
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 11,
                          ),
                          prefixIcon: Padding(
                            padding: EdgeInsets.only(
                              left: 8,
                              right: 8,
                            ), // 调整图标左右间距
                            child: Icon(
                              Icons.search,
                              color: Colors.grey[400],
                              size: 20,
                            ),
                          ),
                          prefixIconConstraints: const BoxConstraints(
                            minWidth: 0,
                            minHeight: 0, // 移除prefixIcon的默认最小高度限制
                          ),
                        ),
                        style: TextStyle(
                          fontSize: 15,
                          color: theme.textTheme.bodyLarge?.color,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  // 搜索按钮
                  GestureDetector(
                    onTap: () {
                      if (_showDeleteMode) {
                        setState(() {
                          _showDeleteMode = false;
                          _longPressKeyword = null;
                        });
                      }
                      _onSearch(_controller.text);
                    },
                    child: Text(
                      '搜索',
                      style: TextStyle(
                        // color: theme.primaryColor,
                        color: isDark ? Colors.white : Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // 内容区域
            Expanded(child: _buildContent(theme, isDark)),
          ],
        ),
      ),
    );
  }

  Widget _buildContent(ThemeData theme, bool isDark) {
    // 有搜索联想数据时显示联想列表
    if (_sugData != null && _controller.text.isNotEmpty) {
      return _buildSuggestions(theme, isDark);
    }
    // 加载中
    if (_isLoadingSug) {
      return const Center(child: CircularProgressIndicator());
    }
    // 搜索历史
    return _buildHistory(theme, isDark);
  }

  // ========== 搜索联想 ==========

  Widget _buildSuggestions(ThemeData theme, bool isDark) {
    final sug = _sugData!;
    final hasForumCard = sug.hasForumCard();
    final hasTextList = sug.list.isNotEmpty;

    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      children: [
        // 贴吧联想（forumCard）
        if (hasForumCard) _buildForumSugItem(sug.forumCard, theme),
        if (hasForumCard && hasTextList) const Divider(height: 1),
        // 文字联想
        if (hasTextList) ...sug.list.map((w) => _buildTextSugItem(w, theme)),
        if (!hasForumCard && !hasTextList)
          Padding(
            padding: const EdgeInsets.only(top: 24),
            child: Center(
              child: Text('无搜索结果', style: TextStyle(color: Colors.grey[400])),
            ),
          ),
      ],
    );
  }

  Widget _buildForumSugItem(RecommendForumInfo forumCard, ThemeData theme) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: CircleAvatar(
        radius: 20,
        backgroundColor: Colors.grey[200],
        backgroundImage: forumCard.avatar.isNotEmpty
            ? NetworkImage(forumCard.avatar, headers: _avatarHeaders)
            : null,
      ),
      title: Text(
        forumCard.forumName,
        style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      subtitle: forumCard.slogan.isNotEmpty
          ? Text(
              forumCard.slogan,
              style: TextStyle(color: Colors.grey[500], fontSize: 12),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            )
          : null,
      onTap: () => _onForumTap(forumCard.forumId.toInt(), forumCard.forumName),
    );
  }

  Widget _buildTextSugItem(String word, ThemeData theme) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Icon(Icons.search, color: Colors.grey[400], size: 20),
      title: Text(
        word,
        style: TextStyle(fontSize: 15, color: theme.textTheme.bodyLarge?.color),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      onTap: () => _onSuggestionTap(word),
    );
  }

  // ========== 搜索历史 ==========

  Widget _buildHistory(ThemeData theme, bool isDark) {
    if (_history.isEmpty) {
      return Center(
        child: Text('暂无搜索历史', style: TextStyle(color: Colors.grey[400])),
      );
    }

    final displayed = _displayHistory;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // 头部
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
          child: Row(
            children: [
              Text(
                '搜索历史',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: theme.textTheme.bodyLarge?.color,
                ),
              ),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  if (_showDeleteMode) {
                    setState(() {
                      _showDeleteMode = false;
                      _longPressKeyword = null;
                    });
                  }
                  _clearAll();
                },
                child: Text(
                  '清除全部',
                  style: TextStyle(
                    color: theme.brightness == Brightness.dark
                        ? Colors.purple
                        : const Color.fromARGB(255, 7, 61, 188),
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          ),
        ),
        // 历史词条
        Expanded(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: displayed.map((r) {
                    final isLongPressed =
                        _showDeleteMode && _longPressKeyword == r.keyword;
                    return _buildHistoryChip(r, isLongPressed, theme, isDark);
                  }).toList(),
                ),
              ),
              if (_history.length > 7)
                GestureDetector(
                  onTap: () => setState(() => _expanded = !_expanded),
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Icon(
                      _expanded ? Icons.expand_less : Icons.expand_more,
                      color: Colors.grey[400],
                    ),
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildHistoryChip(
    SearchRecord record,
    bool isLongPressed,
    ThemeData theme,
    bool isDark,
  ) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        GestureDetector(
          onTap: () => _onSearch(record.keyword),
          onLongPress: () {
            setState(() {
              _showDeleteMode = true;
              _longPressKeyword = record.keyword;
            });
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
            decoration: BoxDecoration(
              color: isDark ? Colors.grey[800] : Colors.grey[100],
              borderRadius: BorderRadius.circular(16),
            ),
            child: Text(
              record.keyword,
              style: TextStyle(
                fontSize: 14,
                color: theme.textTheme.bodyLarge?.color,
              ),
            ),
          ),
        ),
        if (isLongPressed)
          Positioned(
            top: -4,
            right: -4,
            child: GestureDetector(
              onTap: () {
                _deleteRecord(record.keyword);
                setState(() {
                  _showDeleteMode = false;
                  _longPressKeyword = null;
                });
              },
              child: Container(
                width: 18,
                height: 18,
                decoration: BoxDecoration(
                  color: Colors.grey[600],
                  shape: BoxShape.circle,
                  boxShadow: [
                    // 添加轻微阴影，提升层次感
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.2),
                      blurRadius: 2,
                      offset: const Offset(0, 1),
                    ),
                  ],
                ),
                child: const Icon(Icons.close, size: 14, color: Colors.white),
              ),
            ),
          ),
      ],
    );
  }
}

final Map<String, String> _avatarHeaders = const {
  "Referer": "https://tieba.baidu.com",
};
