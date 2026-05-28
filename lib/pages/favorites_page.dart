import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../network/tieba_api.dart';
import '../utils/user_manager.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({super.key});

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  List<Map<String, dynamic>> _items = [];
  bool _isLoading = true;
  bool _loadingMore = false;
  bool _hasMore = true;
  int _offset = 0;
  static const int _pageSize = 100;

  @override
  void initState() {
    super.initState();
    _loadData(refresh: true);
  }

  Future<void> _loadData({bool refresh = false}) async {
    if (!UserManager.isLogin) return;
    if (refresh) {
      setState(() => _isLoading = true);
    } else {
      if (_loadingMore || !_hasMore) return;
      setState(() => _loadingMore = true);
    }

    final items = await TiebaApi.fetchThreadStore(
      bduss: UserManager.bduss!,
      stoken: UserManager.stoken!,
      rn: _pageSize,
      offset: refresh ? 0 : _offset + _pageSize,
      userId: UserManager.userId ?? '',
      baiduid: UserManager.baiduId ?? '',
    );

    if (mounted && items.isNotEmpty) {
      final first = items.first;
      debugPrint("【收藏列表】首条数据=$first");
    }
    if (mounted) {
      setState(() {
        _isLoading = false;
        _loadingMore = false;
        if (refresh) {
          _items = items;
          _offset = 0;
        } else {
          _offset += _pageSize;
          _items.addAll(items);
        }
        _hasMore = items.length >= _pageSize;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('我的收藏'),
        centerTitle: true,
        backgroundColor: theme.primaryColor,
      ),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : _items.isEmpty
          ? const Center(
              child: Text('暂无收藏', style: TextStyle(color: Colors.grey)),
            )
          : NotificationListener<ScrollNotification>(
              onNotification: (n) {
                if (n is ScrollUpdateNotification &&
                    !_loadingMore &&
                    _hasMore &&
                    n.metrics.pixels >= n.metrics.maxScrollExtent - 200) {
                  _loadData();
                }
                return false;
              },
              child: RefreshIndicator(
                onRefresh: () => _loadData(refresh: true),
                child: ListView.builder(
                  padding: const EdgeInsets.all(12),
                  itemCount: _items.length + (_loadingMore ? 1 : 0),
                  itemBuilder: (context, index) {
                    if (index >= _items.length) {
                      return const Padding(
                        padding: EdgeInsets.all(16),
                        child: Center(
                          child: SizedBox(
                            width: 16,
                            height: 16,
                            child: CircularProgressIndicator(strokeWidth: 2),
                          ),
                        ),
                      );
                    }
                    return _buildItem(_items[index]);
                  },
                ),
              ),
            ),
    );
  }

  Widget _buildItem(Map<String, dynamic> item) {
    final theme = Theme.of(context);
    final tid = item['thread_id']?.toString() ?? '';
    final title = item['title']?.toString() ?? '';
    final forumName = item['forum_name']?.toString() ?? '';
    // author info
    final author = item['author'] as Map<String, dynamic>?;
    final authorName =
        author?['name_show']?.toString() ?? author?['name']?.toString() ?? '';
    final authorPortrait = author?['user_portrait']?.toString();
    // content abstract
    final firstAbstract = item['first_abstract']?.toString();
    final postNoMsg = item['post_no_msg']?.toString() ?? '';
    final postNoVal = int.tryParse(item['post_no']?.toString() ?? '') ?? 0;
    final count = (postNoMsg.isNotEmpty && postNoVal > 1) ? postNoMsg : '';

    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        onTap: () => context.push('/post/$tid'),
        child: Padding(
          padding: const EdgeInsets.all(14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 上部信息区：头像 + 名称/楼数 + 贴吧名
              Row(
                children: [
                  CircleAvatar(
                    radius: 18,
                    backgroundColor: Colors.grey[300],
                    backgroundImage:
                        authorPortrait != null && authorPortrait.isNotEmpty
                        ? NetworkImage(
                            'http://tb.himg.baidu.com/sys/portrait/item/$authorPortrait',
                          )
                        : null,
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          authorName,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: theme.textTheme.bodyLarge?.color,
                          ),
                        ),
                        // ignore: unnecessary_null_comparison
                        if (count != null && count.isNotEmpty)
                          Text(
                            count,
                            style: TextStyle(
                              color: Colors.grey[500],
                              fontSize: 12,
                            ),
                          ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    forumName,
                    style: TextStyle(
                      color: theme.iconTheme.color,
                      fontSize: 12,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
              const SizedBox(height: 10),
              // 下部内容区
              if (title.isNotEmpty)
                Padding(
                  padding: const EdgeInsets.only(bottom: 4),
                  child: Text(
                    title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 15,
                    ),
                  ),
                ),
              if (firstAbstract != null && firstAbstract.isNotEmpty)
                Text(
                  firstAbstract,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 13,
                    color: theme.textTheme.bodyMedium?.color,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
