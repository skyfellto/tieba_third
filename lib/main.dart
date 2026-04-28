import 'package:flutter/material.dart';
import 'package:tieba_third/router/app_router.dart';
import 'package:tieba_third/utils/user_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await UserManager.init(); // 启动就加载Cookie
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'tieba_third',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      routerConfig: appRouter,
    );
  }
}
