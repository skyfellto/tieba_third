import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../pages/tieba_page.dart';
import '../pages/dongtai_page.dart';
import '../pages/wode_page.dart';
import '../pages/user_detail_page.dart';
import '../pages/post_detail_page.dart';
import '../pages/forum_detail_page.dart';
import '../pages/floor_reply_page.dart';
import '../pages/browse_history_page.dart';
import '../utils/auth_notifier.dart';
import '../widgets/moonlight_bottom_nav_bar.dart';

final RouteObserver<ModalRoute<void>> routeObserver =
    RouteObserver<ModalRoute<void>>();

// 全局路由配置
final GoRouter appRouter = GoRouter(
  refreshListenable: AuthNotifier(),
  initialLocation: '/dongtai', // 初始页：动态
  observers: [routeObserver],
  routes: [
    // 使用 StatefulShellRoute 实现底部导航
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        // 这个 builder 包含了底部导航栏的主容器
        return MainScreen(navigationShell: navigationShell);
      },
      branches: [
        // 分支 1: 贴吧
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/tieba',
              pageBuilder: (context, state) =>
                  const NoTransitionPage(child: TiebaPage()),
            ),
          ],
        ),
        // 分支 2: 动态
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/dongtai',
              pageBuilder: (context, state) =>
                  const NoTransitionPage(child: DongtaiPage()),
            ),
          ],
        ),
        // 分支 3: 我的
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/wode',
              pageBuilder: (context, state) =>
                  const NoTransitionPage(child: WodePage()),
            ),
          ],
        ),
      ],
    ),
    // 用户详情页（独立路由，不显示底部导航）
    GoRoute(
      path: '/wode/detail',
      pageBuilder: (context, state) =>
          const NoTransitionPage(child: UserDetailPage()),
    ),
    // 帖子详情页（独立路由，不显示底部导航）
    GoRoute(
      path: '/post/:tid',
      builder: (context, state) =>
          PostDetailPage(tid: state.pathParameters['tid']!),
    ),
    // 贴吧详情页（独立路由）
    GoRoute(
      path: '/forum/:fid',
      builder: (context, state) => ForumDetailPage(
        fid: state.pathParameters['fid']!,
        forumName: state.uri.queryParameters['name'],
        forumAvatar: state.uri.queryParameters['avatar'],
      ),
    ),
    // 楼中楼回复详情页（独立路由）
    GoRoute(
      path: '/floor-replies/:tid',
      builder: (context, state) => FloorReplyPage(
        tid: state.pathParameters['tid']!,
        pid: state.uri.queryParameters['pid']!,
        floor: int.parse(state.uri.queryParameters['floor'] ?? '0'),
        replyCount: int.parse(state.uri.queryParameters['replyCount'] ?? '0'),
      ),
    ),
    // 浏览记录页（独立路由）
    GoRoute(
      path: '/wode/browse-history',
      builder: (context, state) => const BrowseHistoryPage(),
    ),
  ],
);

// 主屏幕 Widget，现在只负责托管底部导航和路由
class MainScreen extends StatelessWidget {
  final StatefulNavigationShell navigationShell;

  const MainScreen({super.key, required this.navigationShell});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell, // 这里显示当前的分支页面
      bottomNavigationBar: MoonlightBottomNavBar(
        currentIndex: navigationShell.currentIndex,
        onTap: (index) {
          // 由 go_router 处理跳转
          navigationShell.goBranch(index);
        },
      ),
    );
  }
}
