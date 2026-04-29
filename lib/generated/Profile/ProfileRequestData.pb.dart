// This is a generated file - do not edit.
//
// Generated from Profile/ProfileRequestData.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../CommonRequest.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class ProfileRequestData extends $pb.GeneratedMessage {
  factory ProfileRequestData({
    $fixnum.Int64? uid,
    $core.int? needPostCount,
    $fixnum.Int64? friendUid,
    $core.int? isGuest,
    $core.String? stType,
    $core.int? pn,
    $core.int? rn,
    $core.int? hasPlist,
    $0.CommonRequest? common,
    $core.int? scrW,
    $core.int? scrH,
    $core.int? qType,
    $core.double? scrDip,
    $core.int? isFromUsercenter,
    $core.int? page,
    $core.String? friendUidPortrait,
    $core.String? historyForumIds,
    $core.String? historyForumNames,
    $core.int? needUsergrowthTask,
  }) {
    final result = create();
    if (uid != null) result.uid = uid;
    if (needPostCount != null) result.needPostCount = needPostCount;
    if (friendUid != null) result.friendUid = friendUid;
    if (isGuest != null) result.isGuest = isGuest;
    if (stType != null) result.stType = stType;
    if (pn != null) result.pn = pn;
    if (rn != null) result.rn = rn;
    if (hasPlist != null) result.hasPlist = hasPlist;
    if (common != null) result.common = common;
    if (scrW != null) result.scrW = scrW;
    if (scrH != null) result.scrH = scrH;
    if (qType != null) result.qType = qType;
    if (scrDip != null) result.scrDip = scrDip;
    if (isFromUsercenter != null) result.isFromUsercenter = isFromUsercenter;
    if (page != null) result.page = page;
    if (friendUidPortrait != null) result.friendUidPortrait = friendUidPortrait;
    if (historyForumIds != null) result.historyForumIds = historyForumIds;
    if (historyForumNames != null) result.historyForumNames = historyForumNames;
    if (needUsergrowthTask != null)
      result.needUsergrowthTask = needUsergrowthTask;
    return result;
  }

  ProfileRequestData._();

  factory ProfileRequestData.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ProfileRequestData.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ProfileRequestData',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba.profile'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'uid')
    ..aI(2, _omitFieldNames ? '' : 'needPostCount',
        fieldType: $pb.PbFieldType.OU3)
    ..aInt64(3, _omitFieldNames ? '' : 'friendUid')
    ..aI(4, _omitFieldNames ? '' : 'isGuest', fieldType: $pb.PbFieldType.OU3)
    ..aOS(5, _omitFieldNames ? '' : 'stType')
    ..aI(6, _omitFieldNames ? '' : 'pn', fieldType: $pb.PbFieldType.OU3)
    ..aI(7, _omitFieldNames ? '' : 'rn', fieldType: $pb.PbFieldType.OU3)
    ..aI(8, _omitFieldNames ? '' : 'hasPlist', fieldType: $pb.PbFieldType.OU3)
    ..aOM<$0.CommonRequest>(9, _omitFieldNames ? '' : 'common',
        subBuilder: $0.CommonRequest.create)
    ..aI(10, _omitFieldNames ? '' : 'scrW', fieldType: $pb.PbFieldType.OU3)
    ..aI(11, _omitFieldNames ? '' : 'scrH', fieldType: $pb.PbFieldType.OU3)
    ..aI(12, _omitFieldNames ? '' : 'qType', fieldType: $pb.PbFieldType.OU3)
    ..aD(13, _omitFieldNames ? '' : 'scrDip')
    ..aI(14, _omitFieldNames ? '' : 'isFromUsercenter')
    ..aI(15, _omitFieldNames ? '' : 'page')
    ..aOS(16, _omitFieldNames ? '' : 'friendUidPortrait')
    ..aOS(17, _omitFieldNames ? '' : 'historyForumIds')
    ..aOS(18, _omitFieldNames ? '' : 'historyForumNames')
    ..aI(19, _omitFieldNames ? '' : 'needUsergrowthTask')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ProfileRequestData clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ProfileRequestData copyWith(void Function(ProfileRequestData) updates) =>
      super.copyWith((message) => updates(message as ProfileRequestData))
          as ProfileRequestData;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProfileRequestData create() => ProfileRequestData._();
  @$core.override
  ProfileRequestData createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ProfileRequestData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ProfileRequestData>(create);
  static ProfileRequestData? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get uid => $_getI64(0);
  @$pb.TagNumber(1)
  set uid($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasUid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUid() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get needPostCount => $_getIZ(1);
  @$pb.TagNumber(2)
  set needPostCount($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasNeedPostCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearNeedPostCount() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get friendUid => $_getI64(2);
  @$pb.TagNumber(3)
  set friendUid($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasFriendUid() => $_has(2);
  @$pb.TagNumber(3)
  void clearFriendUid() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get isGuest => $_getIZ(3);
  @$pb.TagNumber(4)
  set isGuest($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasIsGuest() => $_has(3);
  @$pb.TagNumber(4)
  void clearIsGuest() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get stType => $_getSZ(4);
  @$pb.TagNumber(5)
  set stType($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasStType() => $_has(4);
  @$pb.TagNumber(5)
  void clearStType() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get pn => $_getIZ(5);
  @$pb.TagNumber(6)
  set pn($core.int value) => $_setUnsignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasPn() => $_has(5);
  @$pb.TagNumber(6)
  void clearPn() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.int get rn => $_getIZ(6);
  @$pb.TagNumber(7)
  set rn($core.int value) => $_setUnsignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasRn() => $_has(6);
  @$pb.TagNumber(7)
  void clearRn() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.int get hasPlist => $_getIZ(7);
  @$pb.TagNumber(8)
  set hasPlist($core.int value) => $_setUnsignedInt32(7, value);
  @$pb.TagNumber(8)
  $core.bool hasHasPlist() => $_has(7);
  @$pb.TagNumber(8)
  void clearHasPlist() => $_clearField(8);

  @$pb.TagNumber(9)
  $0.CommonRequest get common => $_getN(8);
  @$pb.TagNumber(9)
  set common($0.CommonRequest value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasCommon() => $_has(8);
  @$pb.TagNumber(9)
  void clearCommon() => $_clearField(9);
  @$pb.TagNumber(9)
  $0.CommonRequest ensureCommon() => $_ensure(8);

  @$pb.TagNumber(10)
  $core.int get scrW => $_getIZ(9);
  @$pb.TagNumber(10)
  set scrW($core.int value) => $_setUnsignedInt32(9, value);
  @$pb.TagNumber(10)
  $core.bool hasScrW() => $_has(9);
  @$pb.TagNumber(10)
  void clearScrW() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.int get scrH => $_getIZ(10);
  @$pb.TagNumber(11)
  set scrH($core.int value) => $_setUnsignedInt32(10, value);
  @$pb.TagNumber(11)
  $core.bool hasScrH() => $_has(10);
  @$pb.TagNumber(11)
  void clearScrH() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.int get qType => $_getIZ(11);
  @$pb.TagNumber(12)
  set qType($core.int value) => $_setUnsignedInt32(11, value);
  @$pb.TagNumber(12)
  $core.bool hasQType() => $_has(11);
  @$pb.TagNumber(12)
  void clearQType() => $_clearField(12);

  @$pb.TagNumber(13)
  $core.double get scrDip => $_getN(12);
  @$pb.TagNumber(13)
  set scrDip($core.double value) => $_setDouble(12, value);
  @$pb.TagNumber(13)
  $core.bool hasScrDip() => $_has(12);
  @$pb.TagNumber(13)
  void clearScrDip() => $_clearField(13);

  @$pb.TagNumber(14)
  $core.int get isFromUsercenter => $_getIZ(13);
  @$pb.TagNumber(14)
  set isFromUsercenter($core.int value) => $_setSignedInt32(13, value);
  @$pb.TagNumber(14)
  $core.bool hasIsFromUsercenter() => $_has(13);
  @$pb.TagNumber(14)
  void clearIsFromUsercenter() => $_clearField(14);

  @$pb.TagNumber(15)
  $core.int get page => $_getIZ(14);
  @$pb.TagNumber(15)
  set page($core.int value) => $_setSignedInt32(14, value);
  @$pb.TagNumber(15)
  $core.bool hasPage() => $_has(14);
  @$pb.TagNumber(15)
  void clearPage() => $_clearField(15);

  @$pb.TagNumber(16)
  $core.String get friendUidPortrait => $_getSZ(15);
  @$pb.TagNumber(16)
  set friendUidPortrait($core.String value) => $_setString(15, value);
  @$pb.TagNumber(16)
  $core.bool hasFriendUidPortrait() => $_has(15);
  @$pb.TagNumber(16)
  void clearFriendUidPortrait() => $_clearField(16);

  @$pb.TagNumber(17)
  $core.String get historyForumIds => $_getSZ(16);
  @$pb.TagNumber(17)
  set historyForumIds($core.String value) => $_setString(16, value);
  @$pb.TagNumber(17)
  $core.bool hasHistoryForumIds() => $_has(16);
  @$pb.TagNumber(17)
  void clearHistoryForumIds() => $_clearField(17);

  @$pb.TagNumber(18)
  $core.String get historyForumNames => $_getSZ(17);
  @$pb.TagNumber(18)
  set historyForumNames($core.String value) => $_setString(17, value);
  @$pb.TagNumber(18)
  $core.bool hasHistoryForumNames() => $_has(17);
  @$pb.TagNumber(18)
  void clearHistoryForumNames() => $_clearField(18);

  @$pb.TagNumber(19)
  $core.int get needUsergrowthTask => $_getIZ(18);
  @$pb.TagNumber(19)
  set needUsergrowthTask($core.int value) => $_setSignedInt32(18, value);
  @$pb.TagNumber(19)
  $core.bool hasNeedUsergrowthTask() => $_has(18);
  @$pb.TagNumber(19)
  void clearNeedUsergrowthTask() => $_clearField(19);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
