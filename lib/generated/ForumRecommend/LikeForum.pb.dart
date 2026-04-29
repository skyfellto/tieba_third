// This is a generated file - do not edit.
//
// Generated from ForumRecommend/LikeForum.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../FrsTabInfo.pb.dart' as $2;
import '../PrivateForumInfo.pb.dart' as $1;
import '../ThemeColorInfo.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class LikeForum extends $pb.GeneratedMessage {
  factory LikeForum({
    $fixnum.Int64? forumId,
    $core.String? forumName,
    $core.String? avatar,
    $core.int? isSign,
    $core.int? levelId,
    $core.int? isLiveforum,
    $core.int? isBrandForum,
    $core.String? content,
    $core.int? isTop,
    $core.int? sortType,
    $0.ThemeColorInfo? themeColor,
    $core.bool? needTrans,
    $core.int? isPrivateForum,
    $core.int? isManager,
    $1.PrivateForumInfo? privateForumInfo,
    $fixnum.Int64? hotThreadId,
    $core.Iterable<$2.FrsTabInfo>? tabInfo,
  }) {
    final result = create();
    if (forumId != null) result.forumId = forumId;
    if (forumName != null) result.forumName = forumName;
    if (avatar != null) result.avatar = avatar;
    if (isSign != null) result.isSign = isSign;
    if (levelId != null) result.levelId = levelId;
    if (isLiveforum != null) result.isLiveforum = isLiveforum;
    if (isBrandForum != null) result.isBrandForum = isBrandForum;
    if (content != null) result.content = content;
    if (isTop != null) result.isTop = isTop;
    if (sortType != null) result.sortType = sortType;
    if (themeColor != null) result.themeColor = themeColor;
    if (needTrans != null) result.needTrans = needTrans;
    if (isPrivateForum != null) result.isPrivateForum = isPrivateForum;
    if (isManager != null) result.isManager = isManager;
    if (privateForumInfo != null) result.privateForumInfo = privateForumInfo;
    if (hotThreadId != null) result.hotThreadId = hotThreadId;
    if (tabInfo != null) result.tabInfo.addAll(tabInfo);
    return result;
  }

  LikeForum._();

  factory LikeForum.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory LikeForum.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'LikeForum',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'tieba.forumRecommend'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'forumId')
    ..aOS(2, _omitFieldNames ? '' : 'forumName')
    ..aOS(3, _omitFieldNames ? '' : 'avatar')
    ..aI(4, _omitFieldNames ? '' : 'isSign')
    ..aI(5, _omitFieldNames ? '' : 'levelId')
    ..aI(6, _omitFieldNames ? '' : 'isLiveforum')
    ..aI(7, _omitFieldNames ? '' : 'isBrandForum',
        fieldType: $pb.PbFieldType.OU3)
    ..aOS(9, _omitFieldNames ? '' : 'content')
    ..aI(10, _omitFieldNames ? '' : 'isTop')
    ..aI(11, _omitFieldNames ? '' : 'sortType')
    ..aOM<$0.ThemeColorInfo>(12, _omitFieldNames ? '' : 'themeColor',
        subBuilder: $0.ThemeColorInfo.create)
    ..aOB(14, _omitFieldNames ? '' : 'needTrans')
    ..aI(15, _omitFieldNames ? '' : 'isPrivateForum')
    ..aI(18, _omitFieldNames ? '' : 'isManager')
    ..aOM<$1.PrivateForumInfo>(19, _omitFieldNames ? '' : 'privateForumInfo',
        subBuilder: $1.PrivateForumInfo.create)
    ..aInt64(20, _omitFieldNames ? '' : 'hotThreadId')
    ..pPM<$2.FrsTabInfo>(21, _omitFieldNames ? '' : 'tabInfo',
        subBuilder: $2.FrsTabInfo.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LikeForum clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LikeForum copyWith(void Function(LikeForum) updates) =>
      super.copyWith((message) => updates(message as LikeForum)) as LikeForum;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LikeForum create() => LikeForum._();
  @$core.override
  LikeForum createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static LikeForum getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LikeForum>(create);
  static LikeForum? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get forumId => $_getI64(0);
  @$pb.TagNumber(1)
  set forumId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasForumId() => $_has(0);
  @$pb.TagNumber(1)
  void clearForumId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get forumName => $_getSZ(1);
  @$pb.TagNumber(2)
  set forumName($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasForumName() => $_has(1);
  @$pb.TagNumber(2)
  void clearForumName() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get avatar => $_getSZ(2);
  @$pb.TagNumber(3)
  set avatar($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasAvatar() => $_has(2);
  @$pb.TagNumber(3)
  void clearAvatar() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get isSign => $_getIZ(3);
  @$pb.TagNumber(4)
  set isSign($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasIsSign() => $_has(3);
  @$pb.TagNumber(4)
  void clearIsSign() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get levelId => $_getIZ(4);
  @$pb.TagNumber(5)
  set levelId($core.int value) => $_setSignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasLevelId() => $_has(4);
  @$pb.TagNumber(5)
  void clearLevelId() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get isLiveforum => $_getIZ(5);
  @$pb.TagNumber(6)
  set isLiveforum($core.int value) => $_setSignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasIsLiveforum() => $_has(5);
  @$pb.TagNumber(6)
  void clearIsLiveforum() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.int get isBrandForum => $_getIZ(6);
  @$pb.TagNumber(7)
  set isBrandForum($core.int value) => $_setUnsignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasIsBrandForum() => $_has(6);
  @$pb.TagNumber(7)
  void clearIsBrandForum() => $_clearField(7);

  @$pb.TagNumber(9)
  $core.String get content => $_getSZ(7);
  @$pb.TagNumber(9)
  set content($core.String value) => $_setString(7, value);
  @$pb.TagNumber(9)
  $core.bool hasContent() => $_has(7);
  @$pb.TagNumber(9)
  void clearContent() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.int get isTop => $_getIZ(8);
  @$pb.TagNumber(10)
  set isTop($core.int value) => $_setSignedInt32(8, value);
  @$pb.TagNumber(10)
  $core.bool hasIsTop() => $_has(8);
  @$pb.TagNumber(10)
  void clearIsTop() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.int get sortType => $_getIZ(9);
  @$pb.TagNumber(11)
  set sortType($core.int value) => $_setSignedInt32(9, value);
  @$pb.TagNumber(11)
  $core.bool hasSortType() => $_has(9);
  @$pb.TagNumber(11)
  void clearSortType() => $_clearField(11);

  @$pb.TagNumber(12)
  $0.ThemeColorInfo get themeColor => $_getN(10);
  @$pb.TagNumber(12)
  set themeColor($0.ThemeColorInfo value) => $_setField(12, value);
  @$pb.TagNumber(12)
  $core.bool hasThemeColor() => $_has(10);
  @$pb.TagNumber(12)
  void clearThemeColor() => $_clearField(12);
  @$pb.TagNumber(12)
  $0.ThemeColorInfo ensureThemeColor() => $_ensure(10);

  @$pb.TagNumber(14)
  $core.bool get needTrans => $_getBF(11);
  @$pb.TagNumber(14)
  set needTrans($core.bool value) => $_setBool(11, value);
  @$pb.TagNumber(14)
  $core.bool hasNeedTrans() => $_has(11);
  @$pb.TagNumber(14)
  void clearNeedTrans() => $_clearField(14);

  @$pb.TagNumber(15)
  $core.int get isPrivateForum => $_getIZ(12);
  @$pb.TagNumber(15)
  set isPrivateForum($core.int value) => $_setSignedInt32(12, value);
  @$pb.TagNumber(15)
  $core.bool hasIsPrivateForum() => $_has(12);
  @$pb.TagNumber(15)
  void clearIsPrivateForum() => $_clearField(15);

  @$pb.TagNumber(18)
  $core.int get isManager => $_getIZ(13);
  @$pb.TagNumber(18)
  set isManager($core.int value) => $_setSignedInt32(13, value);
  @$pb.TagNumber(18)
  $core.bool hasIsManager() => $_has(13);
  @$pb.TagNumber(18)
  void clearIsManager() => $_clearField(18);

  @$pb.TagNumber(19)
  $1.PrivateForumInfo get privateForumInfo => $_getN(14);
  @$pb.TagNumber(19)
  set privateForumInfo($1.PrivateForumInfo value) => $_setField(19, value);
  @$pb.TagNumber(19)
  $core.bool hasPrivateForumInfo() => $_has(14);
  @$pb.TagNumber(19)
  void clearPrivateForumInfo() => $_clearField(19);
  @$pb.TagNumber(19)
  $1.PrivateForumInfo ensurePrivateForumInfo() => $_ensure(14);

  @$pb.TagNumber(20)
  $fixnum.Int64 get hotThreadId => $_getI64(15);
  @$pb.TagNumber(20)
  set hotThreadId($fixnum.Int64 value) => $_setInt64(15, value);
  @$pb.TagNumber(20)
  $core.bool hasHotThreadId() => $_has(15);
  @$pb.TagNumber(20)
  void clearHotThreadId() => $_clearField(20);

  @$pb.TagNumber(21)
  $pb.PbList<$2.FrsTabInfo> get tabInfo => $_getList(16);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
