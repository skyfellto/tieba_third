import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../utils/user_manager.dart';
import '../utils/auth_notifier.dart';
import '../constants/app_colors.dart';
import 'login_page.dart';

class WodePage extends StatefulWidget {
  const WodePage({super.key});

  @override
  State<WodePage> createState() => _WodePageState();
}

class _WodePageState extends State<WodePage> {
  @override
  void initState() {
    super.initState();
    UserManager.init();
  }

  void _onTap() {
    if (UserManager.isLogin) {
      context.push('/wode/detail');
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (_) => const LoginPage()),
      ).then((_) => setState(() {}));
    }
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: AuthNotifier(),
      builder: (context, _, child) {
        final isLogin = UserManager.isLogin;
        return Scaffold(
          body: Column(
            children: [
              Expanded(
                flex: 35,
                child: Container(
                  width: double.infinity,
                  color: AppColors.moonlightGradient[1],
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: _onTap,
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.white,
                              backgroundImage:
                                  isLogin && UserManager.portrait != null
                                  ? NetworkImage(
                                      UserManager.avatarUrl,
                                      headers: UserManager.avatarHeaders,
                                    )
                                  : null,
                            ),
                            const SizedBox(width: 15),
                            Text(
                              isLogin ? (UserManager.userName ?? "百度用户") : "登录",
                              style: const TextStyle(
                                fontSize: 22,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 65,
                child: Container(
                  width: double.infinity,
                  color: Colors.white,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 20,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildFunctionItem("我的收藏"),
                      _buildFunctionItem("浏览记录"),
                      _buildFunctionItem("设置"),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildFunctionItem(String text) {
    return Container(
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade400),
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
