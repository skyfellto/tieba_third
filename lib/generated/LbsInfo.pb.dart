// This is a generated file - do not edit.
//
// Generated from LbsInfo.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class LbsInfo extends $pb.GeneratedMessage {
  factory LbsInfo({
    $core.String? lat,
    $core.String? lon,
    $core.String? town,
  }) {
    final result = create();
    if (lat != null) result.lat = lat;
    if (lon != null) result.lon = lon;
    if (town != null) result.town = town;
    return result;
  }

  LbsInfo._();

  factory LbsInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory LbsInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'LbsInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'lat')
    ..aOS(2, _omitFieldNames ? '' : 'lon')
    ..aOS(3, _omitFieldNames ? '' : 'town')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LbsInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LbsInfo copyWith(void Function(LbsInfo) updates) =>
      super.copyWith((message) => updates(message as LbsInfo)) as LbsInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LbsInfo create() => LbsInfo._();
  @$core.override
  LbsInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static LbsInfo getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LbsInfo>(create);
  static LbsInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get lat => $_getSZ(0);
  @$pb.TagNumber(1)
  set lat($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasLat() => $_has(0);
  @$pb.TagNumber(1)
  void clearLat() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get lon => $_getSZ(1);
  @$pb.TagNumber(2)
  set lon($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasLon() => $_has(1);
  @$pb.TagNumber(2)
  void clearLon() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get town => $_getSZ(2);
  @$pb.TagNumber(3)
  set town($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasTown() => $_has(2);
  @$pb.TagNumber(3)
  void clearTown() => $_clearField(3);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
