import 'package:flutter/material.dart';
import 'package:tieba_third/router/app_router.dart';
import 'package:tieba_third/utils/device_info.dart';
import 'package:tieba_third/utils/sofire_utils.dart';
import 'package:tieba_third/utils/user_manager.dart';
import 'package:tieba_third/utils/theme_notifier.dart';
import 'package:tieba_third/utils/emoticon_helper.dart';
import 'package:tieba_third/network/tieba_api.dart';
import 'package:tieba_third/constants/app_theme.dart';

final ThemeNotifier themeNotifier = ThemeNotifier();
final RouteObserver<ModalRoute<void>> routeObserver =
    RouteObserver<ModalRoute<void>>();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  DeviceInfo().initScreen();
  await DeviceInfo().initDevice();
  getZid(); // 后台获取 z_id（缓存后供 CommonReq 使用）
  await UserManager.init();
  await TiebaApi.loadSyncData();
  // 登录状态下异步获取 sync（sample_id 等）
  if (UserManager.isLogin) {
    TiebaApi.fetchSync(
      bduss: UserManager.bduss!,
      stoken: UserManager.stoken!,
    );
  }
  await themeNotifier.init();
  await EmoticonHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: themeNotifier,
      builder: (context, _) => MaterialApp.router(
        title: 'tieba_third',
        debugShowCheckedModeBanner: false,
        theme: AppTheme.light,
        darkTheme: AppTheme.dark,
        themeMode: themeNotifier.mode,
        routerConfig: appRouter,
      ),
    );
  }
}
