class ForumBrowseRecord {
  final String fid;
  final String forumName;
  final String? forumAvatar;
  final int browseTime;

  ForumBrowseRecord({
    required this.fid,
    required this.forumName,
    this.forumAvatar,
    required this.browseTime,
  });

  Map<String, dynamic> toJson() => {
        'fid': fid,
        'forumName': forumName,
        'forumAvatar': forumAvatar,
        'browseTime': browseTime,
      };

  factory ForumBrowseRecord.fromJson(Map<String, dynamic> json) =>
      ForumBrowseRecord(
        fid: json['fid']?.toString() ?? '',
        forumName: json['forumName']?.toString() ?? '',
        forumAvatar: json['forumAvatar']?.toString(),
        browseTime: (json['browseTime'] as num?)?.toInt() ?? 0,
      );

  String get formattedTime {
    final dateTime = DateTime.fromMillisecondsSinceEpoch(browseTime * 1000);
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

  String get dateLabel {
    final dateTime = DateTime.fromMillisecondsSinceEpoch(browseTime * 1000);
    final now = DateTime.now();
    if (now.year == dateTime.year &&
        now.month == dateTime.month &&
        now.day == dateTime.day) {
      return '今天';
    }
    return "${dateTime.year}-${dateTime.month.toString().padLeft(2, '0')}-${dateTime.day.toString().padLeft(2, '0')}";
  }
}
