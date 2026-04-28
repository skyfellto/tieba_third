import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../constants/app_colors.dart';

class TiebaPage extends StatefulWidget {
  const TiebaPage({super.key});

  @override
  State<TiebaPage> createState() => _TiebaPageState();
}

class _TiebaPageState extends State<TiebaPage>
    with AutomaticKeepAliveClientMixin {
  // 标记是否加载完成配置
  bool _isConfigLoaded = false;
  bool _isDoubleColumn = true;
  static const String _storageKey = 'tieba_grid_layout';

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    _initLayoutConfig();
  }

  Future<void> _initLayoutConfig() async {
    final prefs = await SharedPreferences.getInstance();
    final bool? savedMode = prefs.getBool(_storageKey);

    setState(() {
      _isDoubleColumn = savedMode ?? true;
      _isConfigLoaded = true; // 配置加载完成
    });
  }

  Future<void> _saveLayoutConfig() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_storageKey, _isDoubleColumn);
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    // 配置未加载完成时，显示空白/加载，不渲染默认布局
    if (!_isConfigLoaded) {
      return const Scaffold(body: Center(child: CircularProgressIndicator()));
    }

    return CustomScrollView(
      slivers: [
        SliverAppBar(
          title: const Text(
            '贴吧',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          backgroundColor: AppColors.moonlightGradient[1],
          floating: true,
          actions: [
            IconButton(
              icon: Icon(_isDoubleColumn ? Icons.view_agenda : Icons.grid_view),
              onPressed: () {
                setState(() {
                  _isDoubleColumn = !_isDoubleColumn;
                });
                _saveLayoutConfig();
              },
            ),
          ],
        ),
        SliverPadding(
          padding: const EdgeInsets.all(8.0),
          sliver: SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: _isDoubleColumn ? 2 : 1,
              childAspectRatio: _isDoubleColumn ? 0.8 : 2.5,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            delegate: SliverChildBuilderDelegate((context, index) {
              return Container(
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(child: Text('帖子 $index')),
              );
            }, childCount: 50),
          ),
        ),
      ],
    );
  }
}
