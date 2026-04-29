// This is a generated file - do not edit.
//
// Generated from Lbs.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class Lbs extends $pb.GeneratedMessage {
  factory Lbs({
    $core.String? lat,
    $core.String? lng,
    $core.String? name,
    $core.String? sn,
    $core.String? distance,
  }) {
    final result = create();
    if (lat != null) result.lat = lat;
    if (lng != null) result.lng = lng;
    if (name != null) result.name = name;
    if (sn != null) result.sn = sn;
    if (distance != null) result.distance = distance;
    return result;
  }

  Lbs._();

  factory Lbs.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Lbs.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Lbs',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'lat')
    ..aOS(2, _omitFieldNames ? '' : 'lng')
    ..aOS(3, _omitFieldNames ? '' : 'name')
    ..aOS(4, _omitFieldNames ? '' : 'sn')
    ..aOS(5, _omitFieldNames ? '' : 'distance')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Lbs clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Lbs copyWith(void Function(Lbs) updates) =>
      super.copyWith((message) => updates(message as Lbs)) as Lbs;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Lbs create() => Lbs._();
  @$core.override
  Lbs createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Lbs getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Lbs>(create);
  static Lbs? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get lat => $_getSZ(0);
  @$pb.TagNumber(1)
  set lat($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasLat() => $_has(0);
  @$pb.TagNumber(1)
  void clearLat() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get lng => $_getSZ(1);
  @$pb.TagNumber(2)
  set lng($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasLng() => $_has(1);
  @$pb.TagNumber(2)
  void clearLng() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get sn => $_getSZ(3);
  @$pb.TagNumber(4)
  set sn($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasSn() => $_has(3);
  @$pb.TagNumber(4)
  void clearSn() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get distance => $_getSZ(4);
  @$pb.TagNumber(5)
  set distance($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasDistance() => $_has(4);
  @$pb.TagNumber(5)
  void clearDistance() => $_clearField(5);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
