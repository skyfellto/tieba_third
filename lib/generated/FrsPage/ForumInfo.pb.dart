// This is a generated file - do not edit.
//
// Generated from FrsPage/ForumInfo.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'Classify.pb.dart' as $2;
import 'Manager.pb.dart' as $1;
import 'SignInfo.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class ForumInfo extends $pb.GeneratedMessage {
  factory ForumInfo({
    $fixnum.Int64? id,
    $core.String? name,
    $core.String? firstClass,
    $core.String? secondClass,
    $core.int? isExists,
    $core.int? isLike,
    $core.int? userLevel,
    $core.String? levelName,
    $core.int? memberNum,
    $core.int? threadNum,
    $core.int? postNum,
    $core.int? hasFrsStar,
    $core.int? curScore,
    $core.int? levelupScore,
    $0.SignInfo? signInInfo,
    $core.Iterable<$1.Manager>? managers,
    $core.String? tids,
    $core.Iterable<$2.Classify>? goodClassify,
    $core.String? avatar,
    $core.String? slogan,
    $core.String? fShareImg,
    $core.String? forumShareLink,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (name != null) result.name = name;
    if (firstClass != null) result.firstClass = firstClass;
    if (secondClass != null) result.secondClass = secondClass;
    if (isExists != null) result.isExists = isExists;
    if (isLike != null) result.isLike = isLike;
    if (userLevel != null) result.userLevel = userLevel;
    if (levelName != null) result.levelName = levelName;
    if (memberNum != null) result.memberNum = memberNum;
    if (threadNum != null) result.threadNum = threadNum;
    if (postNum != null) result.postNum = postNum;
    if (hasFrsStar != null) result.hasFrsStar = hasFrsStar;
    if (curScore != null) result.curScore = curScore;
    if (levelupScore != null) result.levelupScore = levelupScore;
    if (signInInfo != null) result.signInInfo = signInInfo;
    if (managers != null) result.managers.addAll(managers);
    if (tids != null) result.tids = tids;
    if (goodClassify != null) result.goodClassify.addAll(goodClassify);
    if (avatar != null) result.avatar = avatar;
    if (slogan != null) result.slogan = slogan;
    if (fShareImg != null) result.fShareImg = fShareImg;
    if (forumShareLink != null) result.forumShareLink = forumShareLink;
    return result;
  }

  ForumInfo._();

  factory ForumInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ForumInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ForumInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba.frsPage'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'firstClass')
    ..aOS(4, _omitFieldNames ? '' : 'secondClass')
    ..aI(5, _omitFieldNames ? '' : 'isExists')
    ..aI(6, _omitFieldNames ? '' : 'isLike')
    ..aI(7, _omitFieldNames ? '' : 'userLevel')
    ..aOS(8, _omitFieldNames ? '' : 'levelName')
    ..aI(9, _omitFieldNames ? '' : 'memberNum')
    ..aI(10, _omitFieldNames ? '' : 'threadNum')
    ..aI(11, _omitFieldNames ? '' : 'postNum')
    ..aI(12, _omitFieldNames ? '' : 'hasFrsStar')
    ..aI(13, _omitFieldNames ? '' : 'curScore')
    ..aI(14, _omitFieldNames ? '' : 'levelupScore')
    ..aOM<$0.SignInfo>(15, _omitFieldNames ? '' : 'signInInfo',
        subBuilder: $0.SignInfo.create)
    ..pPM<$1.Manager>(17, _omitFieldNames ? '' : 'managers',
        subBuilder: $1.Manager.create)
    ..aOS(20, _omitFieldNames ? '' : 'tids')
    ..pPM<$2.Classify>(21, _omitFieldNames ? '' : 'goodClassify',
        subBuilder: $2.Classify.create)
    ..aOS(24, _omitFieldNames ? '' : 'avatar')
    ..aOS(25, _omitFieldNames ? '' : 'slogan')
    ..aOS(78, _omitFieldNames ? '' : 'fShareImg')
    ..aOS(79, _omitFieldNames ? '' : 'forumShareLink')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ForumInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ForumInfo copyWith(void Function(ForumInfo) updates) =>
      super.copyWith((message) => updates(message as ForumInfo)) as ForumInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ForumInfo create() => ForumInfo._();
  @$core.override
  ForumInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ForumInfo getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ForumInfo>(create);
  static ForumInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get firstClass => $_getSZ(2);
  @$pb.TagNumber(3)
  set firstClass($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasFirstClass() => $_has(2);
  @$pb.TagNumber(3)
  void clearFirstClass() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get secondClass => $_getSZ(3);
  @$pb.TagNumber(4)
  set secondClass($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasSecondClass() => $_has(3);
  @$pb.TagNumber(4)
  void clearSecondClass() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get isExists => $_getIZ(4);
  @$pb.TagNumber(5)
  set isExists($core.int value) => $_setSignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasIsExists() => $_has(4);
  @$pb.TagNumber(5)
  void clearIsExists() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get isLike => $_getIZ(5);
  @$pb.TagNumber(6)
  set isLike($core.int value) => $_setSignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasIsLike() => $_has(5);
  @$pb.TagNumber(6)
  void clearIsLike() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.int get userLevel => $_getIZ(6);
  @$pb.TagNumber(7)
  set userLevel($core.int value) => $_setSignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasUserLevel() => $_has(6);
  @$pb.TagNumber(7)
  void clearUserLevel() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.String get levelName => $_getSZ(7);
  @$pb.TagNumber(8)
  set levelName($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasLevelName() => $_has(7);
  @$pb.TagNumber(8)
  void clearLevelName() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.int get memberNum => $_getIZ(8);
  @$pb.TagNumber(9)
  set memberNum($core.int value) => $_setSignedInt32(8, value);
  @$pb.TagNumber(9)
  $core.bool hasMemberNum() => $_has(8);
  @$pb.TagNumber(9)
  void clearMemberNum() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.int get threadNum => $_getIZ(9);
  @$pb.TagNumber(10)
  set threadNum($core.int value) => $_setSignedInt32(9, value);
  @$pb.TagNumber(10)
  $core.bool hasThreadNum() => $_has(9);
  @$pb.TagNumber(10)
  void clearThreadNum() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.int get postNum => $_getIZ(10);
  @$pb.TagNumber(11)
  set postNum($core.int value) => $_setSignedInt32(10, value);
  @$pb.TagNumber(11)
  $core.bool hasPostNum() => $_has(10);
  @$pb.TagNumber(11)
  void clearPostNum() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.int get hasFrsStar => $_getIZ(11);
  @$pb.TagNumber(12)
  set hasFrsStar($core.int value) => $_setSignedInt32(11, value);
  @$pb.TagNumber(12)
  $core.bool hasHasFrsStar() => $_has(11);
  @$pb.TagNumber(12)
  void clearHasFrsStar() => $_clearField(12);

  @$pb.TagNumber(13)
  $core.int get curScore => $_getIZ(12);
  @$pb.TagNumber(13)
  set curScore($core.int value) => $_setSignedInt32(12, value);
  @$pb.TagNumber(13)
  $core.bool hasCurScore() => $_has(12);
  @$pb.TagNumber(13)
  void clearCurScore() => $_clearField(13);

  @$pb.TagNumber(14)
  $core.int get levelupScore => $_getIZ(13);
  @$pb.TagNumber(14)
  set levelupScore($core.int value) => $_setSignedInt32(13, value);
  @$pb.TagNumber(14)
  $core.bool hasLevelupScore() => $_has(13);
  @$pb.TagNumber(14)
  void clearLevelupScore() => $_clearField(14);

  @$pb.TagNumber(15)
  $0.SignInfo get signInInfo => $_getN(14);
  @$pb.TagNumber(15)
  set signInInfo($0.SignInfo value) => $_setField(15, value);
  @$pb.TagNumber(15)
  $core.bool hasSignInInfo() => $_has(14);
  @$pb.TagNumber(15)
  void clearSignInInfo() => $_clearField(15);
  @$pb.TagNumber(15)
  $0.SignInfo ensureSignInInfo() => $_ensure(14);

  @$pb.TagNumber(17)
  $pb.PbList<$1.Manager> get managers => $_getList(15);

  @$pb.TagNumber(20)
  $core.String get tids => $_getSZ(16);
  @$pb.TagNumber(20)
  set tids($core.String value) => $_setString(16, value);
  @$pb.TagNumber(20)
  $core.bool hasTids() => $_has(16);
  @$pb.TagNumber(20)
  void clearTids() => $_clearField(20);

  @$pb.TagNumber(21)
  $pb.PbList<$2.Classify> get goodClassify => $_getList(17);

  @$pb.TagNumber(24)
  $core.String get avatar => $_getSZ(18);
  @$pb.TagNumber(24)
  set avatar($core.String value) => $_setString(18, value);
  @$pb.TagNumber(24)
  $core.bool hasAvatar() => $_has(18);
  @$pb.TagNumber(24)
  void clearAvatar() => $_clearField(24);

  @$pb.TagNumber(25)
  $core.String get slogan => $_getSZ(19);
  @$pb.TagNumber(25)
  set slogan($core.String value) => $_setString(19, value);
  @$pb.TagNumber(25)
  $core.bool hasSlogan() => $_has(19);
  @$pb.TagNumber(25)
  void clearSlogan() => $_clearField(25);

  @$pb.TagNumber(78)
  $core.String get fShareImg => $_getSZ(20);
  @$pb.TagNumber(78)
  set fShareImg($core.String value) => $_setString(20, value);
  @$pb.TagNumber(78)
  $core.bool hasFShareImg() => $_has(20);
  @$pb.TagNumber(78)
  void clearFShareImg() => $_clearField(78);

  @$pb.TagNumber(79)
  $core.String get forumShareLink => $_getSZ(21);
  @$pb.TagNumber(79)
  set forumShareLink($core.String value) => $_setString(21, value);
  @$pb.TagNumber(79)
  $core.bool hasForumShareLink() => $_has(21);
  @$pb.TagNumber(79)
  void clearForumShareLink() => $_clearField(79);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
