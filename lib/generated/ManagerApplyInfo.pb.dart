// This is a generated file - do not edit.
//
// Generated from ManagerApplyInfo.proto.

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
    $core.int? managerApplyStatus,
  }) {
    final result = create();
    if (managerLeftNum != null) result.managerLeftNum = managerLeftNum;
    if (managerApplyUrl != null) result.managerApplyUrl = managerApplyUrl;
    if (managerApplyStatus != null)
      result.managerApplyStatus = managerApplyStatus;
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
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'managerLeftNum')
    ..aOS(2, _omitFieldNames ? '' : 'managerApplyUrl')
    ..aI(3, _omitFieldNames ? '' : 'managerApplyStatus')
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
  $core.int get managerApplyStatus => $_getIZ(2);
  @$pb.TagNumber(3)
  set managerApplyStatus($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasManagerApplyStatus() => $_has(2);
  @$pb.TagNumber(3)
  void clearManagerApplyStatus() => $_clearField(3);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
