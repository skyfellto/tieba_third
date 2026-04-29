// This is a generated file - do not edit.
//
// Generated from ToastConfig.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class ToastConfig extends $pb.GeneratedMessage {
  factory ToastConfig({
    $core.String? preColorMsg,
    $core.String? toastBackImage,
  }) {
    final result = create();
    if (preColorMsg != null) result.preColorMsg = preColorMsg;
    if (toastBackImage != null) result.toastBackImage = toastBackImage;
    return result;
  }

  ToastConfig._();

  factory ToastConfig.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ToastConfig.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ToastConfig',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'preColorMsg')
    ..aOS(2, _omitFieldNames ? '' : 'toastBackImage')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ToastConfig clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ToastConfig copyWith(void Function(ToastConfig) updates) =>
      super.copyWith((message) => updates(message as ToastConfig))
          as ToastConfig;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ToastConfig create() => ToastConfig._();
  @$core.override
  ToastConfig createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ToastConfig getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ToastConfig>(create);
  static ToastConfig? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get preColorMsg => $_getSZ(0);
  @$pb.TagNumber(1)
  set preColorMsg($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPreColorMsg() => $_has(0);
  @$pb.TagNumber(1)
  void clearPreColorMsg() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get toastBackImage => $_getSZ(1);
  @$pb.TagNumber(2)
  set toastBackImage($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasToastBackImage() => $_has(1);
  @$pb.TagNumber(2)
  void clearToastBackImage() => $_clearField(2);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
