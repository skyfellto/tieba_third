import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../utils/user_manager.dart';
import '../utils/auth_notifier.dart';
import '../constants/app_colors.dart';
import '../main.dart' show themeNotifier;
import 'webview_login_page.dart';

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

  void _onAvatarTap() {
    if (UserManager.isLogin) {
      context.push('/wode/detail');
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (_) => const WebViewLoginPage()),
      ).then((_) => setState(() {}));
    }
  }

  void _handleFavoritesTap() => context.push('/wode/favorites');
  void _handleBrowseHistoryTap() => context.push('/wode/browse-history');
  void _handleThemeTap() => themeNotifier.toggle();
  void _handleServiceTap() {}
  void _handleSettingsTap() {}
  void _handleAboutTap() {}

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: themeNotifier,
      builder: (context, _) => ValueListenableBuilder<bool>(
        valueListenable: AuthNotifier(),
        builder: (context, _, child) {
          final isLogin = UserManager.isLogin;
          return Scaffold(
            extendBodyBehindAppBar: true,
            body: ListView(
              padding: EdgeInsets.zero,
              children: [
                // 顶部头像区（延伸至状态栏下方）
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: AppColors.headerGradient(context),
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  padding: EdgeInsets.fromLTRB(
                    20,
                    MediaQuery.of(context).padding.top + 16,
                    20,
                    24,
                  ),
                  child: GestureDetector(
                    onTap: _onAvatarTap,
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
                          isLogin ? (UserManager.nameShow ?? UserManager.userName ?? "百度用户") : "登录",
                          style: const TextStyle(
                            fontSize: 22,
                            // color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // 上组：个人功能区
                const Padding(
                  padding: EdgeInsets.fromLTRB(16, 16, 16, 4),
                  child: Text(
                    '个人功能',
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                _buildTile(Icons.bookmark_outline, '我的收藏', _handleFavoritesTap),
                _buildTile(
                  Icons.history_outlined,
                  '浏览记录',
                  _handleBrowseHistoryTap,
                ),
                _buildTile(
                  Icons.palette_outlined,
                  '主题选择',
                  _handleThemeTap,
                  trailing: AnimatedSwitcher(
                    duration: const Duration(milliseconds: 300),
                    child: Icon(
                      themeNotifier.isDark ? Icons.dark_mode : Icons.light_mode,
                      key: ValueKey(themeNotifier.isDark),
                      color: Colors.amber[700],
                      size: 24,
                    ),
                  ),
                ),
                _buildTile(
                  Icons.headset_mic_outlined,
                  '服务中心',
                  _handleServiceTap,
                ),
                // 分隔线
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Divider(height: 1, color: Color(0xFFE0E0E0)),
                ),
                // 下组：系统功能区
                const Padding(
                  padding: EdgeInsets.fromLTRB(16, 12, 16, 4),
                  child: Text(
                    '系统',
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                _buildTile(Icons.settings_outlined, '设置', _handleSettingsTap),
                _buildTile(Icons.info_outline, '关于', _handleAboutTap),
                const SizedBox(height: 32),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildTile(
    IconData icon,
    String title,
    VoidCallback onTap, {
    Widget? trailing,
  }) {
    return ListTile(
      leading: Icon(icon, color: Theme.of(context).iconTheme.color, size: 24),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 16,
          color: Theme.of(context).textTheme.bodyLarge?.color,
        ),
      ),
      trailing:
          trailing ??
          Icon(Icons.chevron_right, color: Colors.grey[400], size: 22),
      onTap: onTap,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16),
    );
  }
}
