// This is a generated file - do not edit.
//
// Generated from TaskInfo.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'RewardCard.pb.dart' as $1;
import 'VoteSchema.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class TaskInfo extends $pb.GeneratedMessage {
  factory TaskInfo({
    $fixnum.Int64? taskId,
    $fixnum.Int64? threadId,
    $core.String? bgimg,
    $core.String? threadImg,
    $fixnum.Int64? startTime,
    $fixnum.Int64? endTime,
    $core.String? threadImgSize,
    $fixnum.Int64? forumId,
    $core.String? forumName,
    $core.String? objId,
    $0.VoteSchema? voteSchema,
    $1.RewardCard? rewardCard,
    $core.int? isGodReply,
    $core.String? floorGodReply,
    $core.int? cardType,
    $core.String? whRate,
    $core.String? webviewUrl,
    $core.String? topBackgroundImg,
    $core.String? themeColor,
    $core.String? webviewData,
  }) {
    final result = create();
    if (taskId != null) result.taskId = taskId;
    if (threadId != null) result.threadId = threadId;
    if (bgimg != null) result.bgimg = bgimg;
    if (threadImg != null) result.threadImg = threadImg;
    if (startTime != null) result.startTime = startTime;
    if (endTime != null) result.endTime = endTime;
    if (threadImgSize != null) result.threadImgSize = threadImgSize;
    if (forumId != null) result.forumId = forumId;
    if (forumName != null) result.forumName = forumName;
    if (objId != null) result.objId = objId;
    if (voteSchema != null) result.voteSchema = voteSchema;
    if (rewardCard != null) result.rewardCard = rewardCard;
    if (isGodReply != null) result.isGodReply = isGodReply;
    if (floorGodReply != null) result.floorGodReply = floorGodReply;
    if (cardType != null) result.cardType = cardType;
    if (whRate != null) result.whRate = whRate;
    if (webviewUrl != null) result.webviewUrl = webviewUrl;
    if (topBackgroundImg != null) result.topBackgroundImg = topBackgroundImg;
    if (themeColor != null) result.themeColor = themeColor;
    if (webviewData != null) result.webviewData = webviewData;
    return result;
  }

  TaskInfo._();

  factory TaskInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TaskInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TaskInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'taskId')
    ..aInt64(2, _omitFieldNames ? '' : 'threadId')
    ..aOS(3, _omitFieldNames ? '' : 'bgimg')
    ..aOS(4, _omitFieldNames ? '' : 'threadImg')
    ..aInt64(5, _omitFieldNames ? '' : 'startTime')
    ..aInt64(6, _omitFieldNames ? '' : 'endTime')
    ..aOS(7, _omitFieldNames ? '' : 'threadImgSize')
    ..aInt64(8, _omitFieldNames ? '' : 'forumId')
    ..aOS(9, _omitFieldNames ? '' : 'forumName')
    ..aOS(10, _omitFieldNames ? '' : 'objId')
    ..aOM<$0.VoteSchema>(11, _omitFieldNames ? '' : 'voteSchema',
        subBuilder: $0.VoteSchema.create)
    ..aOM<$1.RewardCard>(12, _omitFieldNames ? '' : 'rewardCard',
        subBuilder: $1.RewardCard.create)
    ..aI(13, _omitFieldNames ? '' : 'isGodReply')
    ..aOS(14, _omitFieldNames ? '' : 'floorGodReply')
    ..aI(15, _omitFieldNames ? '' : 'cardType')
    ..aOS(16, _omitFieldNames ? '' : 'whRate')
    ..aOS(17, _omitFieldNames ? '' : 'webviewUrl')
    ..aOS(18, _omitFieldNames ? '' : 'topBackgroundImg')
    ..aOS(19, _omitFieldNames ? '' : 'themeColor')
    ..aOS(20, _omitFieldNames ? '' : 'webviewData')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TaskInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TaskInfo copyWith(void Function(TaskInfo) updates) =>
      super.copyWith((message) => updates(message as TaskInfo)) as TaskInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TaskInfo create() => TaskInfo._();
  @$core.override
  TaskInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TaskInfo getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TaskInfo>(create);
  static TaskInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get taskId => $_getI64(0);
  @$pb.TagNumber(1)
  set taskId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTaskId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTaskId() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get threadId => $_getI64(1);
  @$pb.TagNumber(2)
  set threadId($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasThreadId() => $_has(1);
  @$pb.TagNumber(2)
  void clearThreadId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get bgimg => $_getSZ(2);
  @$pb.TagNumber(3)
  set bgimg($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasBgimg() => $_has(2);
  @$pb.TagNumber(3)
  void clearBgimg() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get threadImg => $_getSZ(3);
  @$pb.TagNumber(4)
  set threadImg($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasThreadImg() => $_has(3);
  @$pb.TagNumber(4)
  void clearThreadImg() => $_clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get startTime => $_getI64(4);
  @$pb.TagNumber(5)
  set startTime($fixnum.Int64 value) => $_setInt64(4, value);
  @$pb.TagNumber(5)
  $core.bool hasStartTime() => $_has(4);
  @$pb.TagNumber(5)
  void clearStartTime() => $_clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get endTime => $_getI64(5);
  @$pb.TagNumber(6)
  set endTime($fixnum.Int64 value) => $_setInt64(5, value);
  @$pb.TagNumber(6)
  $core.bool hasEndTime() => $_has(5);
  @$pb.TagNumber(6)
  void clearEndTime() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get threadImgSize => $_getSZ(6);
  @$pb.TagNumber(7)
  set threadImgSize($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasThreadImgSize() => $_has(6);
  @$pb.TagNumber(7)
  void clearThreadImgSize() => $_clearField(7);

  @$pb.TagNumber(8)
  $fixnum.Int64 get forumId => $_getI64(7);
  @$pb.TagNumber(8)
  set forumId($fixnum.Int64 value) => $_setInt64(7, value);
  @$pb.TagNumber(8)
  $core.bool hasForumId() => $_has(7);
  @$pb.TagNumber(8)
  void clearForumId() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.String get forumName => $_getSZ(8);
  @$pb.TagNumber(9)
  set forumName($core.String value) => $_setString(8, value);
  @$pb.TagNumber(9)
  $core.bool hasForumName() => $_has(8);
  @$pb.TagNumber(9)
  void clearForumName() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.String get objId => $_getSZ(9);
  @$pb.TagNumber(10)
  set objId($core.String value) => $_setString(9, value);
  @$pb.TagNumber(10)
  $core.bool hasObjId() => $_has(9);
  @$pb.TagNumber(10)
  void clearObjId() => $_clearField(10);

  @$pb.TagNumber(11)
  $0.VoteSchema get voteSchema => $_getN(10);
  @$pb.TagNumber(11)
  set voteSchema($0.VoteSchema value) => $_setField(11, value);
  @$pb.TagNumber(11)
  $core.bool hasVoteSchema() => $_has(10);
  @$pb.TagNumber(11)
  void clearVoteSchema() => $_clearField(11);
  @$pb.TagNumber(11)
  $0.VoteSchema ensureVoteSchema() => $_ensure(10);

  @$pb.TagNumber(12)
  $1.RewardCard get rewardCard => $_getN(11);
  @$pb.TagNumber(12)
  set rewardCard($1.RewardCard value) => $_setField(12, value);
  @$pb.TagNumber(12)
  $core.bool hasRewardCard() => $_has(11);
  @$pb.TagNumber(12)
  void clearRewardCard() => $_clearField(12);
  @$pb.TagNumber(12)
  $1.RewardCard ensureRewardCard() => $_ensure(11);

  @$pb.TagNumber(13)
  $core.int get isGodReply => $_getIZ(12);
  @$pb.TagNumber(13)
  set isGodReply($core.int value) => $_setSignedInt32(12, value);
  @$pb.TagNumber(13)
  $core.bool hasIsGodReply() => $_has(12);
  @$pb.TagNumber(13)
  void clearIsGodReply() => $_clearField(13);

  @$pb.TagNumber(14)
  $core.String get floorGodReply => $_getSZ(13);
  @$pb.TagNumber(14)
  set floorGodReply($core.String value) => $_setString(13, value);
  @$pb.TagNumber(14)
  $core.bool hasFloorGodReply() => $_has(13);
  @$pb.TagNumber(14)
  void clearFloorGodReply() => $_clearField(14);

  @$pb.TagNumber(15)
  $core.int get cardType => $_getIZ(14);
  @$pb.TagNumber(15)
  set cardType($core.int value) => $_setSignedInt32(14, value);
  @$pb.TagNumber(15)
  $core.bool hasCardType() => $_has(14);
  @$pb.TagNumber(15)
  void clearCardType() => $_clearField(15);

  @$pb.TagNumber(16)
  $core.String get whRate => $_getSZ(15);
  @$pb.TagNumber(16)
  set whRate($core.String value) => $_setString(15, value);
  @$pb.TagNumber(16)
  $core.bool hasWhRate() => $_has(15);
  @$pb.TagNumber(16)
  void clearWhRate() => $_clearField(16);

  @$pb.TagNumber(17)
  $core.String get webviewUrl => $_getSZ(16);
  @$pb.TagNumber(17)
  set webviewUrl($core.String value) => $_setString(16, value);
  @$pb.TagNumber(17)
  $core.bool hasWebviewUrl() => $_has(16);
  @$pb.TagNumber(17)
  void clearWebviewUrl() => $_clearField(17);

  @$pb.TagNumber(18)
  $core.String get topBackgroundImg => $_getSZ(17);
  @$pb.TagNumber(18)
  set topBackgroundImg($core.String value) => $_setString(17, value);
  @$pb.TagNumber(18)
  $core.bool hasTopBackgroundImg() => $_has(17);
  @$pb.TagNumber(18)
  void clearTopBackgroundImg() => $_clearField(18);

  @$pb.TagNumber(19)
  $core.String get themeColor => $_getSZ(18);
  @$pb.TagNumber(19)
  set themeColor($core.String value) => $_setString(18, value);
  @$pb.TagNumber(19)
  $core.bool hasThemeColor() => $_has(18);
  @$pb.TagNumber(19)
  void clearThemeColor() => $_clearField(19);

  @$pb.TagNumber(20)
  $core.String get webviewData => $_getSZ(19);
  @$pb.TagNumber(20)
  set webviewData($core.String value) => $_setString(19, value);
  @$pb.TagNumber(20)
  $core.bool hasWebviewData() => $_has(19);
  @$pb.TagNumber(20)
  void clearWebviewData() => $_clearField(20);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
