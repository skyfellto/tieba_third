// This is a generated file - do not edit.
//
// Generated from VcodeExtra.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class VcodeExtra extends $pb.GeneratedMessage {
  factory VcodeExtra({
    $core.String? textimg,
    $core.String? slideimg,
    $core.String? endpoint,
    $core.String? successimg,
    $core.String? slideendpoint,
  }) {
    final result = create();
    if (textimg != null) result.textimg = textimg;
    if (slideimg != null) result.slideimg = slideimg;
    if (endpoint != null) result.endpoint = endpoint;
    if (successimg != null) result.successimg = successimg;
    if (slideendpoint != null) result.slideendpoint = slideendpoint;
    return result;
  }

  VcodeExtra._();

  factory VcodeExtra.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory VcodeExtra.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'VcodeExtra',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'textimg')
    ..aOS(2, _omitFieldNames ? '' : 'slideimg')
    ..aOS(3, _omitFieldNames ? '' : 'endpoint')
    ..aOS(4, _omitFieldNames ? '' : 'successimg')
    ..aOS(5, _omitFieldNames ? '' : 'slideendpoint')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VcodeExtra clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VcodeExtra copyWith(void Function(VcodeExtra) updates) =>
      super.copyWith((message) => updates(message as VcodeExtra)) as VcodeExtra;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VcodeExtra create() => VcodeExtra._();
  @$core.override
  VcodeExtra createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static VcodeExtra getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<VcodeExtra>(create);
  static VcodeExtra? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get textimg => $_getSZ(0);
  @$pb.TagNumber(1)
  set textimg($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTextimg() => $_has(0);
  @$pb.TagNumber(1)
  void clearTextimg() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get slideimg => $_getSZ(1);
  @$pb.TagNumber(2)
  set slideimg($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSlideimg() => $_has(1);
  @$pb.TagNumber(2)
  void clearSlideimg() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get endpoint => $_getSZ(2);
  @$pb.TagNumber(3)
  set endpoint($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasEndpoint() => $_has(2);
  @$pb.TagNumber(3)
  void clearEndpoint() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get successimg => $_getSZ(3);
  @$pb.TagNumber(4)
  set successimg($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasSuccessimg() => $_has(3);
  @$pb.TagNumber(4)
  void clearSuccessimg() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get slideendpoint => $_getSZ(4);
  @$pb.TagNumber(5)
  set slideendpoint($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasSlideendpoint() => $_has(4);
  @$pb.TagNumber(5)
  void clearSlideendpoint() => $_clearField(5);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
