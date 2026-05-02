import 'package:flutter/material.dart';
import '../network/tieba_api.dart';
import '../utils/user_manager.dart';
import '../utils/data_cache.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _bdussController = TextEditingController();
  final TextEditingController _stokenController = TextEditingController();
  final TextEditingController _cookieController =
      TextEditingController(); // 调试用
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("贴吧登录"),
        backgroundColor: Colors.deepPurple,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "请输入 BDUSS",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 8),
            TextField(
              controller: _bdussController,
              maxLines: 2,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "输入 BDUSS",
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "请输入 STOKEN",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 8),
            TextField(
              controller: _stokenController,
              maxLines: 2,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "输入 STOKEN",
              ),
            ),
            const SizedBox(height: 30),
            // --- 调试：全量 Cookie 入口（优于 BDUSS/STOKEN） ---
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.orange.shade50,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.orange.shade200),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "调试：完整 Cookie",
                    style: TextStyle(fontSize: 13, color: Colors.orange),
                  ),
                  const SizedBox(height: 6),
                  TextField(
                    controller: _cookieController,
                    maxLines: 3,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "从浏览器复制完整 Cookie 粘贴到这里（调试用）",
                      isDense: true,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                ),
                onPressed: _isLoading ? null : _handleLogin,
                child: _isLoading
                    ? const CircularProgressIndicator(color: Colors.white)
                    : const Text(
                        "登录",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // 登录后静默预加载首页推荐 + 关注的吧
  void _preloadData() {
    final bduss = _bdussController.text.trim();
    final stoken = _stokenController.text.trim();
    DataCache.preloadPosts(
      TiebaApi.fetchPersonalizedThreads(bduss: bduss, stoken: stoken),
    );
    DataCache.preloadForums(
      TiebaApi.fetchForumRecommend(bduss: bduss, stoken: stoken),
    );
  }

  // 登录逻辑
  Future<void> _handleLogin() async {
    final bduss = _bdussController.text.trim();
    final stoken = _stokenController.text.trim();
    final fullCookie = _cookieController.text.trim();

    // 如果填了完整 Cookie 则优先用它调试，否则用 BDUSS/STOKEN
    if (fullCookie.isEmpty && (bduss.isEmpty || stoken.isEmpty)) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("请输入BDUSS和STOKEN，或贴完整Cookie")),
        );
      }
      return;
    }

    setState(() => _isLoading = true);

    // 调用登录方法（和tieba_api.dart里的方法名完全一致）
    final result = await TiebaApi.loginAndGetUserInfo(
      bduss: bduss,
      stoken: stoken,
      customCookie: fullCookie.isNotEmpty ? fullCookie : null,
    );

    setState(() => _isLoading = false);

    if (result != null) {
      // 提取用户名、头像、tbs、userId
      final userName = result['user']?['name'] ?? '百度用户';
      final portrait = result['user']?['portrait'] as String?;
      // ignore: invalid_null_aware_operator
      final tbs =
          // ignore: invalid_null_aware_operator
          (result['anti'] as Map?)?.cast<String, dynamic>()?['tbs'] as String?;
      final userId = result['user']?['id']?.toString();
      // 保存登录信息
      await UserManager.login(
        bduss: bduss,
        stoken: stoken,
        userName: userName,
        portrait: portrait,
        tbs: tbs,
        userId: userId,
      );
      // 后台预加载首页推荐 + 关注的吧
      _preloadData();
      // 返回我的页面
      if (mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text("登录成功！欢迎你，$userName")));
        Navigator.pop(context);
      }
    } else {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("登录失败，请检查BDUSS/STOKEN是否有效")),
        );
      }
    }
  }
}
