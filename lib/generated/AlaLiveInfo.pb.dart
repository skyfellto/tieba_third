// This is a generated file - do not edit.
//
// Generated from AlaLiveInfo.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'AlaChallengeInfo.pb.dart' as $4;
import 'AlaCoverLabel.pb.dart' as $3;
import 'AlaShareInfo.pb.dart' as $1;
import 'AlaStageDislikeInfo.pb.dart' as $2;
import 'AlaUserInfo.pb.dart' as $0;
import 'DislikeInfo.pb.dart' as $5;
import 'YyExt.pb.dart' as $6;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class AlaLiveInfo extends $pb.GeneratedMessage {
  factory AlaLiveInfo({
    $fixnum.Int64? liveId,
    $core.String? cover,
    $core.String? sessionId,
    $core.String? rtmpUrl,
    $core.String? hlsUrl,
    $fixnum.Int64? groupId,
    $core.String? mediaUrl,
    $core.String? mediaPic,
    $core.String? mediaId,
    $core.String? mediaSubtitle,
    $core.String? description,
    $0.AlaUserInfo? userInfo,
    $core.int? duration,
    $core.int? audienceCount,
    $core.int? liveType,
    $core.int? screenDirection,
    $core.String? labelName,
    $core.int? liveStatus,
    $1.AlaShareInfo? shareInfo,
    $fixnum.Int64? distance,
    $core.String? thirdAppId,
    $fixnum.Int64? threadId,
    $core.Iterable<$2.AlaStageDislikeInfo>? stageDislikeInfo,
    $3.AlaCoverLabel? label,
    $4.AlaChallengeInfo? challengeInfo,
    $core.int? frsTopliveType,
    $core.String? frsToplivePic,
    $core.int? frsTopliveForce,
    $core.int? liveFrom,
    $core.String? thirdRoomId,
    $core.String? routerType,
    $core.String? thirdLiveType,
    $core.String? firstHeadline,
    $core.String? secondHeadline,
    $core.int? pbDisplayType,
    $core.String? recomReason,
    $core.int? openRecomReason,
    $core.int? openRecomLocation,
    $core.int? openRecomFans,
    $core.int? openRecomDuration,
    $core.Iterable<$5.DislikeInfo>? dislikeInfo,
    $fixnum.Int64? roomId,
    $core.int? roomStatus,
    $core.String? roomName,
    $core.String? forumUserLiveMsg,
    $core.String? coverWide,
    $6.YyExt? yyExt,
  }) {
    final result = create();
    if (liveId != null) result.liveId = liveId;
    if (cover != null) result.cover = cover;
    if (sessionId != null) result.sessionId = sessionId;
    if (rtmpUrl != null) result.rtmpUrl = rtmpUrl;
    if (hlsUrl != null) result.hlsUrl = hlsUrl;
    if (groupId != null) result.groupId = groupId;
    if (mediaUrl != null) result.mediaUrl = mediaUrl;
    if (mediaPic != null) result.mediaPic = mediaPic;
    if (mediaId != null) result.mediaId = mediaId;
    if (mediaSubtitle != null) result.mediaSubtitle = mediaSubtitle;
    if (description != null) result.description = description;
    if (userInfo != null) result.userInfo = userInfo;
    if (duration != null) result.duration = duration;
    if (audienceCount != null) result.audienceCount = audienceCount;
    if (liveType != null) result.liveType = liveType;
    if (screenDirection != null) result.screenDirection = screenDirection;
    if (labelName != null) result.labelName = labelName;
    if (liveStatus != null) result.liveStatus = liveStatus;
    if (shareInfo != null) result.shareInfo = shareInfo;
    if (distance != null) result.distance = distance;
    if (thirdAppId != null) result.thirdAppId = thirdAppId;
    if (threadId != null) result.threadId = threadId;
    if (stageDislikeInfo != null)
      result.stageDislikeInfo.addAll(stageDislikeInfo);
    if (label != null) result.label = label;
    if (challengeInfo != null) result.challengeInfo = challengeInfo;
    if (frsTopliveType != null) result.frsTopliveType = frsTopliveType;
    if (frsToplivePic != null) result.frsToplivePic = frsToplivePic;
    if (frsTopliveForce != null) result.frsTopliveForce = frsTopliveForce;
    if (liveFrom != null) result.liveFrom = liveFrom;
    if (thirdRoomId != null) result.thirdRoomId = thirdRoomId;
    if (routerType != null) result.routerType = routerType;
    if (thirdLiveType != null) result.thirdLiveType = thirdLiveType;
    if (firstHeadline != null) result.firstHeadline = firstHeadline;
    if (secondHeadline != null) result.secondHeadline = secondHeadline;
    if (pbDisplayType != null) result.pbDisplayType = pbDisplayType;
    if (recomReason != null) result.recomReason = recomReason;
    if (openRecomReason != null) result.openRecomReason = openRecomReason;
    if (openRecomLocation != null) result.openRecomLocation = openRecomLocation;
    if (openRecomFans != null) result.openRecomFans = openRecomFans;
    if (openRecomDuration != null) result.openRecomDuration = openRecomDuration;
    if (dislikeInfo != null) result.dislikeInfo.addAll(dislikeInfo);
    if (roomId != null) result.roomId = roomId;
    if (roomStatus != null) result.roomStatus = roomStatus;
    if (roomName != null) result.roomName = roomName;
    if (forumUserLiveMsg != null) result.forumUserLiveMsg = forumUserLiveMsg;
    if (coverWide != null) result.coverWide = coverWide;
    if (yyExt != null) result.yyExt = yyExt;
    return result;
  }

  AlaLiveInfo._();

  factory AlaLiveInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AlaLiveInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AlaLiveInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'liveId', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(2, _omitFieldNames ? '' : 'cover')
    ..aOS(3, _omitFieldNames ? '' : 'sessionId')
    ..aOS(4, _omitFieldNames ? '' : 'rtmpUrl')
    ..aOS(5, _omitFieldNames ? '' : 'hlsUrl')
    ..a<$fixnum.Int64>(6, _omitFieldNames ? '' : 'groupId', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(7, _omitFieldNames ? '' : 'mediaUrl')
    ..aOS(8, _omitFieldNames ? '' : 'mediaPic')
    ..aOS(9, _omitFieldNames ? '' : 'mediaId')
    ..aOS(10, _omitFieldNames ? '' : 'mediaSubtitle')
    ..aOS(11, _omitFieldNames ? '' : 'description')
    ..aOM<$0.AlaUserInfo>(12, _omitFieldNames ? '' : 'userInfo',
        subBuilder: $0.AlaUserInfo.create)
    ..aI(13, _omitFieldNames ? '' : 'duration', fieldType: $pb.PbFieldType.OU3)
    ..aI(14, _omitFieldNames ? '' : 'audienceCount',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(15, _omitFieldNames ? '' : 'liveType', fieldType: $pb.PbFieldType.OU3)
    ..aI(16, _omitFieldNames ? '' : 'screenDirection',
        fieldType: $pb.PbFieldType.OU3)
    ..aOS(17, _omitFieldNames ? '' : 'labelName')
    ..aI(18, _omitFieldNames ? '' : 'liveStatus')
    ..aOM<$1.AlaShareInfo>(19, _omitFieldNames ? '' : 'shareInfo',
        subBuilder: $1.AlaShareInfo.create)
    ..a<$fixnum.Int64>(
        20, _omitFieldNames ? '' : 'distance', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(21, _omitFieldNames ? '' : 'thirdAppId')
    ..a<$fixnum.Int64>(
        22, _omitFieldNames ? '' : 'threadId', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..pPM<$2.AlaStageDislikeInfo>(23, _omitFieldNames ? '' : 'stageDislikeInfo',
        subBuilder: $2.AlaStageDislikeInfo.create)
    ..aOM<$3.AlaCoverLabel>(24, _omitFieldNames ? '' : 'label',
        subBuilder: $3.AlaCoverLabel.create)
    ..aOM<$4.AlaChallengeInfo>(25, _omitFieldNames ? '' : 'challengeInfo',
        subBuilder: $4.AlaChallengeInfo.create)
    ..aI(26, _omitFieldNames ? '' : 'frsTopliveType')
    ..aOS(27, _omitFieldNames ? '' : 'frsToplivePic')
    ..aI(28, _omitFieldNames ? '' : 'frsTopliveForce')
    ..aI(29, _omitFieldNames ? '' : 'liveFrom')
    ..aOS(31, _omitFieldNames ? '' : 'thirdRoomId')
    ..aOS(32, _omitFieldNames ? '' : 'routerType')
    ..aOS(33, _omitFieldNames ? '' : 'thirdLiveType')
    ..aOS(34, _omitFieldNames ? '' : 'firstHeadline')
    ..aOS(35, _omitFieldNames ? '' : 'secondHeadline')
    ..aI(36, _omitFieldNames ? '' : 'pbDisplayType',
        fieldType: $pb.PbFieldType.OU3)
    ..aOS(37, _omitFieldNames ? '' : 'recomReason')
    ..aI(38, _omitFieldNames ? '' : 'openRecomReason',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(39, _omitFieldNames ? '' : 'openRecomLocation',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(40, _omitFieldNames ? '' : 'openRecomFans',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(41, _omitFieldNames ? '' : 'openRecomDuration',
        fieldType: $pb.PbFieldType.OU3)
    ..pPM<$5.DislikeInfo>(43, _omitFieldNames ? '' : 'dislikeInfo',
        subBuilder: $5.DislikeInfo.create)
    ..a<$fixnum.Int64>(44, _omitFieldNames ? '' : 'roomId', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aI(45, _omitFieldNames ? '' : 'roomStatus')
    ..aOS(46, _omitFieldNames ? '' : 'roomName')
    ..aOS(47, _omitFieldNames ? '' : 'forumUserLiveMsg')
    ..aOS(48, _omitFieldNames ? '' : 'coverWide')
    ..aOM<$6.YyExt>(49, _omitFieldNames ? '' : 'yyExt',
        subBuilder: $6.YyExt.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AlaLiveInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AlaLiveInfo copyWith(void Function(AlaLiveInfo) updates) =>
      super.copyWith((message) => updates(message as AlaLiveInfo))
          as AlaLiveInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AlaLiveInfo create() => AlaLiveInfo._();
  @$core.override
  AlaLiveInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AlaLiveInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AlaLiveInfo>(create);
  static AlaLiveInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get liveId => $_getI64(0);
  @$pb.TagNumber(1)
  set liveId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasLiveId() => $_has(0);
  @$pb.TagNumber(1)
  void clearLiveId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get cover => $_getSZ(1);
  @$pb.TagNumber(2)
  set cover($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCover() => $_has(1);
  @$pb.TagNumber(2)
  void clearCover() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get sessionId => $_getSZ(2);
  @$pb.TagNumber(3)
  set sessionId($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasSessionId() => $_has(2);
  @$pb.TagNumber(3)
  void clearSessionId() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get rtmpUrl => $_getSZ(3);
  @$pb.TagNumber(4)
  set rtmpUrl($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasRtmpUrl() => $_has(3);
  @$pb.TagNumber(4)
  void clearRtmpUrl() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get hlsUrl => $_getSZ(4);
  @$pb.TagNumber(5)
  set hlsUrl($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasHlsUrl() => $_has(4);
  @$pb.TagNumber(5)
  void clearHlsUrl() => $_clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get groupId => $_getI64(5);
  @$pb.TagNumber(6)
  set groupId($fixnum.Int64 value) => $_setInt64(5, value);
  @$pb.TagNumber(6)
  $core.bool hasGroupId() => $_has(5);
  @$pb.TagNumber(6)
  void clearGroupId() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get mediaUrl => $_getSZ(6);
  @$pb.TagNumber(7)
  set mediaUrl($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasMediaUrl() => $_has(6);
  @$pb.TagNumber(7)
  void clearMediaUrl() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.String get mediaPic => $_getSZ(7);
  @$pb.TagNumber(8)
  set mediaPic($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasMediaPic() => $_has(7);
  @$pb.TagNumber(8)
  void clearMediaPic() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.String get mediaId => $_getSZ(8);
  @$pb.TagNumber(9)
  set mediaId($core.String value) => $_setString(8, value);
  @$pb.TagNumber(9)
  $core.bool hasMediaId() => $_has(8);
  @$pb.TagNumber(9)
  void clearMediaId() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.String get mediaSubtitle => $_getSZ(9);
  @$pb.TagNumber(10)
  set mediaSubtitle($core.String value) => $_setString(9, value);
  @$pb.TagNumber(10)
  $core.bool hasMediaSubtitle() => $_has(9);
  @$pb.TagNumber(10)
  void clearMediaSubtitle() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.String get description => $_getSZ(10);
  @$pb.TagNumber(11)
  set description($core.String value) => $_setString(10, value);
  @$pb.TagNumber(11)
  $core.bool hasDescription() => $_has(10);
  @$pb.TagNumber(11)
  void clearDescription() => $_clearField(11);

  @$pb.TagNumber(12)
  $0.AlaUserInfo get userInfo => $_getN(11);
  @$pb.TagNumber(12)
  set userInfo($0.AlaUserInfo value) => $_setField(12, value);
  @$pb.TagNumber(12)
  $core.bool hasUserInfo() => $_has(11);
  @$pb.TagNumber(12)
  void clearUserInfo() => $_clearField(12);
  @$pb.TagNumber(12)
  $0.AlaUserInfo ensureUserInfo() => $_ensure(11);

  @$pb.TagNumber(13)
  $core.int get duration => $_getIZ(12);
  @$pb.TagNumber(13)
  set duration($core.int value) => $_setUnsignedInt32(12, value);
  @$pb.TagNumber(13)
  $core.bool hasDuration() => $_has(12);
  @$pb.TagNumber(13)
  void clearDuration() => $_clearField(13);

  @$pb.TagNumber(14)
  $core.int get audienceCount => $_getIZ(13);
  @$pb.TagNumber(14)
  set audienceCount($core.int value) => $_setUnsignedInt32(13, value);
  @$pb.TagNumber(14)
  $core.bool hasAudienceCount() => $_has(13);
  @$pb.TagNumber(14)
  void clearAudienceCount() => $_clearField(14);

  @$pb.TagNumber(15)
  $core.int get liveType => $_getIZ(14);
  @$pb.TagNumber(15)
  set liveType($core.int value) => $_setUnsignedInt32(14, value);
  @$pb.TagNumber(15)
  $core.bool hasLiveType() => $_has(14);
  @$pb.TagNumber(15)
  void clearLiveType() => $_clearField(15);

  @$pb.TagNumber(16)
  $core.int get screenDirection => $_getIZ(15);
  @$pb.TagNumber(16)
  set screenDirection($core.int value) => $_setUnsignedInt32(15, value);
  @$pb.TagNumber(16)
  $core.bool hasScreenDirection() => $_has(15);
  @$pb.TagNumber(16)
  void clearScreenDirection() => $_clearField(16);

  @$pb.TagNumber(17)
  $core.String get labelName => $_getSZ(16);
  @$pb.TagNumber(17)
  set labelName($core.String value) => $_setString(16, value);
  @$pb.TagNumber(17)
  $core.bool hasLabelName() => $_has(16);
  @$pb.TagNumber(17)
  void clearLabelName() => $_clearField(17);

  @$pb.TagNumber(18)
  $core.int get liveStatus => $_getIZ(17);
  @$pb.TagNumber(18)
  set liveStatus($core.int value) => $_setSignedInt32(17, value);
  @$pb.TagNumber(18)
  $core.bool hasLiveStatus() => $_has(17);
  @$pb.TagNumber(18)
  void clearLiveStatus() => $_clearField(18);

  @$pb.TagNumber(19)
  $1.AlaShareInfo get shareInfo => $_getN(18);
  @$pb.TagNumber(19)
  set shareInfo($1.AlaShareInfo value) => $_setField(19, value);
  @$pb.TagNumber(19)
  $core.bool hasShareInfo() => $_has(18);
  @$pb.TagNumber(19)
  void clearShareInfo() => $_clearField(19);
  @$pb.TagNumber(19)
  $1.AlaShareInfo ensureShareInfo() => $_ensure(18);

  @$pb.TagNumber(20)
  $fixnum.Int64 get distance => $_getI64(19);
  @$pb.TagNumber(20)
  set distance($fixnum.Int64 value) => $_setInt64(19, value);
  @$pb.TagNumber(20)
  $core.bool hasDistance() => $_has(19);
  @$pb.TagNumber(20)
  void clearDistance() => $_clearField(20);

  @$pb.TagNumber(21)
  $core.String get thirdAppId => $_getSZ(20);
  @$pb.TagNumber(21)
  set thirdAppId($core.String value) => $_setString(20, value);
  @$pb.TagNumber(21)
  $core.bool hasThirdAppId() => $_has(20);
  @$pb.TagNumber(21)
  void clearThirdAppId() => $_clearField(21);

  @$pb.TagNumber(22)
  $fixnum.Int64 get threadId => $_getI64(21);
  @$pb.TagNumber(22)
  set threadId($fixnum.Int64 value) => $_setInt64(21, value);
  @$pb.TagNumber(22)
  $core.bool hasThreadId() => $_has(21);
  @$pb.TagNumber(22)
  void clearThreadId() => $_clearField(22);

  @$pb.TagNumber(23)
  $pb.PbList<$2.AlaStageDislikeInfo> get stageDislikeInfo => $_getList(22);

  @$pb.TagNumber(24)
  $3.AlaCoverLabel get label => $_getN(23);
  @$pb.TagNumber(24)
  set label($3.AlaCoverLabel value) => $_setField(24, value);
  @$pb.TagNumber(24)
  $core.bool hasLabel() => $_has(23);
  @$pb.TagNumber(24)
  void clearLabel() => $_clearField(24);
  @$pb.TagNumber(24)
  $3.AlaCoverLabel ensureLabel() => $_ensure(23);

  @$pb.TagNumber(25)
  $4.AlaChallengeInfo get challengeInfo => $_getN(24);
  @$pb.TagNumber(25)
  set challengeInfo($4.AlaChallengeInfo value) => $_setField(25, value);
  @$pb.TagNumber(25)
  $core.bool hasChallengeInfo() => $_has(24);
  @$pb.TagNumber(25)
  void clearChallengeInfo() => $_clearField(25);
  @$pb.TagNumber(25)
  $4.AlaChallengeInfo ensureChallengeInfo() => $_ensure(24);

  @$pb.TagNumber(26)
  $core.int get frsTopliveType => $_getIZ(25);
  @$pb.TagNumber(26)
  set frsTopliveType($core.int value) => $_setSignedInt32(25, value);
  @$pb.TagNumber(26)
  $core.bool hasFrsTopliveType() => $_has(25);
  @$pb.TagNumber(26)
  void clearFrsTopliveType() => $_clearField(26);

  @$pb.TagNumber(27)
  $core.String get frsToplivePic => $_getSZ(26);
  @$pb.TagNumber(27)
  set frsToplivePic($core.String value) => $_setString(26, value);
  @$pb.TagNumber(27)
  $core.bool hasFrsToplivePic() => $_has(26);
  @$pb.TagNumber(27)
  void clearFrsToplivePic() => $_clearField(27);

  @$pb.TagNumber(28)
  $core.int get frsTopliveForce => $_getIZ(27);
  @$pb.TagNumber(28)
  set frsTopliveForce($core.int value) => $_setSignedInt32(27, value);
  @$pb.TagNumber(28)
  $core.bool hasFrsTopliveForce() => $_has(27);
  @$pb.TagNumber(28)
  void clearFrsTopliveForce() => $_clearField(28);

  @$pb.TagNumber(29)
  $core.int get liveFrom => $_getIZ(28);
  @$pb.TagNumber(29)
  set liveFrom($core.int value) => $_setSignedInt32(28, value);
  @$pb.TagNumber(29)
  $core.bool hasLiveFrom() => $_has(28);
  @$pb.TagNumber(29)
  void clearLiveFrom() => $_clearField(29);

  @$pb.TagNumber(31)
  $core.String get thirdRoomId => $_getSZ(29);
  @$pb.TagNumber(31)
  set thirdRoomId($core.String value) => $_setString(29, value);
  @$pb.TagNumber(31)
  $core.bool hasThirdRoomId() => $_has(29);
  @$pb.TagNumber(31)
  void clearThirdRoomId() => $_clearField(31);

  @$pb.TagNumber(32)
  $core.String get routerType => $_getSZ(30);
  @$pb.TagNumber(32)
  set routerType($core.String value) => $_setString(30, value);
  @$pb.TagNumber(32)
  $core.bool hasRouterType() => $_has(30);
  @$pb.TagNumber(32)
  void clearRouterType() => $_clearField(32);

  @$pb.TagNumber(33)
  $core.String get thirdLiveType => $_getSZ(31);
  @$pb.TagNumber(33)
  set thirdLiveType($core.String value) => $_setString(31, value);
  @$pb.TagNumber(33)
  $core.bool hasThirdLiveType() => $_has(31);
  @$pb.TagNumber(33)
  void clearThirdLiveType() => $_clearField(33);

  @$pb.TagNumber(34)
  $core.String get firstHeadline => $_getSZ(32);
  @$pb.TagNumber(34)
  set firstHeadline($core.String value) => $_setString(32, value);
  @$pb.TagNumber(34)
  $core.bool hasFirstHeadline() => $_has(32);
  @$pb.TagNumber(34)
  void clearFirstHeadline() => $_clearField(34);

  @$pb.TagNumber(35)
  $core.String get secondHeadline => $_getSZ(33);
  @$pb.TagNumber(35)
  set secondHeadline($core.String value) => $_setString(33, value);
  @$pb.TagNumber(35)
  $core.bool hasSecondHeadline() => $_has(33);
  @$pb.TagNumber(35)
  void clearSecondHeadline() => $_clearField(35);

  @$pb.TagNumber(36)
  $core.int get pbDisplayType => $_getIZ(34);
  @$pb.TagNumber(36)
  set pbDisplayType($core.int value) => $_setUnsignedInt32(34, value);
  @$pb.TagNumber(36)
  $core.bool hasPbDisplayType() => $_has(34);
  @$pb.TagNumber(36)
  void clearPbDisplayType() => $_clearField(36);

  @$pb.TagNumber(37)
  $core.String get recomReason => $_getSZ(35);
  @$pb.TagNumber(37)
  set recomReason($core.String value) => $_setString(35, value);
  @$pb.TagNumber(37)
  $core.bool hasRecomReason() => $_has(35);
  @$pb.TagNumber(37)
  void clearRecomReason() => $_clearField(37);

  @$pb.TagNumber(38)
  $core.int get openRecomReason => $_getIZ(36);
  @$pb.TagNumber(38)
  set openRecomReason($core.int value) => $_setUnsignedInt32(36, value);
  @$pb.TagNumber(38)
  $core.bool hasOpenRecomReason() => $_has(36);
  @$pb.TagNumber(38)
  void clearOpenRecomReason() => $_clearField(38);

  @$pb.TagNumber(39)
  $core.int get openRecomLocation => $_getIZ(37);
  @$pb.TagNumber(39)
  set openRecomLocation($core.int value) => $_setUnsignedInt32(37, value);
  @$pb.TagNumber(39)
  $core.bool hasOpenRecomLocation() => $_has(37);
  @$pb.TagNumber(39)
  void clearOpenRecomLocation() => $_clearField(39);

  @$pb.TagNumber(40)
  $core.int get openRecomFans => $_getIZ(38);
  @$pb.TagNumber(40)
  set openRecomFans($core.int value) => $_setUnsignedInt32(38, value);
  @$pb.TagNumber(40)
  $core.bool hasOpenRecomFans() => $_has(38);
  @$pb.TagNumber(40)
  void clearOpenRecomFans() => $_clearField(40);

  @$pb.TagNumber(41)
  $core.int get openRecomDuration => $_getIZ(39);
  @$pb.TagNumber(41)
  set openRecomDuration($core.int value) => $_setUnsignedInt32(39, value);
  @$pb.TagNumber(41)
  $core.bool hasOpenRecomDuration() => $_has(39);
  @$pb.TagNumber(41)
  void clearOpenRecomDuration() => $_clearField(41);

  @$pb.TagNumber(43)
  $pb.PbList<$5.DislikeInfo> get dislikeInfo => $_getList(40);

  @$pb.TagNumber(44)
  $fixnum.Int64 get roomId => $_getI64(41);
  @$pb.TagNumber(44)
  set roomId($fixnum.Int64 value) => $_setInt64(41, value);
  @$pb.TagNumber(44)
  $core.bool hasRoomId() => $_has(41);
  @$pb.TagNumber(44)
  void clearRoomId() => $_clearField(44);

  @$pb.TagNumber(45)
  $core.int get roomStatus => $_getIZ(42);
  @$pb.TagNumber(45)
  set roomStatus($core.int value) => $_setSignedInt32(42, value);
  @$pb.TagNumber(45)
  $core.bool hasRoomStatus() => $_has(42);
  @$pb.TagNumber(45)
  void clearRoomStatus() => $_clearField(45);

  @$pb.TagNumber(46)
  $core.String get roomName => $_getSZ(43);
  @$pb.TagNumber(46)
  set roomName($core.String value) => $_setString(43, value);
  @$pb.TagNumber(46)
  $core.bool hasRoomName() => $_has(43);
  @$pb.TagNumber(46)
  void clearRoomName() => $_clearField(46);

  @$pb.TagNumber(47)
  $core.String get forumUserLiveMsg => $_getSZ(44);
  @$pb.TagNumber(47)
  set forumUserLiveMsg($core.String value) => $_setString(44, value);
  @$pb.TagNumber(47)
  $core.bool hasForumUserLiveMsg() => $_has(44);
  @$pb.TagNumber(47)
  void clearForumUserLiveMsg() => $_clearField(47);

  @$pb.TagNumber(48)
  $core.String get coverWide => $_getSZ(45);
  @$pb.TagNumber(48)
  set coverWide($core.String value) => $_setString(45, value);
  @$pb.TagNumber(48)
  $core.bool hasCoverWide() => $_has(45);
  @$pb.TagNumber(48)
  void clearCoverWide() => $_clearField(48);

  @$pb.TagNumber(49)
  $6.YyExt get yyExt => $_getN(46);
  @$pb.TagNumber(49)
  set yyExt($6.YyExt value) => $_setField(49, value);
  @$pb.TagNumber(49)
  $core.bool hasYyExt() => $_has(46);
  @$pb.TagNumber(49)
  void clearYyExt() => $_clearField(49);
  @$pb.TagNumber(49)
  $6.YyExt ensureYyExt() => $_ensure(46);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
