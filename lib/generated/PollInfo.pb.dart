// This is a generated file - do not edit.
//
// Generated from PollInfo.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'FeedKV.pb.dart' as $1;
import 'PollOption.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class PollInfo extends $pb.GeneratedMessage {
  factory PollInfo({
    $core.int? type,
    $core.int? isMulti,
    $fixnum.Int64? totalNum,
    $core.int? optionsCount,
    $core.int? isPolled,
    $core.String? polledValue,
    $core.String? tips,
    $core.int? endTime,
    $core.Iterable<$0.PollOption>? options,
    $core.int? status,
    $fixnum.Int64? totalPoll,
    $core.String? title,
    $core.int? lastTime,
    $core.Iterable<$1.FeedKV>? businessInfo,
  }) {
    final result = create();
    if (type != null) result.type = type;
    if (isMulti != null) result.isMulti = isMulti;
    if (totalNum != null) result.totalNum = totalNum;
    if (optionsCount != null) result.optionsCount = optionsCount;
    if (isPolled != null) result.isPolled = isPolled;
    if (polledValue != null) result.polledValue = polledValue;
    if (tips != null) result.tips = tips;
    if (endTime != null) result.endTime = endTime;
    if (options != null) result.options.addAll(options);
    if (status != null) result.status = status;
    if (totalPoll != null) result.totalPoll = totalPoll;
    if (title != null) result.title = title;
    if (lastTime != null) result.lastTime = lastTime;
    if (businessInfo != null) result.businessInfo.addAll(businessInfo);
    return result;
  }

  PollInfo._();

  factory PollInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PollInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PollInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'type')
    ..aI(2, _omitFieldNames ? '' : 'isMulti')
    ..aInt64(3, _omitFieldNames ? '' : 'totalNum')
    ..aI(4, _omitFieldNames ? '' : 'optionsCount')
    ..aI(5, _omitFieldNames ? '' : 'isPolled')
    ..aOS(6, _omitFieldNames ? '' : 'polledValue')
    ..aOS(7, _omitFieldNames ? '' : 'tips')
    ..aI(8, _omitFieldNames ? '' : 'endTime')
    ..pPM<$0.PollOption>(9, _omitFieldNames ? '' : 'options',
        subBuilder: $0.PollOption.create)
    ..aI(10, _omitFieldNames ? '' : 'status')
    ..aInt64(11, _omitFieldNames ? '' : 'totalPoll')
    ..aOS(12, _omitFieldNames ? '' : 'title')
    ..aI(13, _omitFieldNames ? '' : 'lastTime', fieldType: $pb.PbFieldType.OU3)
    ..pPM<$1.FeedKV>(14, _omitFieldNames ? '' : 'businessInfo',
        subBuilder: $1.FeedKV.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PollInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PollInfo copyWith(void Function(PollInfo) updates) =>
      super.copyWith((message) => updates(message as PollInfo)) as PollInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PollInfo create() => PollInfo._();
  @$core.override
  PollInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PollInfo getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PollInfo>(create);
  static PollInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get type => $_getIZ(0);
  @$pb.TagNumber(1)
  set type($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get isMulti => $_getIZ(1);
  @$pb.TagNumber(2)
  set isMulti($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasIsMulti() => $_has(1);
  @$pb.TagNumber(2)
  void clearIsMulti() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get totalNum => $_getI64(2);
  @$pb.TagNumber(3)
  set totalNum($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasTotalNum() => $_has(2);
  @$pb.TagNumber(3)
  void clearTotalNum() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get optionsCount => $_getIZ(3);
  @$pb.TagNumber(4)
  set optionsCount($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasOptionsCount() => $_has(3);
  @$pb.TagNumber(4)
  void clearOptionsCount() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get isPolled => $_getIZ(4);
  @$pb.TagNumber(5)
  set isPolled($core.int value) => $_setSignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasIsPolled() => $_has(4);
  @$pb.TagNumber(5)
  void clearIsPolled() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get polledValue => $_getSZ(5);
  @$pb.TagNumber(6)
  set polledValue($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasPolledValue() => $_has(5);
  @$pb.TagNumber(6)
  void clearPolledValue() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get tips => $_getSZ(6);
  @$pb.TagNumber(7)
  set tips($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasTips() => $_has(6);
  @$pb.TagNumber(7)
  void clearTips() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.int get endTime => $_getIZ(7);
  @$pb.TagNumber(8)
  set endTime($core.int value) => $_setSignedInt32(7, value);
  @$pb.TagNumber(8)
  $core.bool hasEndTime() => $_has(7);
  @$pb.TagNumber(8)
  void clearEndTime() => $_clearField(8);

  @$pb.TagNumber(9)
  $pb.PbList<$0.PollOption> get options => $_getList(8);

  @$pb.TagNumber(10)
  $core.int get status => $_getIZ(9);
  @$pb.TagNumber(10)
  set status($core.int value) => $_setSignedInt32(9, value);
  @$pb.TagNumber(10)
  $core.bool hasStatus() => $_has(9);
  @$pb.TagNumber(10)
  void clearStatus() => $_clearField(10);

  @$pb.TagNumber(11)
  $fixnum.Int64 get totalPoll => $_getI64(10);
  @$pb.TagNumber(11)
  set totalPoll($fixnum.Int64 value) => $_setInt64(10, value);
  @$pb.TagNumber(11)
  $core.bool hasTotalPoll() => $_has(10);
  @$pb.TagNumber(11)
  void clearTotalPoll() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.String get title => $_getSZ(11);
  @$pb.TagNumber(12)
  set title($core.String value) => $_setString(11, value);
  @$pb.TagNumber(12)
  $core.bool hasTitle() => $_has(11);
  @$pb.TagNumber(12)
  void clearTitle() => $_clearField(12);

  @$pb.TagNumber(13)
  $core.int get lastTime => $_getIZ(12);
  @$pb.TagNumber(13)
  set lastTime($core.int value) => $_setUnsignedInt32(12, value);
  @$pb.TagNumber(13)
  $core.bool hasLastTime() => $_has(12);
  @$pb.TagNumber(13)
  void clearLastTime() => $_clearField(13);

  @$pb.TagNumber(14)
  $pb.PbList<$1.FeedKV> get businessInfo => $_getList(13);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
