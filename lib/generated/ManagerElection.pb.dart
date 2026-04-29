// This is a generated file - do not edit.
//
// Generated from ManagerElection.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class ManagerElection extends $pb.GeneratedMessage {
  factory ManagerElection({
    $core.int? canVote,
    $core.int? voteNum,
    $core.int? beginVoteTime,
    $core.Iterable<$core.String>? voteCondition,
    $core.String? tailText,
    $core.int? isShowDistribute,
    $core.int? remainderTime,
    $core.int? status,
    $core.Iterable<$core.String>? voteConditionTitle,
    $core.Iterable<$core.String>? voteConditionPic,
  }) {
    final result = create();
    if (canVote != null) result.canVote = canVote;
    if (voteNum != null) result.voteNum = voteNum;
    if (beginVoteTime != null) result.beginVoteTime = beginVoteTime;
    if (voteCondition != null) result.voteCondition.addAll(voteCondition);
    if (tailText != null) result.tailText = tailText;
    if (isShowDistribute != null) result.isShowDistribute = isShowDistribute;
    if (remainderTime != null) result.remainderTime = remainderTime;
    if (status != null) result.status = status;
    if (voteConditionTitle != null)
      result.voteConditionTitle.addAll(voteConditionTitle);
    if (voteConditionPic != null)
      result.voteConditionPic.addAll(voteConditionPic);
    return result;
  }

  ManagerElection._();

  factory ManagerElection.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ManagerElection.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ManagerElection',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'canVote', fieldType: $pb.PbFieldType.OU3)
    ..aI(2, _omitFieldNames ? '' : 'voteNum', fieldType: $pb.PbFieldType.OU3)
    ..aI(3, _omitFieldNames ? '' : 'beginVoteTime',
        fieldType: $pb.PbFieldType.OU3)
    ..pPS(5, _omitFieldNames ? '' : 'voteCondition')
    ..aOS(6, _omitFieldNames ? '' : 'tailText')
    ..aI(7, _omitFieldNames ? '' : 'isShowDistribute',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(8, _omitFieldNames ? '' : 'remainderTime',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(9, _omitFieldNames ? '' : 'status', fieldType: $pb.PbFieldType.OU3)
    ..pPS(10, _omitFieldNames ? '' : 'voteConditionTitle')
    ..pPS(11, _omitFieldNames ? '' : 'voteConditionPic')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ManagerElection clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ManagerElection copyWith(void Function(ManagerElection) updates) =>
      super.copyWith((message) => updates(message as ManagerElection))
          as ManagerElection;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ManagerElection create() => ManagerElection._();
  @$core.override
  ManagerElection createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ManagerElection getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ManagerElection>(create);
  static ManagerElection? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get canVote => $_getIZ(0);
  @$pb.TagNumber(1)
  set canVote($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCanVote() => $_has(0);
  @$pb.TagNumber(1)
  void clearCanVote() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get voteNum => $_getIZ(1);
  @$pb.TagNumber(2)
  set voteNum($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasVoteNum() => $_has(1);
  @$pb.TagNumber(2)
  void clearVoteNum() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get beginVoteTime => $_getIZ(2);
  @$pb.TagNumber(3)
  set beginVoteTime($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasBeginVoteTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearBeginVoteTime() => $_clearField(3);

  @$pb.TagNumber(5)
  $pb.PbList<$core.String> get voteCondition => $_getList(3);

  @$pb.TagNumber(6)
  $core.String get tailText => $_getSZ(4);
  @$pb.TagNumber(6)
  set tailText($core.String value) => $_setString(4, value);
  @$pb.TagNumber(6)
  $core.bool hasTailText() => $_has(4);
  @$pb.TagNumber(6)
  void clearTailText() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.int get isShowDistribute => $_getIZ(5);
  @$pb.TagNumber(7)
  set isShowDistribute($core.int value) => $_setUnsignedInt32(5, value);
  @$pb.TagNumber(7)
  $core.bool hasIsShowDistribute() => $_has(5);
  @$pb.TagNumber(7)
  void clearIsShowDistribute() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.int get remainderTime => $_getIZ(6);
  @$pb.TagNumber(8)
  set remainderTime($core.int value) => $_setUnsignedInt32(6, value);
  @$pb.TagNumber(8)
  $core.bool hasRemainderTime() => $_has(6);
  @$pb.TagNumber(8)
  void clearRemainderTime() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.int get status => $_getIZ(7);
  @$pb.TagNumber(9)
  set status($core.int value) => $_setUnsignedInt32(7, value);
  @$pb.TagNumber(9)
  $core.bool hasStatus() => $_has(7);
  @$pb.TagNumber(9)
  void clearStatus() => $_clearField(9);

  @$pb.TagNumber(10)
  $pb.PbList<$core.String> get voteConditionTitle => $_getList(8);

  @$pb.TagNumber(11)
  $pb.PbList<$core.String> get voteConditionPic => $_getList(9);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
