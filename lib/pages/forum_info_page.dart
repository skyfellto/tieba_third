import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../models/forum_info_data.dart';
import '../utils/user_manager.dart';

class ForumInfoPage extends StatelessWidget {
  final ForumInfoData data;

  const ForumInfoPage({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final bodyColor = theme.textTheme.bodyLarge?.color;
    final subtitleColor = theme.textTheme.bodyMedium?.color;
    final isDark = theme.brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        title: const Text('关于本吧'),
        centerTitle: true,
        leading: BackButton(onPressed: () => context.pop()),
      ),
      body: ListView(
        children: [
          _buildBasicInfo(context),
          _buildStats(isDark, bodyColor, subtitleColor),
          _buildDescription(bodyColor, subtitleColor),
          _buildManagers(bodyColor, subtitleColor),
        ],
      ),
    );
  }

  Widget _buildBasicInfo(BuildContext context) {
    final bodyColor = Theme.of(context).textTheme.bodyLarge?.color;
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 24, 16, 20),
      child: Row(
        children: [
          CircleAvatar(
            radius: 28,
            backgroundColor: Colors.grey[300],
            backgroundImage: data.avatar.isNotEmpty
                ? NetworkImage(data.avatar, headers: UserManager.avatarHeaders)
                : null,
          ),
          const SizedBox(width: 14),
          Text(
            data.name,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: bodyColor,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStats(bool isDark, Color? bodyColor, Color? subtitleColor) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        children: [
          _statItem(
            _formatCount(data.memberNum),
            '关注',
            bodyColor,
            subtitleColor,
          ),
          _divider(),
          _statItem(
            _formatCount(data.threadNum),
            '帖子',
            bodyColor,
            subtitleColor,
          ),
          _divider(),
          _statItem(_formatCount(data.postNum), '回帖', bodyColor, subtitleColor),
        ],
      ),
    );
  }

  Widget _divider() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Container(width: 1, height: 32, color: Colors.white24),
    );
  }

  Widget _statItem(
    String value,
    String label,
    Color? valueColor,
    Color? labelColor,
  ) {
    return Expanded(
      child: Column(
        children: [
          Text(
            value,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: valueColor,
            ),
          ),
          const SizedBox(height: 4),
          Text(label, style: TextStyle(fontSize: 13, color: labelColor)),
        ],
      ),
    );
  }

  Widget _buildDescription(Color? bodyColor, Color? subtitleColor) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 20, 16, 4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '本吧简介',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: bodyColor,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            data.slogan.isEmpty ? '暂无简介' : data.slogan,
            style: TextStyle(fontSize: 15, color: subtitleColor, height: 1.6),
          ),
        ],
      ),
    );
  }

  Widget _buildManagers(Color? bodyColor, Color? subtitleColor) {
    if (data.managers.isEmpty) return const SizedBox.shrink();
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 20, 16, 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '本吧吧主',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: bodyColor,
            ),
          ),
          const SizedBox(height: 16),
          ...data.managers.map((m) {
            final avatarUrl =
                'http://tb.himg.baidu.com/sys/portrait/item/${m.portrait}';
            return Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 18,
                    backgroundColor: Colors.grey[300],
                    backgroundImage: m.portrait.isNotEmpty
                        ? NetworkImage(
                            avatarUrl,
                            headers: UserManager.avatarHeaders,
                          )
                        : null,
                  ),
                  const SizedBox(width: 12),
                  Text(
                    m.showName != null && m.showName!.isNotEmpty
                        ? m.showName!
                        : m.name,
                    style: TextStyle(fontSize: 15, color: bodyColor),
                  ),
                ],
              ),
            );
          }),
        ],
      ),
    );
  }

  String _formatCount(int n) {
    if (n < 1000) return n.toString();
    if (n < 10000) return '${(n / 1000).toStringAsFixed(1)}K';
    if (n < 10000000) return '${(n / 10000).toStringAsFixed(1)}W';
    return '${(n / 10000000).toStringAsFixed(1)}KW';
  }
}
