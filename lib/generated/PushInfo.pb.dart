// This is a generated file - do not edit.
//
// Generated from PushInfo.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class PushInfo extends $pb.GeneratedMessage {
  factory PushInfo({
    $core.String? taskId,
    $core.String? serviceId,
    $core.String? targetUrl,
    $core.int? pushTime,
    $core.String? ext,
  }) {
    final result = create();
    if (taskId != null) result.taskId = taskId;
    if (serviceId != null) result.serviceId = serviceId;
    if (targetUrl != null) result.targetUrl = targetUrl;
    if (pushTime != null) result.pushTime = pushTime;
    if (ext != null) result.ext = ext;
    return result;
  }

  PushInfo._();

  factory PushInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PushInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PushInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'taskId')
    ..aOS(2, _omitFieldNames ? '' : 'serviceId')
    ..aOS(3, _omitFieldNames ? '' : 'targetUrl')
    ..aI(4, _omitFieldNames ? '' : 'pushTime')
    ..aOS(5, _omitFieldNames ? '' : 'ext')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PushInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PushInfo copyWith(void Function(PushInfo) updates) =>
      super.copyWith((message) => updates(message as PushInfo)) as PushInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PushInfo create() => PushInfo._();
  @$core.override
  PushInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PushInfo getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PushInfo>(create);
  static PushInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get taskId => $_getSZ(0);
  @$pb.TagNumber(1)
  set taskId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTaskId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTaskId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get serviceId => $_getSZ(1);
  @$pb.TagNumber(2)
  set serviceId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasServiceId() => $_has(1);
  @$pb.TagNumber(2)
  void clearServiceId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get targetUrl => $_getSZ(2);
  @$pb.TagNumber(3)
  set targetUrl($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasTargetUrl() => $_has(2);
  @$pb.TagNumber(3)
  void clearTargetUrl() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get pushTime => $_getIZ(3);
  @$pb.TagNumber(4)
  set pushTime($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasPushTime() => $_has(3);
  @$pb.TagNumber(4)
  void clearPushTime() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get ext => $_getSZ(4);
  @$pb.TagNumber(5)
  set ext($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasExt() => $_has(4);
  @$pb.TagNumber(5)
  void clearExt() => $_clearField(5);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
