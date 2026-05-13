class UserBrowseRecord {
  final String uid;
  final String userName;
  final String? nameShow;
  final String? portrait;
  final int browseTime;

  const UserBrowseRecord({
    required this.uid,
    required this.userName,
    this.nameShow,
    this.portrait,
    required this.browseTime,
  });

  String get formattedTime {
    final dt = DateTime.fromMillisecondsSinceEpoch(browseTime * 1000);
    final now = DateTime.now();
    final diff = now.difference(dt);
    if (diff.inMinutes < 1) return '刚刚';
    if (diff.inMinutes <= 40) return '${diff.inMinutes} 分钟前';
    if (now.year == dt.year && now.month == dt.month && now.day == dt.day) {
      return '今天 ${dt.hour.toString().padLeft(2, '0')}:${dt.minute.toString().padLeft(2, '0')}';
    }
    if (now.year == dt.year) {
      return '${dt.month.toString().padLeft(2, '0')}-${dt.day.toString().padLeft(2, '0')} ${dt.hour.toString().padLeft(2, '0')}:${dt.minute.toString().padLeft(2, '0')}';
    }
    return '${dt.year}-${dt.month.toString().padLeft(2, '0')}-${dt.day.toString().padLeft(2, '0')} ${dt.hour.toString().padLeft(2, '0')}:${dt.minute.toString().padLeft(2, '0')}';
  }

  String get dateLabel {
    final dt = DateTime.fromMillisecondsSinceEpoch(browseTime * 1000);
    final now = DateTime.now();
    if (now.year == dt.year && now.month == dt.month && now.day == dt.day) {
      return '今天';
    }
    return '${dt.year}-${dt.month.toString().padLeft(2, '0')}-${dt.day.toString().padLeft(2, '0')}';
  }

  Map<String, dynamic> toJson() => {
    'uid': uid,
    'userName': userName,
    'nameShow': nameShow,
    'portrait': portrait,
    'browseTime': browseTime,
  };

  factory UserBrowseRecord.fromJson(Map<String, dynamic> json) => UserBrowseRecord(
    uid: json['uid']?.toString() ?? '',
    userName: json['userName']?.toString() ?? '',
    nameShow: json['nameShow']?.toString(),
    portrait: json['portrait']?.toString(),
    browseTime: (json['browseTime'] as num?)?.toInt() ?? 0,
  );

  factory UserBrowseRecord.withNow({
    required String uid,
    required String userName,
    String? nameShow,
    String? portrait,
  }) => UserBrowseRecord(
    uid: uid,
    userName: userName,
    nameShow: nameShow,
    portrait: portrait,
    browseTime: DateTime.now().millisecondsSinceEpoch ~/ 1000,
  );
}
