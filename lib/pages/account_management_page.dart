import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../utils/user_manager.dart';
import '../utils/account_manager.dart';
import '../utils/toast_utils.dart';
import '../widgets/confirm_dialog.dart';
import 'webview_login_page.dart';

class AccountManagementPage extends StatefulWidget {
  const AccountManagementPage({super.key});

  @override
  State<AccountManagementPage> createState() => _AccountManagementPageState();
}

class _AccountManagementPageState extends State<AccountManagementPage> {
  @override
  Widget build(BuildContext context) {
    final accounts = AccountManager.accounts;
    return Scaffold(
      appBar: AppBar(
        title: const Text('账户管理'),
        centerTitle: true,
        leading: BackButton(onPressed: () => context.pop()),
      ),
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(16, 16, 16, 4),
            child: Text(
              '账号管理',
              style: TextStyle(fontSize: 13, color: Colors.grey, fontWeight: FontWeight.w500),
            ),
          ),
          ...accounts.map((a) => _buildAccountItem(a.bduss, a.nameShow ?? a.userName ?? '未知用户', a.portrait)),
          const Padding(
            padding: EdgeInsets.fromLTRB(16, 12, 16, 4),
            child: Text(
              '操作',
              style: TextStyle(fontSize: 13, color: Colors.grey, fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
            child: SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: _handleAddAccount,
                child: const Text('添加账号'),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
            child: SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: _handleLogout,
                style: OutlinedButton.styleFrom(
                  foregroundColor: Theme.of(context).colorScheme.error,
                ),
                child: const Text('退出登录'),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(16, 24, 16, 4),
            child: Divider(height: 1),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(16, 12, 16, 4),
            child: Text(
              '账户信息',
              style: TextStyle(fontSize: 13, color: Colors.grey, fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
            child: SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: _handleCopyBduss,
                child: const Text('复制 BDUSS'),
              ),
            ),
          ),
          const SizedBox(height: 32),
        ],
      ),
    );
  }

  Widget _buildAccountItem(String bduss, String name, String? portrait) {
    final isCurrent = bduss == AccountManager.currentBduss;
    return ListTile(
      leading: CircleAvatar(
        radius: 20,
        backgroundColor: Colors.grey[300],
        backgroundImage: portrait != null
            ? NetworkImage(
                'http://tb.himg.baidu.com/sys/portrait/item/$portrait',
                headers: const {'Referer': 'https://tieba.baidu.com'},
              )
            : null,
      ),
      title: Text(
        name,
        style: TextStyle(
          fontSize: 16,
          color: Theme.of(context).textTheme.bodyLarge?.color,
        ),
      ),
      trailing: isCurrent
          ? Icon(Icons.check, color: Theme.of(context).primaryColor)
          : null,
      onTap: isCurrent ? null : () => _handleSwitchAccount(bduss),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16),
    );
  }

  Future<void> _handleSwitchAccount(String bduss) async {
    final confirmed = await showConfirmDialog(
      context,
      '确认切换账号',
      '确定要切换到该账号吗？切换后将清除当前浏览记录',
    );
    if (!confirmed) return;
    await AccountManager.switchToAccount(bduss);
    if (!mounted) return;
    await _clearBrowseHistory();
    if (!mounted) return;
    _popToWode();
  }

  Future<void> _handleAddAccount() async {
    final result = await Navigator.push<bool>(
      context,
      MaterialPageRoute(builder: (_) => const WebViewLoginPage()),
    );
    if (result == true) {
      if (!mounted) return;
      await _clearBrowseHistory();
      if (!mounted) return;
      _popToWode();
    }
  }

  Future<void> _handleLogout() async {
    final confirmed = await showConfirmDialog(
      context,
      '确认退出',
      '确定要退出当前账号吗？',
    );
    if (!confirmed) return;
    await AccountManager.logoutCurrent();
    if (!mounted) return;
    _popToWode();
  }

  void _handleCopyBduss() {
    final bduss = UserManager.bduss;
    if (bduss != null && bduss.isNotEmpty) {
      Clipboard.setData(ClipboardData(text: bduss));
    }
    showInfo(context, '请注意，该行为较危险');
  }

  Future<void> _clearBrowseHistory() async {
    final sp = await SharedPreferences.getInstance();
    await sp.remove('browse_history');
    await sp.remove('forum_browse_history');
    await sp.remove('user_browse_history');
    await sp.remove('search_history_list');
  }

  void _popToWode() {
    Navigator.of(context).popUntil((route) => route.isFirst);
  }
}