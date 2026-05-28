import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../models/forum_info_data.dart';
import '../models/bawu_member.dart';
import '../network/tieba_api.dart';
import '../utils/user_manager.dart';
import '../utils/toast_utils.dart';

class ForumInfoPage extends StatefulWidget {
  final ForumInfoData data;

  const ForumInfoPage({super.key, required this.data});

  @override
  State<ForumInfoPage> createState() => _ForumInfoPageState();
}

class _ForumInfoPageState extends State<ForumInfoPage> {
  List<BawuMember> _bawuManagers = [];
  List<BawuMember> _assistants = [];
  bool _bawuLoaded = false;

  @override
  void initState() {
    super.initState();
    _fetchBawuList();
  }

  Future<void> _fetchBawuList() async {
    if (!UserManager.isLogin) return;
    try {
      final result = await TiebaApi.fetchBawuList(
        bduss: UserManager.bduss!,
        stoken: UserManager.stoken!,
        fid: widget.data.fid,
      );
      if (mounted && result != null) {
        final bawuList = result['data']?['bawu_list'] as Map<String, dynamic>?;
        if (bawuList != null) {
          setState(() {
            final managersRaw = bawuList['manager'] as List? ?? [];
            final assistRaw = bawuList['assist'] as List? ?? [];
            _bawuManagers = managersRaw
                .map((e) => BawuMember.fromJson(e as Map<String, dynamic>))
                .toList();
            _assistants = assistRaw
                .map((e) => BawuMember.fromJson(e as Map<String, dynamic>))
                .toList();
            _bawuLoaded = true;
          });
        } else {
          if (mounted) {
            showInfo(context, '获取吧务信息失败');
          }
        }
      } else if (mounted) {
        showInfo(context, '获取吧务信息失败');
      }
    } catch (_) {
      if (mounted) showInfo(context, '获取吧务信息失败');
    }
  }

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
          _buildManagers(bodyColor),
          if (_assistants.isNotEmpty) _buildAssistants(bodyColor),
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
            backgroundImage: widget.data.avatar.isNotEmpty
                ? NetworkImage(widget.data.avatar, headers: UserManager.avatarHeaders)
                : null,
          ),
          const SizedBox(width: 14),
          Text(
            widget.data.name,
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
          _statItem(_formatCount(widget.data.memberNum), '关注', bodyColor, subtitleColor),
          _divider(),
          _statItem(_formatCount(widget.data.threadNum), '帖子', bodyColor, subtitleColor),
          _divider(),
          _statItem(_formatCount(widget.data.postNum), '回帖', bodyColor, subtitleColor),
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

  Widget _statItem(String value, String label, Color? valueColor, Color? labelColor) {
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
            widget.data.slogan.isEmpty ? '暂无简介' : widget.data.slogan,
            style: TextStyle(fontSize: 15, color: subtitleColor, height: 1.6),
          ),
        ],
      ),
    );
  }

  Widget _buildManagers(Color? bodyColor) {
    final managers = _bawuLoaded
        ? _bawuManagers
        : widget.data.managers.map((m) {
            return BawuMember(
              userId: '',
              userName: m.showName ?? m.name,
              roleName: '吧主',
              portrait: m.portrait,
              userNickname: m.showName,
            );
          }).toList();

    if (managers.isEmpty) return const SizedBox.shrink();
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 20, 16, 4),
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
          ...managers.map((m) => _buildManagerItem(m, bodyColor)),
        ],
      ),
    );
  }

  Widget _buildManagerItem(BawuMember m, Color? bodyColor) {
    final avatarUrl = 'https://gss0.bdstatic.com/6LZ1dD3d1sgCo2Kml5_Y_D3/sys/portrait/item/${m.portrait}';
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: GestureDetector(
        onTap: () {
          if (m.userId.isNotEmpty) context.push('/user/${m.userId}');
        },
        child: Row(
          children: [
            CircleAvatar(
              radius: 18,
              backgroundColor: Colors.grey[300],
              backgroundImage: m.portrait.isNotEmpty
                  ? NetworkImage(avatarUrl, headers: UserManager.avatarHeaders)
                  : null,
            ),
            const SizedBox(width: 12),
            Text(
              m.displayName,
              style: TextStyle(fontSize: 15, color: bodyColor),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAssistants(Color? bodyColor) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '小吧主',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: bodyColor,
            ),
          ),
          const SizedBox(height: 16),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 4.5,
            ),
            itemCount: _assistants.length,
            itemBuilder: (context, index) {
              final m = _assistants[index];
              final avatarUrl = 'https://gss0.bdstatic.com/6LZ1dD3d1sgCo2Kml5_Y_D3/sys/portrait/item/${m.portrait}';
              return GestureDetector(
                onTap: () {
                  if (m.userId.isNotEmpty) context.push('/user/${m.userId}');
                },
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 14,
                      backgroundColor: Colors.grey[300],
                      backgroundImage: m.portrait.isNotEmpty
                          ? NetworkImage(avatarUrl, headers: UserManager.avatarHeaders)
                          : null,
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        m.displayName,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontSize: 14, color: bodyColor),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
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