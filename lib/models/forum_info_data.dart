class ForumInfoData {
  final String fid;
  final String name;
  final String avatar;
  final int memberNum;
  final int threadNum;
  final int postNum;
  final String slogan;
  final List<ForumManagerData> managers;

  ForumInfoData({
    required this.fid,
    required this.name,
    required this.avatar,
    required this.memberNum,
    required this.threadNum,
    required this.postNum,
    required this.slogan,
    required this.managers,
  });
}

class ForumManagerData {
  final String portrait;
  final String? showName;
  final String name;

  ForumManagerData({
    required this.portrait,
    this.showName,
    required this.name,
  });
}