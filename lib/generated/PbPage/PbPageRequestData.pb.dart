// This is a generated file - do not edit.
//
// Generated from PbPage/PbPageRequestData.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../AppPosInfo.pb.dart' as $1;
import '../AppTransmitData.pb.dart' as $3;
import '../CommonRequest.pb.dart' as $0;
import 'AdParam.pb.dart' as $2;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class PbPageRequestData extends $pb.GeneratedMessage {
  factory PbPageRequestData({
    $core.int? pbRn,
    $core.int? mark,
    $core.int? back,
    $fixnum.Int64? kz,
    $core.int? lz,
    $core.int? r,
    $fixnum.Int64? pid,
    $core.int? withFloor,
    $core.int? floorRn,
    $core.int? weipost,
    $core.int? messageId,
    $core.int? sModel,
    $core.int? rn,
    $core.int? scrW,
    $core.int? scrH,
    $core.double? scrDip,
    $core.int? qType,
    $core.int? pn,
    $core.String? stType,
    $core.int? threadType,
    $core.int? banner,
    $core.int? arround,
    $core.int? last,
    $core.String? msgClick,
    $0.CommonRequest? common,
    $core.String? lastids,
    $core.String? stFrom,
    $core.String? stLink,
    $core.int? stStat,
    $fixnum.Int64? stTask,
    $core.int? issdk,
    $core.String? queryWord,
    $core.int? isCommReverse,
    $core.int? isJumpfloor,
    $core.int? jumpfloorNum,
    $core.String? daIdfa,
    $core.String? platform,
    $fixnum.Int64? jid,
    $fixnum.Int64? fid,
    $core.String? jfrom,
    $core.String? yuelaouLocate,
    $core.String? yuelaouParams,
    $core.String? objSource,
    $core.String? objLocate,
    $core.String? objParam1,
    $1.AppPosInfo? appPos,
    $core.int? fromSmartFrs,
    $core.String? feedNid,
    $fixnum.Int64? forumId,
    $core.int? needRepostRecommendForum,
    $2.AdParam? adParam,
    $core.int? needLog,
    $core.String? callUrl,
    $core.String? shoubaiCuid,
    $core.String? oriUgcNid,
    $core.String? oriUgcTid,
    $core.int? oriUgcType,
    $core.String? oriUgcVid,
    $core.String? adContextList,
    $core.String? upSchema,
    $core.int? fromPush,
    $core.String? adExtParams,
    $fixnum.Int64? broadcastId,
    $core.int? floorSortType,
    $core.int? sourceType,
    $core.int? immersionVideoCommentSource,
    $3.AppTransmitData? appTransmitData,
    $core.int? isFoldCommentReq,
    $core.int? isEditCommentReq,
    $core.int? requestTimes,
    $fixnum.Int64? lastPid,
    $core.int? similarFrom,
    $core.String? comeFrom,
    $core.String? searchQuery,
  }) {
    final result = create();
    if (pbRn != null) result.pbRn = pbRn;
    if (mark != null) result.mark = mark;
    if (back != null) result.back = back;
    if (kz != null) result.kz = kz;
    if (lz != null) result.lz = lz;
    if (r != null) result.r = r;
    if (pid != null) result.pid = pid;
    if (withFloor != null) result.withFloor = withFloor;
    if (floorRn != null) result.floorRn = floorRn;
    if (weipost != null) result.weipost = weipost;
    if (messageId != null) result.messageId = messageId;
    if (sModel != null) result.sModel = sModel;
    if (rn != null) result.rn = rn;
    if (scrW != null) result.scrW = scrW;
    if (scrH != null) result.scrH = scrH;
    if (scrDip != null) result.scrDip = scrDip;
    if (qType != null) result.qType = qType;
    if (pn != null) result.pn = pn;
    if (stType != null) result.stType = stType;
    if (threadType != null) result.threadType = threadType;
    if (banner != null) result.banner = banner;
    if (arround != null) result.arround = arround;
    if (last != null) result.last = last;
    if (msgClick != null) result.msgClick = msgClick;
    if (common != null) result.common = common;
    if (lastids != null) result.lastids = lastids;
    if (stFrom != null) result.stFrom = stFrom;
    if (stLink != null) result.stLink = stLink;
    if (stStat != null) result.stStat = stStat;
    if (stTask != null) result.stTask = stTask;
    if (issdk != null) result.issdk = issdk;
    if (queryWord != null) result.queryWord = queryWord;
    if (isCommReverse != null) result.isCommReverse = isCommReverse;
    if (isJumpfloor != null) result.isJumpfloor = isJumpfloor;
    if (jumpfloorNum != null) result.jumpfloorNum = jumpfloorNum;
    if (daIdfa != null) result.daIdfa = daIdfa;
    if (platform != null) result.platform = platform;
    if (jid != null) result.jid = jid;
    if (fid != null) result.fid = fid;
    if (jfrom != null) result.jfrom = jfrom;
    if (yuelaouLocate != null) result.yuelaouLocate = yuelaouLocate;
    if (yuelaouParams != null) result.yuelaouParams = yuelaouParams;
    if (objSource != null) result.objSource = objSource;
    if (objLocate != null) result.objLocate = objLocate;
    if (objParam1 != null) result.objParam1 = objParam1;
    if (appPos != null) result.appPos = appPos;
    if (fromSmartFrs != null) result.fromSmartFrs = fromSmartFrs;
    if (feedNid != null) result.feedNid = feedNid;
    if (forumId != null) result.forumId = forumId;
    if (needRepostRecommendForum != null)
      result.needRepostRecommendForum = needRepostRecommendForum;
    if (adParam != null) result.adParam = adParam;
    if (needLog != null) result.needLog = needLog;
    if (callUrl != null) result.callUrl = callUrl;
    if (shoubaiCuid != null) result.shoubaiCuid = shoubaiCuid;
    if (oriUgcNid != null) result.oriUgcNid = oriUgcNid;
    if (oriUgcTid != null) result.oriUgcTid = oriUgcTid;
    if (oriUgcType != null) result.oriUgcType = oriUgcType;
    if (oriUgcVid != null) result.oriUgcVid = oriUgcVid;
    if (adContextList != null) result.adContextList = adContextList;
    if (upSchema != null) result.upSchema = upSchema;
    if (fromPush != null) result.fromPush = fromPush;
    if (adExtParams != null) result.adExtParams = adExtParams;
    if (broadcastId != null) result.broadcastId = broadcastId;
    if (floorSortType != null) result.floorSortType = floorSortType;
    if (sourceType != null) result.sourceType = sourceType;
    if (immersionVideoCommentSource != null)
      result.immersionVideoCommentSource = immersionVideoCommentSource;
    if (appTransmitData != null) result.appTransmitData = appTransmitData;
    if (isFoldCommentReq != null) result.isFoldCommentReq = isFoldCommentReq;
    if (isEditCommentReq != null) result.isEditCommentReq = isEditCommentReq;
    if (requestTimes != null) result.requestTimes = requestTimes;
    if (lastPid != null) result.lastPid = lastPid;
    if (similarFrom != null) result.similarFrom = similarFrom;
    if (comeFrom != null) result.comeFrom = comeFrom;
    if (searchQuery != null) result.searchQuery = searchQuery;
    return result;
  }

  PbPageRequestData._();

  factory PbPageRequestData.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PbPageRequestData.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PbPageRequestData',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba.pbPage'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'pbRn')
    ..aI(2, _omitFieldNames ? '' : 'mark')
    ..aI(3, _omitFieldNames ? '' : 'back')
    ..aInt64(4, _omitFieldNames ? '' : 'kz')
    ..aI(5, _omitFieldNames ? '' : 'lz')
    ..aI(6, _omitFieldNames ? '' : 'r')
    ..aInt64(7, _omitFieldNames ? '' : 'pid')
    ..aI(8, _omitFieldNames ? '' : 'withFloor')
    ..aI(9, _omitFieldNames ? '' : 'floorRn')
    ..aI(10, _omitFieldNames ? '' : 'weipost')
    ..aI(11, _omitFieldNames ? '' : 'messageId')
    ..aI(12, _omitFieldNames ? '' : 'sModel')
    ..aI(13, _omitFieldNames ? '' : 'rn')
    ..aI(14, _omitFieldNames ? '' : 'scrW')
    ..aI(15, _omitFieldNames ? '' : 'scrH')
    ..aD(16, _omitFieldNames ? '' : 'scrDip')
    ..aI(17, _omitFieldNames ? '' : 'qType')
    ..aI(18, _omitFieldNames ? '' : 'pn')
    ..aOS(19, _omitFieldNames ? '' : 'stType')
    ..aI(20, _omitFieldNames ? '' : 'threadType')
    ..aI(21, _omitFieldNames ? '' : 'banner')
    ..aI(22, _omitFieldNames ? '' : 'arround')
    ..aI(23, _omitFieldNames ? '' : 'last')
    ..aOS(24, _omitFieldNames ? '' : 'msgClick')
    ..aOM<$0.CommonRequest>(25, _omitFieldNames ? '' : 'common',
        subBuilder: $0.CommonRequest.create)
    ..aOS(26, _omitFieldNames ? '' : 'lastids')
    ..aOS(27, _omitFieldNames ? '' : 'stFrom')
    ..aOS(28, _omitFieldNames ? '' : 'stLink')
    ..aI(29, _omitFieldNames ? '' : 'stStat')
    ..aInt64(30, _omitFieldNames ? '' : 'stTask')
    ..aI(31, _omitFieldNames ? '' : 'issdk')
    ..aOS(32, _omitFieldNames ? '' : 'queryWord')
    ..aI(33, _omitFieldNames ? '' : 'isCommReverse')
    ..aI(34, _omitFieldNames ? '' : 'isJumpfloor')
    ..aI(35, _omitFieldNames ? '' : 'jumpfloorNum')
    ..aOS(42, _omitFieldNames ? '' : 'daIdfa')
    ..aOS(43, _omitFieldNames ? '' : 'platform')
    ..a<$fixnum.Int64>(44, _omitFieldNames ? '' : 'jid', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(45, _omitFieldNames ? '' : 'fid', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(46, _omitFieldNames ? '' : 'jfrom')
    ..aOS(47, _omitFieldNames ? '' : 'yuelaouLocate')
    ..aOS(48, _omitFieldNames ? '' : 'yuelaouParams')
    ..aOS(50, _omitFieldNames ? '' : 'objSource')
    ..aOS(51, _omitFieldNames ? '' : 'objLocate')
    ..aOS(52, _omitFieldNames ? '' : 'objParam1')
    ..aOM<$1.AppPosInfo>(53, _omitFieldNames ? '' : 'appPos',
        subBuilder: $1.AppPosInfo.create)
    ..aI(54, _omitFieldNames ? '' : 'fromSmartFrs',
        fieldType: $pb.PbFieldType.OU3)
    ..aOS(55, _omitFieldNames ? '' : 'feedNid')
    ..aInt64(56, _omitFieldNames ? '' : 'forumId')
    ..aI(57, _omitFieldNames ? '' : 'needRepostRecommendForum')
    ..aOM<$2.AdParam>(58, _omitFieldNames ? '' : 'adParam',
        subBuilder: $2.AdParam.create)
    ..aI(59, _omitFieldNames ? '' : 'needLog')
    ..aOS(60, _omitFieldNames ? '' : 'callUrl')
    ..aOS(61, _omitFieldNames ? '' : 'shoubaiCuid')
    ..aOS(62, _omitFieldNames ? '' : 'oriUgcNid')
    ..aOS(63, _omitFieldNames ? '' : 'oriUgcTid')
    ..aI(65, _omitFieldNames ? '' : 'oriUgcType')
    ..aOS(66, _omitFieldNames ? '' : 'oriUgcVid')
    ..aOS(68, _omitFieldNames ? '' : 'adContextList')
    ..aOS(69, _omitFieldNames ? '' : 'upSchema')
    ..aI(71, _omitFieldNames ? '' : 'fromPush')
    ..aOS(72, _omitFieldNames ? '' : 'adExtParams')
    ..aInt64(73, _omitFieldNames ? '' : 'broadcastId')
    ..aI(74, _omitFieldNames ? '' : 'floorSortType')
    ..aI(75, _omitFieldNames ? '' : 'sourceType')
    ..aI(76, _omitFieldNames ? '' : 'immersionVideoCommentSource')
    ..aOM<$3.AppTransmitData>(77, _omitFieldNames ? '' : 'appTransmitData',
        subBuilder: $3.AppTransmitData.create)
    ..aI(78, _omitFieldNames ? '' : 'isFoldCommentReq')
    ..aI(79, _omitFieldNames ? '' : 'isEditCommentReq')
    ..aI(80, _omitFieldNames ? '' : 'requestTimes')
    ..aInt64(81, _omitFieldNames ? '' : 'lastPid')
    ..aI(82, _omitFieldNames ? '' : 'similarFrom')
    ..aOS(83, _omitFieldNames ? '' : 'comeFrom')
    ..aOS(84, _omitFieldNames ? '' : 'searchQuery')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PbPageRequestData clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PbPageRequestData copyWith(void Function(PbPageRequestData) updates) =>
      super.copyWith((message) => updates(message as PbPageRequestData))
          as PbPageRequestData;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PbPageRequestData create() => PbPageRequestData._();
  @$core.override
  PbPageRequestData createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PbPageRequestData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PbPageRequestData>(create);
  static PbPageRequestData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get pbRn => $_getIZ(0);
  @$pb.TagNumber(1)
  set pbRn($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPbRn() => $_has(0);
  @$pb.TagNumber(1)
  void clearPbRn() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get mark => $_getIZ(1);
  @$pb.TagNumber(2)
  set mark($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMark() => $_has(1);
  @$pb.TagNumber(2)
  void clearMark() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get back => $_getIZ(2);
  @$pb.TagNumber(3)
  set back($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasBack() => $_has(2);
  @$pb.TagNumber(3)
  void clearBack() => $_clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get kz => $_getI64(3);
  @$pb.TagNumber(4)
  set kz($fixnum.Int64 value) => $_setInt64(3, value);
  @$pb.TagNumber(4)
  $core.bool hasKz() => $_has(3);
  @$pb.TagNumber(4)
  void clearKz() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get lz => $_getIZ(4);
  @$pb.TagNumber(5)
  set lz($core.int value) => $_setSignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasLz() => $_has(4);
  @$pb.TagNumber(5)
  void clearLz() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get r => $_getIZ(5);
  @$pb.TagNumber(6)
  set r($core.int value) => $_setSignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasR() => $_has(5);
  @$pb.TagNumber(6)
  void clearR() => $_clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get pid => $_getI64(6);
  @$pb.TagNumber(7)
  set pid($fixnum.Int64 value) => $_setInt64(6, value);
  @$pb.TagNumber(7)
  $core.bool hasPid() => $_has(6);
  @$pb.TagNumber(7)
  void clearPid() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.int get withFloor => $_getIZ(7);
  @$pb.TagNumber(8)
  set withFloor($core.int value) => $_setSignedInt32(7, value);
  @$pb.TagNumber(8)
  $core.bool hasWithFloor() => $_has(7);
  @$pb.TagNumber(8)
  void clearWithFloor() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.int get floorRn => $_getIZ(8);
  @$pb.TagNumber(9)
  set floorRn($core.int value) => $_setSignedInt32(8, value);
  @$pb.TagNumber(9)
  $core.bool hasFloorRn() => $_has(8);
  @$pb.TagNumber(9)
  void clearFloorRn() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.int get weipost => $_getIZ(9);
  @$pb.TagNumber(10)
  set weipost($core.int value) => $_setSignedInt32(9, value);
  @$pb.TagNumber(10)
  $core.bool hasWeipost() => $_has(9);
  @$pb.TagNumber(10)
  void clearWeipost() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.int get messageId => $_getIZ(10);
  @$pb.TagNumber(11)
  set messageId($core.int value) => $_setSignedInt32(10, value);
  @$pb.TagNumber(11)
  $core.bool hasMessageId() => $_has(10);
  @$pb.TagNumber(11)
  void clearMessageId() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.int get sModel => $_getIZ(11);
  @$pb.TagNumber(12)
  set sModel($core.int value) => $_setSignedInt32(11, value);
  @$pb.TagNumber(12)
  $core.bool hasSModel() => $_has(11);
  @$pb.TagNumber(12)
  void clearSModel() => $_clearField(12);

  @$pb.TagNumber(13)
  $core.int get rn => $_getIZ(12);
  @$pb.TagNumber(13)
  set rn($core.int value) => $_setSignedInt32(12, value);
  @$pb.TagNumber(13)
  $core.bool hasRn() => $_has(12);
  @$pb.TagNumber(13)
  void clearRn() => $_clearField(13);

  @$pb.TagNumber(14)
  $core.int get scrW => $_getIZ(13);
  @$pb.TagNumber(14)
  set scrW($core.int value) => $_setSignedInt32(13, value);
  @$pb.TagNumber(14)
  $core.bool hasScrW() => $_has(13);
  @$pb.TagNumber(14)
  void clearScrW() => $_clearField(14);

  @$pb.TagNumber(15)
  $core.int get scrH => $_getIZ(14);
  @$pb.TagNumber(15)
  set scrH($core.int value) => $_setSignedInt32(14, value);
  @$pb.TagNumber(15)
  $core.bool hasScrH() => $_has(14);
  @$pb.TagNumber(15)
  void clearScrH() => $_clearField(15);

  @$pb.TagNumber(16)
  $core.double get scrDip => $_getN(15);
  @$pb.TagNumber(16)
  set scrDip($core.double value) => $_setDouble(15, value);
  @$pb.TagNumber(16)
  $core.bool hasScrDip() => $_has(15);
  @$pb.TagNumber(16)
  void clearScrDip() => $_clearField(16);

  @$pb.TagNumber(17)
  $core.int get qType => $_getIZ(16);
  @$pb.TagNumber(17)
  set qType($core.int value) => $_setSignedInt32(16, value);
  @$pb.TagNumber(17)
  $core.bool hasQType() => $_has(16);
  @$pb.TagNumber(17)
  void clearQType() => $_clearField(17);

  @$pb.TagNumber(18)
  $core.int get pn => $_getIZ(17);
  @$pb.TagNumber(18)
  set pn($core.int value) => $_setSignedInt32(17, value);
  @$pb.TagNumber(18)
  $core.bool hasPn() => $_has(17);
  @$pb.TagNumber(18)
  void clearPn() => $_clearField(18);

  @$pb.TagNumber(19)
  $core.String get stType => $_getSZ(18);
  @$pb.TagNumber(19)
  set stType($core.String value) => $_setString(18, value);
  @$pb.TagNumber(19)
  $core.bool hasStType() => $_has(18);
  @$pb.TagNumber(19)
  void clearStType() => $_clearField(19);

  @$pb.TagNumber(20)
  $core.int get threadType => $_getIZ(19);
  @$pb.TagNumber(20)
  set threadType($core.int value) => $_setSignedInt32(19, value);
  @$pb.TagNumber(20)
  $core.bool hasThreadType() => $_has(19);
  @$pb.TagNumber(20)
  void clearThreadType() => $_clearField(20);

  @$pb.TagNumber(21)
  $core.int get banner => $_getIZ(20);
  @$pb.TagNumber(21)
  set banner($core.int value) => $_setSignedInt32(20, value);
  @$pb.TagNumber(21)
  $core.bool hasBanner() => $_has(20);
  @$pb.TagNumber(21)
  void clearBanner() => $_clearField(21);

  @$pb.TagNumber(22)
  $core.int get arround => $_getIZ(21);
  @$pb.TagNumber(22)
  set arround($core.int value) => $_setSignedInt32(21, value);
  @$pb.TagNumber(22)
  $core.bool hasArround() => $_has(21);
  @$pb.TagNumber(22)
  void clearArround() => $_clearField(22);

  @$pb.TagNumber(23)
  $core.int get last => $_getIZ(22);
  @$pb.TagNumber(23)
  set last($core.int value) => $_setSignedInt32(22, value);
  @$pb.TagNumber(23)
  $core.bool hasLast() => $_has(22);
  @$pb.TagNumber(23)
  void clearLast() => $_clearField(23);

  @$pb.TagNumber(24)
  $core.String get msgClick => $_getSZ(23);
  @$pb.TagNumber(24)
  set msgClick($core.String value) => $_setString(23, value);
  @$pb.TagNumber(24)
  $core.bool hasMsgClick() => $_has(23);
  @$pb.TagNumber(24)
  void clearMsgClick() => $_clearField(24);

  @$pb.TagNumber(25)
  $0.CommonRequest get common => $_getN(24);
  @$pb.TagNumber(25)
  set common($0.CommonRequest value) => $_setField(25, value);
  @$pb.TagNumber(25)
  $core.bool hasCommon() => $_has(24);
  @$pb.TagNumber(25)
  void clearCommon() => $_clearField(25);
  @$pb.TagNumber(25)
  $0.CommonRequest ensureCommon() => $_ensure(24);

  @$pb.TagNumber(26)
  $core.String get lastids => $_getSZ(25);
  @$pb.TagNumber(26)
  set lastids($core.String value) => $_setString(25, value);
  @$pb.TagNumber(26)
  $core.bool hasLastids() => $_has(25);
  @$pb.TagNumber(26)
  void clearLastids() => $_clearField(26);

  @$pb.TagNumber(27)
  $core.String get stFrom => $_getSZ(26);
  @$pb.TagNumber(27)
  set stFrom($core.String value) => $_setString(26, value);
  @$pb.TagNumber(27)
  $core.bool hasStFrom() => $_has(26);
  @$pb.TagNumber(27)
  void clearStFrom() => $_clearField(27);

  @$pb.TagNumber(28)
  $core.String get stLink => $_getSZ(27);
  @$pb.TagNumber(28)
  set stLink($core.String value) => $_setString(27, value);
  @$pb.TagNumber(28)
  $core.bool hasStLink() => $_has(27);
  @$pb.TagNumber(28)
  void clearStLink() => $_clearField(28);

  @$pb.TagNumber(29)
  $core.int get stStat => $_getIZ(28);
  @$pb.TagNumber(29)
  set stStat($core.int value) => $_setSignedInt32(28, value);
  @$pb.TagNumber(29)
  $core.bool hasStStat() => $_has(28);
  @$pb.TagNumber(29)
  void clearStStat() => $_clearField(29);

  @$pb.TagNumber(30)
  $fixnum.Int64 get stTask => $_getI64(29);
  @$pb.TagNumber(30)
  set stTask($fixnum.Int64 value) => $_setInt64(29, value);
  @$pb.TagNumber(30)
  $core.bool hasStTask() => $_has(29);
  @$pb.TagNumber(30)
  void clearStTask() => $_clearField(30);

  @$pb.TagNumber(31)
  $core.int get issdk => $_getIZ(30);
  @$pb.TagNumber(31)
  set issdk($core.int value) => $_setSignedInt32(30, value);
  @$pb.TagNumber(31)
  $core.bool hasIssdk() => $_has(30);
  @$pb.TagNumber(31)
  void clearIssdk() => $_clearField(31);

  @$pb.TagNumber(32)
  $core.String get queryWord => $_getSZ(31);
  @$pb.TagNumber(32)
  set queryWord($core.String value) => $_setString(31, value);
  @$pb.TagNumber(32)
  $core.bool hasQueryWord() => $_has(31);
  @$pb.TagNumber(32)
  void clearQueryWord() => $_clearField(32);

  @$pb.TagNumber(33)
  $core.int get isCommReverse => $_getIZ(32);
  @$pb.TagNumber(33)
  set isCommReverse($core.int value) => $_setSignedInt32(32, value);
  @$pb.TagNumber(33)
  $core.bool hasIsCommReverse() => $_has(32);
  @$pb.TagNumber(33)
  void clearIsCommReverse() => $_clearField(33);

  @$pb.TagNumber(34)
  $core.int get isJumpfloor => $_getIZ(33);
  @$pb.TagNumber(34)
  set isJumpfloor($core.int value) => $_setSignedInt32(33, value);
  @$pb.TagNumber(34)
  $core.bool hasIsJumpfloor() => $_has(33);
  @$pb.TagNumber(34)
  void clearIsJumpfloor() => $_clearField(34);

  @$pb.TagNumber(35)
  $core.int get jumpfloorNum => $_getIZ(34);
  @$pb.TagNumber(35)
  set jumpfloorNum($core.int value) => $_setSignedInt32(34, value);
  @$pb.TagNumber(35)
  $core.bool hasJumpfloorNum() => $_has(34);
  @$pb.TagNumber(35)
  void clearJumpfloorNum() => $_clearField(35);

  @$pb.TagNumber(42)
  $core.String get daIdfa => $_getSZ(35);
  @$pb.TagNumber(42)
  set daIdfa($core.String value) => $_setString(35, value);
  @$pb.TagNumber(42)
  $core.bool hasDaIdfa() => $_has(35);
  @$pb.TagNumber(42)
  void clearDaIdfa() => $_clearField(42);

  @$pb.TagNumber(43)
  $core.String get platform => $_getSZ(36);
  @$pb.TagNumber(43)
  set platform($core.String value) => $_setString(36, value);
  @$pb.TagNumber(43)
  $core.bool hasPlatform() => $_has(36);
  @$pb.TagNumber(43)
  void clearPlatform() => $_clearField(43);

  @$pb.TagNumber(44)
  $fixnum.Int64 get jid => $_getI64(37);
  @$pb.TagNumber(44)
  set jid($fixnum.Int64 value) => $_setInt64(37, value);
  @$pb.TagNumber(44)
  $core.bool hasJid() => $_has(37);
  @$pb.TagNumber(44)
  void clearJid() => $_clearField(44);

  @$pb.TagNumber(45)
  $fixnum.Int64 get fid => $_getI64(38);
  @$pb.TagNumber(45)
  set fid($fixnum.Int64 value) => $_setInt64(38, value);
  @$pb.TagNumber(45)
  $core.bool hasFid() => $_has(38);
  @$pb.TagNumber(45)
  void clearFid() => $_clearField(45);

  @$pb.TagNumber(46)
  $core.String get jfrom => $_getSZ(39);
  @$pb.TagNumber(46)
  set jfrom($core.String value) => $_setString(39, value);
  @$pb.TagNumber(46)
  $core.bool hasJfrom() => $_has(39);
  @$pb.TagNumber(46)
  void clearJfrom() => $_clearField(46);

  @$pb.TagNumber(47)
  $core.String get yuelaouLocate => $_getSZ(40);
  @$pb.TagNumber(47)
  set yuelaouLocate($core.String value) => $_setString(40, value);
  @$pb.TagNumber(47)
  $core.bool hasYuelaouLocate() => $_has(40);
  @$pb.TagNumber(47)
  void clearYuelaouLocate() => $_clearField(47);

  @$pb.TagNumber(48)
  $core.String get yuelaouParams => $_getSZ(41);
  @$pb.TagNumber(48)
  set yuelaouParams($core.String value) => $_setString(41, value);
  @$pb.TagNumber(48)
  $core.bool hasYuelaouParams() => $_has(41);
  @$pb.TagNumber(48)
  void clearYuelaouParams() => $_clearField(48);

  @$pb.TagNumber(50)
  $core.String get objSource => $_getSZ(42);
  @$pb.TagNumber(50)
  set objSource($core.String value) => $_setString(42, value);
  @$pb.TagNumber(50)
  $core.bool hasObjSource() => $_has(42);
  @$pb.TagNumber(50)
  void clearObjSource() => $_clearField(50);

  @$pb.TagNumber(51)
  $core.String get objLocate => $_getSZ(43);
  @$pb.TagNumber(51)
  set objLocate($core.String value) => $_setString(43, value);
  @$pb.TagNumber(51)
  $core.bool hasObjLocate() => $_has(43);
  @$pb.TagNumber(51)
  void clearObjLocate() => $_clearField(51);

  @$pb.TagNumber(52)
  $core.String get objParam1 => $_getSZ(44);
  @$pb.TagNumber(52)
  set objParam1($core.String value) => $_setString(44, value);
  @$pb.TagNumber(52)
  $core.bool hasObjParam1() => $_has(44);
  @$pb.TagNumber(52)
  void clearObjParam1() => $_clearField(52);

  @$pb.TagNumber(53)
  $1.AppPosInfo get appPos => $_getN(45);
  @$pb.TagNumber(53)
  set appPos($1.AppPosInfo value) => $_setField(53, value);
  @$pb.TagNumber(53)
  $core.bool hasAppPos() => $_has(45);
  @$pb.TagNumber(53)
  void clearAppPos() => $_clearField(53);
  @$pb.TagNumber(53)
  $1.AppPosInfo ensureAppPos() => $_ensure(45);

  @$pb.TagNumber(54)
  $core.int get fromSmartFrs => $_getIZ(46);
  @$pb.TagNumber(54)
  set fromSmartFrs($core.int value) => $_setUnsignedInt32(46, value);
  @$pb.TagNumber(54)
  $core.bool hasFromSmartFrs() => $_has(46);
  @$pb.TagNumber(54)
  void clearFromSmartFrs() => $_clearField(54);

  @$pb.TagNumber(55)
  $core.String get feedNid => $_getSZ(47);
  @$pb.TagNumber(55)
  set feedNid($core.String value) => $_setString(47, value);
  @$pb.TagNumber(55)
  $core.bool hasFeedNid() => $_has(47);
  @$pb.TagNumber(55)
  void clearFeedNid() => $_clearField(55);

  @$pb.TagNumber(56)
  $fixnum.Int64 get forumId => $_getI64(48);
  @$pb.TagNumber(56)
  set forumId($fixnum.Int64 value) => $_setInt64(48, value);
  @$pb.TagNumber(56)
  $core.bool hasForumId() => $_has(48);
  @$pb.TagNumber(56)
  void clearForumId() => $_clearField(56);

  @$pb.TagNumber(57)
  $core.int get needRepostRecommendForum => $_getIZ(49);
  @$pb.TagNumber(57)
  set needRepostRecommendForum($core.int value) => $_setSignedInt32(49, value);
  @$pb.TagNumber(57)
  $core.bool hasNeedRepostRecommendForum() => $_has(49);
  @$pb.TagNumber(57)
  void clearNeedRepostRecommendForum() => $_clearField(57);

  @$pb.TagNumber(58)
  $2.AdParam get adParam => $_getN(50);
  @$pb.TagNumber(58)
  set adParam($2.AdParam value) => $_setField(58, value);
  @$pb.TagNumber(58)
  $core.bool hasAdParam() => $_has(50);
  @$pb.TagNumber(58)
  void clearAdParam() => $_clearField(58);
  @$pb.TagNumber(58)
  $2.AdParam ensureAdParam() => $_ensure(50);

  @$pb.TagNumber(59)
  $core.int get needLog => $_getIZ(51);
  @$pb.TagNumber(59)
  set needLog($core.int value) => $_setSignedInt32(51, value);
  @$pb.TagNumber(59)
  $core.bool hasNeedLog() => $_has(51);
  @$pb.TagNumber(59)
  void clearNeedLog() => $_clearField(59);

  @$pb.TagNumber(60)
  $core.String get callUrl => $_getSZ(52);
  @$pb.TagNumber(60)
  set callUrl($core.String value) => $_setString(52, value);
  @$pb.TagNumber(60)
  $core.bool hasCallUrl() => $_has(52);
  @$pb.TagNumber(60)
  void clearCallUrl() => $_clearField(60);

  @$pb.TagNumber(61)
  $core.String get shoubaiCuid => $_getSZ(53);
  @$pb.TagNumber(61)
  set shoubaiCuid($core.String value) => $_setString(53, value);
  @$pb.TagNumber(61)
  $core.bool hasShoubaiCuid() => $_has(53);
  @$pb.TagNumber(61)
  void clearShoubaiCuid() => $_clearField(61);

  @$pb.TagNumber(62)
  $core.String get oriUgcNid => $_getSZ(54);
  @$pb.TagNumber(62)
  set oriUgcNid($core.String value) => $_setString(54, value);
  @$pb.TagNumber(62)
  $core.bool hasOriUgcNid() => $_has(54);
  @$pb.TagNumber(62)
  void clearOriUgcNid() => $_clearField(62);

  @$pb.TagNumber(63)
  $core.String get oriUgcTid => $_getSZ(55);
  @$pb.TagNumber(63)
  set oriUgcTid($core.String value) => $_setString(55, value);
  @$pb.TagNumber(63)
  $core.bool hasOriUgcTid() => $_has(55);
  @$pb.TagNumber(63)
  void clearOriUgcTid() => $_clearField(63);

  @$pb.TagNumber(65)
  $core.int get oriUgcType => $_getIZ(56);
  @$pb.TagNumber(65)
  set oriUgcType($core.int value) => $_setSignedInt32(56, value);
  @$pb.TagNumber(65)
  $core.bool hasOriUgcType() => $_has(56);
  @$pb.TagNumber(65)
  void clearOriUgcType() => $_clearField(65);

  @$pb.TagNumber(66)
  $core.String get oriUgcVid => $_getSZ(57);
  @$pb.TagNumber(66)
  set oriUgcVid($core.String value) => $_setString(57, value);
  @$pb.TagNumber(66)
  $core.bool hasOriUgcVid() => $_has(57);
  @$pb.TagNumber(66)
  void clearOriUgcVid() => $_clearField(66);

  @$pb.TagNumber(68)
  $core.String get adContextList => $_getSZ(58);
  @$pb.TagNumber(68)
  set adContextList($core.String value) => $_setString(58, value);
  @$pb.TagNumber(68)
  $core.bool hasAdContextList() => $_has(58);
  @$pb.TagNumber(68)
  void clearAdContextList() => $_clearField(68);

  @$pb.TagNumber(69)
  $core.String get upSchema => $_getSZ(59);
  @$pb.TagNumber(69)
  set upSchema($core.String value) => $_setString(59, value);
  @$pb.TagNumber(69)
  $core.bool hasUpSchema() => $_has(59);
  @$pb.TagNumber(69)
  void clearUpSchema() => $_clearField(69);

  @$pb.TagNumber(71)
  $core.int get fromPush => $_getIZ(60);
  @$pb.TagNumber(71)
  set fromPush($core.int value) => $_setSignedInt32(60, value);
  @$pb.TagNumber(71)
  $core.bool hasFromPush() => $_has(60);
  @$pb.TagNumber(71)
  void clearFromPush() => $_clearField(71);

  @$pb.TagNumber(72)
  $core.String get adExtParams => $_getSZ(61);
  @$pb.TagNumber(72)
  set adExtParams($core.String value) => $_setString(61, value);
  @$pb.TagNumber(72)
  $core.bool hasAdExtParams() => $_has(61);
  @$pb.TagNumber(72)
  void clearAdExtParams() => $_clearField(72);

  @$pb.TagNumber(73)
  $fixnum.Int64 get broadcastId => $_getI64(62);
  @$pb.TagNumber(73)
  set broadcastId($fixnum.Int64 value) => $_setInt64(62, value);
  @$pb.TagNumber(73)
  $core.bool hasBroadcastId() => $_has(62);
  @$pb.TagNumber(73)
  void clearBroadcastId() => $_clearField(73);

  @$pb.TagNumber(74)
  $core.int get floorSortType => $_getIZ(63);
  @$pb.TagNumber(74)
  set floorSortType($core.int value) => $_setSignedInt32(63, value);
  @$pb.TagNumber(74)
  $core.bool hasFloorSortType() => $_has(63);
  @$pb.TagNumber(74)
  void clearFloorSortType() => $_clearField(74);

  @$pb.TagNumber(75)
  $core.int get sourceType => $_getIZ(64);
  @$pb.TagNumber(75)
  set sourceType($core.int value) => $_setSignedInt32(64, value);
  @$pb.TagNumber(75)
  $core.bool hasSourceType() => $_has(64);
  @$pb.TagNumber(75)
  void clearSourceType() => $_clearField(75);

  @$pb.TagNumber(76)
  $core.int get immersionVideoCommentSource => $_getIZ(65);
  @$pb.TagNumber(76)
  set immersionVideoCommentSource($core.int value) =>
      $_setSignedInt32(65, value);
  @$pb.TagNumber(76)
  $core.bool hasImmersionVideoCommentSource() => $_has(65);
  @$pb.TagNumber(76)
  void clearImmersionVideoCommentSource() => $_clearField(76);

  @$pb.TagNumber(77)
  $3.AppTransmitData get appTransmitData => $_getN(66);
  @$pb.TagNumber(77)
  set appTransmitData($3.AppTransmitData value) => $_setField(77, value);
  @$pb.TagNumber(77)
  $core.bool hasAppTransmitData() => $_has(66);
  @$pb.TagNumber(77)
  void clearAppTransmitData() => $_clearField(77);
  @$pb.TagNumber(77)
  $3.AppTransmitData ensureAppTransmitData() => $_ensure(66);

  @$pb.TagNumber(78)
  $core.int get isFoldCommentReq => $_getIZ(67);
  @$pb.TagNumber(78)
  set isFoldCommentReq($core.int value) => $_setSignedInt32(67, value);
  @$pb.TagNumber(78)
  $core.bool hasIsFoldCommentReq() => $_has(67);
  @$pb.TagNumber(78)
  void clearIsFoldCommentReq() => $_clearField(78);

  @$pb.TagNumber(79)
  $core.int get isEditCommentReq => $_getIZ(68);
  @$pb.TagNumber(79)
  set isEditCommentReq($core.int value) => $_setSignedInt32(68, value);
  @$pb.TagNumber(79)
  $core.bool hasIsEditCommentReq() => $_has(68);
  @$pb.TagNumber(79)
  void clearIsEditCommentReq() => $_clearField(79);

  @$pb.TagNumber(80)
  $core.int get requestTimes => $_getIZ(69);
  @$pb.TagNumber(80)
  set requestTimes($core.int value) => $_setSignedInt32(69, value);
  @$pb.TagNumber(80)
  $core.bool hasRequestTimes() => $_has(69);
  @$pb.TagNumber(80)
  void clearRequestTimes() => $_clearField(80);

  @$pb.TagNumber(81)
  $fixnum.Int64 get lastPid => $_getI64(70);
  @$pb.TagNumber(81)
  set lastPid($fixnum.Int64 value) => $_setInt64(70, value);
  @$pb.TagNumber(81)
  $core.bool hasLastPid() => $_has(70);
  @$pb.TagNumber(81)
  void clearLastPid() => $_clearField(81);

  @$pb.TagNumber(82)
  $core.int get similarFrom => $_getIZ(71);
  @$pb.TagNumber(82)
  set similarFrom($core.int value) => $_setSignedInt32(71, value);
  @$pb.TagNumber(82)
  $core.bool hasSimilarFrom() => $_has(71);
  @$pb.TagNumber(82)
  void clearSimilarFrom() => $_clearField(82);

  @$pb.TagNumber(83)
  $core.String get comeFrom => $_getSZ(72);
  @$pb.TagNumber(83)
  set comeFrom($core.String value) => $_setString(72, value);
  @$pb.TagNumber(83)
  $core.bool hasComeFrom() => $_has(72);
  @$pb.TagNumber(83)
  void clearComeFrom() => $_clearField(83);

  @$pb.TagNumber(84)
  $core.String get searchQuery => $_getSZ(73);
  @$pb.TagNumber(84)
  set searchQuery($core.String value) => $_setString(73, value);
  @$pb.TagNumber(84)
  $core.bool hasSearchQuery() => $_has(73);
  @$pb.TagNumber(84)
  void clearSearchQuery() => $_clearField(84);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
