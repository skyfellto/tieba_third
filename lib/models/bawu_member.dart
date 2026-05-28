class BawuMember {
  final String userId;
  final String userName;
  final String roleName;
  final String portrait;
  final String? userNickname;
  final int levelId;
  final String levelName;

  BawuMember({
    required this.userId,
    required this.userName,
    required this.roleName,
    required this.portrait,
    this.userNickname,
    this.levelId = 0,
    this.levelName = '',
  });

  factory BawuMember.fromJson(Map<String, dynamic> json) {
    return BawuMember(
      userId: '${json['user_id'] ?? ''}',
      userName: '${json['user_name'] ?? ''}',
      roleName: '${json['role_name'] ?? ''}',
      portrait: '${json['portrait'] ?? ''}',
      userNickname: json['user_nickname'] as String?,
      levelId: (json['level_id'] as num?)?.toInt() ?? 0,
      levelName: '${json['level_name'] ?? ''}',
    );
  }

  String get displayName =>
      (userNickname != null && userNickname!.isNotEmpty) ? userNickname! : userName;
}