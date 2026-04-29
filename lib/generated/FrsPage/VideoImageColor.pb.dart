// This is a generated file - do not edit.
//
// Generated from FrsPage/VideoImageColor.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class VideoImageColor extends $pb.GeneratedMessage {
  factory VideoImageColor({
    $core.int? time,
    $core.String? color,
  }) {
    final result = create();
    if (time != null) result.time = time;
    if (color != null) result.color = color;
    return result;
  }

  VideoImageColor._();

  factory VideoImageColor.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory VideoImageColor.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'VideoImageColor',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba.frsPage'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'time', fieldType: $pb.PbFieldType.OU3)
    ..aOS(2, _omitFieldNames ? '' : 'color')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VideoImageColor clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VideoImageColor copyWith(void Function(VideoImageColor) updates) =>
      super.copyWith((message) => updates(message as VideoImageColor))
          as VideoImageColor;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VideoImageColor create() => VideoImageColor._();
  @$core.override
  VideoImageColor createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static VideoImageColor getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<VideoImageColor>(create);
  static VideoImageColor? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get time => $_getIZ(0);
  @$pb.TagNumber(1)
  set time($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTime() => $_has(0);
  @$pb.TagNumber(1)
  void clearTime() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get color => $_getSZ(1);
  @$pb.TagNumber(2)
  set color($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasColor() => $_has(1);
  @$pb.TagNumber(2)
  void clearColor() => $_clearField(2);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
