// This is a generated file - do not edit.
//
// Generated from UserGrowth.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'UserTaskInfo.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class UserGrowth extends $pb.GeneratedMessage {
  factory UserGrowth({
    $core.int? levelId,
    $fixnum.Int64? score,
    $fixnum.Int64? targetScore,
    $core.double? tmoney,
    $core.Iterable<$0.UserTaskInfo>? taskInfo,
  }) {
    final result = create();
    if (levelId != null) result.levelId = levelId;
    if (score != null) result.score = score;
    if (targetScore != null) result.targetScore = targetScore;
    if (tmoney != null) result.tmoney = tmoney;
    if (taskInfo != null) result.taskInfo.addAll(taskInfo);
    return result;
  }

  UserGrowth._();

  factory UserGrowth.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UserGrowth.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UserGrowth',
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'levelId', fieldType: $pb.PbFieldType.OU3)
    ..aInt64(2, _omitFieldNames ? '' : 'score')
    ..aInt64(3, _omitFieldNames ? '' : 'targetScore')
    ..aD(4, _omitFieldNames ? '' : 'tmoney')
    ..pPM<$0.UserTaskInfo>(5, _omitFieldNames ? '' : 'taskInfo',
        subBuilder: $0.UserTaskInfo.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UserGrowth clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UserGrowth copyWith(void Function(UserGrowth) updates) =>
      super.copyWith((message) => updates(message as UserGrowth)) as UserGrowth;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserGrowth create() => UserGrowth._();
  @$core.override
  UserGrowth createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UserGrowth getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UserGrowth>(create);
  static UserGrowth? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get levelId => $_getIZ(0);
  @$pb.TagNumber(1)
  set levelId($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasLevelId() => $_has(0);
  @$pb.TagNumber(1)
  void clearLevelId() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get score => $_getI64(1);
  @$pb.TagNumber(2)
  set score($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasScore() => $_has(1);
  @$pb.TagNumber(2)
  void clearScore() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get targetScore => $_getI64(2);
  @$pb.TagNumber(3)
  set targetScore($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasTargetScore() => $_has(2);
  @$pb.TagNumber(3)
  void clearTargetScore() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.double get tmoney => $_getN(3);
  @$pb.TagNumber(4)
  set tmoney($core.double value) => $_setDouble(3, value);
  @$pb.TagNumber(4)
  $core.bool hasTmoney() => $_has(3);
  @$pb.TagNumber(4)
  void clearTmoney() => $_clearField(4);

  @$pb.TagNumber(5)
  $pb.PbList<$0.UserTaskInfo> get taskInfo => $_getList(4);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
