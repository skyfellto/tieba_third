// This is a generated file - do not edit.
//
// Generated from ForumGuide/LikeForum.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../ThemeColorInfo.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class LikeForum extends $pb.GeneratedMessage {
  factory LikeForum({
    $fixnum.Int64? forumId,
    $core.String? forumName,
    $core.String? avatar,
    $core.int? hotNum,
    $core.int? memberCount,
    $core.int? threadNum,
    $fixnum.Int64? sortValue,
    $0.ThemeColorInfo? themeColor,
    $core.bool? needTrans,
    $core.int? levelId,
    $core.String? levelName,
    $core.int? isSign,
  }) {
    final result = create();
    if (forumId != null) result.forumId = forumId;
    if (forumName != null) result.forumName = forumName;
    if (avatar != null) result.avatar = avatar;
    if (hotNum != null) result.hotNum = hotNum;
    if (memberCount != null) result.memberCount = memberCount;
    if (threadNum != null) result.threadNum = threadNum;
    if (sortValue != null) result.sortValue = sortValue;
    if (themeColor != null) result.themeColor = themeColor;
    if (needTrans != null) result.needTrans = needTrans;
    if (levelId != null) result.levelId = levelId;
    if (levelName != null) result.levelName = levelName;
    if (isSign != null) result.isSign = isSign;
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
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'tieba.forumGuide'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'forumId', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(2, _omitFieldNames ? '' : 'forumName')
    ..aOS(3, _omitFieldNames ? '' : 'avatar')
    ..aI(4, _omitFieldNames ? '' : 'hotNum', fieldType: $pb.PbFieldType.OU3)
    ..aI(5, _omitFieldNames ? '' : 'memberCount',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(6, _omitFieldNames ? '' : 'threadNum', fieldType: $pb.PbFieldType.OU3)
    ..a<$fixnum.Int64>(
        7, _omitFieldNames ? '' : 'sortValue', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<$0.ThemeColorInfo>(8, _omitFieldNames ? '' : 'themeColor',
        subBuilder: $0.ThemeColorInfo.create)
    ..aOB(9, _omitFieldNames ? '' : 'needTrans')
    ..aI(10, _omitFieldNames ? '' : 'levelId')
    ..aOS(11, _omitFieldNames ? '' : 'levelName')
    ..aI(12, _omitFieldNames ? '' : 'isSign')
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
  $core.int get hotNum => $_getIZ(3);
  @$pb.TagNumber(4)
  set hotNum($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasHotNum() => $_has(3);
  @$pb.TagNumber(4)
  void clearHotNum() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get memberCount => $_getIZ(4);
  @$pb.TagNumber(5)
  set memberCount($core.int value) => $_setUnsignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasMemberCount() => $_has(4);
  @$pb.TagNumber(5)
  void clearMemberCount() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get threadNum => $_getIZ(5);
  @$pb.TagNumber(6)
  set threadNum($core.int value) => $_setUnsignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasThreadNum() => $_has(5);
  @$pb.TagNumber(6)
  void clearThreadNum() => $_clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get sortValue => $_getI64(6);
  @$pb.TagNumber(7)
  set sortValue($fixnum.Int64 value) => $_setInt64(6, value);
  @$pb.TagNumber(7)
  $core.bool hasSortValue() => $_has(6);
  @$pb.TagNumber(7)
  void clearSortValue() => $_clearField(7);

  @$pb.TagNumber(8)
  $0.ThemeColorInfo get themeColor => $_getN(7);
  @$pb.TagNumber(8)
  set themeColor($0.ThemeColorInfo value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasThemeColor() => $_has(7);
  @$pb.TagNumber(8)
  void clearThemeColor() => $_clearField(8);
  @$pb.TagNumber(8)
  $0.ThemeColorInfo ensureThemeColor() => $_ensure(7);

  @$pb.TagNumber(9)
  $core.bool get needTrans => $_getBF(8);
  @$pb.TagNumber(9)
  set needTrans($core.bool value) => $_setBool(8, value);
  @$pb.TagNumber(9)
  $core.bool hasNeedTrans() => $_has(8);
  @$pb.TagNumber(9)
  void clearNeedTrans() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.int get levelId => $_getIZ(9);
  @$pb.TagNumber(10)
  set levelId($core.int value) => $_setSignedInt32(9, value);
  @$pb.TagNumber(10)
  $core.bool hasLevelId() => $_has(9);
  @$pb.TagNumber(10)
  void clearLevelId() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.String get levelName => $_getSZ(10);
  @$pb.TagNumber(11)
  set levelName($core.String value) => $_setString(10, value);
  @$pb.TagNumber(11)
  $core.bool hasLevelName() => $_has(10);
  @$pb.TagNumber(11)
  void clearLevelName() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.int get isSign => $_getIZ(11);
  @$pb.TagNumber(12)
  set isSign($core.int value) => $_setSignedInt32(11, value);
  @$pb.TagNumber(12)
  $core.bool hasIsSign() => $_has(11);
  @$pb.TagNumber(12)
  void clearIsSign() => $_clearField(12);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
