// This is a generated file - do not edit.
//
// Generated from ContriInfo.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'ToastConfig.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class ContriInfo extends $pb.GeneratedMessage {
  factory ContriInfo({
    $core.String? colorMsg,
    $core.String? afterMsg,
    $core.Iterable<$0.ToastConfig>? toastConfig,
  }) {
    final result = create();
    if (colorMsg != null) result.colorMsg = colorMsg;
    if (afterMsg != null) result.afterMsg = afterMsg;
    if (toastConfig != null) result.toastConfig.addAll(toastConfig);
    return result;
  }

  ContriInfo._();

  factory ContriInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ContriInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ContriInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'colorMsg')
    ..aOS(2, _omitFieldNames ? '' : 'afterMsg')
    ..pPM<$0.ToastConfig>(3, _omitFieldNames ? '' : 'toastConfig',
        subBuilder: $0.ToastConfig.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ContriInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ContriInfo copyWith(void Function(ContriInfo) updates) =>
      super.copyWith((message) => updates(message as ContriInfo)) as ContriInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ContriInfo create() => ContriInfo._();
  @$core.override
  ContriInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ContriInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ContriInfo>(create);
  static ContriInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get colorMsg => $_getSZ(0);
  @$pb.TagNumber(1)
  set colorMsg($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasColorMsg() => $_has(0);
  @$pb.TagNumber(1)
  void clearColorMsg() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get afterMsg => $_getSZ(1);
  @$pb.TagNumber(2)
  set afterMsg($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasAfterMsg() => $_has(1);
  @$pb.TagNumber(2)
  void clearAfterMsg() => $_clearField(2);

  @$pb.TagNumber(3)
  $pb.PbList<$0.ToastConfig> get toastConfig => $_getList(2);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
