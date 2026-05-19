import 'package:fixnum/fixnum.dart';
import 'package:flutter/material.dart';
import '../generated/PollInfo.pb.dart';
import '../network/tieba_api.dart';
import '../utils/user_manager.dart';
// import '../utils/sofire_utils.dart';

class VotePanel extends StatefulWidget {
  final PollInfo pollInfo;
  final String tid;
  final String fid;
  final VoidCallback? onVoteSubmitted;

  const VotePanel({
    super.key,
    required this.pollInfo,
    required this.tid,
    required this.fid,
    this.onVoteSubmitted,
  });

  @override
  State<VotePanel> createState() => _VotePanelState();
}

class _VotePanelState extends State<VotePanel> {
  late PollInfo _poll;
  final Set<int> _selectedIds = {};
  bool _submitting = false;

  @override
  void initState() {
    super.initState();
    _poll = widget.pollInfo;
  }

  @override
  void didUpdateWidget(VotePanel old) {
    super.didUpdateWidget(old);
    if (old.pollInfo != widget.pollInfo) {
      _poll = widget.pollInfo;
      _selectedIds.clear();
    }
  }

  bool get _isVotable => _poll.isPolled == 0;
  bool get _isMulti => _poll.isMulti == 1;
  bool get _hasSelection => _selectedIds.isNotEmpty;

  int get _totalVotes {
    final tv = _poll.totalPoll.toInt();
    return tv > 0 ? tv : _poll.options.fold(0, (sum, o) => sum + o.num.toInt());
  }

  Set<int> get _polledOptionIds {
    // polledValue 是逗号分隔的已选选项ID
    if (_poll.polledValue.isEmpty) return {};
    return _poll.polledValue
        .split(',')
        .map((s) => int.tryParse(s.trim()))
        .whereType<int>()
        .toSet();
  }

  String _formatEndtime(int endtime) {
    final dt = DateTime.fromMillisecondsSinceEpoch(
      endtime * 1000,
      isUtc: true,
    ).toLocal();
    final now = DateTime.now();
    if (dt.isBefore(now)) return ' · 已结束';
    if (now.year == dt.year && now.month == dt.month && now.day == dt.day) {
      return ' · ${dt.hour.toString().padLeft(2, '0')}:${dt.minute.toString().padLeft(2, '0')} 结束';
    }
    if (now.year == dt.year) {
      return ' · ${dt.month.toString().padLeft(2, '0')}-${dt.day.toString().padLeft(2, '0')} ${dt.hour.toString().padLeft(2, '0')}:${dt.minute.toString().padLeft(2, '0')} 结束';
    }
    return ' · ${dt.year}-${dt.month.toString().padLeft(2, '0')}-${dt.day.toString().padLeft(2, '0')} ${dt.hour.toString().padLeft(2, '0')}:${dt.minute.toString().padLeft(2, '0')} 结束';
  }

  void _toggleOption(int optionId) {
    if (!_isVotable || _submitting) return;
    setState(() {
      if (_selectedIds.contains(optionId)) {
        _selectedIds.remove(optionId);
      } else {
        if (_isMulti) {
          _selectedIds.add(optionId);
        } else {
          _selectedIds.clear();
          _selectedIds.add(optionId);
        }
      }
    });
  }

