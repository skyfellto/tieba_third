import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../utils/user_manager.dart';
import '../utils/auth_notifier.dart';
import '../constants/app_colors.dart';
import '../main.dart' show themeNotifier;
import '../models/user_profile_data.dart';
import '../network/tieba_api.dart';
import 'webview_login_page.dart';

class WodePage extends StatefulWidget {
  const WodePage({super.key});

  @override
  State<WodePage> createState() => _WodePageState();
}

class _WodePageState extends State<WodePage> {
  UserProfileData? _profile;
  Future<void>? _profileFuture;

  @override
  void initState() {
    super.initState();
    UserManager.init();
    _profileFuture = _loadProfile();
    AuthNotifier().addListener(_onAuthChanged);
  }

  @override
  void dispose() {
    AuthNotifier().removeListener(_onAuthChanged);
    super.dispose();
  }

  void _onAuthChanged() {
    if (UserManager.isLogin) {
      setState(() => _profile = null);
      _profileFuture = _loadProfile();
    } else {
      setState(() => _profile = null);
    }
  }

  Future<void> _loadProfile() async {
    if (!UserManager.isLogin) return;
    final uid = UserManager.userId;
    if (uid == null || uid.isEmpty) return;
    if (!mounted) return;
    final result = await TiebaApi.fetchUserProfilePb(
      bduss: UserManager.bduss!,
      stoken: UserManager.stoken!,
      uid: uid,
    );
    if (mounted) {
      setState(() => _profile = result.$1);
    }
  }

  void _onAvatarTap() async {
    if (UserManager.isLogin) {
      if (_profile == null && _profileFuture != null) {
        await _profileFuture;
      }
      if (!mounted) return;
      context.push('/wode/detail', extra: _profile);
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (_) => const WebViewLoginPage()),
      ).then((_) {
        setState(() {});
        _profileFuture = _loadProfile();
      });
    }
  }

  void _handleFavoritesTap() => context.push('/wode/favorites');
  void _handleMyLikesTap() => context.push('/wode/my-likes');
  void _handleBrowseHistoryTap() => context.push('/wode/browse-history');
  void _handleThemeTap() => themeNotifier.toggle();
  void _handleServiceTap() {}
  void _handleSettingsTap() => context.push('/settings');
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
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
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
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        if (isLogin) ...[
                          const SizedBox(height: 12),
                          Row(
                            children: [
                              Expanded(
                                child: GestureDetector(
                                  onTap: () => context.push('/wode/my-replies'),
                                  child: _buildStat(_profile?.postNum ?? 0, '回帖'),
                                ),
                              ),
                              Expanded(
                                child: GestureDetector(
                                  onTap: () {
                                    final uid = UserManager.userId;
                                    if (uid != null && uid.isNotEmpty) {
                                      context.push('/user/$uid/fans');
                                    }
                                  },
                                  child: _buildStat(_profile?.fansNum ?? 0, '粉丝'),
                                ),
                              ),
                              Expanded(
                                child: GestureDetector(
                                  onTap: () {
                                    final uid = UserManager.userId;
                                    if (uid != null && uid.isNotEmpty) {
                                      context.push('/user/$uid/follow');
                                    }
                                  },
                                  child: _buildStat(_profile?.concernNum ?? 0, '关注'),
                                ),
                              ),
                            ],
                          ),
                        ],
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
                  Icons.thumb_up_outlined,
                  '我的点赞',
                  _handleMyLikesTap,
                ),
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

  Widget _buildStat(int count, String label) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final numColor = isDark ? Colors.white : Colors.black87;
    return Column(
      children: [
        Text(
          '$count',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: numColor,
          ),
        ),
        const SizedBox(height: 2),
        Text(
          label,
          style: TextStyle(
            fontSize: 12,
            color: numColor.withValues(alpha: 0.7),
          ),
        ),
      ],
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
