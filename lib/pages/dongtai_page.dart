import 'package:flutter/material.dart';
import '../models/post_item.dart';
import '../network/tieba_api.dart';
import '../utils/auth_notifier.dart';
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
    _loadData();
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
      final posts = await TiebaApi.fetchPersonalizedThreads(
        bduss: UserManager.bduss!,
        stoken: UserManager.stoken!,
      );
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
    final showPlaceholder = !UserManager.isLogin || _posts == null || _posts!.isEmpty;
    final itemCount = showPlaceholder ? 30 : _posts!.length;

    return RefreshIndicator(
      onRefresh: () async {
        await _loadData();
      },
      child: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: itemCount,
        itemBuilder: (context, index) {
          if (showPlaceholder) {
            return PostCard(isPlaceholder: true);
          }
          return PostCard(post: _posts![index]);
        },
      ),
    );
  }
}
