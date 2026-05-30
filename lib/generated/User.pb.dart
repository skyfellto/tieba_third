// This is a generated file - do not edit.
//
// Generated from User.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'BawuThrones.pb.dart' as $8;
import 'BazhuSign.pb.dart' as $9;
import 'BirthdayInfo.pb.dart' as $6;
import 'GodInfo.pb.dart' as $5;
import 'Icon.pb.dart' as $0;
import 'LikeForumInfo.pb.dart' as $3;
import 'NewGodInfo.pb.dart' as $7;
import 'PrivSets.pb.dart' as $2;
import 'SimpleUser.pb.dart' as $4;
import 'UserGrowth.pb.dart' as $10;
import 'UserPics.pb.dart' as $1;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class User extends $pb.GeneratedMessage {
  factory User({
    $core.int? isLogin,
    $fixnum.Int64? id,
    $core.String? name,
    $core.String? nameShow,
    $core.String? portrait,
    $core.int? noUn,
    $core.int? type,
    $core.int? userhide,
    $core.int? isManager,
    $core.String? rank,
    $core.String? bimgUrl,
    $core.int? meizhiLevel,
    $core.int? isVerify,
    $core.int? isInterestman,
    $core.Iterable<$0.Icon>? iconinfo,
    $core.int? userType,
    $core.int? isCoreuser,
    $core.int? isHuinibuke,
    $core.String? iosBimgFormat,
    $core.int? levelId,
    $core.int? isLike,
    $core.int? isBawu,
    $core.String? bawuType,
    $core.String? portraith,
    $core.String? ip,
    $core.String? bDUSS,
    $core.int? fansNum,
    $core.int? concernNum,
    $core.int? sex,
    $core.int? myLikeNum,
    $core.String? intro,
    $core.int? hasConcerned,
    $core.String? passwd,
    $core.int? postNum,
    $core.String? tbAge,
    $core.int? isMem,
    $core.int? bimgEndTime,
    $core.int? gender,
    $core.int? isMask,
    $core.Iterable<$1.UserPics>? userPics,
    $2.PrivSets? privSets,
    $core.int? isFriend,
    $core.Iterable<$3.LikeForumInfo>? likeForum,
    $core.int? giftNum,
    $core.int? isSelectTail,
    $core.int? isGuanfang,
    $core.int? bookmarkCount,
    $core.int? bookmarkNewCount,
    $core.Iterable<$4.SimpleUser>? muteUser,
    $fixnum.Int64? friendNum,
    $core.String? fansNickname,
    $core.String? bgPic,
    $5.GodInfo? godData,
    $core.int? heavyUser,
    $core.int? visitorNum,
    $core.int? totalVisitorNum,
    $core.int? nicknameUpdateTime,
    $core.int? threadNum,
    $core.int? agreeNum,
    $core.int? leftCallNum,
    $core.int? isInvited,
    $core.int? isFans,
    $core.int? privThread,
    $core.int? isVideobiggie,
    $core.int? isShowRedpacket,
    $6.BirthdayInfo? birthdayInfo,
    $core.int? canModifyAvatar,
    $core.String? modifyAvatarDesc,
    $core.int? influence,
    $core.String? levelInfluence,
    $7.NewGodInfo? newGodData,
    $8.BawuThrones? bawuThrones,
    $9.BazhuSign? bazhuGrade,
    $core.int? isDefaultAvatar,
    $core.int? favoriteNum,
    $core.int? totalAgreeNum,
    $core.String? tiebaUid,
    $core.String? levelName,
    $core.String? ipAddress,
    $core.int? isNicknameEditing,
    $core.String? editingNickname,
    $10.UserGrowth? userGrowth,
    $core.String? displayIntro,
    $core.Iterable<$core.String>? newIconUrl,
    $core.String? dynamicUrl,
  }) {
    final result = create();
    if (isLogin != null) result.isLogin = isLogin;
    if (id != null) result.id = id;
    if (name != null) result.name = name;
    if (nameShow != null) result.nameShow = nameShow;
    if (portrait != null) result.portrait = portrait;
    if (noUn != null) result.noUn = noUn;
    if (type != null) result.type = type;
    if (userhide != null) result.userhide = userhide;
    if (isManager != null) result.isManager = isManager;
    if (rank != null) result.rank = rank;
    if (bimgUrl != null) result.bimgUrl = bimgUrl;
    if (meizhiLevel != null) result.meizhiLevel = meizhiLevel;
    if (isVerify != null) result.isVerify = isVerify;
    if (isInterestman != null) result.isInterestman = isInterestman;
    if (iconinfo != null) result.iconinfo.addAll(iconinfo);
    if (userType != null) result.userType = userType;
    if (isCoreuser != null) result.isCoreuser = isCoreuser;
    if (isHuinibuke != null) result.isHuinibuke = isHuinibuke;
    if (iosBimgFormat != null) result.iosBimgFormat = iosBimgFormat;
    if (levelId != null) result.levelId = levelId;
    if (isLike != null) result.isLike = isLike;
    if (isBawu != null) result.isBawu = isBawu;
    if (bawuType != null) result.bawuType = bawuType;
    if (portraith != null) result.portraith = portraith;
    if (ip != null) result.ip = ip;
    if (bDUSS != null) result.bDUSS = bDUSS;
    if (fansNum != null) result.fansNum = fansNum;
    if (concernNum != null) result.concernNum = concernNum;
    if (sex != null) result.sex = sex;
    if (myLikeNum != null) result.myLikeNum = myLikeNum;
    if (intro != null) result.intro = intro;
    if (hasConcerned != null) result.hasConcerned = hasConcerned;
    if (passwd != null) result.passwd = passwd;
    if (postNum != null) result.postNum = postNum;
    if (tbAge != null) result.tbAge = tbAge;
    if (isMem != null) result.isMem = isMem;
    if (bimgEndTime != null) result.bimgEndTime = bimgEndTime;
    if (gender != null) result.gender = gender;
    if (isMask != null) result.isMask = isMask;
    if (userPics != null) result.userPics.addAll(userPics);
    if (privSets != null) result.privSets = privSets;
    if (isFriend != null) result.isFriend = isFriend;
    if (likeForum != null) result.likeForum.addAll(likeForum);
    if (giftNum != null) result.giftNum = giftNum;
    if (isSelectTail != null) result.isSelectTail = isSelectTail;
    if (isGuanfang != null) result.isGuanfang = isGuanfang;
    if (bookmarkCount != null) result.bookmarkCount = bookmarkCount;
    if (bookmarkNewCount != null) result.bookmarkNewCount = bookmarkNewCount;
    if (muteUser != null) result.muteUser.addAll(muteUser);
    if (friendNum != null) result.friendNum = friendNum;
    if (fansNickname != null) result.fansNickname = fansNickname;
    if (bgPic != null) result.bgPic = bgPic;
    if (godData != null) result.godData = godData;
    if (heavyUser != null) result.heavyUser = heavyUser;
    if (visitorNum != null) result.visitorNum = visitorNum;
    if (totalVisitorNum != null) result.totalVisitorNum = totalVisitorNum;
    if (nicknameUpdateTime != null)
      result.nicknameUpdateTime = nicknameUpdateTime;
    if (threadNum != null) result.threadNum = threadNum;
    if (agreeNum != null) result.agreeNum = agreeNum;
    if (leftCallNum != null) result.leftCallNum = leftCallNum;
    if (isInvited != null) result.isInvited = isInvited;
    if (isFans != null) result.isFans = isFans;
    if (privThread != null) result.privThread = privThread;
    if (isVideobiggie != null) result.isVideobiggie = isVideobiggie;
    if (isShowRedpacket != null) result.isShowRedpacket = isShowRedpacket;
    if (birthdayInfo != null) result.birthdayInfo = birthdayInfo;
    if (canModifyAvatar != null) result.canModifyAvatar = canModifyAvatar;
    if (modifyAvatarDesc != null) result.modifyAvatarDesc = modifyAvatarDesc;
    if (influence != null) result.influence = influence;
    if (levelInfluence != null) result.levelInfluence = levelInfluence;
    if (newGodData != null) result.newGodData = newGodData;
    if (bawuThrones != null) result.bawuThrones = bawuThrones;
    if (bazhuGrade != null) result.bazhuGrade = bazhuGrade;
    if (isDefaultAvatar != null) result.isDefaultAvatar = isDefaultAvatar;
    if (favoriteNum != null) result.favoriteNum = favoriteNum;
    if (totalAgreeNum != null) result.totalAgreeNum = totalAgreeNum;
    if (tiebaUid != null) result.tiebaUid = tiebaUid;
    if (levelName != null) result.levelName = levelName;
    if (ipAddress != null) result.ipAddress = ipAddress;
    if (isNicknameEditing != null) result.isNicknameEditing = isNicknameEditing;
    if (editingNickname != null) result.editingNickname = editingNickname;
    if (userGrowth != null) result.userGrowth = userGrowth;
    if (displayIntro != null) result.displayIntro = displayIntro;
    if (newIconUrl != null) result.newIconUrl.addAll(newIconUrl);
    if (dynamicUrl != null) result.dynamicUrl = dynamicUrl;
    return result;
  }

  User._();

  factory User.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory User.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'User',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'isLogin')
    ..aInt64(2, _omitFieldNames ? '' : 'id')
    ..aOS(3, _omitFieldNames ? '' : 'name')
    ..aOS(4, _omitFieldNames ? '' : 'nameShow', protoName: 'nameShow')
    ..aOS(5, _omitFieldNames ? '' : 'portrait')
    ..aI(6, _omitFieldNames ? '' : 'noUn')
    ..aI(7, _omitFieldNames ? '' : 'type')
    ..aI(9, _omitFieldNames ? '' : 'userhide')
    ..aI(11, _omitFieldNames ? '' : 'isManager')
    ..aOS(12, _omitFieldNames ? '' : 'rank')
    ..aOS(13, _omitFieldNames ? '' : 'bimgUrl')
    ..aI(14, _omitFieldNames ? '' : 'meizhiLevel')
    ..aI(15, _omitFieldNames ? '' : 'isVerify')
    ..aI(16, _omitFieldNames ? '' : 'isInterestman')
    ..pPM<$0.Icon>(17, _omitFieldNames ? '' : 'iconinfo',
        subBuilder: $0.Icon.create)
    ..aI(19, _omitFieldNames ? '' : 'userType')
    ..aI(20, _omitFieldNames ? '' : 'isCoreuser')
    ..aI(21, _omitFieldNames ? '' : 'isHuinibuke')
    ..aOS(22, _omitFieldNames ? '' : 'iosBimgFormat')
    ..aI(23, _omitFieldNames ? '' : 'levelId')
    ..aI(24, _omitFieldNames ? '' : 'isLike')
    ..aI(25, _omitFieldNames ? '' : 'isBawu')
    ..aOS(26, _omitFieldNames ? '' : 'bawuType')
    ..aOS(27, _omitFieldNames ? '' : 'portraith')
    ..aOS(28, _omitFieldNames ? '' : 'ip')
    ..aOS(29, _omitFieldNames ? '' : 'BDUSS', protoName: 'BDUSS')
    ..aI(30, _omitFieldNames ? '' : 'fansNum')
    ..aI(31, _omitFieldNames ? '' : 'concernNum')
    ..aI(32, _omitFieldNames ? '' : 'sex')
    ..aI(33, _omitFieldNames ? '' : 'myLikeNum')
    ..aOS(34, _omitFieldNames ? '' : 'intro')
    ..aI(35, _omitFieldNames ? '' : 'hasConcerned')
    ..aOS(36, _omitFieldNames ? '' : 'passwd')
    ..aI(37, _omitFieldNames ? '' : 'postNum')
    ..aOS(38, _omitFieldNames ? '' : 'tbAge')
    ..aI(39, _omitFieldNames ? '' : 'isMem')
    ..aI(40, _omitFieldNames ? '' : 'bimgEndTime')
    ..aI(42, _omitFieldNames ? '' : 'gender')
    ..aI(43, _omitFieldNames ? '' : 'isMask')
    ..pPM<$1.UserPics>(44, _omitFieldNames ? '' : 'userPics',
        subBuilder: $1.UserPics.create)
    ..aOM<$2.PrivSets>(45, _omitFieldNames ? '' : 'privSets',
        protoName: 'privSets', subBuilder: $2.PrivSets.create)
    ..aI(46, _omitFieldNames ? '' : 'isFriend')
    ..pPM<$3.LikeForumInfo>(47, _omitFieldNames ? '' : 'likeForum',
        protoName: 'likeForum', subBuilder: $3.LikeForumInfo.create)
    ..aI(49, _omitFieldNames ? '' : 'giftNum')
    ..aI(51, _omitFieldNames ? '' : 'isSelectTail')
    ..aI(52, _omitFieldNames ? '' : 'isGuanfang')
    ..aI(53, _omitFieldNames ? '' : 'bookmarkCount')
    ..aI(54, _omitFieldNames ? '' : 'bookmarkNewCount')
    ..pPM<$4.SimpleUser>(55, _omitFieldNames ? '' : 'muteUser',
        subBuilder: $4.SimpleUser.create)
    ..aInt64(56, _omitFieldNames ? '' : 'friendNum')
    ..aOS(57, _omitFieldNames ? '' : 'fansNickname', protoName: 'fansNickname')
    ..aOS(58, _omitFieldNames ? '' : 'bgPic')
    ..aOM<$5.GodInfo>(62, _omitFieldNames ? '' : 'godData',
        subBuilder: $5.GodInfo.create)
    ..aI(63, _omitFieldNames ? '' : 'heavyUser')
    ..aI(75, _omitFieldNames ? '' : 'visitorNum')
    ..aI(76, _omitFieldNames ? '' : 'totalVisitorNum')
    ..aI(86, _omitFieldNames ? '' : 'nicknameUpdateTime')
    ..aI(87, _omitFieldNames ? '' : 'threadNum')
    ..aI(88, _omitFieldNames ? '' : 'agreeNum')
    ..aI(89, _omitFieldNames ? '' : 'leftCallNum')
    ..aI(90, _omitFieldNames ? '' : 'isInvited')
    ..aI(91, _omitFieldNames ? '' : 'isFans')
    ..aI(92, _omitFieldNames ? '' : 'privThread')
    ..aI(93, _omitFieldNames ? '' : 'isVideobiggie')
    ..aI(94, _omitFieldNames ? '' : 'isShowRedpacket')
    ..aOM<$6.BirthdayInfo>(96, _omitFieldNames ? '' : 'birthdayInfo',
        subBuilder: $6.BirthdayInfo.create)
    ..aI(97, _omitFieldNames ? '' : 'canModifyAvatar')
    ..aOS(98, _omitFieldNames ? '' : 'modifyAvatarDesc')
    ..aI(99, _omitFieldNames ? '' : 'influence')
    ..aOS(100, _omitFieldNames ? '' : 'levelInfluence')
    ..aOM<$7.NewGodInfo>(101, _omitFieldNames ? '' : 'newGodData',
        subBuilder: $7.NewGodInfo.create)
    ..aOM<$8.BawuThrones>(103, _omitFieldNames ? '' : 'bawuThrones',
        subBuilder: $8.BawuThrones.create)
    ..aOM<$9.BazhuSign>(105, _omitFieldNames ? '' : 'bazhuGrade',
        subBuilder: $9.BazhuSign.create)
    ..aI(106, _omitFieldNames ? '' : 'isDefaultAvatar',
        protoName: 'isDefaultAvatar')
    ..aI(109, _omitFieldNames ? '' : 'favoriteNum')
    ..aI(118, _omitFieldNames ? '' : 'totalAgreeNum',
        fieldType: $pb.PbFieldType.OU3)
    ..aOS(120, _omitFieldNames ? '' : 'tiebaUid')
    ..aOS(125, _omitFieldNames ? '' : 'levelName')
    ..aOS(127, _omitFieldNames ? '' : 'ipAddress')
    ..aI(128, _omitFieldNames ? '' : 'isNicknameEditing')
    ..aOS(129, _omitFieldNames ? '' : 'editingNickname')
    ..aOM<$10.UserGrowth>(137, _omitFieldNames ? '' : 'userGrowth',
        subBuilder: $10.UserGrowth.create)
    ..aOS(138, _omitFieldNames ? '' : 'displayIntro')
    ..pPS(139, _omitFieldNames ? '' : 'newIconUrl')
    ..aOS(140, _omitFieldNames ? '' : 'dynamicUrl')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  User clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  User copyWith(void Function(User) updates) =>
      super.copyWith((message) => updates(message as User)) as User;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static User create() => User._();
  @$core.override
  User createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static User getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<User>(create);
  static User? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get isLogin => $_getIZ(0);
  @$pb.TagNumber(1)
  set isLogin($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasIsLogin() => $_has(0);
  @$pb.TagNumber(1)
  void clearIsLogin() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get id => $_getI64(1);
  @$pb.TagNumber(2)
  set id($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasId() => $_has(1);
  @$pb.TagNumber(2)
  void clearId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get nameShow => $_getSZ(3);
  @$pb.TagNumber(4)
  set nameShow($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasNameShow() => $_has(3);
  @$pb.TagNumber(4)
  void clearNameShow() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get portrait => $_getSZ(4);
  @$pb.TagNumber(5)
  set portrait($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasPortrait() => $_has(4);
  @$pb.TagNumber(5)
  void clearPortrait() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get noUn => $_getIZ(5);
  @$pb.TagNumber(6)
  set noUn($core.int value) => $_setSignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasNoUn() => $_has(5);
  @$pb.TagNumber(6)
  void clearNoUn() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.int get type => $_getIZ(6);
  @$pb.TagNumber(7)
  set type($core.int value) => $_setSignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasType() => $_has(6);
  @$pb.TagNumber(7)
  void clearType() => $_clearField(7);

  @$pb.TagNumber(9)
  $core.int get userhide => $_getIZ(7);
  @$pb.TagNumber(9)
  set userhide($core.int value) => $_setSignedInt32(7, value);
  @$pb.TagNumber(9)
  $core.bool hasUserhide() => $_has(7);
  @$pb.TagNumber(9)
  void clearUserhide() => $_clearField(9);

  @$pb.TagNumber(11)
  $core.int get isManager => $_getIZ(8);
  @$pb.TagNumber(11)
  set isManager($core.int value) => $_setSignedInt32(8, value);
  @$pb.TagNumber(11)
  $core.bool hasIsManager() => $_has(8);
  @$pb.TagNumber(11)
  void clearIsManager() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.String get rank => $_getSZ(9);
  @$pb.TagNumber(12)
  set rank($core.String value) => $_setString(9, value);
  @$pb.TagNumber(12)
  $core.bool hasRank() => $_has(9);
  @$pb.TagNumber(12)
  void clearRank() => $_clearField(12);

  @$pb.TagNumber(13)
  $core.String get bimgUrl => $_getSZ(10);
  @$pb.TagNumber(13)
  set bimgUrl($core.String value) => $_setString(10, value);
  @$pb.TagNumber(13)
  $core.bool hasBimgUrl() => $_has(10);
  @$pb.TagNumber(13)
  void clearBimgUrl() => $_clearField(13);

  @$pb.TagNumber(14)
  $core.int get meizhiLevel => $_getIZ(11);
  @$pb.TagNumber(14)
  set meizhiLevel($core.int value) => $_setSignedInt32(11, value);
  @$pb.TagNumber(14)
  $core.bool hasMeizhiLevel() => $_has(11);
  @$pb.TagNumber(14)
  void clearMeizhiLevel() => $_clearField(14);

  @$pb.TagNumber(15)
  $core.int get isVerify => $_getIZ(12);
  @$pb.TagNumber(15)
  set isVerify($core.int value) => $_setSignedInt32(12, value);
  @$pb.TagNumber(15)
  $core.bool hasIsVerify() => $_has(12);
  @$pb.TagNumber(15)
  void clearIsVerify() => $_clearField(15);

  @$pb.TagNumber(16)
  $core.int get isInterestman => $_getIZ(13);
  @$pb.TagNumber(16)
  set isInterestman($core.int value) => $_setSignedInt32(13, value);
  @$pb.TagNumber(16)
  $core.bool hasIsInterestman() => $_has(13);
  @$pb.TagNumber(16)
  void clearIsInterestman() => $_clearField(16);

  @$pb.TagNumber(17)
  $pb.PbList<$0.Icon> get iconinfo => $_getList(14);

  @$pb.TagNumber(19)
  $core.int get userType => $_getIZ(15);
  @$pb.TagNumber(19)
  set userType($core.int value) => $_setSignedInt32(15, value);
  @$pb.TagNumber(19)
  $core.bool hasUserType() => $_has(15);
  @$pb.TagNumber(19)
  void clearUserType() => $_clearField(19);

  @$pb.TagNumber(20)
  $core.int get isCoreuser => $_getIZ(16);
  @$pb.TagNumber(20)
  set isCoreuser($core.int value) => $_setSignedInt32(16, value);
  @$pb.TagNumber(20)
  $core.bool hasIsCoreuser() => $_has(16);
  @$pb.TagNumber(20)
  void clearIsCoreuser() => $_clearField(20);

  @$pb.TagNumber(21)
  $core.int get isHuinibuke => $_getIZ(17);
  @$pb.TagNumber(21)
  set isHuinibuke($core.int value) => $_setSignedInt32(17, value);
  @$pb.TagNumber(21)
  $core.bool hasIsHuinibuke() => $_has(17);
  @$pb.TagNumber(21)
  void clearIsHuinibuke() => $_clearField(21);

  @$pb.TagNumber(22)
  $core.String get iosBimgFormat => $_getSZ(18);
  @$pb.TagNumber(22)
  set iosBimgFormat($core.String value) => $_setString(18, value);
  @$pb.TagNumber(22)
  $core.bool hasIosBimgFormat() => $_has(18);
  @$pb.TagNumber(22)
  void clearIosBimgFormat() => $_clearField(22);

  @$pb.TagNumber(23)
  $core.int get levelId => $_getIZ(19);
  @$pb.TagNumber(23)
  set levelId($core.int value) => $_setSignedInt32(19, value);
  @$pb.TagNumber(23)
  $core.bool hasLevelId() => $_has(19);
  @$pb.TagNumber(23)
  void clearLevelId() => $_clearField(23);

  @$pb.TagNumber(24)
  $core.int get isLike => $_getIZ(20);
  @$pb.TagNumber(24)
  set isLike($core.int value) => $_setSignedInt32(20, value);
  @$pb.TagNumber(24)
  $core.bool hasIsLike() => $_has(20);
  @$pb.TagNumber(24)
  void clearIsLike() => $_clearField(24);

  @$pb.TagNumber(25)
  $core.int get isBawu => $_getIZ(21);
  @$pb.TagNumber(25)
  set isBawu($core.int value) => $_setSignedInt32(21, value);
  @$pb.TagNumber(25)
  $core.bool hasIsBawu() => $_has(21);
  @$pb.TagNumber(25)
  void clearIsBawu() => $_clearField(25);

  @$pb.TagNumber(26)
  $core.String get bawuType => $_getSZ(22);
  @$pb.TagNumber(26)
  set bawuType($core.String value) => $_setString(22, value);
  @$pb.TagNumber(26)
  $core.bool hasBawuType() => $_has(22);
  @$pb.TagNumber(26)
  void clearBawuType() => $_clearField(26);

  @$pb.TagNumber(27)
  $core.String get portraith => $_getSZ(23);
  @$pb.TagNumber(27)
  set portraith($core.String value) => $_setString(23, value);
  @$pb.TagNumber(27)
  $core.bool hasPortraith() => $_has(23);
  @$pb.TagNumber(27)
  void clearPortraith() => $_clearField(27);

  @$pb.TagNumber(28)
  $core.String get ip => $_getSZ(24);
  @$pb.TagNumber(28)
  set ip($core.String value) => $_setString(24, value);
  @$pb.TagNumber(28)
  $core.bool hasIp() => $_has(24);
  @$pb.TagNumber(28)
  void clearIp() => $_clearField(28);

  @$pb.TagNumber(29)
  $core.String get bDUSS => $_getSZ(25);
  @$pb.TagNumber(29)
  set bDUSS($core.String value) => $_setString(25, value);
  @$pb.TagNumber(29)
  $core.bool hasBDUSS() => $_has(25);
  @$pb.TagNumber(29)
  void clearBDUSS() => $_clearField(29);

  @$pb.TagNumber(30)
  $core.int get fansNum => $_getIZ(26);
  @$pb.TagNumber(30)
  set fansNum($core.int value) => $_setSignedInt32(26, value);
  @$pb.TagNumber(30)
  $core.bool hasFansNum() => $_has(26);
  @$pb.TagNumber(30)
  void clearFansNum() => $_clearField(30);

  @$pb.TagNumber(31)
  $core.int get concernNum => $_getIZ(27);
  @$pb.TagNumber(31)
  set concernNum($core.int value) => $_setSignedInt32(27, value);
  @$pb.TagNumber(31)
  $core.bool hasConcernNum() => $_has(27);
  @$pb.TagNumber(31)
  void clearConcernNum() => $_clearField(31);

  @$pb.TagNumber(32)
  $core.int get sex => $_getIZ(28);
  @$pb.TagNumber(32)
  set sex($core.int value) => $_setSignedInt32(28, value);
  @$pb.TagNumber(32)
  $core.bool hasSex() => $_has(28);
  @$pb.TagNumber(32)
  void clearSex() => $_clearField(32);

  @$pb.TagNumber(33)
  $core.int get myLikeNum => $_getIZ(29);
  @$pb.TagNumber(33)
  set myLikeNum($core.int value) => $_setSignedInt32(29, value);
  @$pb.TagNumber(33)
  $core.bool hasMyLikeNum() => $_has(29);
  @$pb.TagNumber(33)
  void clearMyLikeNum() => $_clearField(33);

  @$pb.TagNumber(34)
  $core.String get intro => $_getSZ(30);
  @$pb.TagNumber(34)
  set intro($core.String value) => $_setString(30, value);
  @$pb.TagNumber(34)
  $core.bool hasIntro() => $_has(30);
  @$pb.TagNumber(34)
  void clearIntro() => $_clearField(34);

  @$pb.TagNumber(35)
  $core.int get hasConcerned => $_getIZ(31);
  @$pb.TagNumber(35)
  set hasConcerned($core.int value) => $_setSignedInt32(31, value);
  @$pb.TagNumber(35)
  $core.bool hasHasConcerned() => $_has(31);
  @$pb.TagNumber(35)
  void clearHasConcerned() => $_clearField(35);

  @$pb.TagNumber(36)
  $core.String get passwd => $_getSZ(32);
  @$pb.TagNumber(36)
  set passwd($core.String value) => $_setString(32, value);
  @$pb.TagNumber(36)
  $core.bool hasPasswd() => $_has(32);
  @$pb.TagNumber(36)
  void clearPasswd() => $_clearField(36);

  @$pb.TagNumber(37)
  $core.int get postNum => $_getIZ(33);
  @$pb.TagNumber(37)
  set postNum($core.int value) => $_setSignedInt32(33, value);
  @$pb.TagNumber(37)
  $core.bool hasPostNum() => $_has(33);
  @$pb.TagNumber(37)
  void clearPostNum() => $_clearField(37);

  @$pb.TagNumber(38)
  $core.String get tbAge => $_getSZ(34);
  @$pb.TagNumber(38)
  set tbAge($core.String value) => $_setString(34, value);
  @$pb.TagNumber(38)
  $core.bool hasTbAge() => $_has(34);
  @$pb.TagNumber(38)
  void clearTbAge() => $_clearField(38);

  @$pb.TagNumber(39)
  $core.int get isMem => $_getIZ(35);
  @$pb.TagNumber(39)
  set isMem($core.int value) => $_setSignedInt32(35, value);
  @$pb.TagNumber(39)
  $core.bool hasIsMem() => $_has(35);
  @$pb.TagNumber(39)
  void clearIsMem() => $_clearField(39);

  @$pb.TagNumber(40)
  $core.int get bimgEndTime => $_getIZ(36);
  @$pb.TagNumber(40)
  set bimgEndTime($core.int value) => $_setSignedInt32(36, value);
  @$pb.TagNumber(40)
  $core.bool hasBimgEndTime() => $_has(36);
  @$pb.TagNumber(40)
  void clearBimgEndTime() => $_clearField(40);

  @$pb.TagNumber(42)
  $core.int get gender => $_getIZ(37);
  @$pb.TagNumber(42)
  set gender($core.int value) => $_setSignedInt32(37, value);
  @$pb.TagNumber(42)
  $core.bool hasGender() => $_has(37);
  @$pb.TagNumber(42)
  void clearGender() => $_clearField(42);

  @$pb.TagNumber(43)
  $core.int get isMask => $_getIZ(38);
  @$pb.TagNumber(43)
  set isMask($core.int value) => $_setSignedInt32(38, value);
  @$pb.TagNumber(43)
  $core.bool hasIsMask() => $_has(38);
  @$pb.TagNumber(43)
  void clearIsMask() => $_clearField(43);

  @$pb.TagNumber(44)
  $pb.PbList<$1.UserPics> get userPics => $_getList(39);

  @$pb.TagNumber(45)
  $2.PrivSets get privSets => $_getN(40);
  @$pb.TagNumber(45)
  set privSets($2.PrivSets value) => $_setField(45, value);
  @$pb.TagNumber(45)
  $core.bool hasPrivSets() => $_has(40);
  @$pb.TagNumber(45)
  void clearPrivSets() => $_clearField(45);
  @$pb.TagNumber(45)
  $2.PrivSets ensurePrivSets() => $_ensure(40);

  @$pb.TagNumber(46)
  $core.int get isFriend => $_getIZ(41);
  @$pb.TagNumber(46)
  set isFriend($core.int value) => $_setSignedInt32(41, value);
  @$pb.TagNumber(46)
  $core.bool hasIsFriend() => $_has(41);
  @$pb.TagNumber(46)
  void clearIsFriend() => $_clearField(46);

  @$pb.TagNumber(47)
  $pb.PbList<$3.LikeForumInfo> get likeForum => $_getList(42);

  @$pb.TagNumber(49)
  $core.int get giftNum => $_getIZ(43);
  @$pb.TagNumber(49)
  set giftNum($core.int value) => $_setSignedInt32(43, value);
  @$pb.TagNumber(49)
  $core.bool hasGiftNum() => $_has(43);
  @$pb.TagNumber(49)
  void clearGiftNum() => $_clearField(49);

  @$pb.TagNumber(51)
  $core.int get isSelectTail => $_getIZ(44);
  @$pb.TagNumber(51)
  set isSelectTail($core.int value) => $_setSignedInt32(44, value);
  @$pb.TagNumber(51)
  $core.bool hasIsSelectTail() => $_has(44);
  @$pb.TagNumber(51)
  void clearIsSelectTail() => $_clearField(51);

  @$pb.TagNumber(52)
  $core.int get isGuanfang => $_getIZ(45);
  @$pb.TagNumber(52)
  set isGuanfang($core.int value) => $_setSignedInt32(45, value);
  @$pb.TagNumber(52)
  $core.bool hasIsGuanfang() => $_has(45);
  @$pb.TagNumber(52)
  void clearIsGuanfang() => $_clearField(52);

  @$pb.TagNumber(53)
  $core.int get bookmarkCount => $_getIZ(46);
  @$pb.TagNumber(53)
  set bookmarkCount($core.int value) => $_setSignedInt32(46, value);
  @$pb.TagNumber(53)
  $core.bool hasBookmarkCount() => $_has(46);
  @$pb.TagNumber(53)
  void clearBookmarkCount() => $_clearField(53);

  @$pb.TagNumber(54)
  $core.int get bookmarkNewCount => $_getIZ(47);
  @$pb.TagNumber(54)
  set bookmarkNewCount($core.int value) => $_setSignedInt32(47, value);
  @$pb.TagNumber(54)
  $core.bool hasBookmarkNewCount() => $_has(47);
  @$pb.TagNumber(54)
  void clearBookmarkNewCount() => $_clearField(54);

  @$pb.TagNumber(55)
  $pb.PbList<$4.SimpleUser> get muteUser => $_getList(48);

  @$pb.TagNumber(56)
  $fixnum.Int64 get friendNum => $_getI64(49);
  @$pb.TagNumber(56)
  set friendNum($fixnum.Int64 value) => $_setInt64(49, value);
  @$pb.TagNumber(56)
  $core.bool hasFriendNum() => $_has(49);
  @$pb.TagNumber(56)
  void clearFriendNum() => $_clearField(56);

  @$pb.TagNumber(57)
  $core.String get fansNickname => $_getSZ(50);
  @$pb.TagNumber(57)
  set fansNickname($core.String value) => $_setString(50, value);
  @$pb.TagNumber(57)
  $core.bool hasFansNickname() => $_has(50);
  @$pb.TagNumber(57)
  void clearFansNickname() => $_clearField(57);

  @$pb.TagNumber(58)
  $core.String get bgPic => $_getSZ(51);
  @$pb.TagNumber(58)
  set bgPic($core.String value) => $_setString(51, value);
  @$pb.TagNumber(58)
  $core.bool hasBgPic() => $_has(51);
  @$pb.TagNumber(58)
  void clearBgPic() => $_clearField(58);

  @$pb.TagNumber(62)
  $5.GodInfo get godData => $_getN(52);
  @$pb.TagNumber(62)
  set godData($5.GodInfo value) => $_setField(62, value);
  @$pb.TagNumber(62)
  $core.bool hasGodData() => $_has(52);
  @$pb.TagNumber(62)
  void clearGodData() => $_clearField(62);
  @$pb.TagNumber(62)
  $5.GodInfo ensureGodData() => $_ensure(52);

  @$pb.TagNumber(63)
  $core.int get heavyUser => $_getIZ(53);
  @$pb.TagNumber(63)
  set heavyUser($core.int value) => $_setSignedInt32(53, value);
  @$pb.TagNumber(63)
  $core.bool hasHeavyUser() => $_has(53);
  @$pb.TagNumber(63)
  void clearHeavyUser() => $_clearField(63);

  @$pb.TagNumber(75)
  $core.int get visitorNum => $_getIZ(54);
  @$pb.TagNumber(75)
  set visitorNum($core.int value) => $_setSignedInt32(54, value);
  @$pb.TagNumber(75)
  $core.bool hasVisitorNum() => $_has(54);
  @$pb.TagNumber(75)
  void clearVisitorNum() => $_clearField(75);

  @$pb.TagNumber(76)
  $core.int get totalVisitorNum => $_getIZ(55);
  @$pb.TagNumber(76)
  set totalVisitorNum($core.int value) => $_setSignedInt32(55, value);
  @$pb.TagNumber(76)
  $core.bool hasTotalVisitorNum() => $_has(55);
  @$pb.TagNumber(76)
  void clearTotalVisitorNum() => $_clearField(76);

  @$pb.TagNumber(86)
  $core.int get nicknameUpdateTime => $_getIZ(56);
  @$pb.TagNumber(86)
  set nicknameUpdateTime($core.int value) => $_setSignedInt32(56, value);
  @$pb.TagNumber(86)
  $core.bool hasNicknameUpdateTime() => $_has(56);
  @$pb.TagNumber(86)
  void clearNicknameUpdateTime() => $_clearField(86);

  @$pb.TagNumber(87)
  $core.int get threadNum => $_getIZ(57);
  @$pb.TagNumber(87)
  set threadNum($core.int value) => $_setSignedInt32(57, value);
  @$pb.TagNumber(87)
  $core.bool hasThreadNum() => $_has(57);
  @$pb.TagNumber(87)
  void clearThreadNum() => $_clearField(87);

  @$pb.TagNumber(88)
  $core.int get agreeNum => $_getIZ(58);
  @$pb.TagNumber(88)
  set agreeNum($core.int value) => $_setSignedInt32(58, value);
  @$pb.TagNumber(88)
  $core.bool hasAgreeNum() => $_has(58);
  @$pb.TagNumber(88)
  void clearAgreeNum() => $_clearField(88);

  @$pb.TagNumber(89)
  $core.int get leftCallNum => $_getIZ(59);
  @$pb.TagNumber(89)
  set leftCallNum($core.int value) => $_setSignedInt32(59, value);
  @$pb.TagNumber(89)
  $core.bool hasLeftCallNum() => $_has(59);
  @$pb.TagNumber(89)
  void clearLeftCallNum() => $_clearField(89);

  @$pb.TagNumber(90)
  $core.int get isInvited => $_getIZ(60);
  @$pb.TagNumber(90)
  set isInvited($core.int value) => $_setSignedInt32(60, value);
  @$pb.TagNumber(90)
  $core.bool hasIsInvited() => $_has(60);
  @$pb.TagNumber(90)
  void clearIsInvited() => $_clearField(90);

  @$pb.TagNumber(91)
  $core.int get isFans => $_getIZ(61);
  @$pb.TagNumber(91)
  set isFans($core.int value) => $_setSignedInt32(61, value);
  @$pb.TagNumber(91)
  $core.bool hasIsFans() => $_has(61);
  @$pb.TagNumber(91)
  void clearIsFans() => $_clearField(91);

  @$pb.TagNumber(92)
  $core.int get privThread => $_getIZ(62);
  @$pb.TagNumber(92)
  set privThread($core.int value) => $_setSignedInt32(62, value);
  @$pb.TagNumber(92)
  $core.bool hasPrivThread() => $_has(62);
  @$pb.TagNumber(92)
  void clearPrivThread() => $_clearField(92);

  @$pb.TagNumber(93)
  $core.int get isVideobiggie => $_getIZ(63);
  @$pb.TagNumber(93)
  set isVideobiggie($core.int value) => $_setSignedInt32(63, value);
  @$pb.TagNumber(93)
  $core.bool hasIsVideobiggie() => $_has(63);
  @$pb.TagNumber(93)
  void clearIsVideobiggie() => $_clearField(93);

  @$pb.TagNumber(94)
  $core.int get isShowRedpacket => $_getIZ(64);
  @$pb.TagNumber(94)
  set isShowRedpacket($core.int value) => $_setSignedInt32(64, value);
  @$pb.TagNumber(94)
  $core.bool hasIsShowRedpacket() => $_has(64);
  @$pb.TagNumber(94)
  void clearIsShowRedpacket() => $_clearField(94);

  @$pb.TagNumber(96)
  $6.BirthdayInfo get birthdayInfo => $_getN(65);
  @$pb.TagNumber(96)
  set birthdayInfo($6.BirthdayInfo value) => $_setField(96, value);
  @$pb.TagNumber(96)
  $core.bool hasBirthdayInfo() => $_has(65);
  @$pb.TagNumber(96)
  void clearBirthdayInfo() => $_clearField(96);
  @$pb.TagNumber(96)
  $6.BirthdayInfo ensureBirthdayInfo() => $_ensure(65);

  @$pb.TagNumber(97)
  $core.int get canModifyAvatar => $_getIZ(66);
  @$pb.TagNumber(97)
  set canModifyAvatar($core.int value) => $_setSignedInt32(66, value);
  @$pb.TagNumber(97)
  $core.bool hasCanModifyAvatar() => $_has(66);
  @$pb.TagNumber(97)
  void clearCanModifyAvatar() => $_clearField(97);

  @$pb.TagNumber(98)
  $core.String get modifyAvatarDesc => $_getSZ(67);
  @$pb.TagNumber(98)
  set modifyAvatarDesc($core.String value) => $_setString(67, value);
  @$pb.TagNumber(98)
  $core.bool hasModifyAvatarDesc() => $_has(67);
  @$pb.TagNumber(98)
  void clearModifyAvatarDesc() => $_clearField(98);

  @$pb.TagNumber(99)
  $core.int get influence => $_getIZ(68);
  @$pb.TagNumber(99)
  set influence($core.int value) => $_setSignedInt32(68, value);
  @$pb.TagNumber(99)
  $core.bool hasInfluence() => $_has(68);
  @$pb.TagNumber(99)
  void clearInfluence() => $_clearField(99);

  @$pb.TagNumber(100)
  $core.String get levelInfluence => $_getSZ(69);
  @$pb.TagNumber(100)
  set levelInfluence($core.String value) => $_setString(69, value);
  @$pb.TagNumber(100)
  $core.bool hasLevelInfluence() => $_has(69);
  @$pb.TagNumber(100)
  void clearLevelInfluence() => $_clearField(100);

  @$pb.TagNumber(101)
  $7.NewGodInfo get newGodData => $_getN(70);
  @$pb.TagNumber(101)
  set newGodData($7.NewGodInfo value) => $_setField(101, value);
  @$pb.TagNumber(101)
  $core.bool hasNewGodData() => $_has(70);
  @$pb.TagNumber(101)
  void clearNewGodData() => $_clearField(101);
  @$pb.TagNumber(101)
  $7.NewGodInfo ensureNewGodData() => $_ensure(70);

  @$pb.TagNumber(103)
  $8.BawuThrones get bawuThrones => $_getN(71);
  @$pb.TagNumber(103)
  set bawuThrones($8.BawuThrones value) => $_setField(103, value);
  @$pb.TagNumber(103)
  $core.bool hasBawuThrones() => $_has(71);
  @$pb.TagNumber(103)
  void clearBawuThrones() => $_clearField(103);
  @$pb.TagNumber(103)
  $8.BawuThrones ensureBawuThrones() => $_ensure(71);

  @$pb.TagNumber(105)
  $9.BazhuSign get bazhuGrade => $_getN(72);
  @$pb.TagNumber(105)
  set bazhuGrade($9.BazhuSign value) => $_setField(105, value);
  @$pb.TagNumber(105)
  $core.bool hasBazhuGrade() => $_has(72);
  @$pb.TagNumber(105)
  void clearBazhuGrade() => $_clearField(105);
  @$pb.TagNumber(105)
  $9.BazhuSign ensureBazhuGrade() => $_ensure(72);

  @$pb.TagNumber(106)
  $core.int get isDefaultAvatar => $_getIZ(73);
  @$pb.TagNumber(106)
  set isDefaultAvatar($core.int value) => $_setSignedInt32(73, value);
  @$pb.TagNumber(106)
  $core.bool hasIsDefaultAvatar() => $_has(73);
  @$pb.TagNumber(106)
  void clearIsDefaultAvatar() => $_clearField(106);

  @$pb.TagNumber(109)
  $core.int get favoriteNum => $_getIZ(74);
  @$pb.TagNumber(109)
  set favoriteNum($core.int value) => $_setSignedInt32(74, value);
  @$pb.TagNumber(109)
  $core.bool hasFavoriteNum() => $_has(74);
  @$pb.TagNumber(109)
  void clearFavoriteNum() => $_clearField(109);

  @$pb.TagNumber(118)
  $core.int get totalAgreeNum => $_getIZ(75);
  @$pb.TagNumber(118)
  set totalAgreeNum($core.int value) => $_setUnsignedInt32(75, value);
  @$pb.TagNumber(118)
  $core.bool hasTotalAgreeNum() => $_has(75);
  @$pb.TagNumber(118)
  void clearTotalAgreeNum() => $_clearField(118);

  @$pb.TagNumber(120)
  $core.String get tiebaUid => $_getSZ(76);
  @$pb.TagNumber(120)
  set tiebaUid($core.String value) => $_setString(76, value);
  @$pb.TagNumber(120)
  $core.bool hasTiebaUid() => $_has(76);
  @$pb.TagNumber(120)
  void clearTiebaUid() => $_clearField(120);

  @$pb.TagNumber(125)
  $core.String get levelName => $_getSZ(77);
  @$pb.TagNumber(125)
  set levelName($core.String value) => $_setString(77, value);
  @$pb.TagNumber(125)
  $core.bool hasLevelName() => $_has(77);
  @$pb.TagNumber(125)
  void clearLevelName() => $_clearField(125);

  @$pb.TagNumber(127)
  $core.String get ipAddress => $_getSZ(78);
  @$pb.TagNumber(127)
  set ipAddress($core.String value) => $_setString(78, value);
  @$pb.TagNumber(127)
  $core.bool hasIpAddress() => $_has(78);
  @$pb.TagNumber(127)
  void clearIpAddress() => $_clearField(127);

  @$pb.TagNumber(128)
  $core.int get isNicknameEditing => $_getIZ(79);
  @$pb.TagNumber(128)
  set isNicknameEditing($core.int value) => $_setSignedInt32(79, value);
  @$pb.TagNumber(128)
  $core.bool hasIsNicknameEditing() => $_has(79);
  @$pb.TagNumber(128)
  void clearIsNicknameEditing() => $_clearField(128);

  @$pb.TagNumber(129)
  $core.String get editingNickname => $_getSZ(80);
  @$pb.TagNumber(129)
  set editingNickname($core.String value) => $_setString(80, value);
  @$pb.TagNumber(129)
  $core.bool hasEditingNickname() => $_has(80);
  @$pb.TagNumber(129)
  void clearEditingNickname() => $_clearField(129);

  @$pb.TagNumber(137)
  $10.UserGrowth get userGrowth => $_getN(81);
  @$pb.TagNumber(137)
  set userGrowth($10.UserGrowth value) => $_setField(137, value);
  @$pb.TagNumber(137)
  $core.bool hasUserGrowth() => $_has(81);
  @$pb.TagNumber(137)
  void clearUserGrowth() => $_clearField(137);
  @$pb.TagNumber(137)
  $10.UserGrowth ensureUserGrowth() => $_ensure(81);

  @$pb.TagNumber(138)
  $core.String get displayIntro => $_getSZ(82);
  @$pb.TagNumber(138)
  set displayIntro($core.String value) => $_setString(82, value);
  @$pb.TagNumber(138)
  $core.bool hasDisplayIntro() => $_has(82);
  @$pb.TagNumber(138)
  void clearDisplayIntro() => $_clearField(138);

  @$pb.TagNumber(139)
  $pb.PbList<$core.String> get newIconUrl => $_getList(83);

  @$pb.TagNumber(140)
  $core.String get dynamicUrl => $_getSZ(84);
  @$pb.TagNumber(140)
  set dynamicUrl($core.String value) => $_setString(84, value);
  @$pb.TagNumber(140)
  $core.bool hasDynamicUrl() => $_has(84);
  @$pb.TagNumber(140)
  void clearDynamicUrl() => $_clearField(140);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
