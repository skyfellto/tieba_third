import 'package:flutter/material.dart';
import 'package:tieba_third/widgets/moonlight_bottom_nav_bar.dart';
import 'package:tieba_third/utils/personalization_manager.dart';
import 'package:go_router/go_router.dart';

/// 主屏幕 Widget，负责托管底部导航和路由。
class MainScreen extends StatefulWidget {
  final StatefulNavigationShell navigationShell;

  const MainScreen({super.key, required this.navigationShell});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  void initState() {
    super.initState();
    PersonalizationManager.changeNotifier.addListener(_onConfigChanged);
  }

  @override
  void dispose() {
    PersonalizationManager.changeNotifier.removeListener(_onConfigChanged);
    super.dispose();
  }

  void _onConfigChanged() {
    setState(() {});
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
