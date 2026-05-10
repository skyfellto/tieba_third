import 'package:flutter/material.dart';
import 'package:tieba_third/router/app_router.dart';
import 'package:tieba_third/utils/user_manager.dart';
import 'package:tieba_third/utils/theme_notifier.dart';
import 'package:tieba_third/constants/app_theme.dart';

final ThemeNotifier themeNotifier = ThemeNotifier();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await UserManager.init();
  await themeNotifier.init();
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
