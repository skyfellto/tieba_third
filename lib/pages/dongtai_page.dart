import 'package:flutter/material.dart';
import '../models/post_item.dart';
import '../network/tieba_api.dart';
import '../utils/auth_notifier.dart';
import '../utils/data_cache.dart';
import '../utils/user_manager.dart';
import '../widgets/post_card.dart';

class DongtaiPage extends StatefulWidget {
  const DongtaiPage({super.key});

  @override
  State<DongtaiPage> createState() => _DongtaiPageState();
}

class _DongtaiPageState extends State<DongtaiPage>
    with AutomaticKeepAliveClientMixin {
  List<PostItem>? _posts;
  bool _isLoading = false;

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    AuthNotifier().addListener(_onAuthChanged);
    // 优先等预加载结果，不等网络请求
    _loadFromCache();
    _loadData();
  }

  Future<void> _loadFromCache() async {
    final cached = await DataCache.posts;
    if (cached.isNotEmpty && mounted) setState(() => _posts = cached);
  }

  @override
  void dispose() {
    AuthNotifier().removeListener(_onAuthChanged);
    super.dispose();
  }

  void _onAuthChanged() {
    if (UserManager.isLogin && (_posts == null || _posts!.isEmpty)) {
      _loadData();
    }
  }

  Future<void> _loadData() async {
    if (!UserManager.isLogin || _isLoading) return;

    setState(() => _isLoading = true);
    try {
      var posts = await TiebaApi.fetchPersonalizedThreads(
        bduss: UserManager.bduss!,
        stoken: UserManager.stoken!,
      );
      posts = posts.where((p) => !p.isAd).toList();
      if (mounted) {
        setState(() {
          _posts = posts;
          _isLoading = false;
        });
      }
    } catch (_) {
      if (mounted) setState(() => _isLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return _buildBody();
  }

  Widget _buildBody() {
    final hasData = _posts != null && _posts!.isNotEmpty;

    if (!hasData) {
      return ListView(); // 无数据时显示空白可滚动区
    }

    return RefreshIndicator(
      onRefresh: () async {
        await _loadData();
      },
      child: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: _posts!.length,
        itemBuilder: (context, index) => PostCard(post: _posts![index]),
      ),
    );
  }
}
