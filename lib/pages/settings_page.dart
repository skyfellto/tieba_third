import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('设置'),
        centerTitle: true,
        leading: BackButton(onPressed: () => context.pop()),
      ),
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(16, 16, 16, 4),
            child: Text(
              '功能',
              style: TextStyle(fontSize: 13, color: Colors.grey, fontWeight: FontWeight.w500),
            ),
          ),
          _buildTile(
            context,
            Icons.manage_accounts_outlined,
            '账号管理',
            () => context.push('/settings/account'),
          ),
          _buildTile(
            context,
            Icons.palette_outlined,
            '个性化',
            () => context.push('/settings/personalization'),
          ),
        ],
      ),
    );
  }

  Widget _buildTile(
    BuildContext context,
    IconData icon,
    String title,
    VoidCallback onTap,
  ) {
    return ListTile(
      leading: Icon(icon, color: Theme.of(context).iconTheme.color, size: 24),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 16,
          color: Theme.of(context).textTheme.bodyLarge?.color,
        ),
      ),
      onTap: onTap,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16),
    );
  }
}