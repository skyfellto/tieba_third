import 'package:flutter/material.dart';
import 'package:tieba_third/widgets/moonlight_bottom_nav_bar.dart';
import 'package:tieba_third/utils/personalization_manager.dart';
import 'package:tieba_third/utils/message_count_manager.dart';
import 'package:tieba_third/utils/user_manager.dart';
import 'package:go_router/go_router.dart';

/// 主屏幕 Widget，负责托管底部导航和路由。
class MainScreen extends StatefulWidget {
  final StatefulNavigationShell navigationShell;

  const MainScreen({super.key, required this.navigationShell});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late final GoRouter _router;
  String _prevLoc = '';

  @override
  void initState() {
    super.initState();
    PersonalizationManager.changeNotifier.addListener(_onConfigChanged);
    // 监听路由变化，切换到 "我的" 页签时刷新消息未读数
    _router = GoRouter.of(context);
    _router.routerDelegate.addListener(_onRouteChanged);
  }

  @override
  void dispose() {
    PersonalizationManager.changeNotifier.removeListener(_onConfigChanged);
    _router.routerDelegate.removeListener(_onRouteChanged);
    super.dispose();
  }

  void _onConfigChanged() {
    setState(() {});
  }

  void _onRouteChanged() {
    final loc = _router.routerDelegate.currentConfiguration.uri.toString();
    // 仅当从其他页面真正切换到 "我的" 页签时拉取
    if (_prevLoc != '/wode' && loc == '/wode' && UserManager.isLogin) {
      MessageCountManager().fetch();
    }
    _prevLoc = loc;
  }

  @override
  Widget build(BuildContext context) {
    final floating = PersonalizationManager.floatingNav;
    return Scaffold(
      body: widget.navigationShell,
      extendBody: floating,
      bottomNavigationBar: Padding(
        padding: floating
            ? const EdgeInsets.fromLTRB(12, 0, 12, 20)
            : EdgeInsets.zero,
        child: MoonlightBottomNavBar(
          currentIndex: widget.navigationShell.currentIndex,
          onTap: (index) {
            widget.navigationShell.goBranch(index);
          },
          floating: floating,
        ),
      ),
    );
  }
}
