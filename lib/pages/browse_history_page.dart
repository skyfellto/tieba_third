import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../constants/app_colors.dart';
import '../models/browse_record.dart';
import '../utils/browse_history_manager.dart';

/// 浏览记录页面
class BrowseHistoryPage extends StatefulWidget {
  const BrowseHistoryPage({super.key});

  @override
  State<BrowseHistoryPage> createState() => _BrowseHistoryPageState();
}

class _BrowseHistoryPageState extends State<BrowseHistoryPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final ScrollController _scrollController = ScrollController();
  bool _showBackToTop = false;
  bool _headerCollapsed = false;
  double _lastScrollPos = 0;
  bool _isAnimatingToTop = false;

  static const int _pageSize = 20;

  List<BrowseRecord> _allRecords = [];
  int _loadedCount = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _scrollController.addListener(_onScroll);
    _loadHistory();
  }

  @override
  void dispose() {
    _tabController.dispose();
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_isAnimatingToTop) return;
    final current = _scrollController.position.pixels;

    // 导航栏折叠动画
    if (current > 80 && !_headerCollapsed) {
      setState(() => _headerCollapsed = true);
    } else if (current <= 80 && _headerCollapsed) {
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
    if (current >= _scrollController.position.maxScrollExtent - 200 &&
        _loadedCount < _allRecords.length) {
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
    if (mounted) {
      setState(() => _loadMore());
    }
  }

  void _loadMore() {
    final newCount = (_loadedCount + _pageSize).clamp(0, _allRecords.length);
    if (newCount > _loadedCount) {
      setState(() => _loadedCount = newCount);
    }
  }

  /// 分组显示记录（按 dateLabel）
  Map<String, List<BrowseRecord>> get _groupedRecords {
    final visible = _allRecords.take(_loadedCount).toList();
    final map = <String, List<BrowseRecord>>{};
    for (final r in visible) {
      map.putIfAbsent(r.dateLabel, () => []).add(r);
    }
    return map;
  }

  @override
  Widget build(BuildContext context) {
    final topPad = MediaQuery.of(context).padding.top;
    final headerFullHeight = kToolbarHeight + topPad;

    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              // 顶部导航栏（可折叠）
              AnimatedContainer(
                duration: const Duration(milliseconds: 250),
                height: _headerCollapsed ? 0 : headerFullHeight,
                child: AppBar(
                  title: const Text('浏览记录'),
                  centerTitle: true,
                  backgroundColor: AppColors.moonlightGradient[1],
                  foregroundColor: Colors.white,
                  actions: [
                    IconButton(
                      icon: const Icon(Icons.more_horiz),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              // Tab 栏（导航栏折叠后自动吸顶）
              Container(
                color: Colors.white,
                child: TabBar(
                  controller: _tabController,
                  labelColor: AppColors.moonlightGradient[1],
                  unselectedLabelColor: Colors.grey,
                  indicatorColor: AppColors.moonlightGradient[1],
                  tabs: const [
                    Tab(text: '帖子记录'),
                    Tab(text: '经过贴吧'),
                    Tab(text: '访问用户'),
                  ],
                ),
              ),
              // 内容区
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    _buildPostRecordsTab(),
                    const Center(
                      child: Text('暂无数据', style: TextStyle(color: Colors.grey)),
                    ),
                    const Center(
                      child: Text('暂无数据', style: TextStyle(color: Colors.grey)),
                    ),
                  ],
                ),
              ),
            ],
          ),
          // 回顶按钮
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
                backgroundColor: AppColors.moonlightGradient[1],
                child: const Icon(Icons.arrow_upward, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }

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
    ); // 1 for date header

    return ListView.builder(
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
        // 底部加载指示器
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

  Widget _buildDateHeader(String label, {bool isFirst = false}) {
    return Padding(
      padding: EdgeInsets.fromLTRB(16, isFirst ? 8 : 12, 16, 4),
      child: Text(
        label,
        style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: Colors.black54,
        ),
      ),
    );
  }

  Widget _buildRecordItem(BrowseRecord record) {
    return GestureDetector(
      onTap: () => context.push('/post/${record.tid}'),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // 左侧头像
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
            // 中间：用户名 + 帖子标题
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    record.authorName,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    record.title,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: TextStyle(color: Colors.grey[700], fontSize: 13),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 12),
            // 右侧：浏览时间 + 贴吧名
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
}
