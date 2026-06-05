import 'dart:async';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:share_plus/share_plus.dart';
import 'package:tieba_third/utils/toast_utils.dart';
import '../models/post_item.dart';
import '../network/tieba_api.dart';
import '../utils/like_manager.dart';
import '../utils/user_manager.dart';
import '../widgets/image_viewer.dart';
import '../widgets/post_card.dart';

/// 吧内搜索结果页（含排序/筛选 + 帖子列表 + 触底加载）
class ForumSearchResultPage extends StatefulWidget {
  final String keyword;
  final String forumName;

  const ForumSearchResultPage({
    super.key,
    required this.keyword,
    required this.forumName,
  });

  @override
  State<ForumSearchResultPage> createState() => _ForumSearchResultPageState();
}

class _ForumSearchResultPageState extends State<ForumSearchResultPage> {
  late final TextEditingController _controller;
  final FocusNode _focusNode = FocusNode();

  // 排序：1=时间倒序, 2=相关性排序
  int _sort = 1;
  final ValueNotifier<int?> _sortListenable = ValueNotifier<int?>(1);
  // 筛选：2=全部, 1=只看主题贴
  int _filter = 2;

  final List<PostItem> _posts = [];
  final LikeManager _likeManager = LikeManager();
  bool _isLoading = false;
  bool _loadingMore = false;
  bool _hasMore = true;
  int _page = 1;
  static const int _pageSize = 20;

  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.keyword);
    _scrollController.addListener(_onScroll);
    _load(refresh: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    _sortListenable.dispose();
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_loadingMore || !_hasMore) return;
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 200) {
      _load(refresh: false);
    }
  }

  Future<void> _load({required bool refresh}) async {
    if (!UserManager.isLogin) return;
    if (refresh) {
      if (_isLoading) return;
      setState(() => _isLoading = true);
    } else {
      if (_loadingMore) return;
      setState(() => _loadingMore = true);
    }

    final data = await TiebaApi.searchForumThreads(
      keyword: _controller.text.trim(),
      fname: widget.forumName,
      page: refresh ? 1 : _page + 1,
      rn: _pageSize,
      st: _sort,
      tt: _filter,
      bduss: UserManager.bduss,
    );

    if (!mounted) return;

    if (data == null) {
      setState(() {
        _isLoading = false;
        _loadingMore = false;
      });
      return;
    }

    final list = data['post_list'];
    final rawItems = list is List
        ? list.cast<Map<String, dynamic>>()
        : <Map<String, dynamic>>[];
    final items = rawItems.map(_toPostItem).toList();
    for (final p in items) {
      _likeManager.sync(
        p.tid,
        serverLiked: p.isLiked,
        serverAgreeNum: int.tryParse(p.agreeNum) ?? 0,
      );
    }
    final hasMore = data['has_more'] == 1;

    setState(() {
      _isLoading = false;
      _loadingMore = false;
      if (refresh) {
        _posts.clear();
        _page = 1;
      } else {
        _page++;
      }
      _posts.addAll(items);
      _hasMore = hasMore;
    });
  }

  void _onSearch([String? keyword]) {
    final kw = (keyword ?? _controller.text).trim();
    if (kw.isEmpty) return;
    _focusNode.unfocus();
    context.pushReplacement(
      '/forum-search?keyword=${Uri.encodeComponent(kw)}'
      '&forumName=${Uri.encodeComponent(widget.forumName)}',
    );
  }

  void _onRefresh() {
    setState(() {
      _page = 1;
      _hasMore = true;
    });
    _load(refresh: true);
  }

  String _extractPortraitHash(String p) {
    if (p.startsWith('http')) {
      final idx = p.indexOf('/sys/portrait/item/');
      if (idx >= 0) {
        final hash = p.substring(idx + '/sys/portrait/item/'.length);
        final qIdx = hash.indexOf('?');
        return qIdx >= 0 ? hash.substring(0, qIdx) : hash;
      }
      return '';
    }
    return p;
  }

  List<String> _extractImages(Map<String, dynamic> raw) {
    final media = raw['media'];
    if (media is! List) return [];
    final urls = <String>[];
    for (final m in media) {
      if (m is! Map) continue;
      final url =
          (m['big_pic']?.toString() ?? m['small_pic']?.toString() ?? '');
      if (url.isNotEmpty) urls.add(url);
    }
    return urls;
  }

  PostItem _toPostItem(Map<String, dynamic> raw) {
    final tid = raw['tid']?.toString() ?? '';
    final title = raw['title']?.toString() ?? '';
    final content = raw['content']?.toString() ?? '';
    final time = raw['time'] is int ? raw['time'] : 0;
    final user = raw['user'] as Map<String, dynamic>?;
    final userName =
        user?['show_nickname']?.toString() ??
        user?['user_name']?.toString() ??
        '';
    final portrait = user?['portrait']?.toString() ?? '';
    final userId = user?['user_id'] is int ? '${user!['user_id']}' : '';
    final likeNum = raw['like_num'] is int ? raw['like_num'] : 0;
    final replyNum = raw['post_num'] is int ? raw['post_num'] : 0;

    String? lastTime;
    if (time > 0) {
      final dt = DateTime.fromMillisecondsSinceEpoch(time * 1000);
      lastTime =
          '${dt.year}-${dt.month.toString().padLeft(2, '0')}-${dt.day.toString().padLeft(2, '0')} ${dt.hour.toString().padLeft(2, '0')}:${dt.minute.toString().padLeft(2, '0')}';
    }

    return PostItem(
      tid: tid,
      title: title,
      authorName: userName,
      authorId: userId,
      authorPortrait: _extractPortraitHash(portrait),
      forumId: '',
      forumName: widget.forumName,
      replyNum: replyNum > 0 ? '$replyNum' : '',
      agreeNum: likeNum > 0 ? '$likeNum' : '',
      lastTime: lastTime ?? '',
      abstractText: content,
      imageUrls: _extractImages(raw),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      body: Column(
        children: [
          // 顶部搜索框
          Container(
            padding: EdgeInsets.fromLTRB(
              16,
              MediaQuery.of(context).padding.top + 8,
              16,
              12,
            ),
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
                GestureDetector(
                  onTap: () => context.pop(),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: Icon(Icons.arrow_back, color: theme.iconTheme.color),
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
                      onSubmitted: (v) => _onSearch(v),
                      decoration: InputDecoration(
                        hintText: widget.forumName,
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
                          padding: const EdgeInsets.only(left: 8, right: 8),
                          child: Icon(
                            Icons.search,
                            color: Colors.grey[400],
                            size: 20,
                          ),
                        ),
                        prefixIconConstraints: const BoxConstraints(
                          minWidth: 0,
                          minHeight: 0,
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
          // 排序/筛选栏
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              color: theme.scaffoldBackgroundColor,
              border: Border(
                bottom: BorderSide(
                  color: isDark ? Colors.grey[800]! : Colors.grey[200]!,
                ),
              ),
            ),
            child: Row(
              children: [
                // 排序下拉框
                Container(
                  height: 36,
                  // padding: const EdgeInsets.symmetric(horizontal: 12),
                  decoration: BoxDecoration(
                    // color: isDark ? Colors.grey[800] : Colors.grey[100],
                    color: theme.scaffoldBackgroundColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton2<int>(
                      valueListenable: _sortListenable,
                      isDense: true,
                      dropdownStyleData: DropdownStyleData(
                        decoration: BoxDecoration(
                          color: isDark ? Colors.grey[800] : Colors.white,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        offset: const Offset(-16, 4),
                        useRootNavigator: true,
                        width: 120,
                      ),
                      buttonStyleData: const ButtonStyleData(
                        height: 36,
                        width: null,
                        padding: EdgeInsets.zero, // 按钮无内边距
                      ),
                      // 使用 customButton 自定义按钮布局
                      customButton: ValueListenableBuilder<int?>(
                        valueListenable: _sortListenable,
                        builder: (context, value, _) {
                          return Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                value == 1 ? '时间倒序' : '相关性排序',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: theme.textTheme.bodyLarge?.color,
                                ),
                              ),
                              const Icon(Icons.arrow_drop_down),
                            ],
                          );
                        },
                      ),

                      items: const [
                        DropdownItem<int>(value: 1, child: Text('时间倒序')),
                        DropdownItem<int>(value: 2, child: Text('相关性排序')),
                      ],
                      onChanged: (v) {
                        if (v == null) return;
                        _sortListenable.value = v;
                        setState(() {
                          _sort = v;
                          _page = 1;
                          _hasMore = true;
                        });
                        _load(refresh: true);
                      },
                    ),
                  ),
                ),
                const Spacer(),
                // 筛选：全部 | 只看主题贴
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    GestureDetector(
                      onTap: () {
                        if (_filter == 2) return;
                        setState(() {
                          _filter = 2;
                          _page = 1;
                          _hasMore = true;
                        });
                        _load(refresh: true);
                      },
                      child: Text(
                        '全部',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: _filter == 2
                              ? FontWeight.w800
                              : FontWeight.normal,
                          color: _filter == 2
                              // ? theme.primaryColor
                              ? (theme.brightness == Brightness.dark
                                    ? Colors.white
                                    : Colors.black)
                              : (theme.brightness == Brightness.dark
                                    ? Colors.grey
                                    : Colors.grey[100]),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        '|',
                        style: TextStyle(
                          fontSize: 14,
                          color: theme.textTheme.bodySmall?.color,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        if (_filter == 1) return;
                        setState(() {
                          _filter = 1;
                          _page = 1;
                          _hasMore = true;
                        });
                        _load(refresh: true);
                      },
                      child: Text(
                        '只看主题贴',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: _filter == 1
                              ? FontWeight.w800
                              : FontWeight.normal,
                          color: _filter == 1
                              ? (theme.brightness == Brightness.dark
                                    ? Colors.white
                                    : Colors.black)
                              : (theme.brightness == Brightness.dark
                                    ? Colors.grey
                                    : Colors.grey[100]),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // 结果列表
          Expanded(child: _buildResultList(theme, isDark)),
        ],
      ),
    );
  }

  Widget _buildResultList(ThemeData theme, bool isDark) {
    if (_isLoading && _posts.isEmpty) {
      return const Center(child: CircularProgressIndicator());
    }

    if (_posts.isEmpty) {
      return Center(
        child: Text(
          '未找到相关帖子',
          style: TextStyle(color: Colors.grey[400], fontSize: 15),
        ),
      );
    }

    return RefreshIndicator(
      onRefresh: () async => _onRefresh(),
      child: Column(
        children: [
          if (_isLoading && _posts.isNotEmpty)
            const LinearProgressIndicator(minHeight: 2),
          Expanded(
            child: ListView.builder(
              controller: _scrollController,
              padding: const EdgeInsets.all(12),
              itemCount: _posts.length + (_loadingMore ? 1 : 0),
              itemBuilder: (context, index) {
                if (index == _posts.length) {
                  return const Padding(
                    padding: EdgeInsets.symmetric(vertical: 16),
                    child: Center(
                      child: SizedBox(
                        width: 20,
                        height: 20,
                        child: CircularProgressIndicator(strokeWidth: 2),
                      ),
                    ),
                  );
                }
                final p = _posts[index];
                final tid = p.tid;
                return PostCard(
                  post: p,
                  showForum: false,
                  isLiked: _likeManager.isLiked(tid),
                  onImageTap: (images, i) =>
                      ImageViewer.show(context, images, index: i),
                  onBodyTap: (_) => context.push('/post/$tid'),
                  onReplyTap: (_) {},
                  onLikeTap: (tid) async {
                    if (!UserManager.isLogin) return;
                    if (!mounted) return;
                    if (await TiebaApi.isLikeOnCooldown()) {
                      if (context.mounted) {
                        showLikeCooldownMessage(context);
                      }
                      return;
                    }
                    // ignore: use_build_context_synchronously
                    final scaffold = ScaffoldMessenger.of(context);
                    final pIdx = _posts.indexWhere((x) => x.tid == tid);
                    if (pIdx < 0) return;
                    setState(() {
                      final (_, newAgree) = _likeManager.toggle(
                        key: tid,
                        serverLiked: _posts[pIdx].isLiked,
                        serverAgreeNum:
                            int.tryParse(_posts[pIdx].agreeNum) ?? 0,
                        request: (opType) async {
                          final score = await TiebaApi.likeAgree(
                            bduss: UserManager.bduss!,
                            stoken: UserManager.stoken!,
                            tbs: UserManager.tbs ?? '',
                            userId: UserManager.userId ?? '',
                            threadId: tid,
                            opType: opType,
                            allowAlreadyLiked: true,
                          );
                          return score != null;
                        },
                        onUpdate: (isRollback) {
                          if (!mounted) return;
                          setState(() {
                            final i = _posts.indexWhere((x) => x.tid == tid);
                            if (i >= 0) {
                              _posts[i].agreeNum = _likeManager
                                  .agreeNum(tid)
                                  .toString();
                            }
                          });
                          if (isRollback) {
                            final nowLiked = _likeManager.isLiked(tid);
                            scaffold.showSnackBar(
                              SnackBar(
                                content: Text(
                                  nowLiked ? '取消点赞失败，请稍后重试' : '点赞失败，请稍后重试',
                                ),
                                duration: const Duration(seconds: 2),
                              ),
                            );
                          }
                        },
                      );
                      final idx = _posts.indexWhere((x) => x.tid == tid);
                      if (idx >= 0) {
                        _posts[idx].agreeNum = newAgree.toString();
                        _posts[idx].isLiked = _likeManager.isLiked(tid);
                      }
                    });
                  },
                  onShareTap: (tid) {
                    SharePlus.instance.share(
                      ShareParams(
                        text: "https://tieba.baidu.com/p/$tid",
                        title: "来自百度贴吧的帖子",
                      ),
                    );
                  },
                  onUserTap: (uid) => context.push('/user/$uid'),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
