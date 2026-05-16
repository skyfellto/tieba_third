import 'dart:async';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../generated/SearchSug/SearchSugResponseData.pb.dart';
import '../generated/RecommendForumInfo.pb.dart';
import '../network/tieba_api.dart';
import '../utils/user_manager.dart';
import '../widgets/search_forum_result.dart';
import '../widgets/search_thread_result.dart';
import '../widgets/search_user_result.dart';

class SearchResultPage extends StatefulWidget {
  final String keyword;
  const SearchResultPage({super.key, required this.keyword});

  @override
  State<SearchResultPage> createState() => _SearchResultPageState();
}

class _SearchResultPageState extends State<SearchResultPage>
    with SingleTickerProviderStateMixin {
  late final TextEditingController _controller;
  late final TabController _tabController;
  final FocusNode _focusNode = FocusNode();

  SearchSugResponseData? _sugData;
  Timer? _debounce;
  bool _isLoadingSug = false;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.keyword);
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    _tabController.dispose();
    _focusNode.dispose();
    _debounce?.cancel();
    super.dispose();
  }

  void _onSearchChanged(String text) {
    _debounce?.cancel();
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

  void _onSearch([String? keyword]) {
    final kw = (keyword ?? _controller.text).trim();
    if (kw.isEmpty) return;
    _focusNode.unfocus();
    setState(() => _sugData = null);
    context.pushReplacement(
      '/search-result?keyword=${Uri.encodeComponent(kw)}',
    );
  }

  void _onForumTap(int forumId, String forumName) {
    _focusNode.unfocus();
    context.push(
      '/forum/$forumId?name=${Uri.encodeComponent(forumName)}&avatar=',
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    // final topPad = MediaQuery.of(context).padding.top;
    final hasSug = _sugData != null && _controller.text.isNotEmpty;

    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      body: Column(
        children: [
          // 顶部安全区 + 搜索框
          Container(
            padding: EdgeInsets.fromLTRB(16, 8, 16, 12),
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
            child: SafeArea(
              bottom: false,
              child: Row(
                children: [
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
                        textInputAction: TextInputAction.search,
                        onChanged: _onSearchChanged,
                        onSubmitted: (v) => _onSearch(v),
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
                        ),
                        style: TextStyle(
                          fontSize: 15,
                          color: theme.textTheme.bodyLarge?.color,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  GestureDetector(
                    onTap: () => _onSearch(),
                    child: Text(
                      '搜索',
                      style: TextStyle(
                        color: isDark ? Colors.white : Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // 输入联想时覆盖 Tab 栏和结果
          if (hasSug)
            Expanded(child: _buildSuggestions(theme, isDark))
          else ...[
            // Tab 栏
            Container(
              color: theme.scaffoldBackgroundColor,
              child: TabBar(
                controller: _tabController,
                labelColor: theme.brightness == Brightness.dark
                    ? Colors.white
                    : Colors.black,
                unselectedLabelColor: theme.brightness == Brightness.dark
                    ? Colors.grey
                    : Colors.grey[100],
                indicatorColor: theme.primaryColor,
                labelStyle: const TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 15,
                ),
                unselectedLabelStyle: TextStyle(fontWeight: FontWeight.normal),
                tabs: const [
                  Tab(text: '贴吧'),
                  Tab(text: '帖子'),
                  Tab(text: '用户'),
                ],
              ),
            ),
            // Tab 内容区
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  SearchForumResult(keyword: widget.keyword),
                  SearchThreadResult(keyword: widget.keyword),
                  SearchUserResult(keyword: widget.keyword),
                ],
              ),
            ),
          ],
        ],
      ),
    );
  }

  // ========== 搜索联想 ==========

  Widget _buildSuggestions(ThemeData theme, bool isDark) {
    final sug = _sugData!;
    final hasForumCard = sug.hasForumCard();
    final hasTextList = sug.list.isNotEmpty;

    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      children: [
        if (hasForumCard) _buildForumSugItem(sug.forumCard, theme),
        if (hasForumCard && hasTextList) const Divider(height: 1),
        if (hasTextList) ...sug.list.map((w) => _buildTextSugItem(w, theme)),
        if (!hasForumCard && !hasTextList && _isLoadingSug)
          const Padding(
            padding: EdgeInsets.only(top: 24),
            child: Center(child: CircularProgressIndicator()),
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
            ? NetworkImage(
                forumCard.avatar,
                headers: const {"Referer": "https://tieba.baidu.com"},
              )
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
      onTap: () => _onSearch(word),
    );
  }
}
