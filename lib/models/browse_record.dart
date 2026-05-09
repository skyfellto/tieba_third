class BrowseRecord {
  final String tid;
  final String title;
  final String authorName;
  final String? authorPortrait;
  final String forumName;
  final int browseTime;

  BrowseRecord({
    required this.tid,
    required this.title,
    required this.authorName,
    this.authorPortrait,
    required this.forumName,
    required this.browseTime,
  });

  Map<String, dynamic> toJson() => {
        'tid': tid,
        'title': title,
        'authorName': authorName,
        'authorPortrait': authorPortrait,
        'forumName': forumName,
        'browseTime': browseTime,
      };

  factory BrowseRecord.fromJson(Map<String, dynamic> json) => BrowseRecord(
        tid: json['tid']?.toString() ?? '',
        title: json['title']?.toString() ?? '',
        authorName: json['authorName']?.toString() ?? '',
        authorPortrait: json['authorPortrait']?.toString(),
        forumName: json['forumName']?.toString() ?? '',
        browseTime: (json['browseTime'] as num?)?.toInt() ?? 0,
      );

  /// 格式化浏览时间
  String get formattedTime {
    final dateTime =
        DateTime.fromMillisecondsSinceEpoch(browseTime * 1000);
    final now = DateTime.now();
    final diff = now.difference(dateTime);

    if (!diff.isNegative && diff.inMinutes < 1) return '刚刚';
    if (!diff.isNegative && diff.inMinutes <= 40) {
      return '${diff.inMinutes} 分钟前';
    }
    if (now.year == dateTime.year &&
        now.month == dateTime.month &&
        now.day == dateTime.day) {
      return "今天 ${dateTime.hour.toString().padLeft(2, '0')}:${dateTime.minute.toString().padLeft(2, '0')}";
    }
    if (now.year == dateTime.year) {
      return "${dateTime.month.toString().padLeft(2, '0')}-${dateTime.day.toString().padLeft(2, '0')} ${dateTime.hour.toString().padLeft(2, '0')}:${dateTime.minute.toString().padLeft(2, '0')}";
    }
    return "${dateTime.year}-${dateTime.month.toString().padLeft(2, '0')}-${dateTime.day.toString().padLeft(2, '0')} ${dateTime.hour.toString().padLeft(2, '0')}:${dateTime.minute.toString().padLeft(2, '0')}";
  }

  /// 日期标签（用于分组）
  String get dateLabel {
    final dateTime =
        DateTime.fromMillisecondsSinceEpoch(browseTime * 1000);
    final now = DateTime.now();
    if (now.year == dateTime.year &&
        now.month == dateTime.month &&
        now.day == dateTime.day) {
      return '今天';
    }
    return "${dateTime.year}-${dateTime.month.toString().padLeft(2, '0')}-${dateTime.day.toString().padLeft(2, '0')}";
  }
}
