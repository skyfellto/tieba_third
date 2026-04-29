// This is a generated file - do not edit.
//
// Generated from Profile/CommonLocation.proto.

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

class CommonLocation extends $pb.GeneratedMessage {
  factory CommonLocation({
    $core.String? distance,
    $fixnum.Int64? time,
  }) {
    final result = create();
    if (distance != null) result.distance = distance;
    if (time != null) result.time = time;
    return result;
  }

  CommonLocation._();

  factory CommonLocation.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CommonLocation.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CommonLocation',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba.profile'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'distance')
    ..aInt64(2, _omitFieldNames ? '' : 'time')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CommonLocation clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CommonLocation copyWith(void Function(CommonLocation) updates) =>
      super.copyWith((message) => updates(message as CommonLocation))
          as CommonLocation;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CommonLocation create() => CommonLocation._();
  @$core.override
  CommonLocation createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CommonLocation getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CommonLocation>(create);
  static CommonLocation? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get distance => $_getSZ(0);
  @$pb.TagNumber(1)
  set distance($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDistance() => $_has(0);
  @$pb.TagNumber(1)
  void clearDistance() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get time => $_getI64(1);
  @$pb.TagNumber(2)
  set time($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasTime() => $_has(1);
  @$pb.TagNumber(2)
  void clearTime() => $_clearField(2);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
