import 'package:flutter/material.dart';
import 'package:tieba_third/widgets/moonlight_bottom_nav_bar.dart';
import 'package:go_router/go_router.dart';

/// 主屏幕 Widget，负责托管底部导航和路由。
class MainScreen extends StatelessWidget {
  final StatefulNavigationShell navigationShell;

  const MainScreen({super.key, required this.navigationShell});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: MoonlightBottomNavBar(
        currentIndex: navigationShell.currentIndex,
        onTap: (index) {
          navigationShell.goBranch(index);
        },
      ),
    );
  }
}
