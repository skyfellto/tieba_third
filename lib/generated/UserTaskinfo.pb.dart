// This is a generated file - do not edit.
//
// Generated from UserTaskinfo.proto.

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

class UserTaskInfo extends $pb.GeneratedMessage {
  factory UserTaskInfo({
    $fixnum.Int64? id,
    $core.String? name,
    $core.String? brief,
    $core.String? taskIconUrl,
    $core.int? status,
    $core.int? targetNum,
    $core.int? currNum,
    $core.int? taskType,
    $core.int? weight,
    $core.String? actType,
    $core.String? targetScheme,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (name != null) result.name = name;
    if (brief != null) result.brief = brief;
    if (taskIconUrl != null) result.taskIconUrl = taskIconUrl;
    if (status != null) result.status = status;
    if (targetNum != null) result.targetNum = targetNum;
    if (currNum != null) result.currNum = currNum;
    if (taskType != null) result.taskType = taskType;
    if (weight != null) result.weight = weight;
    if (actType != null) result.actType = actType;
    if (targetScheme != null) result.targetScheme = targetScheme;
    return result;
  }

  UserTaskInfo._();

  factory UserTaskInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UserTaskInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UserTaskInfo',
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'brief')
    ..aOS(4, _omitFieldNames ? '' : 'taskIconUrl')
    ..aI(5, _omitFieldNames ? '' : 'status')
    ..aI(6, _omitFieldNames ? '' : 'targetNum')
    ..aI(7, _omitFieldNames ? '' : 'currNum')
    ..aI(8, _omitFieldNames ? '' : 'taskType')
    ..aI(9, _omitFieldNames ? '' : 'weight')
    ..aOS(10, _omitFieldNames ? '' : 'actType')
    ..aOS(11, _omitFieldNames ? '' : 'targetScheme')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UserTaskInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UserTaskInfo copyWith(void Function(UserTaskInfo) updates) =>
      super.copyWith((message) => updates(message as UserTaskInfo))
          as UserTaskInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserTaskInfo create() => UserTaskInfo._();
  @$core.override
  UserTaskInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UserTaskInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UserTaskInfo>(create);
  static UserTaskInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get brief => $_getSZ(2);
  @$pb.TagNumber(3)
  set brief($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasBrief() => $_has(2);
  @$pb.TagNumber(3)
  void clearBrief() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get taskIconUrl => $_getSZ(3);
  @$pb.TagNumber(4)
  set taskIconUrl($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasTaskIconUrl() => $_has(3);
  @$pb.TagNumber(4)
  void clearTaskIconUrl() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get status => $_getIZ(4);
  @$pb.TagNumber(5)
  set status($core.int value) => $_setSignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasStatus() => $_has(4);
  @$pb.TagNumber(5)
  void clearStatus() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get targetNum => $_getIZ(5);
  @$pb.TagNumber(6)
  set targetNum($core.int value) => $_setSignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasTargetNum() => $_has(5);
  @$pb.TagNumber(6)
  void clearTargetNum() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.int get currNum => $_getIZ(6);
  @$pb.TagNumber(7)
  set currNum($core.int value) => $_setSignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasCurrNum() => $_has(6);
  @$pb.TagNumber(7)
  void clearCurrNum() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.int get taskType => $_getIZ(7);
  @$pb.TagNumber(8)
  set taskType($core.int value) => $_setSignedInt32(7, value);
  @$pb.TagNumber(8)
  $core.bool hasTaskType() => $_has(7);
  @$pb.TagNumber(8)
  void clearTaskType() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.int get weight => $_getIZ(8);
  @$pb.TagNumber(9)
  set weight($core.int value) => $_setSignedInt32(8, value);
  @$pb.TagNumber(9)
  $core.bool hasWeight() => $_has(8);
  @$pb.TagNumber(9)
  void clearWeight() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.String get actType => $_getSZ(9);
  @$pb.TagNumber(10)
  set actType($core.String value) => $_setString(9, value);
  @$pb.TagNumber(10)
  $core.bool hasActType() => $_has(9);
  @$pb.TagNumber(10)
  void clearActType() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.String get targetScheme => $_getSZ(10);
  @$pb.TagNumber(11)
  set targetScheme($core.String value) => $_setString(10, value);
  @$pb.TagNumber(11)
  $core.bool hasTargetScheme() => $_has(10);
  @$pb.TagNumber(11)
  void clearTargetScheme() => $_clearField(11);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
