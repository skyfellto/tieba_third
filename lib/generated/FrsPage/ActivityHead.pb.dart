// This is a generated file - do not edit.
//
// Generated from FrsPage/ActivityHead.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'HeadImgs.pb.dart' as $0;
import 'Size.pb.dart' as $1;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class ActivityHead extends $pb.GeneratedMessage {
  factory ActivityHead({
    $core.int? activityType,
    $core.String? activityTitle,
    $core.Iterable<$0.HeadImgs>? headImgs,
    $1.Size? topSize,
    $core.String? objId,
    $core.String? pullDownUrl,
    $core.int? pullDownInterval,
    $core.String? pullDownPicIos,
    $core.String? pullDownPicAndroid,
    $core.String? pullDownExposureUrl,
    $core.String? pullDownClickUrl,
    $core.bool? isAd,
    $core.String? pullDownSchema,
    $core.String? pullDownPackageName,
  }) {
    final result = create();
    if (activityType != null) result.activityType = activityType;
    if (activityTitle != null) result.activityTitle = activityTitle;
    if (headImgs != null) result.headImgs.addAll(headImgs);
    if (topSize != null) result.topSize = topSize;
    if (objId != null) result.objId = objId;
    if (pullDownUrl != null) result.pullDownUrl = pullDownUrl;
    if (pullDownInterval != null) result.pullDownInterval = pullDownInterval;
    if (pullDownPicIos != null) result.pullDownPicIos = pullDownPicIos;
    if (pullDownPicAndroid != null)
      result.pullDownPicAndroid = pullDownPicAndroid;
    if (pullDownExposureUrl != null)
      result.pullDownExposureUrl = pullDownExposureUrl;
    if (pullDownClickUrl != null) result.pullDownClickUrl = pullDownClickUrl;
    if (isAd != null) result.isAd = isAd;
    if (pullDownSchema != null) result.pullDownSchema = pullDownSchema;
    if (pullDownPackageName != null)
      result.pullDownPackageName = pullDownPackageName;
    return result;
  }

  ActivityHead._();

  factory ActivityHead.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ActivityHead.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ActivityHead',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba.frsPage'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'activityType')
    ..aOS(2, _omitFieldNames ? '' : 'activityTitle')
    ..pPM<$0.HeadImgs>(3, _omitFieldNames ? '' : 'headImgs',
        subBuilder: $0.HeadImgs.create)
    ..aOM<$1.Size>(4, _omitFieldNames ? '' : 'topSize',
        subBuilder: $1.Size.create)
    ..aOS(5, _omitFieldNames ? '' : 'objId')
    ..aOS(7, _omitFieldNames ? '' : 'pullDownUrl')
    ..aI(8, _omitFieldNames ? '' : 'pullDownInterval')
    ..aOS(9, _omitFieldNames ? '' : 'pullDownPicIos')
    ..aOS(10, _omitFieldNames ? '' : 'pullDownPicAndroid')
    ..aOS(11, _omitFieldNames ? '' : 'pullDownExposureUrl')
    ..aOS(12, _omitFieldNames ? '' : 'pullDownClickUrl')
    ..aOB(13, _omitFieldNames ? '' : 'isAd')
    ..aOS(14, _omitFieldNames ? '' : 'pullDownSchema')
    ..aOS(15, _omitFieldNames ? '' : 'pullDownPackageName')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ActivityHead clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ActivityHead copyWith(void Function(ActivityHead) updates) =>
      super.copyWith((message) => updates(message as ActivityHead))
          as ActivityHead;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ActivityHead create() => ActivityHead._();
  @$core.override
  ActivityHead createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ActivityHead getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ActivityHead>(create);
  static ActivityHead? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get activityType => $_getIZ(0);
  @$pb.TagNumber(1)
  set activityType($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasActivityType() => $_has(0);
  @$pb.TagNumber(1)
  void clearActivityType() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get activityTitle => $_getSZ(1);
  @$pb.TagNumber(2)
  set activityTitle($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasActivityTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearActivityTitle() => $_clearField(2);

  @$pb.TagNumber(3)
  $pb.PbList<$0.HeadImgs> get headImgs => $_getList(2);

  @$pb.TagNumber(4)
  $1.Size get topSize => $_getN(3);
  @$pb.TagNumber(4)
  set topSize($1.Size value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasTopSize() => $_has(3);
  @$pb.TagNumber(4)
  void clearTopSize() => $_clearField(4);
  @$pb.TagNumber(4)
  $1.Size ensureTopSize() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.String get objId => $_getSZ(4);
  @$pb.TagNumber(5)
  set objId($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasObjId() => $_has(4);
  @$pb.TagNumber(5)
  void clearObjId() => $_clearField(5);

  @$pb.TagNumber(7)
  $core.String get pullDownUrl => $_getSZ(5);
  @$pb.TagNumber(7)
  set pullDownUrl($core.String value) => $_setString(5, value);
  @$pb.TagNumber(7)
  $core.bool hasPullDownUrl() => $_has(5);
  @$pb.TagNumber(7)
  void clearPullDownUrl() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.int get pullDownInterval => $_getIZ(6);
  @$pb.TagNumber(8)
  set pullDownInterval($core.int value) => $_setSignedInt32(6, value);
  @$pb.TagNumber(8)
  $core.bool hasPullDownInterval() => $_has(6);
  @$pb.TagNumber(8)
  void clearPullDownInterval() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.String get pullDownPicIos => $_getSZ(7);
  @$pb.TagNumber(9)
  set pullDownPicIos($core.String value) => $_setString(7, value);
  @$pb.TagNumber(9)
  $core.bool hasPullDownPicIos() => $_has(7);
  @$pb.TagNumber(9)
  void clearPullDownPicIos() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.String get pullDownPicAndroid => $_getSZ(8);
  @$pb.TagNumber(10)
  set pullDownPicAndroid($core.String value) => $_setString(8, value);
  @$pb.TagNumber(10)
  $core.bool hasPullDownPicAndroid() => $_has(8);
  @$pb.TagNumber(10)
  void clearPullDownPicAndroid() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.String get pullDownExposureUrl => $_getSZ(9);
  @$pb.TagNumber(11)
  set pullDownExposureUrl($core.String value) => $_setString(9, value);
  @$pb.TagNumber(11)
  $core.bool hasPullDownExposureUrl() => $_has(9);
  @$pb.TagNumber(11)
  void clearPullDownExposureUrl() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.String get pullDownClickUrl => $_getSZ(10);
  @$pb.TagNumber(12)
  set pullDownClickUrl($core.String value) => $_setString(10, value);
  @$pb.TagNumber(12)
  $core.bool hasPullDownClickUrl() => $_has(10);
  @$pb.TagNumber(12)
  void clearPullDownClickUrl() => $_clearField(12);

  @$pb.TagNumber(13)
  $core.bool get isAd => $_getBF(11);
  @$pb.TagNumber(13)
  set isAd($core.bool value) => $_setBool(11, value);
  @$pb.TagNumber(13)
  $core.bool hasIsAd() => $_has(11);
  @$pb.TagNumber(13)
  void clearIsAd() => $_clearField(13);

  @$pb.TagNumber(14)
  $core.String get pullDownSchema => $_getSZ(12);
  @$pb.TagNumber(14)
  set pullDownSchema($core.String value) => $_setString(12, value);
  @$pb.TagNumber(14)
  $core.bool hasPullDownSchema() => $_has(12);
  @$pb.TagNumber(14)
  void clearPullDownSchema() => $_clearField(14);

  @$pb.TagNumber(15)
  $core.String get pullDownPackageName => $_getSZ(13);
  @$pb.TagNumber(15)
  set pullDownPackageName($core.String value) => $_setString(13, value);
  @$pb.TagNumber(15)
  $core.bool hasPullDownPackageName() => $_has(13);
  @$pb.TagNumber(15)
  void clearPullDownPackageName() => $_clearField(15);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
