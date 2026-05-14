import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../models/browse_record.dart';
import '../models/forum_browse_record.dart';
import '../models/user_browse_record.dart';
import '../utils/browse_history_manager.dart';
import '../utils/forum_browse_history_manager.dart';
import '../utils/user_browse_history_manager.dart';
import '../utils/user_manager.dart';
import '../router/app_router.dart' show routeObserver;

class BrowseHistoryPage extends StatefulWidget {
  const BrowseHistoryPage({super.key});

  @override
  State<BrowseHistoryPage> createState() => _BrowseHistoryPageState();
}

class _BrowseHistoryPageState extends State<BrowseHistoryPage>
    with SingleTickerProviderStateMixin, RouteAware {
  late TabController _tabController;
  final ScrollController _scrollController = ScrollController();
  bool _showBackToTop = false;
  bool _headerCollapsed = false;
  double _lastScrollPos = 0;
  bool _isAnimatingToTop = false;

  bool _isDeleteMode = false;
  bool _isReversed = false;

  // 当前 Tab 的选中集合
  final Set<String> _selectedPostIds = {};
  final Set<String> _selectedForumIds = {};
  final Set<String> _selectedUserIds = {};

  static const int _pageSize = 20;

  List<BrowseRecord> _allRecords = [];
  List<ForumBrowseRecord> _forumRecords = [];
  List<UserBrowseRecord> _userRecords = [];
  int _loadedCount = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this)
      ..addListener(_onTabChanged);
    _scrollController.addListener(_onScroll);
    _loadHistory();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    routeObserver.subscribe(this, ModalRoute.of(context)!);
  }

  @override
  void didPopNext() {
    if (!_isDeleteMode) _loadHistory();
  }

  @override
  void dispose() {
    routeObserver.unsubscribe(this);
    _tabController.removeListener(_onTabChanged);
    _tabController.dispose();
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  void _onTabChanged() {
    setState(() {
      // 切到内容较少的 Tab 时自动展开头部
      _headerCollapsed = false;
      _lastScrollPos = 0;
    });
  }

  int get _currentTab => _tabController.index;

  Set<String> get _currentSelectedSet {
    switch (_currentTab) {
      case 0:
        return _selectedPostIds;
      case 1:
        return _selectedForumIds;
      default:
        return _selectedUserIds;
    }
  }

  int get _currentTotalCount {
    switch (_currentTab) {
      case 0:
        return _allRecords.length;
      case 1:
        return _forumRecords.length;
      default:
        return _userRecords.length;
    }
  }

  bool get _allCurrentSelected =>
      _currentTotalCount > 0 &&
      _currentSelectedSet.length == _currentTotalCount;

  void _toggleSelectAll() {
    setState(() {
      if (_allCurrentSelected) {
        _currentSelectedSet.clear();
      } else {
        switch (_currentTab) {
          case 0:
            _selectedPostIds.addAll(_allRecords.map((r) => r.tid));
          case 1:
            _selectedForumIds.addAll(_forumRecords.map((r) => r.fid));
          case 2:
            _selectedUserIds.addAll(_userRecords.map((r) => r.uid));
        }
      }
    });
  }

  Future<void> _executeDelete() async {
    switch (_currentTab) {
      case 0:
        await BrowseHistoryManager.deleteRecords(_selectedPostIds);
        _selectedPostIds.clear();
      case 1:
        await ForumBrowseHistoryManager.deleteRecords(_selectedForumIds);
        _selectedForumIds.clear();
      case 2:
        await UserBrowseHistoryManager.deleteRecords(_selectedUserIds);
        _selectedUserIds.clear();
    }
    _exitDeleteMode();
    await _loadHistory();
  }

  void cancel() async {
    _exitDeleteMode();
    await _loadHistory();
  }

  void _exitDeleteMode() {
    setState(() {
      _isDeleteMode = false;
      _headerCollapsed = false;
      _selectedPostIds.clear();
      _selectedForumIds.clear();
      _selectedUserIds.clear();
    });
  }

  void _onScroll() {
    if (_isAnimatingToTop) return;
    final current = _scrollController.position.pixels;

    // 导航栏折叠/展开（阈值 30px，快速响应）
    if (current > 30 && !_headerCollapsed) {
      setState(() => _headerCollapsed = true);
    } else if (current <= 30 && _headerCollapsed) {
      setState(() => _headerCollapsed = false);
    }

    // 回顶按钮
    if (current < _lastScrollPos && current > 100) {
      if (!_showBackToTop) setState(() => _showBackToTop = true);
    } else if (current > _lastScrollPos) {
      if (_showBackToTop) setState(() => _showBackToTop = false);
    }
    _lastScrollPos = current;

    // 懒加载
    if (_loadedCount < _allRecords.length &&
        current >= _scrollController.position.maxScrollExtent - 200) {
      _loadMore();
    }
  }

  void _scrollToTop() {
    _isAnimatingToTop = true;
    if (_showBackToTop) setState(() => _showBackToTop = false);
    _scrollController.animateTo(
      0,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOutCubic,
    );
    Future.delayed(const Duration(milliseconds: 350), () {
      if (mounted) {
        _isAnimatingToTop = false;
        _lastScrollPos = 0;
      }
    });
  }

  Future<void> _loadHistory() async {
    _allRecords = await BrowseHistoryManager.loadRecords();
    _forumRecords = await ForumBrowseHistoryManager.loadRecords();
    _userRecords = await UserBrowseHistoryManager.loadRecords();
    if (mounted) {
      setState(() {
        _headerCollapsed = false;
        _loadMore();
      });
    }
  }

  void _loadMore() {
    final newCount = (_loadedCount + _pageSize).clamp(0, _allRecords.length);
    if (newCount > _loadedCount) {
      setState(() => _loadedCount = newCount);
    }
  }

  Map<String, List<BrowseRecord>> get _groupedRecords {
    var visible = _allRecords.take(_loadedCount).toList();
    if (_isReversed) visible = visible.reversed.toList();
    final map = <String, List<BrowseRecord>>{};
    for (final r in visible) {
      map.putIfAbsent(r.dateLabel, () => []).add(r);
    }
    return map;
  }

  List<T> _sortRecords<T>(
    List<T> records,
    String Function(T) timeFn, {
    bool reversed = false,
  }) {
    final sorted = List<T>.from(records)
      ..sort((a, b) => timeFn(b).compareTo(timeFn(a)));
    if (reversed) sorted.sort((a, b) => timeFn(a).compareTo(timeFn(b)));
    return sorted;
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: !_isDeleteMode,
      onPopInvokedWithResult: (didPop, _) {
        if (_isDeleteMode) _exitDeleteMode();
      },
      child: Scaffold(
        body: Stack(
          children: [
            Column(
              children: [
                _buildHeader(context),
                Expanded(
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                      _buildPostRecordsTab(),
                      _buildForumRecordsTab(),
                      _buildUserRecordsTab(),
                    ],
                  ),
                ),
              ],
            ),
            if (!_isDeleteMode)
              Positioned(
                right: 16,
                bottom: 80,
                child: AnimatedOpacity(
                  opacity: _showBackToTop ? 1.0 : 0.0,
                  duration: const Duration(milliseconds: 200),
                  child: FloatingActionButton(
                    mini: true,
                    heroTag: null,
                    onPressed: _scrollToTop,
                    backgroundColor: Theme.of(context).primaryColor,
                    child: const Icon(Icons.arrow_upward, color: Colors.white),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    final theme = Theme.of(context);
    final padTop = MediaQuery.of(context).padding.top;
    final tabBar = TabBar(
      controller: _tabController,
      // labelColor: theme.primaryColor,
      labelColor: theme.brightness == Brightness.dark
          ? Colors.white
          : Colors.black,
      labelStyle: TextStyle(fontWeight: FontWeight.w800),
      unselectedLabelColor: theme.brightness == Brightness.dark
          ? Colors.grey
          : Colors.grey[100],
      unselectedLabelStyle: TextStyle(fontWeight: FontWeight.normal),
      indicatorColor: theme.primaryColor,
      tabs: const [
        Tab(text: '帖子记录'),
        Tab(text: '经过贴吧'),
        Tab(text: '访问用户'),
      ],
    );

    if (_isDeleteMode) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AppBar(
            leading: TextButton(
              onPressed: _toggleSelectAll,
              child: Text(
                _allCurrentSelected ? '取消全选' : '全选',
                style: TextStyle(
                  color: theme.brightness == Brightness.dark
                      ? Colors.white
                      : Colors.black,
                ),
              ),
            ),
            title: const Text('删除'),
            centerTitle: true,
            backgroundColor: theme.primaryColor,
            actions: [
              TextButton(
                onPressed: cancel,
                child: Text(
                  "取消",
                  style: TextStyle(
                    color: theme.brightness == Brightness.dark
                        ? Colors.white
                        : Colors.black,
                  ),
                ),
              ),
              IconButton(
                icon: const Icon(
                  Icons.delete,
                  color: Color.fromARGB(255, 186, 68, 59),
                ),
                onPressed: _currentSelectedSet.isEmpty ? null : _executeDelete,
              ),
            ],
          ),
          tabBar,
        ],
      );
    }
    // 固定高度 + ClipRect 动画，不改变布局分配
    return Container(
      color: theme.primaryColor,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRect(
            child: AnimatedAlign(
              duration: const Duration(milliseconds: 200),
              curve: Curves.easeInOut,
              alignment: Alignment.topCenter,
              heightFactor: _headerCollapsed ? 0.0 : 1.0,
              child: Padding(
                padding: EdgeInsets.only(top: padTop),
                child: SizedBox(
                  height: kToolbarHeight,
                  child: Row(
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.arrow_back,
                          color: theme.brightness == Brightness.dark
                              ? Colors.grey
                              : Colors.black,
                        ),
                        onPressed: () => context.pop(),
                      ),
                      const Expanded(
                        child: Center(
                          child: Text(
                            '浏览记录',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      _buildMoreMenu(context),
                    ],
                  ),
                ),
              ),
            ),
          ),
          tabBar,
        ],
      ),
    );
  }

  Widget _buildMoreMenu(BuildContext context) {
    final theme = Theme.of(context);
    final menuColor = theme.brightness == Brightness.dark
        ? const Color(0xFF2A2A2A)
        : Colors.white;
    return PopupMenuButton<String>(
      icon: Icon(
        Icons.more_horiz,
        color: theme.brightness == Brightness.dark ? Colors.grey : Colors.black,
      ),
      color: menuColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      onSelected: (value) {
        if (value == 'delete') {
          setState(() => _isDeleteMode = true);
        } else if (value == 'reverse') {
          setState(() => _isReversed = !_isReversed);
        }
      },
      itemBuilder: (_) => [
        PopupMenuItem(
          value: 'delete',
          child: Text(
            '删除',
            style: TextStyle(color: theme.textTheme.bodyLarge?.color),
          ),
        ),
        PopupMenuItem(
          value: 'reverse',
          child: Row(
            children: [
              Text(
                '倒序',
                style: TextStyle(color: theme.textTheme.bodyLarge?.color),
              ),
              const Spacer(),
              if (_isReversed)
                Icon(Icons.check, size: 18, color: theme.primaryColor),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildDateHeader(String label, {bool isFirst = false}) {
    return Padding(
      padding: EdgeInsets.fromLTRB(16, isFirst ? 8 : 12, 16, 4),
      child: Text(
        label,
        style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
      ),
    );
  }

  // ===== 帖子记录 Tab =====
  Widget _buildPostRecordsTab() {
    final grouped = _groupedRecords;
    if (_allRecords.isEmpty) {
      return const Center(
        child: Text('暂无浏览记录', style: TextStyle(color: Colors.grey)),
      );
    }

    final entries = grouped.entries.toList();
    final totalItems = entries.fold<int>(
      0,
      (sum, e) => sum + 1 + e.value.length,
    );

    return ListView.builder(
      physics: const ClampingScrollPhysics(),
      controller: _scrollController,
      padding: EdgeInsets.zero,
      itemCount: totalItems + (_loadedCount < _allRecords.length ? 1 : 0),
      itemBuilder: (context, index) {
        int cursor = 0;
        for (int g = 0; g < entries.length; g++) {
          final entry = entries[g];
          final groupItemCount = 1 + entry.value.length;
          if (index < cursor + groupItemCount) {
            if (index == cursor) {
              return _buildDateHeader(entry.key, isFirst: g == 0);
            }
            return _buildRecordItem(entry.value[index - cursor - 1]);
          }
          cursor += groupItemCount;
        }
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 16),
          child: Center(
            child: SizedBox(
              width: 16,
              height: 16,
              child: CircularProgressIndicator(strokeWidth: 2),
            ),
          ),
        );
      },
    );
  }

  Widget _buildRecordItem(BrowseRecord record) {
    final theme = Theme.of(context);
    final isSel = _selectedPostIds.contains(record.tid);
    return GestureDetector(
      onTap: _isDeleteMode
          ? () => setState(() {
              if (isSel) {
                _selectedPostIds.remove(record.tid);
              } else {
                _selectedPostIds.add(record.tid);
              }
            })
          : () => context.push('/post/${record.tid}'),
      child: Padding(
        padding: EdgeInsets.only(
          left: _isDeleteMode ? 4 : 16,
          right: 16,
          top: 8,
          bottom: 8,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (_isDeleteMode)
              Checkbox(
                value: isSel,
                onChanged: (_) => setState(() {
                  if (isSel) {
                    _selectedPostIds.remove(record.tid);
                  } else {
                    _selectedPostIds.add(record.tid);
                  }
                }),
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                visualDensity: VisualDensity.compact,
              ),
            CircleAvatar(
              radius: 22,
              backgroundColor: Colors.grey[300],
              backgroundImage:
                  record.authorPortrait != null &&
                      record.authorPortrait!.isNotEmpty
                  ? NetworkImage(
                      'http://tb.himg.baidu.com/sys/portrait/item/${record.authorPortrait}',
                    )
                  : null,
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    record.authorName,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: theme.textTheme.bodyLarge?.color,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    record.title,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: TextStyle(
                      fontSize: 13,
                      color: theme.textTheme.bodyMedium?.color,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  record.formattedTime,
                  style: TextStyle(color: Colors.grey[400], fontSize: 11),
                ),
                const SizedBox(height: 2),
                Text(
                  record.forumName,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: TextStyle(color: Colors.grey[500], fontSize: 12),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // ===== 经过贴吧 Tab =====
  Widget _buildForumRecordsTab() {
    final reversed = _isReversed;
    if (_forumRecords.isEmpty) {
      return const Center(
        child: Text('暂无数据', style: TextStyle(color: Colors.grey)),
      );
    }
    var records = _sortRecords(
      _forumRecords,
      (r) => r.browseTime.toString(),
      reversed: reversed,
    );
    final grouped = <String, List<ForumBrowseRecord>>{};
    for (final r in records) {
      grouped.putIfAbsent(r.dateLabel, () => []).add(r);
    }
    final entries = grouped.entries.toList();
    final totalItems = entries.fold<int>(
      0,
      (sum, e) => sum + 1 + e.value.length,
    );

    return ListView.builder(
      physics: const ClampingScrollPhysics(),
      controller: _scrollController,
      padding: EdgeInsets.zero,
      itemCount: totalItems,
      itemBuilder: (context, index) {
        int cursor = 0;
        for (int g = 0; g < entries.length; g++) {
          final entry = entries[g];
          final groupSize = 1 + entry.value.length;
          if (index < cursor + groupSize) {
            if (index == cursor) {
              return Padding(
                padding: EdgeInsets.fromLTRB(16, g == 0 ? 0 : 12, 16, 4),
                child: Text(
                  entry.key,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              );
            }
            final r = entry.value[index - cursor - 1];
            final isSel = _selectedForumIds.contains(r.fid);
            return ListTile(
              leading: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (_isDeleteMode)
                    Checkbox(
                      value: isSel,
                      onChanged: (_) => setState(() {
                        if (isSel) {
                          _selectedForumIds.remove(r.fid);
                        } else {
                          _selectedForumIds.add(r.fid);
                        }
                      }),
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      visualDensity: VisualDensity.compact,
                    ),
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.grey[300],
                    backgroundImage:
                        r.forumAvatar != null && r.forumAvatar!.isNotEmpty
                        ? NetworkImage(r.forumAvatar!)
                        : null,
                  ),
                ],
              ),
              title: Text(
                r.forumName,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: TextStyle(
                  color: Theme.of(context).textTheme.bodyLarge?.color,
                ),
              ),
              trailing: Text(
                r.formattedTime,
                style: TextStyle(
                  color: Theme.of(context).iconTheme.color,
                  fontSize: 12,
                ),
              ),
              onTap: _isDeleteMode
                  ? () => setState(() {
                      if (isSel) {
                        _selectedForumIds.remove(r.fid);
                      } else {
                        _selectedForumIds.add(r.fid);
                      }
                    })
                  : () => context.push(
                      '/forum/${r.fid}?name=${Uri.encodeComponent(r.forumName)}&avatar=${Uri.encodeComponent(r.forumAvatar ?? '')}',
                    ),
            );
          }
          cursor += groupSize;
        }
        return const SizedBox.shrink();
      },
    );
  }

  // ===== 访问用户 Tab =====
  Widget _buildUserRecordsTab() {
    final reversed = _isReversed;
    if (_userRecords.isEmpty) {
      return const Center(
        child: Text('暂无数据', style: TextStyle(color: Colors.grey)),
      );
    }
    var records = _sortRecords(
      _userRecords,
      (r) => r.browseTime.toString(),
      reversed: reversed,
    );
    final grouped = <String, List<UserBrowseRecord>>{};
    for (final r in records) {
      grouped.putIfAbsent(r.dateLabel, () => []).add(r);
    }
    final entries = grouped.entries.toList();
    final totalItems = entries.fold<int>(
      0,
      (sum, e) => sum + 1 + e.value.length,
    );

    return ListView.builder(
      physics: const ClampingScrollPhysics(),
      controller: _scrollController,
      padding: EdgeInsets.zero,
      itemCount: totalItems,
      itemBuilder: (context, index) {
        int cursor = 0;
        for (int g = 0; g < entries.length; g++) {
          final entry = entries[g];
          final groupSize = 1 + entry.value.length;
          if (index < cursor + groupSize) {
            if (index == cursor) {
              return Padding(
                padding: EdgeInsets.fromLTRB(16, g == 0 ? 0 : 12, 16, 4),
                child: Text(
                  entry.key,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              );
            }
            final r = entry.value[index - cursor - 1];
            final isSel = _selectedUserIds.contains(r.uid);
            final defaultAvatar = r.portrait != null && r.portrait!.isNotEmpty
                ? 'http://tb.himg.baidu.com/sys/portrait/item/${r.portrait}'
                : null;
            return ListTile(
              leading: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (_isDeleteMode)
                    Checkbox(
                      value: isSel,
                      onChanged: (_) => setState(() {
                        if (isSel) {
                          _selectedUserIds.remove(r.uid);
                        } else {
                          _selectedUserIds.add(r.uid);
                        }
                      }),
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      visualDensity: VisualDensity.compact,
                    ),
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.grey[300],
                    backgroundImage: defaultAvatar != null
                        ? NetworkImage(
                            defaultAvatar,
                            headers: UserManager.avatarHeaders,
                          )
                        : null,
                  ),
                ],
              ),
              title: Text(
                r.nameShow ?? r.userName,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: TextStyle(
                  color: Theme.of(context).textTheme.bodyLarge?.color,
                ),
              ),
              trailing: Text(
                r.formattedTime,
                style: TextStyle(
                  color: Theme.of(context).iconTheme.color,
                  fontSize: 12,
                ),
              ),
              onTap: _isDeleteMode
                  ? () => setState(() {
                      if (isSel) {
                        _selectedUserIds.remove(r.uid);
                      } else {
                        _selectedUserIds.add(r.uid);
                      }
                    })
                  : () => context.push('/user/${r.uid}'),
            );
          }
          cursor += groupSize;
        }
        return const SizedBox.shrink();
      },
    );
  }
}
