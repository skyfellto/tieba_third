// This is a generated file - do not edit.
//
// Generated from FrsPage/FrsPage.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../Anti.pb.dart' as $6;
import '../AppPosInfo.pb.dart' as $1;
import '../CommonRequest.pb.dart' as $0;
import '../Error.pb.dart' as $13;
import '../ForumRuleStatus.pb.dart' as $12;
import '../FrsTabInfo.pb.dart' as $9;
import '../Page.pb.dart' as $5;
import '../ThreadInfo.pb.dart' as $8;
import '../User.pb.dart' as $3;
import 'ActivityHead.pb.dart' as $10;
import 'AdParam.pb.dart' as $2;
import 'ForumInfo.pb.dart' as $4;
import 'Group.pb.dart' as $7;
import 'NavTabInfo.pb.dart' as $11;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class FrsPageRequestData extends $pb.GeneratedMessage {
  factory FrsPageRequestData({
    $core.String? kw,
    $core.int? rn,
    $core.int? rnNeed,
    $core.int? isGood,
    $core.int? cid,
    $core.int? withGroup,
    $core.int? scrW,
    $core.int? scrH,
    $core.double? scrDip,
    $core.int? qType,
    $core.int? pn,
    $core.String? stType,
    $core.int? ctime,
    $core.int? dataSize,
    $core.int? netError,
    $core.int? classId,
    $core.int? stParam,
    $0.CommonRequest? common,
    $core.String? lastids,
    $core.int? categoryId,
    $core.String? yuelaouLocate,
    $core.int? sortType,
    $fixnum.Int64? lastClickTid,
    $core.int? loadType,
    $1.AppPosInfo? appPos,
    $2.AdParam? adParam,
    $core.String? objLocate,
    $core.String? objSource,
    $core.int? isSelection,
    $core.int? callFrom,
    $fixnum.Int64? hotThreadId,
    $core.int? isDefaultNavtab,
    $core.String? adContextList,
    $core.String? upSchema,
    $core.String? adExtParams,
  }) {
    final result = create();
    if (kw != null) result.kw = kw;
    if (rn != null) result.rn = rn;
    if (rnNeed != null) result.rnNeed = rnNeed;
    if (isGood != null) result.isGood = isGood;
    if (cid != null) result.cid = cid;
    if (withGroup != null) result.withGroup = withGroup;
    if (scrW != null) result.scrW = scrW;
    if (scrH != null) result.scrH = scrH;
    if (scrDip != null) result.scrDip = scrDip;
    if (qType != null) result.qType = qType;
    if (pn != null) result.pn = pn;
    if (stType != null) result.stType = stType;
    if (ctime != null) result.ctime = ctime;
    if (dataSize != null) result.dataSize = dataSize;
    if (netError != null) result.netError = netError;
    if (classId != null) result.classId = classId;
    if (stParam != null) result.stParam = stParam;
    if (common != null) result.common = common;
    if (lastids != null) result.lastids = lastids;
    if (categoryId != null) result.categoryId = categoryId;
    if (yuelaouLocate != null) result.yuelaouLocate = yuelaouLocate;
    if (sortType != null) result.sortType = sortType;
    if (lastClickTid != null) result.lastClickTid = lastClickTid;
    if (loadType != null) result.loadType = loadType;
    if (appPos != null) result.appPos = appPos;
    if (adParam != null) result.adParam = adParam;
    if (objLocate != null) result.objLocate = objLocate;
    if (objSource != null) result.objSource = objSource;
    if (isSelection != null) result.isSelection = isSelection;
    if (callFrom != null) result.callFrom = callFrom;
    if (hotThreadId != null) result.hotThreadId = hotThreadId;
    if (isDefaultNavtab != null) result.isDefaultNavtab = isDefaultNavtab;
    if (adContextList != null) result.adContextList = adContextList;
    if (upSchema != null) result.upSchema = upSchema;
    if (adExtParams != null) result.adExtParams = adExtParams;
    return result;
  }

  FrsPageRequestData._();

  factory FrsPageRequestData.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FrsPageRequestData.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FrsPageRequestData',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba.frsPage'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'kw')
    ..aI(2, _omitFieldNames ? '' : 'rn')
    ..aI(3, _omitFieldNames ? '' : 'rnNeed')
    ..aI(4, _omitFieldNames ? '' : 'isGood')
    ..aI(5, _omitFieldNames ? '' : 'cid')
    ..aI(8, _omitFieldNames ? '' : 'withGroup')
    ..aI(11, _omitFieldNames ? '' : 'scrW')
    ..aI(12, _omitFieldNames ? '' : 'scrH')
    ..aD(13, _omitFieldNames ? '' : 'scrDip')
    ..aI(14, _omitFieldNames ? '' : 'qType')
    ..aI(15, _omitFieldNames ? '' : 'pn')
    ..aOS(16, _omitFieldNames ? '' : 'stType')
    ..aI(17, _omitFieldNames ? '' : 'ctime')
    ..aI(18, _omitFieldNames ? '' : 'dataSize')
    ..aI(19, _omitFieldNames ? '' : 'netError')
    ..aI(23, _omitFieldNames ? '' : 'classId')
    ..aI(27, _omitFieldNames ? '' : 'stParam')
    ..aOM<$0.CommonRequest>(39, _omitFieldNames ? '' : 'common',
        subBuilder: $0.CommonRequest.create)
    ..aOS(40, _omitFieldNames ? '' : 'lastids')
    ..aI(44, _omitFieldNames ? '' : 'categoryId')
    ..aOS(45, _omitFieldNames ? '' : 'yuelaouLocate')
    ..aI(47, _omitFieldNames ? '' : 'sortType')
    ..a<$fixnum.Int64>(
        48, _omitFieldNames ? '' : 'lastClickTid', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aI(49, _omitFieldNames ? '' : 'loadType')
    ..aOM<$1.AppPosInfo>(50, _omitFieldNames ? '' : 'appPos',
        subBuilder: $1.AppPosInfo.create)
    ..aOM<$2.AdParam>(51, _omitFieldNames ? '' : 'adParam',
        subBuilder: $2.AdParam.create)
    ..aOS(52, _omitFieldNames ? '' : 'objLocate')
    ..aOS(53, _omitFieldNames ? '' : 'objSource')
    ..aI(55, _omitFieldNames ? '' : 'isSelection')
    ..aI(56, _omitFieldNames ? '' : 'callFrom')
    ..aInt64(58, _omitFieldNames ? '' : 'hotThreadId')
    ..aI(59, _omitFieldNames ? '' : 'isDefaultNavtab')
    ..aOS(60, _omitFieldNames ? '' : 'adContextList')
    ..aOS(61, _omitFieldNames ? '' : 'upSchema')
    ..aOS(62, _omitFieldNames ? '' : 'adExtParams')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FrsPageRequestData clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FrsPageRequestData copyWith(void Function(FrsPageRequestData) updates) =>
      super.copyWith((message) => updates(message as FrsPageRequestData))
          as FrsPageRequestData;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FrsPageRequestData create() => FrsPageRequestData._();
  @$core.override
  FrsPageRequestData createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FrsPageRequestData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FrsPageRequestData>(create);
  static FrsPageRequestData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get kw => $_getSZ(0);
  @$pb.TagNumber(1)
  set kw($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasKw() => $_has(0);
  @$pb.TagNumber(1)
  void clearKw() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get rn => $_getIZ(1);
  @$pb.TagNumber(2)
  set rn($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasRn() => $_has(1);
  @$pb.TagNumber(2)
  void clearRn() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get rnNeed => $_getIZ(2);
  @$pb.TagNumber(3)
  set rnNeed($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasRnNeed() => $_has(2);
  @$pb.TagNumber(3)
  void clearRnNeed() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get isGood => $_getIZ(3);
  @$pb.TagNumber(4)
  set isGood($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasIsGood() => $_has(3);
  @$pb.TagNumber(4)
  void clearIsGood() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get cid => $_getIZ(4);
  @$pb.TagNumber(5)
  set cid($core.int value) => $_setSignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasCid() => $_has(4);
  @$pb.TagNumber(5)
  void clearCid() => $_clearField(5);

  @$pb.TagNumber(8)
  $core.int get withGroup => $_getIZ(5);
  @$pb.TagNumber(8)
  set withGroup($core.int value) => $_setSignedInt32(5, value);
  @$pb.TagNumber(8)
  $core.bool hasWithGroup() => $_has(5);
  @$pb.TagNumber(8)
  void clearWithGroup() => $_clearField(8);

  @$pb.TagNumber(11)
  $core.int get scrW => $_getIZ(6);
  @$pb.TagNumber(11)
  set scrW($core.int value) => $_setSignedInt32(6, value);
  @$pb.TagNumber(11)
  $core.bool hasScrW() => $_has(6);
  @$pb.TagNumber(11)
  void clearScrW() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.int get scrH => $_getIZ(7);
  @$pb.TagNumber(12)
  set scrH($core.int value) => $_setSignedInt32(7, value);
  @$pb.TagNumber(12)
  $core.bool hasScrH() => $_has(7);
  @$pb.TagNumber(12)
  void clearScrH() => $_clearField(12);

  @$pb.TagNumber(13)
  $core.double get scrDip => $_getN(8);
  @$pb.TagNumber(13)
  set scrDip($core.double value) => $_setDouble(8, value);
  @$pb.TagNumber(13)
  $core.bool hasScrDip() => $_has(8);
  @$pb.TagNumber(13)
  void clearScrDip() => $_clearField(13);

  @$pb.TagNumber(14)
  $core.int get qType => $_getIZ(9);
  @$pb.TagNumber(14)
  set qType($core.int value) => $_setSignedInt32(9, value);
  @$pb.TagNumber(14)
  $core.bool hasQType() => $_has(9);
  @$pb.TagNumber(14)
  void clearQType() => $_clearField(14);

  @$pb.TagNumber(15)
  $core.int get pn => $_getIZ(10);
  @$pb.TagNumber(15)
  set pn($core.int value) => $_setSignedInt32(10, value);
  @$pb.TagNumber(15)
  $core.bool hasPn() => $_has(10);
  @$pb.TagNumber(15)
  void clearPn() => $_clearField(15);

  @$pb.TagNumber(16)
  $core.String get stType => $_getSZ(11);
  @$pb.TagNumber(16)
  set stType($core.String value) => $_setString(11, value);
  @$pb.TagNumber(16)
  $core.bool hasStType() => $_has(11);
  @$pb.TagNumber(16)
  void clearStType() => $_clearField(16);

  @$pb.TagNumber(17)
  $core.int get ctime => $_getIZ(12);
  @$pb.TagNumber(17)
  set ctime($core.int value) => $_setSignedInt32(12, value);
  @$pb.TagNumber(17)
  $core.bool hasCtime() => $_has(12);
  @$pb.TagNumber(17)
  void clearCtime() => $_clearField(17);

  @$pb.TagNumber(18)
  $core.int get dataSize => $_getIZ(13);
  @$pb.TagNumber(18)
  set dataSize($core.int value) => $_setSignedInt32(13, value);
  @$pb.TagNumber(18)
  $core.bool hasDataSize() => $_has(13);
  @$pb.TagNumber(18)
  void clearDataSize() => $_clearField(18);

  @$pb.TagNumber(19)
  $core.int get netError => $_getIZ(14);
  @$pb.TagNumber(19)
  set netError($core.int value) => $_setSignedInt32(14, value);
  @$pb.TagNumber(19)
  $core.bool hasNetError() => $_has(14);
  @$pb.TagNumber(19)
  void clearNetError() => $_clearField(19);

  @$pb.TagNumber(23)
  $core.int get classId => $_getIZ(15);
  @$pb.TagNumber(23)
  set classId($core.int value) => $_setSignedInt32(15, value);
  @$pb.TagNumber(23)
  $core.bool hasClassId() => $_has(15);
  @$pb.TagNumber(23)
  void clearClassId() => $_clearField(23);

  @$pb.TagNumber(27)
  $core.int get stParam => $_getIZ(16);
  @$pb.TagNumber(27)
  set stParam($core.int value) => $_setSignedInt32(16, value);
  @$pb.TagNumber(27)
  $core.bool hasStParam() => $_has(16);
  @$pb.TagNumber(27)
  void clearStParam() => $_clearField(27);

  @$pb.TagNumber(39)
  $0.CommonRequest get common => $_getN(17);
  @$pb.TagNumber(39)
  set common($0.CommonRequest value) => $_setField(39, value);
  @$pb.TagNumber(39)
  $core.bool hasCommon() => $_has(17);
  @$pb.TagNumber(39)
  void clearCommon() => $_clearField(39);
  @$pb.TagNumber(39)
  $0.CommonRequest ensureCommon() => $_ensure(17);

  @$pb.TagNumber(40)
  $core.String get lastids => $_getSZ(18);
  @$pb.TagNumber(40)
  set lastids($core.String value) => $_setString(18, value);
  @$pb.TagNumber(40)
  $core.bool hasLastids() => $_has(18);
  @$pb.TagNumber(40)
  void clearLastids() => $_clearField(40);

  @$pb.TagNumber(44)
  $core.int get categoryId => $_getIZ(19);
  @$pb.TagNumber(44)
  set categoryId($core.int value) => $_setSignedInt32(19, value);
  @$pb.TagNumber(44)
  $core.bool hasCategoryId() => $_has(19);
  @$pb.TagNumber(44)
  void clearCategoryId() => $_clearField(44);

  @$pb.TagNumber(45)
  $core.String get yuelaouLocate => $_getSZ(20);
  @$pb.TagNumber(45)
  set yuelaouLocate($core.String value) => $_setString(20, value);
  @$pb.TagNumber(45)
  $core.bool hasYuelaouLocate() => $_has(20);
  @$pb.TagNumber(45)
  void clearYuelaouLocate() => $_clearField(45);

  @$pb.TagNumber(47)
  $core.int get sortType => $_getIZ(21);
  @$pb.TagNumber(47)
  set sortType($core.int value) => $_setSignedInt32(21, value);
  @$pb.TagNumber(47)
  $core.bool hasSortType() => $_has(21);
  @$pb.TagNumber(47)
  void clearSortType() => $_clearField(47);

  @$pb.TagNumber(48)
  $fixnum.Int64 get lastClickTid => $_getI64(22);
  @$pb.TagNumber(48)
  set lastClickTid($fixnum.Int64 value) => $_setInt64(22, value);
  @$pb.TagNumber(48)
  $core.bool hasLastClickTid() => $_has(22);
  @$pb.TagNumber(48)
  void clearLastClickTid() => $_clearField(48);

  @$pb.TagNumber(49)
  $core.int get loadType => $_getIZ(23);
  @$pb.TagNumber(49)
  set loadType($core.int value) => $_setSignedInt32(23, value);
  @$pb.TagNumber(49)
  $core.bool hasLoadType() => $_has(23);
  @$pb.TagNumber(49)
  void clearLoadType() => $_clearField(49);

  @$pb.TagNumber(50)
  $1.AppPosInfo get appPos => $_getN(24);
  @$pb.TagNumber(50)
  set appPos($1.AppPosInfo value) => $_setField(50, value);
  @$pb.TagNumber(50)
  $core.bool hasAppPos() => $_has(24);
  @$pb.TagNumber(50)
  void clearAppPos() => $_clearField(50);
  @$pb.TagNumber(50)
  $1.AppPosInfo ensureAppPos() => $_ensure(24);

  @$pb.TagNumber(51)
  $2.AdParam get adParam => $_getN(25);
  @$pb.TagNumber(51)
  set adParam($2.AdParam value) => $_setField(51, value);
  @$pb.TagNumber(51)
  $core.bool hasAdParam() => $_has(25);
  @$pb.TagNumber(51)
  void clearAdParam() => $_clearField(51);
  @$pb.TagNumber(51)
  $2.AdParam ensureAdParam() => $_ensure(25);

  @$pb.TagNumber(52)
  $core.String get objLocate => $_getSZ(26);
  @$pb.TagNumber(52)
  set objLocate($core.String value) => $_setString(26, value);
  @$pb.TagNumber(52)
  $core.bool hasObjLocate() => $_has(26);
  @$pb.TagNumber(52)
  void clearObjLocate() => $_clearField(52);

  @$pb.TagNumber(53)
  $core.String get objSource => $_getSZ(27);
  @$pb.TagNumber(53)
  set objSource($core.String value) => $_setString(27, value);
  @$pb.TagNumber(53)
  $core.bool hasObjSource() => $_has(27);
  @$pb.TagNumber(53)
  void clearObjSource() => $_clearField(53);

  @$pb.TagNumber(55)
  $core.int get isSelection => $_getIZ(28);
  @$pb.TagNumber(55)
  set isSelection($core.int value) => $_setSignedInt32(28, value);
  @$pb.TagNumber(55)
  $core.bool hasIsSelection() => $_has(28);
  @$pb.TagNumber(55)
  void clearIsSelection() => $_clearField(55);

  @$pb.TagNumber(56)
  $core.int get callFrom => $_getIZ(29);
  @$pb.TagNumber(56)
  set callFrom($core.int value) => $_setSignedInt32(29, value);
  @$pb.TagNumber(56)
  $core.bool hasCallFrom() => $_has(29);
  @$pb.TagNumber(56)
  void clearCallFrom() => $_clearField(56);

  @$pb.TagNumber(58)
  $fixnum.Int64 get hotThreadId => $_getI64(30);
  @$pb.TagNumber(58)
  set hotThreadId($fixnum.Int64 value) => $_setInt64(30, value);
  @$pb.TagNumber(58)
  $core.bool hasHotThreadId() => $_has(30);
  @$pb.TagNumber(58)
  void clearHotThreadId() => $_clearField(58);

  @$pb.TagNumber(59)
  $core.int get isDefaultNavtab => $_getIZ(31);
  @$pb.TagNumber(59)
  set isDefaultNavtab($core.int value) => $_setSignedInt32(31, value);
  @$pb.TagNumber(59)
  $core.bool hasIsDefaultNavtab() => $_has(31);
  @$pb.TagNumber(59)
  void clearIsDefaultNavtab() => $_clearField(59);

  @$pb.TagNumber(60)
  $core.String get adContextList => $_getSZ(32);
  @$pb.TagNumber(60)
  set adContextList($core.String value) => $_setString(32, value);
  @$pb.TagNumber(60)
  $core.bool hasAdContextList() => $_has(32);
  @$pb.TagNumber(60)
  void clearAdContextList() => $_clearField(60);

  @$pb.TagNumber(61)
  $core.String get upSchema => $_getSZ(33);
  @$pb.TagNumber(61)
  set upSchema($core.String value) => $_setString(33, value);
  @$pb.TagNumber(61)
  $core.bool hasUpSchema() => $_has(33);
  @$pb.TagNumber(61)
  void clearUpSchema() => $_clearField(61);

  @$pb.TagNumber(62)
  $core.String get adExtParams => $_getSZ(34);
  @$pb.TagNumber(62)
  set adExtParams($core.String value) => $_setString(34, value);
  @$pb.TagNumber(62)
  $core.bool hasAdExtParams() => $_has(34);
  @$pb.TagNumber(62)
  void clearAdExtParams() => $_clearField(62);
}

class FrsPageRequest extends $pb.GeneratedMessage {
  factory FrsPageRequest({
    FrsPageRequestData? data,
  }) {
    final result = create();
    if (data != null) result.data = data;
    return result;
  }

  FrsPageRequest._();

  factory FrsPageRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FrsPageRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FrsPageRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba.frsPage'),
      createEmptyInstance: create)
    ..aOM<FrsPageRequestData>(1, _omitFieldNames ? '' : 'data',
        subBuilder: FrsPageRequestData.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FrsPageRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FrsPageRequest copyWith(void Function(FrsPageRequest) updates) =>
      super.copyWith((message) => updates(message as FrsPageRequest))
          as FrsPageRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FrsPageRequest create() => FrsPageRequest._();
  @$core.override
  FrsPageRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FrsPageRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FrsPageRequest>(create);
  static FrsPageRequest? _defaultInstance;

  @$pb.TagNumber(1)
  FrsPageRequestData get data => $_getN(0);
  @$pb.TagNumber(1)
  set data(FrsPageRequestData value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasData() => $_has(0);
  @$pb.TagNumber(1)
  void clearData() => $_clearField(1);
  @$pb.TagNumber(1)
  FrsPageRequestData ensureData() => $_ensure(0);
}

class FrsPageResponseData extends $pb.GeneratedMessage {
  factory FrsPageResponseData({
    $3.User? user,
    $4.ForumInfo? forum,
    $5.Page? page,
    $6.Anti? anti,
    $7.Group? group,
    $core.Iterable<$8.ThreadInfo>? threadList,
    $core.Iterable<$fixnum.Int64>? threadIdList,
    $core.int? isNewUrl,
    $core.int? time,
    $core.int? ctime,
    $fixnum.Int64? logid,
    $core.int? serverTime,
    $core.Iterable<$3.User>? userList,
    $core.Iterable<$9.FrsTabInfo>? frsTabInfo,
    $10.ActivityHead? activityHead,
    $11.NavTabInfo? navTabInfo,
    $12.ForumRuleStatus? forumRule,
  }) {
    final result = create();
    if (user != null) result.user = user;
    if (forum != null) result.forum = forum;
    if (page != null) result.page = page;
    if (anti != null) result.anti = anti;
    if (group != null) result.group = group;
    if (threadList != null) result.threadList.addAll(threadList);
    if (threadIdList != null) result.threadIdList.addAll(threadIdList);
    if (isNewUrl != null) result.isNewUrl = isNewUrl;
    if (time != null) result.time = time;
    if (ctime != null) result.ctime = ctime;
    if (logid != null) result.logid = logid;
    if (serverTime != null) result.serverTime = serverTime;
    if (userList != null) result.userList.addAll(userList);
    if (frsTabInfo != null) result.frsTabInfo.addAll(frsTabInfo);
    if (activityHead != null) result.activityHead = activityHead;
    if (navTabInfo != null) result.navTabInfo = navTabInfo;
    if (forumRule != null) result.forumRule = forumRule;
    return result;
  }

  FrsPageResponseData._();

  factory FrsPageResponseData.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FrsPageResponseData.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FrsPageResponseData',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba.frsPage'),
      createEmptyInstance: create)
    ..aOM<$3.User>(1, _omitFieldNames ? '' : 'user', subBuilder: $3.User.create)
    ..aOM<$4.ForumInfo>(2, _omitFieldNames ? '' : 'forum',
        subBuilder: $4.ForumInfo.create)
    ..aOM<$5.Page>(4, _omitFieldNames ? '' : 'page', subBuilder: $5.Page.create)
    ..aOM<$6.Anti>(5, _omitFieldNames ? '' : 'anti', subBuilder: $6.Anti.create)
    ..aOM<$7.Group>(6, _omitFieldNames ? '' : 'group',
        subBuilder: $7.Group.create)
    ..pPM<$8.ThreadInfo>(7, _omitFieldNames ? '' : 'threadList',
        subBuilder: $8.ThreadInfo.create)
    ..p<$fixnum.Int64>(
        8, _omitFieldNames ? '' : 'threadIdList', $pb.PbFieldType.K6)
    ..aI(9, _omitFieldNames ? '' : 'isNewUrl')
    ..aI(11, _omitFieldNames ? '' : 'time')
    ..aI(12, _omitFieldNames ? '' : 'ctime')
    ..aInt64(13, _omitFieldNames ? '' : 'logid')
    ..aI(14, _omitFieldNames ? '' : 'serverTime')
    ..pPM<$3.User>(17, _omitFieldNames ? '' : 'userList',
        subBuilder: $3.User.create)
    ..pPM<$9.FrsTabInfo>(22, _omitFieldNames ? '' : 'frsTabInfo',
        subBuilder: $9.FrsTabInfo.create)
    ..aOM<$10.ActivityHead>(23, _omitFieldNames ? '' : 'activityHead',
        subBuilder: $10.ActivityHead.create)
    ..aOM<$11.NavTabInfo>(37, _omitFieldNames ? '' : 'navTabInfo',
        subBuilder: $11.NavTabInfo.create)
    ..aOM<$12.ForumRuleStatus>(105, _omitFieldNames ? '' : 'forumRule',
        subBuilder: $12.ForumRuleStatus.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FrsPageResponseData clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FrsPageResponseData copyWith(void Function(FrsPageResponseData) updates) =>
      super.copyWith((message) => updates(message as FrsPageResponseData))
          as FrsPageResponseData;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FrsPageResponseData create() => FrsPageResponseData._();
  @$core.override
  FrsPageResponseData createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FrsPageResponseData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FrsPageResponseData>(create);
  static FrsPageResponseData? _defaultInstance;

  @$pb.TagNumber(1)
  $3.User get user => $_getN(0);
  @$pb.TagNumber(1)
  set user($3.User value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasUser() => $_has(0);
  @$pb.TagNumber(1)
  void clearUser() => $_clearField(1);
  @$pb.TagNumber(1)
  $3.User ensureUser() => $_ensure(0);

  @$pb.TagNumber(2)
  $4.ForumInfo get forum => $_getN(1);
  @$pb.TagNumber(2)
  set forum($4.ForumInfo value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasForum() => $_has(1);
  @$pb.TagNumber(2)
  void clearForum() => $_clearField(2);
  @$pb.TagNumber(2)
  $4.ForumInfo ensureForum() => $_ensure(1);

  @$pb.TagNumber(4)
  $5.Page get page => $_getN(2);
  @$pb.TagNumber(4)
  set page($5.Page value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasPage() => $_has(2);
  @$pb.TagNumber(4)
  void clearPage() => $_clearField(4);
  @$pb.TagNumber(4)
  $5.Page ensurePage() => $_ensure(2);

  @$pb.TagNumber(5)
  $6.Anti get anti => $_getN(3);
  @$pb.TagNumber(5)
  set anti($6.Anti value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasAnti() => $_has(3);
  @$pb.TagNumber(5)
  void clearAnti() => $_clearField(5);
  @$pb.TagNumber(5)
  $6.Anti ensureAnti() => $_ensure(3);

  @$pb.TagNumber(6)
  $7.Group get group => $_getN(4);
  @$pb.TagNumber(6)
  set group($7.Group value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasGroup() => $_has(4);
  @$pb.TagNumber(6)
  void clearGroup() => $_clearField(6);
  @$pb.TagNumber(6)
  $7.Group ensureGroup() => $_ensure(4);

  @$pb.TagNumber(7)
  $pb.PbList<$8.ThreadInfo> get threadList => $_getList(5);

  @$pb.TagNumber(8)
  $pb.PbList<$fixnum.Int64> get threadIdList => $_getList(6);

  @$pb.TagNumber(9)
  $core.int get isNewUrl => $_getIZ(7);
  @$pb.TagNumber(9)
  set isNewUrl($core.int value) => $_setSignedInt32(7, value);
  @$pb.TagNumber(9)
  $core.bool hasIsNewUrl() => $_has(7);
  @$pb.TagNumber(9)
  void clearIsNewUrl() => $_clearField(9);

  @$pb.TagNumber(11)
  $core.int get time => $_getIZ(8);
  @$pb.TagNumber(11)
  set time($core.int value) => $_setSignedInt32(8, value);
  @$pb.TagNumber(11)
  $core.bool hasTime() => $_has(8);
  @$pb.TagNumber(11)
  void clearTime() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.int get ctime => $_getIZ(9);
  @$pb.TagNumber(12)
  set ctime($core.int value) => $_setSignedInt32(9, value);
  @$pb.TagNumber(12)
  $core.bool hasCtime() => $_has(9);
  @$pb.TagNumber(12)
  void clearCtime() => $_clearField(12);

  @$pb.TagNumber(13)
  $fixnum.Int64 get logid => $_getI64(10);
  @$pb.TagNumber(13)
  set logid($fixnum.Int64 value) => $_setInt64(10, value);
  @$pb.TagNumber(13)
  $core.bool hasLogid() => $_has(10);
  @$pb.TagNumber(13)
  void clearLogid() => $_clearField(13);

  @$pb.TagNumber(14)
  $core.int get serverTime => $_getIZ(11);
  @$pb.TagNumber(14)
  set serverTime($core.int value) => $_setSignedInt32(11, value);
  @$pb.TagNumber(14)
  $core.bool hasServerTime() => $_has(11);
  @$pb.TagNumber(14)
  void clearServerTime() => $_clearField(14);

  @$pb.TagNumber(17)
  $pb.PbList<$3.User> get userList => $_getList(12);

  @$pb.TagNumber(22)
  $pb.PbList<$9.FrsTabInfo> get frsTabInfo => $_getList(13);

  @$pb.TagNumber(23)
  $10.ActivityHead get activityHead => $_getN(14);
  @$pb.TagNumber(23)
  set activityHead($10.ActivityHead value) => $_setField(23, value);
  @$pb.TagNumber(23)
  $core.bool hasActivityHead() => $_has(14);
  @$pb.TagNumber(23)
  void clearActivityHead() => $_clearField(23);
  @$pb.TagNumber(23)
  $10.ActivityHead ensureActivityHead() => $_ensure(14);

  @$pb.TagNumber(37)
  $11.NavTabInfo get navTabInfo => $_getN(15);
  @$pb.TagNumber(37)
  set navTabInfo($11.NavTabInfo value) => $_setField(37, value);
  @$pb.TagNumber(37)
  $core.bool hasNavTabInfo() => $_has(15);
  @$pb.TagNumber(37)
  void clearNavTabInfo() => $_clearField(37);
  @$pb.TagNumber(37)
  $11.NavTabInfo ensureNavTabInfo() => $_ensure(15);

  @$pb.TagNumber(105)
  $12.ForumRuleStatus get forumRule => $_getN(16);
  @$pb.TagNumber(105)
  set forumRule($12.ForumRuleStatus value) => $_setField(105, value);
  @$pb.TagNumber(105)
  $core.bool hasForumRule() => $_has(16);
  @$pb.TagNumber(105)
  void clearForumRule() => $_clearField(105);
  @$pb.TagNumber(105)
  $12.ForumRuleStatus ensureForumRule() => $_ensure(16);
}

class FrsPageResponse extends $pb.GeneratedMessage {
  factory FrsPageResponse({
    $13.Error? error,
    FrsPageResponseData? data,
  }) {
    final result = create();
    if (error != null) result.error = error;
    if (data != null) result.data = data;
    return result;
  }

  FrsPageResponse._();

  factory FrsPageResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FrsPageResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FrsPageResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba.frsPage'),
      createEmptyInstance: create)
    ..aOM<$13.Error>(1, _omitFieldNames ? '' : 'error',
        subBuilder: $13.Error.create)
    ..aOM<FrsPageResponseData>(2, _omitFieldNames ? '' : 'data',
        subBuilder: FrsPageResponseData.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FrsPageResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FrsPageResponse copyWith(void Function(FrsPageResponse) updates) =>
      super.copyWith((message) => updates(message as FrsPageResponse))
          as FrsPageResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FrsPageResponse create() => FrsPageResponse._();
  @$core.override
  FrsPageResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FrsPageResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FrsPageResponse>(create);
  static FrsPageResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $13.Error get error => $_getN(0);
  @$pb.TagNumber(1)
  set error($13.Error value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasError() => $_has(0);
  @$pb.TagNumber(1)
  void clearError() => $_clearField(1);
  @$pb.TagNumber(1)
  $13.Error ensureError() => $_ensure(0);

  @$pb.TagNumber(2)
  FrsPageResponseData get data => $_getN(1);
  @$pb.TagNumber(2)
  set data(FrsPageResponseData value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasData() => $_has(1);
  @$pb.TagNumber(2)
  void clearData() => $_clearField(2);
  @$pb.TagNumber(2)
  FrsPageResponseData ensureData() => $_ensure(1);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
