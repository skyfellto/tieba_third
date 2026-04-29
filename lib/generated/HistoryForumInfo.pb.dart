// This is a generated file - do not edit.
//
// Generated from HistoryForumInfo.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'BlockPopInfo.pb.dart' as $1;
import 'FrsTabInfo.pb.dart' as $2;
import 'PostPrefix.pb.dart' as $3;
import 'RecomTagInfo.pb.dart' as $4;
import 'ThemeColorInfo.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class HistoryForumInfo extends $pb.GeneratedMessage {
  factory HistoryForumInfo({
    $fixnum.Int64? forumId,
    $core.String? forumName,
    $core.String? avatar,
    $core.int? isLiveforum,
    $core.int? unreadNum,
    $core.String? visitTime,
    $core.int? followNum,
    $0.ThemeColorInfo? themeColor,
    $core.bool? needTrans,
    $1.BlockPopInfo? blockPopInfo,
    $core.int? hotNum,
    $core.int? levelId,
    $core.Iterable<$2.FrsTabInfo>? tabInfo,
    $core.bool? hasPostpre,
    $3.PostPrefix? postPrefix,
    $core.int? isForumBusinessAccount,
    $4.RecomTagInfo? tagInfo,
    $core.String? firstCategory,
  }) {
    final result = create();
    if (forumId != null) result.forumId = forumId;
    if (forumName != null) result.forumName = forumName;
    if (avatar != null) result.avatar = avatar;
    if (isLiveforum != null) result.isLiveforum = isLiveforum;
    if (unreadNum != null) result.unreadNum = unreadNum;
    if (visitTime != null) result.visitTime = visitTime;
    if (followNum != null) result.followNum = followNum;
    if (themeColor != null) result.themeColor = themeColor;
    if (needTrans != null) result.needTrans = needTrans;
    if (blockPopInfo != null) result.blockPopInfo = blockPopInfo;
    if (hotNum != null) result.hotNum = hotNum;
    if (levelId != null) result.levelId = levelId;
    if (tabInfo != null) result.tabInfo.addAll(tabInfo);
    if (hasPostpre != null) result.hasPostpre = hasPostpre;
    if (postPrefix != null) result.postPrefix = postPrefix;
    if (isForumBusinessAccount != null)
      result.isForumBusinessAccount = isForumBusinessAccount;
    if (tagInfo != null) result.tagInfo = tagInfo;
    if (firstCategory != null) result.firstCategory = firstCategory;
    return result;
  }

  HistoryForumInfo._();

  factory HistoryForumInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory HistoryForumInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'HistoryForumInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'forumId')
    ..aOS(2, _omitFieldNames ? '' : 'forumName')
    ..aOS(3, _omitFieldNames ? '' : 'avatar')
    ..aI(4, _omitFieldNames ? '' : 'isLiveforum')
    ..aI(5, _omitFieldNames ? '' : 'unreadNum')
    ..aOS(6, _omitFieldNames ? '' : 'visitTime')
    ..aI(7, _omitFieldNames ? '' : 'followNum')
    ..aOM<$0.ThemeColorInfo>(8, _omitFieldNames ? '' : 'themeColor',
        subBuilder: $0.ThemeColorInfo.create)
    ..aOB(10, _omitFieldNames ? '' : 'needTrans')
    ..aOM<$1.BlockPopInfo>(14, _omitFieldNames ? '' : 'blockPopInfo',
        subBuilder: $1.BlockPopInfo.create)
    ..aI(15, _omitFieldNames ? '' : 'hotNum', fieldType: $pb.PbFieldType.OU3)
    ..aI(16, _omitFieldNames ? '' : 'levelId')
    ..pPM<$2.FrsTabInfo>(17, _omitFieldNames ? '' : 'tabInfo',
        subBuilder: $2.FrsTabInfo.create)
    ..aOB(18, _omitFieldNames ? '' : 'hasPostpre')
    ..aOM<$3.PostPrefix>(19, _omitFieldNames ? '' : 'postPrefix',
        subBuilder: $3.PostPrefix.create)
    ..aI(20, _omitFieldNames ? '' : 'isForumBusinessAccount')
    ..aOM<$4.RecomTagInfo>(21, _omitFieldNames ? '' : 'tagInfo',
        subBuilder: $4.RecomTagInfo.create)
    ..aOS(22, _omitFieldNames ? '' : 'firstCategory')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HistoryForumInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HistoryForumInfo copyWith(void Function(HistoryForumInfo) updates) =>
      super.copyWith((message) => updates(message as HistoryForumInfo))
          as HistoryForumInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HistoryForumInfo create() => HistoryForumInfo._();
  @$core.override
  HistoryForumInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static HistoryForumInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<HistoryForumInfo>(create);
  static HistoryForumInfo? _defaultInstance;

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
  $core.int get isLiveforum => $_getIZ(3);
  @$pb.TagNumber(4)
  set isLiveforum($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasIsLiveforum() => $_has(3);
  @$pb.TagNumber(4)
  void clearIsLiveforum() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get unreadNum => $_getIZ(4);
  @$pb.TagNumber(5)
  set unreadNum($core.int value) => $_setSignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasUnreadNum() => $_has(4);
  @$pb.TagNumber(5)
  void clearUnreadNum() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get visitTime => $_getSZ(5);
  @$pb.TagNumber(6)
  set visitTime($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasVisitTime() => $_has(5);
  @$pb.TagNumber(6)
  void clearVisitTime() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.int get followNum => $_getIZ(6);
  @$pb.TagNumber(7)
  set followNum($core.int value) => $_setSignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasFollowNum() => $_has(6);
  @$pb.TagNumber(7)
  void clearFollowNum() => $_clearField(7);

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

  @$pb.TagNumber(10)
  $core.bool get needTrans => $_getBF(8);
  @$pb.TagNumber(10)
  set needTrans($core.bool value) => $_setBool(8, value);
  @$pb.TagNumber(10)
  $core.bool hasNeedTrans() => $_has(8);
  @$pb.TagNumber(10)
  void clearNeedTrans() => $_clearField(10);

  @$pb.TagNumber(14)
  $1.BlockPopInfo get blockPopInfo => $_getN(9);
  @$pb.TagNumber(14)
  set blockPopInfo($1.BlockPopInfo value) => $_setField(14, value);
  @$pb.TagNumber(14)
  $core.bool hasBlockPopInfo() => $_has(9);
  @$pb.TagNumber(14)
  void clearBlockPopInfo() => $_clearField(14);
  @$pb.TagNumber(14)
  $1.BlockPopInfo ensureBlockPopInfo() => $_ensure(9);

  @$pb.TagNumber(15)
  $core.int get hotNum => $_getIZ(10);
  @$pb.TagNumber(15)
  set hotNum($core.int value) => $_setUnsignedInt32(10, value);
  @$pb.TagNumber(15)
  $core.bool hasHotNum() => $_has(10);
  @$pb.TagNumber(15)
  void clearHotNum() => $_clearField(15);

  @$pb.TagNumber(16)
  $core.int get levelId => $_getIZ(11);
  @$pb.TagNumber(16)
  set levelId($core.int value) => $_setSignedInt32(11, value);
  @$pb.TagNumber(16)
  $core.bool hasLevelId() => $_has(11);
  @$pb.TagNumber(16)
  void clearLevelId() => $_clearField(16);

  @$pb.TagNumber(17)
  $pb.PbList<$2.FrsTabInfo> get tabInfo => $_getList(12);

  @$pb.TagNumber(18)
  $core.bool get hasPostpre => $_getBF(13);
  @$pb.TagNumber(18)
  set hasPostpre($core.bool value) => $_setBool(13, value);
  @$pb.TagNumber(18)
  $core.bool hasHasPostpre() => $_has(13);
  @$pb.TagNumber(18)
  void clearHasPostpre() => $_clearField(18);

  @$pb.TagNumber(19)
  $3.PostPrefix get postPrefix => $_getN(14);
  @$pb.TagNumber(19)
  set postPrefix($3.PostPrefix value) => $_setField(19, value);
  @$pb.TagNumber(19)
  $core.bool hasPostPrefix() => $_has(14);
  @$pb.TagNumber(19)
  void clearPostPrefix() => $_clearField(19);
  @$pb.TagNumber(19)
  $3.PostPrefix ensurePostPrefix() => $_ensure(14);

  @$pb.TagNumber(20)
  $core.int get isForumBusinessAccount => $_getIZ(15);
  @$pb.TagNumber(20)
  set isForumBusinessAccount($core.int value) => $_setSignedInt32(15, value);
  @$pb.TagNumber(20)
  $core.bool hasIsForumBusinessAccount() => $_has(15);
  @$pb.TagNumber(20)
  void clearIsForumBusinessAccount() => $_clearField(20);

  @$pb.TagNumber(21)
  $4.RecomTagInfo get tagInfo => $_getN(16);
  @$pb.TagNumber(21)
  set tagInfo($4.RecomTagInfo value) => $_setField(21, value);
  @$pb.TagNumber(21)
  $core.bool hasTagInfo() => $_has(16);
  @$pb.TagNumber(21)
  void clearTagInfo() => $_clearField(21);
  @$pb.TagNumber(21)
  $4.RecomTagInfo ensureTagInfo() => $_ensure(16);

  @$pb.TagNumber(22)
  $core.String get firstCategory => $_getSZ(17);
  @$pb.TagNumber(22)
  set firstCategory($core.String value) => $_setString(17, value);
  @$pb.TagNumber(22)
  $core.bool hasFirstCategory() => $_has(17);
  @$pb.TagNumber(22)
  void clearFirstCategory() => $_clearField(22);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
