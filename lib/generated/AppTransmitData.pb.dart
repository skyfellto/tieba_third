// This is a generated file - do not edit.
//
// Generated from AppTransmitData.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class AppTransmitData extends $pb.GeneratedMessage {
  factory AppTransmitData({
    $core.String? wiseSampleId,
    $core.String? yyHdid,
    $core.String? yyVersion,
  }) {
    final result = create();
    if (wiseSampleId != null) result.wiseSampleId = wiseSampleId;
    if (yyHdid != null) result.yyHdid = yyHdid;
    if (yyVersion != null) result.yyVersion = yyVersion;
    return result;
  }

  AppTransmitData._();

  factory AppTransmitData.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AppTransmitData.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AppTransmitData',
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'wiseSampleId')
    ..aOS(2, _omitFieldNames ? '' : 'yyHdid')
    ..aOS(3, _omitFieldNames ? '' : 'yyVersion')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AppTransmitData clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AppTransmitData copyWith(void Function(AppTransmitData) updates) =>
      super.copyWith((message) => updates(message as AppTransmitData))
          as AppTransmitData;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AppTransmitData create() => AppTransmitData._();
  @$core.override
  AppTransmitData createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AppTransmitData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AppTransmitData>(create);
  static AppTransmitData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get wiseSampleId => $_getSZ(0);
  @$pb.TagNumber(1)
  set wiseSampleId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasWiseSampleId() => $_has(0);
  @$pb.TagNumber(1)
  void clearWiseSampleId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get yyHdid => $_getSZ(1);
  @$pb.TagNumber(2)
  set yyHdid($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasYyHdid() => $_has(1);
  @$pb.TagNumber(2)
  void clearYyHdid() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get yyVersion => $_getSZ(2);
  @$pb.TagNumber(3)
  set yyVersion($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasYyVersion() => $_has(2);
  @$pb.TagNumber(3)
  void clearYyVersion() => $_clearField(3);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
