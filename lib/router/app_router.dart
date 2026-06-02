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
import '../pages/favorites_page.dart';
import '../pages/my_replies_page.dart';
import '../pages/fans_page.dart';
import '../pages/follow_page.dart';
import '../pages/my_likes_page.dart';
import '../pages/search_page.dart';
import '../pages/search_result_page.dart';
import '../pages/forum_search_result_page.dart';
import '../pages/settings_page.dart';
import '../pages/account_management_page.dart';
import '../pages/forum_info_page.dart';
import '../models/forum_info_data.dart';
import '../pages/personalization_page.dart';
import '../pages/messages_page.dart';
import '../pages/agree_message_page.dart';
import '../utils/auth_notifier.dart';
import '../models/user_profile_data.dart';
import '../widgets/main_screen.dart';

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
      pageBuilder: (context, state) {
        final profile = state.extra as UserProfileData?;
        return NoTransitionPage(child: UserDetailPage(profile: profile));
      },
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
    // 吧信息页（独立路由）
    GoRoute(
      path: '/forums/:fid/about',
      builder: (context, state) {
        final data = state.extra as ForumInfoData;
        return ForumInfoPage(data: data);
      },
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
    // 用户详情页（带uid，供其他页面跳转）
    GoRoute(
      path: '/user/:uid',
      builder: (context, state) =>
          UserDetailPage(uid: state.pathParameters['uid']!),
    ),
    // 浏览记录页（独立路由）
    GoRoute(
      path: '/wode/browse-history',
      builder: (context, state) => const BrowseHistoryPage(),
    ),
    // 我的收藏页（独立路由）
    GoRoute(
      path: '/wode/favorites',
      builder: (context, state) => const FavoritesPage(),
    ),
    // 我的回帖页（独立路由）
    GoRoute(
      path: '/wode/my-replies',
      builder: (context, state) => const MyRepliesPage(),
    ),
    // 用户粉丝页（独立路由）
    GoRoute(
      path: '/user/:uid/fans',
      builder: (context, state) => FansPage(
        uid: state.pathParameters['uid']!,
        userName: state.uri.queryParameters['name'],
      ),
    ),
    // 用户关注页（独立路由）
    GoRoute(
      path: '/user/:uid/follow',
      builder: (context, state) => FollowPage(
        uid: state.pathParameters['uid']!,
        userName: state.uri.queryParameters['name'],
      ),
    ),
    // 我的点赞页（独立路由）
    GoRoute(
      path: '/wode/my-likes',
      builder: (context, state) => const MyLikesPage(),
    ),
    // 搜索页（独立路由）
    GoRoute(
      path: '/search',
      pageBuilder: (context, state) {
        final forumName = state.uri.queryParameters['forumName'];
        final disableSug = forumName != null;
        return NoTransitionPage(
          child: SearchPage(disableSuggestion: disableSug, forumName: forumName),
        );
      },
    ),
    // 搜索结果页（独立路由）
    GoRoute(
      path: '/search-result',
      builder: (context, state) => SearchResultPage(
        keyword: state.uri.queryParameters['keyword'] ?? '',
      ),
    ),
    // 吧内搜索结果页（独立路由）
    GoRoute(
      path: '/forum-search',
      builder: (context, state) => ForumSearchResultPage(
        keyword: state.uri.queryParameters['keyword'] ?? '',
        forumName: state.uri.queryParameters['forumName'] ?? '',
      ),
    ),
    // 消息中心页（独立路由）
    GoRoute(
      path: '/messages',
      pageBuilder: (context, state) => const NoTransitionPage(child: MessagesPage()),
    ),
    // 点赞消息页（独立路由）
    GoRoute(
      path: '/messages/likes',
      pageBuilder: (context, state) => const NoTransitionPage(child: AgreeMessagePage()),
    ),
    // 设置页（独立路由）
    GoRoute(
      path: '/settings',
      pageBuilder: (context, state) => const NoTransitionPage(child: SettingsPage()),
    ),
    // 账号管理页（独立路由）
    GoRoute(
      path: '/settings/account',
      pageBuilder: (context, state) => const NoTransitionPage(child: AccountManagementPage()),
    ),
    // 个性化页（独立路由）
    GoRoute(
      path: '/settings/personalization',
      pageBuilder: (context, state) => const NoTransitionPage(child: PersonalizationPage()),
    ),
  ],
);