  Future<void> _submitVote() async {
    if (!_hasSelection || _submitting) return;
    setState(() => _submitting = true);

    final optionIdsStr = _selectedIds.join(',');
    // String? zId = await getCachedZid();
    // if (zId == null || zId.isEmpty) {
    //   zId = await getZid();
    // }
    // if (zId == null || zId.isEmpty) {
    //   zId =
    //       "FonXGKlF5WJ3QMt9-Pd1ymedu6kRr_6VC4Hp2281avbUq5UukGjzqktYqpkUgvWDELejOyA0vStZl_Yh0F4UPUQ";
    // }

    final success = await TiebaApi.voteSubmit(
      bduss: UserManager.bduss!,
      stoken: UserManager.stoken!,
      tid: widget.tid,
      optionIds: optionIdsStr,
      fid: widget.fid,
      userId: UserManager.userId,
      // zId: zId,
    );

    if (!mounted) return;

    if (success) {
      setState(() {
        _poll.isPolled = 1;
        _poll.polledValue = _selectedIds.join(',');
        // 更新每个选项的票数（本地乐观更新 +1）
        for (final opt in _poll.options) {
          if (_selectedIds.contains(opt.id)) {
            opt.num = Int64(opt.num.toInt() + 1);
          }
        }
        _poll.totalPoll = Int64(_totalVotes + _selectedIds.length);
        _submitting = false;
      });
      widget.onVoteSubmitted?.call();
    } else {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('投票失败，请稍后重试')));
      setState(() => _submitting = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    final totalVotes = _totalVotes;
    // debugPrint("endTime :: ${_poll.endTime}");

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 12),
        // 投票标题
        Text(
          '投票·${_poll.title}',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 16,
            color: theme.textTheme.bodyLarge?.color,
          ),
        ),
        const SizedBox(height: 12),
        // 投票选项
        ..._poll.options.map((option) {
          final optionId = option.id;
          final optionVotes = option.num.toInt();
          final percentage = totalVotes > 0
              ? (optionVotes / totalVotes * 100).round()
              : 0;
          final isSelected = _selectedIds.contains(optionId);
          final userVotedFor =
              _poll.isPolled != 0 && _polledOptionIds.contains(optionId);

          return Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: GestureDetector(
              onTap: _isVotable ? () => _toggleOption(optionId) : null,
              child: _isVotable
                  ? _buildVotableOption(option.text, isSelected, isDark, theme)
                  : _buildResultOption(
                      option.text,
                      percentage,
                      optionVotes,
                      totalVotes,
                      userVotedFor,
                      isDark,
                      theme,
                    ),
            ),
          );
        }),
        const SizedBox(height: 8),
        // 投票人数（始终显示）+ 投票按钮
        Row(
          children: [
            Text(
              '已有$totalVotes位吧友参与投票${_poll.endTime > -1 ? _formatEndtime(_poll.endTime) : ""}',
              style: TextStyle(fontSize: 13, color: Colors.grey[500]),
            ),
            const Spacer(),
            if (_isVotable) _buildVoteButton(theme),
          ],
        ),
        const SizedBox(height: 4),
      ],
    );
  }

  // ========== 可投票状态的选项 ==========

  Widget _buildVotableOption(
    String text,
    bool isSelected,
    bool isDark,
    ThemeData theme,
  ) {
    return Container(
      height: 44,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: isSelected
            ? (isDark ? Colors.blue.withValues(alpha: 0.15) : Colors.blue[50])
            : (isDark ? Colors.grey[800] : Colors.grey[100]),
        borderRadius: BorderRadius.circular(8),
        border: isSelected ? Border.all(color: theme.primaryColor) : null,
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(
              text,
              style: TextStyle(
                fontSize: 14,
                color: theme.textTheme.bodyLarge?.color,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          if (isSelected)
            Icon(
              Icons.check,
              // color: theme.primaryColor,
              color: isDark ? Colors.cyanAccent : Colors.orangeAccent,
              size: 20,
            ),
        ],
      ),
    );
  }

  // ========== 已投票/已结束的选项 ==========

  Widget _buildResultOption(
    String text,
    int percentage,
    int optionVotes,
    int totalVotes,
    bool userVotedFor,
    bool isDark,
    ThemeData theme,
  ) {
    final barColor = userVotedFor
        ? Colors.blueAccent
        : (isDark ? Colors.blue.withValues(alpha: 0.25) : Colors.blue[50]);

    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: SizedBox(
        height: 44,
        child: Stack(
          children: [
            // 背景
            Container(
              decoration: BoxDecoration(
                color: isDark ? Colors.grey[800] : Colors.grey[100],
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            // 进度条
            FractionallySizedBox(
              widthFactor: totalVotes > 0 ? optionVotes / totalVotes : 0,
              child: Container(
                decoration: BoxDecoration(
                  color: barColor,
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            // 文字
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        text,
                        style: TextStyle(
                          fontSize: 14,
                          color: theme.textTheme.bodyLarge?.color,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      // ignore: unnecessary_brace_in_string_interps
                      '${optionVotes}人 | $percentage%',
                      style: TextStyle(
                        fontSize: 13,
                        color: theme.textTheme.bodyMedium?.color,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ========== 投票按钮 ==========

  Widget _buildVoteButton(ThemeData theme) {
    return GestureDetector(
      onTap: _hasSelection && !_submitting ? _submitVote : null,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        decoration: BoxDecoration(
          color: _hasSelection && !_submitting
              ? theme.primaryColor
              : Colors.grey[300],
          borderRadius: BorderRadius.circular(16),
        ),
        child: _submitting
            ? SizedBox(
                width: 16,
                height: 16,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  color: Colors.grey[500],
                ),
              )
            : Text(
                '投票',
                style: TextStyle(
                  color: _hasSelection ? Colors.white : Colors.blue,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
      ),
    );
  }
}
