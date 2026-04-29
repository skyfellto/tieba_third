// This is a generated file - do not edit.
//
// Generated from AlaUserInfo.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'YyExt.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class AlaUserInfo extends $pb.GeneratedMessage {
  factory AlaUserInfo({
    $fixnum.Int64? alaId,
    $core.String? userName,
    $core.String? portrait,
    $core.String? description,
    $core.String? sex,
    $fixnum.Int64? enterLive,
    $fixnum.Int64? anchorLive,
    $core.int? liveStatus,
    $fixnum.Int64? liveId,
    $core.String? location,
    $core.double? lng,
    $core.double? lat,
    $core.int? updateTime,
    $fixnum.Int64? charmCount,
    $fixnum.Int64? levelExp,
    $core.int? isOfficial,
    $core.String? verifyStatus,
    $core.int? levelId,
    $core.String? greatAnchorIcon,
    $core.String? greatAnchorDescGrade,
    $core.String? greatAnchorDescRole,
    $core.String? levelName,
    $fixnum.Int64? userId,
    $core.int? anchorFans,
    $0.YyExt? yyExt,
  }) {
    final result = create();
    if (alaId != null) result.alaId = alaId;
    if (userName != null) result.userName = userName;
    if (portrait != null) result.portrait = portrait;
    if (description != null) result.description = description;
    if (sex != null) result.sex = sex;
    if (enterLive != null) result.enterLive = enterLive;
    if (anchorLive != null) result.anchorLive = anchorLive;
    if (liveStatus != null) result.liveStatus = liveStatus;
    if (liveId != null) result.liveId = liveId;
    if (location != null) result.location = location;
    if (lng != null) result.lng = lng;
    if (lat != null) result.lat = lat;
    if (updateTime != null) result.updateTime = updateTime;
    if (charmCount != null) result.charmCount = charmCount;
    if (levelExp != null) result.levelExp = levelExp;
    if (isOfficial != null) result.isOfficial = isOfficial;
    if (verifyStatus != null) result.verifyStatus = verifyStatus;
    if (levelId != null) result.levelId = levelId;
    if (greatAnchorIcon != null) result.greatAnchorIcon = greatAnchorIcon;
    if (greatAnchorDescGrade != null)
      result.greatAnchorDescGrade = greatAnchorDescGrade;
    if (greatAnchorDescRole != null)
      result.greatAnchorDescRole = greatAnchorDescRole;
    if (levelName != null) result.levelName = levelName;
    if (userId != null) result.userId = userId;
    if (anchorFans != null) result.anchorFans = anchorFans;
    if (yyExt != null) result.yyExt = yyExt;
    return result;
  }

  AlaUserInfo._();

  factory AlaUserInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AlaUserInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AlaUserInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'alaId', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(2, _omitFieldNames ? '' : 'userName')
    ..aOS(3, _omitFieldNames ? '' : 'portrait')
    ..aOS(4, _omitFieldNames ? '' : 'description')
    ..aOS(5, _omitFieldNames ? '' : 'sex')
    ..a<$fixnum.Int64>(
        6, _omitFieldNames ? '' : 'enterLive', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(
        7, _omitFieldNames ? '' : 'anchorLive', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aI(8, _omitFieldNames ? '' : 'liveStatus', fieldType: $pb.PbFieldType.OU3)
    ..a<$fixnum.Int64>(9, _omitFieldNames ? '' : 'liveId', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(10, _omitFieldNames ? '' : 'location')
    ..aD(11, _omitFieldNames ? '' : 'lng')
    ..aD(12, _omitFieldNames ? '' : 'lat')
    ..aI(13, _omitFieldNames ? '' : 'updateTime',
        fieldType: $pb.PbFieldType.OU3)
    ..a<$fixnum.Int64>(
        14, _omitFieldNames ? '' : 'charmCount', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(
        15, _omitFieldNames ? '' : 'levelExp', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aI(16, _omitFieldNames ? '' : 'isOfficial',
        fieldType: $pb.PbFieldType.OU3)
    ..aOS(17, _omitFieldNames ? '' : 'verifyStatus')
    ..aI(18, _omitFieldNames ? '' : 'levelId', fieldType: $pb.PbFieldType.OU3)
    ..aOS(19, _omitFieldNames ? '' : 'greatAnchorIcon')
    ..aOS(20, _omitFieldNames ? '' : 'greatAnchorDescGrade')
    ..aOS(21, _omitFieldNames ? '' : 'greatAnchorDescRole')
    ..aOS(22, _omitFieldNames ? '' : 'levelName')
    ..a<$fixnum.Int64>(23, _omitFieldNames ? '' : 'userId', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aI(24, _omitFieldNames ? '' : 'anchorFans')
    ..aOM<$0.YyExt>(25, _omitFieldNames ? '' : 'yyExt',
        subBuilder: $0.YyExt.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AlaUserInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AlaUserInfo copyWith(void Function(AlaUserInfo) updates) =>
      super.copyWith((message) => updates(message as AlaUserInfo))
          as AlaUserInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AlaUserInfo create() => AlaUserInfo._();
  @$core.override
  AlaUserInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AlaUserInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AlaUserInfo>(create);
  static AlaUserInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get alaId => $_getI64(0);
  @$pb.TagNumber(1)
  set alaId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasAlaId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAlaId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get userName => $_getSZ(1);
  @$pb.TagNumber(2)
  set userName($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasUserName() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserName() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get portrait => $_getSZ(2);
  @$pb.TagNumber(3)
  set portrait($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasPortrait() => $_has(2);
  @$pb.TagNumber(3)
  void clearPortrait() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get description => $_getSZ(3);
  @$pb.TagNumber(4)
  set description($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasDescription() => $_has(3);
  @$pb.TagNumber(4)
  void clearDescription() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get sex => $_getSZ(4);
  @$pb.TagNumber(5)
  set sex($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasSex() => $_has(4);
  @$pb.TagNumber(5)
  void clearSex() => $_clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get enterLive => $_getI64(5);
  @$pb.TagNumber(6)
  set enterLive($fixnum.Int64 value) => $_setInt64(5, value);
  @$pb.TagNumber(6)
  $core.bool hasEnterLive() => $_has(5);
  @$pb.TagNumber(6)
  void clearEnterLive() => $_clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get anchorLive => $_getI64(6);
  @$pb.TagNumber(7)
  set anchorLive($fixnum.Int64 value) => $_setInt64(6, value);
  @$pb.TagNumber(7)
  $core.bool hasAnchorLive() => $_has(6);
  @$pb.TagNumber(7)
  void clearAnchorLive() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.int get liveStatus => $_getIZ(7);
  @$pb.TagNumber(8)
  set liveStatus($core.int value) => $_setUnsignedInt32(7, value);
  @$pb.TagNumber(8)
  $core.bool hasLiveStatus() => $_has(7);
  @$pb.TagNumber(8)
  void clearLiveStatus() => $_clearField(8);

  @$pb.TagNumber(9)
  $fixnum.Int64 get liveId => $_getI64(8);
  @$pb.TagNumber(9)
  set liveId($fixnum.Int64 value) => $_setInt64(8, value);
  @$pb.TagNumber(9)
  $core.bool hasLiveId() => $_has(8);
  @$pb.TagNumber(9)
  void clearLiveId() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.String get location => $_getSZ(9);
  @$pb.TagNumber(10)
  set location($core.String value) => $_setString(9, value);
  @$pb.TagNumber(10)
  $core.bool hasLocation() => $_has(9);
  @$pb.TagNumber(10)
  void clearLocation() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.double get lng => $_getN(10);
  @$pb.TagNumber(11)
  set lng($core.double value) => $_setDouble(10, value);
  @$pb.TagNumber(11)
  $core.bool hasLng() => $_has(10);
  @$pb.TagNumber(11)
  void clearLng() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.double get lat => $_getN(11);
  @$pb.TagNumber(12)
  set lat($core.double value) => $_setDouble(11, value);
  @$pb.TagNumber(12)
  $core.bool hasLat() => $_has(11);
  @$pb.TagNumber(12)
  void clearLat() => $_clearField(12);

  @$pb.TagNumber(13)
  $core.int get updateTime => $_getIZ(12);
  @$pb.TagNumber(13)
  set updateTime($core.int value) => $_setUnsignedInt32(12, value);
  @$pb.TagNumber(13)
  $core.bool hasUpdateTime() => $_has(12);
  @$pb.TagNumber(13)
  void clearUpdateTime() => $_clearField(13);

  @$pb.TagNumber(14)
  $fixnum.Int64 get charmCount => $_getI64(13);
  @$pb.TagNumber(14)
  set charmCount($fixnum.Int64 value) => $_setInt64(13, value);
  @$pb.TagNumber(14)
  $core.bool hasCharmCount() => $_has(13);
  @$pb.TagNumber(14)
  void clearCharmCount() => $_clearField(14);

  @$pb.TagNumber(15)
  $fixnum.Int64 get levelExp => $_getI64(14);
  @$pb.TagNumber(15)
  set levelExp($fixnum.Int64 value) => $_setInt64(14, value);
  @$pb.TagNumber(15)
  $core.bool hasLevelExp() => $_has(14);
  @$pb.TagNumber(15)
  void clearLevelExp() => $_clearField(15);

  @$pb.TagNumber(16)
  $core.int get isOfficial => $_getIZ(15);
  @$pb.TagNumber(16)
  set isOfficial($core.int value) => $_setUnsignedInt32(15, value);
  @$pb.TagNumber(16)
  $core.bool hasIsOfficial() => $_has(15);
  @$pb.TagNumber(16)
  void clearIsOfficial() => $_clearField(16);

  @$pb.TagNumber(17)
  $core.String get verifyStatus => $_getSZ(16);
  @$pb.TagNumber(17)
  set verifyStatus($core.String value) => $_setString(16, value);
  @$pb.TagNumber(17)
  $core.bool hasVerifyStatus() => $_has(16);
  @$pb.TagNumber(17)
  void clearVerifyStatus() => $_clearField(17);

  @$pb.TagNumber(18)
  $core.int get levelId => $_getIZ(17);
  @$pb.TagNumber(18)
  set levelId($core.int value) => $_setUnsignedInt32(17, value);
  @$pb.TagNumber(18)
  $core.bool hasLevelId() => $_has(17);
  @$pb.TagNumber(18)
  void clearLevelId() => $_clearField(18);

  @$pb.TagNumber(19)
  $core.String get greatAnchorIcon => $_getSZ(18);
  @$pb.TagNumber(19)
  set greatAnchorIcon($core.String value) => $_setString(18, value);
  @$pb.TagNumber(19)
  $core.bool hasGreatAnchorIcon() => $_has(18);
  @$pb.TagNumber(19)
  void clearGreatAnchorIcon() => $_clearField(19);

  @$pb.TagNumber(20)
  $core.String get greatAnchorDescGrade => $_getSZ(19);
  @$pb.TagNumber(20)
  set greatAnchorDescGrade($core.String value) => $_setString(19, value);
  @$pb.TagNumber(20)
  $core.bool hasGreatAnchorDescGrade() => $_has(19);
  @$pb.TagNumber(20)
  void clearGreatAnchorDescGrade() => $_clearField(20);

  @$pb.TagNumber(21)
  $core.String get greatAnchorDescRole => $_getSZ(20);
  @$pb.TagNumber(21)
  set greatAnchorDescRole($core.String value) => $_setString(20, value);
  @$pb.TagNumber(21)
  $core.bool hasGreatAnchorDescRole() => $_has(20);
  @$pb.TagNumber(21)
  void clearGreatAnchorDescRole() => $_clearField(21);

  @$pb.TagNumber(22)
  $core.String get levelName => $_getSZ(21);
  @$pb.TagNumber(22)
  set levelName($core.String value) => $_setString(21, value);
  @$pb.TagNumber(22)
  $core.bool hasLevelName() => $_has(21);
  @$pb.TagNumber(22)
  void clearLevelName() => $_clearField(22);

  @$pb.TagNumber(23)
  $fixnum.Int64 get userId => $_getI64(22);
  @$pb.TagNumber(23)
  set userId($fixnum.Int64 value) => $_setInt64(22, value);
  @$pb.TagNumber(23)
  $core.bool hasUserId() => $_has(22);
  @$pb.TagNumber(23)
  void clearUserId() => $_clearField(23);

  @$pb.TagNumber(24)
  $core.int get anchorFans => $_getIZ(23);
  @$pb.TagNumber(24)
  set anchorFans($core.int value) => $_setSignedInt32(23, value);
  @$pb.TagNumber(24)
  $core.bool hasAnchorFans() => $_has(23);
  @$pb.TagNumber(24)
  void clearAnchorFans() => $_clearField(24);

  @$pb.TagNumber(25)
  $0.YyExt get yyExt => $_getN(24);
  @$pb.TagNumber(25)
  set yyExt($0.YyExt value) => $_setField(25, value);
  @$pb.TagNumber(25)
  $core.bool hasYyExt() => $_has(24);
  @$pb.TagNumber(25)
  void clearYyExt() => $_clearField(25);
  @$pb.TagNumber(25)
  $0.YyExt ensureYyExt() => $_ensure(24);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
