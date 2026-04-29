// This is a generated file - do not edit.
//
// Generated from PriManagerApplyInfo.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class PriManagerApplyInfo extends $pb.GeneratedMessage {
  factory PriManagerApplyInfo({
    $core.int? assistLeftNum,
    $core.String? assistApplyUrl,
    $core.int? assistApplyStatus,
  }) {
    final result = create();
    if (assistLeftNum != null) result.assistLeftNum = assistLeftNum;
    if (assistApplyUrl != null) result.assistApplyUrl = assistApplyUrl;
    if (assistApplyStatus != null) result.assistApplyStatus = assistApplyStatus;
    return result;
  }

  PriManagerApplyInfo._();

  factory PriManagerApplyInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PriManagerApplyInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PriManagerApplyInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'assistLeftNum')
    ..aOS(2, _omitFieldNames ? '' : 'assistApplyUrl')
    ..aI(3, _omitFieldNames ? '' : 'assistApplyStatus')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PriManagerApplyInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PriManagerApplyInfo copyWith(void Function(PriManagerApplyInfo) updates) =>
      super.copyWith((message) => updates(message as PriManagerApplyInfo))
          as PriManagerApplyInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PriManagerApplyInfo create() => PriManagerApplyInfo._();
  @$core.override
  PriManagerApplyInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PriManagerApplyInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PriManagerApplyInfo>(create);
  static PriManagerApplyInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get assistLeftNum => $_getIZ(0);
  @$pb.TagNumber(1)
  set assistLeftNum($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasAssistLeftNum() => $_has(0);
  @$pb.TagNumber(1)
  void clearAssistLeftNum() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get assistApplyUrl => $_getSZ(1);
  @$pb.TagNumber(2)
  set assistApplyUrl($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasAssistApplyUrl() => $_has(1);
  @$pb.TagNumber(2)
  void clearAssistApplyUrl() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get assistApplyStatus => $_getIZ(2);
  @$pb.TagNumber(3)
  set assistApplyStatus($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasAssistApplyStatus() => $_has(2);
  @$pb.TagNumber(3)
  void clearAssistApplyStatus() => $_clearField(3);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
