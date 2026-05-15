import 'package:flutter/material.dart';
import '../generated/PollInfo.pb.dart';

class VotePanel extends StatelessWidget {
  final PollInfo pollInfo;

  const VotePanel({super.key, required this.pollInfo});

  String formattedTime(int endtime) {
    final dateTime = DateTime.fromMillisecondsSinceEpoch(
      endtime * 1000,
      isUtc: true,
    ).toLocal();
    final now = DateTime.now();
    if (dateTime.isBefore(now)) {
      return " · 已结束";
    }
    if (now.year == dateTime.year &&
        now.month == dateTime.month &&
        now.day == dateTime.day) {
      return " · ${dateTime.hour.toString().padLeft(2, '0')}:${dateTime.minute.toString().padLeft(2, '0')} 结束";
    }
    if (now.year == dateTime.year) {
      return " · ${dateTime.month.toString().padLeft(2, '0')}-${dateTime.day.toString().padLeft(2, '0')} ${dateTime.hour.toString().padLeft(2, '0')}:${dateTime.minute.toString().padLeft(2, '0')} 结束";
    }
    return " · ${dateTime.year}-${dateTime.month.toString().padLeft(2, '0')}-${dateTime.day.toString().padLeft(2, '0')} ${dateTime.hour.toString().padLeft(2, '0')}:${dateTime.minute.toString().padLeft(2, '0')} 结束";
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    final totalVotes = pollInfo.totalPoll.toInt();
    final totalPersonNum = pollInfo.totalNum.toInt();
    final endtime = pollInfo.endTime.toInt();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 12),
        // 投票标题
        Text(
          '投票·${pollInfo.title}',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 16,
            color: theme.textTheme.bodyLarge?.color,
          ),
        ),
        const SizedBox(height: 12),
        // 投票选项
        ...pollInfo.options.map((option) {
          final optionVotes = option.num.toInt();
          final percentage = totalVotes > 0
              ? (optionVotes / totalVotes * 100).round()
              : 0;
          return Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: SizedBox(
                height: 44,
                child: Stack(
                  children: [
                    // 背景（最底层）
                    Container(
                      decoration: BoxDecoration(
                        color: isDark ? Colors.grey[700] : Colors.grey[100],
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    // 进度条填充（覆盖在背景之上）
                    FractionallySizedBox(
                      widthFactor: totalVotes > 0
                          ? optionVotes / totalVotes
                          : 0,
                      child: Container(
                        decoration: BoxDecoration(
                          color: isDark
                              ? Colors.blue.withValues(alpha: 0.15)
                              : Colors.blue[50],
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                    // 文字（最上层）
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                option.text,
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
                              '$optionVotes人 | $percentage%',
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
            ),
          );
        }),
        // 投票统计
        Text(
          '已有$totalPersonNum位吧友参与投票${endtime > -1 ? formattedTime(endtime) : ''} ',
          style: TextStyle(fontSize: 13, color: Colors.grey[500]),
        ),
        const SizedBox(height: 4),
      ],
    );
  }
}
