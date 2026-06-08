// This is a generated file - do not edit.
//
// Generated from BaseTextColor.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class BaseTextColor extends $pb.GeneratedMessage {
  factory BaseTextColor({
    $core.int? type,
    $core.String? day,
    $core.String? night,
  }) {
    final result = create();
    if (type != null) result.type = type;
    if (day != null) result.day = day;
    if (night != null) result.night = night;
    return result;
  }

  BaseTextColor._();

  factory BaseTextColor.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BaseTextColor.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BaseTextColor',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'type')
    ..aOS(2, _omitFieldNames ? '' : 'day')
    ..aOS(3, _omitFieldNames ? '' : 'night')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BaseTextColor clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BaseTextColor copyWith(void Function(BaseTextColor) updates) =>
      super.copyWith((message) => updates(message as BaseTextColor))
          as BaseTextColor;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BaseTextColor create() => BaseTextColor._();
  @$core.override
  BaseTextColor createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BaseTextColor getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BaseTextColor>(create);
  static BaseTextColor? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get type => $_getIZ(0);
  @$pb.TagNumber(1)
  set type($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get day => $_getSZ(1);
  @$pb.TagNumber(2)
  set day($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasDay() => $_has(1);
  @$pb.TagNumber(2)
  void clearDay() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get night => $_getSZ(2);
  @$pb.TagNumber(3)
  set night($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasNight() => $_has(2);
  @$pb.TagNumber(3)
  void clearNight() => $_clearField(3);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
