// This is a generated file - do not edit.
//
// Generated from GetBawuInfo/ManagerApplyInfo.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class ManagerApplyInfo extends $pb.GeneratedMessage {
  factory ManagerApplyInfo({
    $core.int? managerLeftNum,
    $core.String? managerApplyUrl,
    $core.int? assistLeftNum,
    $core.String? assistApplyUrl,
  }) {
    final result = create();
    if (managerLeftNum != null) result.managerLeftNum = managerLeftNum;
    if (managerApplyUrl != null) result.managerApplyUrl = managerApplyUrl;
    if (assistLeftNum != null) result.assistLeftNum = assistLeftNum;
    if (assistApplyUrl != null) result.assistApplyUrl = assistApplyUrl;
    return result;
  }

  ManagerApplyInfo._();

  factory ManagerApplyInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ManagerApplyInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ManagerApplyInfo',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'tieba.getBawuInfo'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'managerLeftNum')
    ..aOS(2, _omitFieldNames ? '' : 'managerApplyUrl')
    ..aI(3, _omitFieldNames ? '' : 'assistLeftNum')
    ..aOS(4, _omitFieldNames ? '' : 'assistApplyUrl')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ManagerApplyInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ManagerApplyInfo copyWith(void Function(ManagerApplyInfo) updates) =>
      super.copyWith((message) => updates(message as ManagerApplyInfo))
          as ManagerApplyInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ManagerApplyInfo create() => ManagerApplyInfo._();
  @$core.override
  ManagerApplyInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ManagerApplyInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ManagerApplyInfo>(create);
  static ManagerApplyInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get managerLeftNum => $_getIZ(0);
  @$pb.TagNumber(1)
  set managerLeftNum($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasManagerLeftNum() => $_has(0);
  @$pb.TagNumber(1)
  void clearManagerLeftNum() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get managerApplyUrl => $_getSZ(1);
  @$pb.TagNumber(2)
  set managerApplyUrl($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasManagerApplyUrl() => $_has(1);
  @$pb.TagNumber(2)
  void clearManagerApplyUrl() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get assistLeftNum => $_getIZ(2);
  @$pb.TagNumber(3)
  set assistLeftNum($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasAssistLeftNum() => $_has(2);
  @$pb.TagNumber(3)
  void clearAssistLeftNum() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get assistApplyUrl => $_getSZ(3);
  @$pb.TagNumber(4)
  set assistApplyUrl($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasAssistApplyUrl() => $_has(3);
  @$pb.TagNumber(4)
  void clearAssistApplyUrl() => $_clearField(4);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
