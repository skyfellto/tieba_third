// This is a generated file - do not edit.
//
// Generated from AppPosInfo.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class AppPosInfo extends $pb.GeneratedMessage {
  factory AppPosInfo({
    $core.String? apMac,
    $core.bool? apConnected,
    $core.String? coordinateType,
    $fixnum.Int64? addrTimestamp,
    $core.String? aspShownInfo,
  }) {
    final result = create();
    if (apMac != null) result.apMac = apMac;
    if (apConnected != null) result.apConnected = apConnected;
    if (coordinateType != null) result.coordinateType = coordinateType;
    if (addrTimestamp != null) result.addrTimestamp = addrTimestamp;
    if (aspShownInfo != null) result.aspShownInfo = aspShownInfo;
    return result;
  }

  AppPosInfo._();

  factory AppPosInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AppPosInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AppPosInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'apMac')
    ..aOB(2, _omitFieldNames ? '' : 'apConnected')
    ..aOS(3, _omitFieldNames ? '' : 'coordinateType')
    ..aInt64(6, _omitFieldNames ? '' : 'addrTimestamp')
    ..aOS(7, _omitFieldNames ? '' : 'aspShownInfo')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AppPosInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AppPosInfo copyWith(void Function(AppPosInfo) updates) =>
      super.copyWith((message) => updates(message as AppPosInfo)) as AppPosInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AppPosInfo create() => AppPosInfo._();
  @$core.override
  AppPosInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AppPosInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AppPosInfo>(create);
  static AppPosInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get apMac => $_getSZ(0);
  @$pb.TagNumber(1)
  set apMac($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasApMac() => $_has(0);
  @$pb.TagNumber(1)
  void clearApMac() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.bool get apConnected => $_getBF(1);
  @$pb.TagNumber(2)
  set apConnected($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasApConnected() => $_has(1);
  @$pb.TagNumber(2)
  void clearApConnected() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get coordinateType => $_getSZ(2);
  @$pb.TagNumber(3)
  set coordinateType($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasCoordinateType() => $_has(2);
  @$pb.TagNumber(3)
  void clearCoordinateType() => $_clearField(3);

  @$pb.TagNumber(6)
  $fixnum.Int64 get addrTimestamp => $_getI64(3);
  @$pb.TagNumber(6)
  set addrTimestamp($fixnum.Int64 value) => $_setInt64(3, value);
  @$pb.TagNumber(6)
  $core.bool hasAddrTimestamp() => $_has(3);
  @$pb.TagNumber(6)
  void clearAddrTimestamp() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get aspShownInfo => $_getSZ(4);
  @$pb.TagNumber(7)
  set aspShownInfo($core.String value) => $_setString(4, value);
  @$pb.TagNumber(7)
  $core.bool hasAspShownInfo() => $_has(4);
  @$pb.TagNumber(7)
  void clearAspShownInfo() => $_clearField(7);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
