class UserProfileData {
  final String uid;
  final String name;
  final String nameShow;
  final String? portrait;
  final String? intro;
  final int sex; // 0=unknown, 1=male, 2=female
  final int postNum;
  final int threadNum;
  final String tbAge;
  final int myLikeNum;
  final int concernNum;
  final int fansNum;
  final int totalAgreeNum;
  final String? ipAddress;
  final String? godFieldName;
  final String? baZhuDesc;

  const UserProfileData({
    required this.uid,
    required this.name,
    required this.nameShow,
    this.portrait,
    this.intro,
    this.sex = 0,
    this.postNum = 0,
    this.threadNum = 0,
    this.tbAge = '',
    this.myLikeNum = 0,
    this.concernNum = 0,
    this.fansNum = 0,
    this.totalAgreeNum = 0,
    this.ipAddress,
    this.godFieldName,
    this.baZhuDesc,
  });

  factory UserProfileData.fromUserProto(dynamic user) {
    return UserProfileData(
      godFieldName: user.newGodData.fieldName ?? '',
      uid: user.id.toInt().toString(),
      name: user.name ?? '',
      nameShow: user.nameShow ?? '',
      portrait: (user.portrait?.isNotEmpty == true) ? user.portrait : null,
      intro: (user.intro?.isNotEmpty == true) ? user.intro : null,
      sex: user.sex ?? 0,
      postNum: user.postNum ?? 0,
      threadNum: user.threadNum ?? 0,
      tbAge: user.tbAge ?? '',
      myLikeNum: user.myLikeNum ?? 0,
      concernNum: user.concernNum ?? 0,
      fansNum: user.fansNum ?? 0,
      totalAgreeNum: user.totalAgreeNum ?? 0,
      ipAddress: (user.ipAddress?.isNotEmpty == true) ? user.ipAddress : null,
      baZhuDesc: user.bazhuGrade.desc ?? "",
    );
  }

  String get sexLabel {
    switch (sex) {
      case 1:
        return '♂';
      case 2:
        return '♀';
      default:
        return '未知';
    }
  }
}
