// This is a generated file - do not edit.
//
// Generated from ThreadList/ThreadList.proto.

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
import '../CommonRequest.pb.dart' as $0;
import '../Error.pb.dart' as $5;
import '../ThreadInfo.pb.dart' as $3;
import '../User.pb.dart' as $4;
import 'AdParam.pb.dart' as $2;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class ThreadListRequestData extends $pb.GeneratedMessage {
  factory ThreadListRequestData({
    $core.String? threadIds,
    $fixnum.Int64? forumId,
    $core.int? needAbstract,
    $core.int? stType,
    $core.int? scrW,
    $core.int? scrH,
    $core.int? qType,
    $0.CommonRequest? common,
    $fixnum.Int64? userId,
    $core.String? daIdfa,
    $core.String? platform,
    $core.double? scrDip,
    $core.int? pn,
    $core.String? forumName,
    $fixnum.Int64? lastClickTid,
    $core.int? sortType,
    $1.AppPosInfo? appPos,
    $2.AdParam? adParam,
    $core.String? adContextList,
  }) {
    final result = create();
    if (threadIds != null) result.threadIds = threadIds;
    if (forumId != null) result.forumId = forumId;
    if (needAbstract != null) result.needAbstract = needAbstract;
    if (stType != null) result.stType = stType;
    if (scrW != null) result.scrW = scrW;
    if (scrH != null) result.scrH = scrH;
    if (qType != null) result.qType = qType;
    if (common != null) result.common = common;
    if (userId != null) result.userId = userId;
    if (daIdfa != null) result.daIdfa = daIdfa;
    if (platform != null) result.platform = platform;
    if (scrDip != null) result.scrDip = scrDip;
    if (pn != null) result.pn = pn;
    if (forumName != null) result.forumName = forumName;
    if (lastClickTid != null) result.lastClickTid = lastClickTid;
    if (sortType != null) result.sortType = sortType;
    if (appPos != null) result.appPos = appPos;
    if (adParam != null) result.adParam = adParam;
    if (adContextList != null) result.adContextList = adContextList;
    return result;
  }

  ThreadListRequestData._();

  factory ThreadListRequestData.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ThreadListRequestData.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ThreadListRequestData',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'tieba.threadList'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'threadIds')
    ..a<$fixnum.Int64>(2, _omitFieldNames ? '' : 'forumId', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aI(3, _omitFieldNames ? '' : 'needAbstract',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(4, _omitFieldNames ? '' : 'stType', fieldType: $pb.PbFieldType.OU3)
    ..aI(5, _omitFieldNames ? '' : 'scrW', fieldType: $pb.PbFieldType.OU3)
    ..aI(6, _omitFieldNames ? '' : 'scrH', fieldType: $pb.PbFieldType.OU3)
    ..aI(7, _omitFieldNames ? '' : 'qType', fieldType: $pb.PbFieldType.OU3)
    ..aOM<$0.CommonRequest>(8, _omitFieldNames ? '' : 'common',
        subBuilder: $0.CommonRequest.create)
    ..aInt64(9, _omitFieldNames ? '' : 'userId')
    ..aOS(10, _omitFieldNames ? '' : 'daIdfa')
    ..aOS(11, _omitFieldNames ? '' : 'platform')
    ..aD(12, _omitFieldNames ? '' : 'scrDip')
    ..aI(13, _omitFieldNames ? '' : 'pn')
    ..aOS(14, _omitFieldNames ? '' : 'forumName')
    ..a<$fixnum.Int64>(
        15, _omitFieldNames ? '' : 'lastClickTid', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aI(16, _omitFieldNames ? '' : 'sortType')
    ..aOM<$1.AppPosInfo>(17, _omitFieldNames ? '' : 'appPos',
        subBuilder: $1.AppPosInfo.create)
    ..aOM<$2.AdParam>(18, _omitFieldNames ? '' : 'adParam',
        subBuilder: $2.AdParam.create)
    ..aOS(19, _omitFieldNames ? '' : 'adContextList')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ThreadListRequestData clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ThreadListRequestData copyWith(
          void Function(ThreadListRequestData) updates) =>
      super.copyWith((message) => updates(message as ThreadListRequestData))
          as ThreadListRequestData;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ThreadListRequestData create() => ThreadListRequestData._();
  @$core.override
  ThreadListRequestData createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ThreadListRequestData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ThreadListRequestData>(create);
  static ThreadListRequestData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get threadIds => $_getSZ(0);
  @$pb.TagNumber(1)
  set threadIds($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasThreadIds() => $_has(0);
  @$pb.TagNumber(1)
  void clearThreadIds() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get forumId => $_getI64(1);
  @$pb.TagNumber(2)
  set forumId($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasForumId() => $_has(1);
  @$pb.TagNumber(2)
  void clearForumId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get needAbstract => $_getIZ(2);
  @$pb.TagNumber(3)
  set needAbstract($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasNeedAbstract() => $_has(2);
  @$pb.TagNumber(3)
  void clearNeedAbstract() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get stType => $_getIZ(3);
  @$pb.TagNumber(4)
  set stType($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasStType() => $_has(3);
  @$pb.TagNumber(4)
  void clearStType() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get scrW => $_getIZ(4);
  @$pb.TagNumber(5)
  set scrW($core.int value) => $_setUnsignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasScrW() => $_has(4);
  @$pb.TagNumber(5)
  void clearScrW() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get scrH => $_getIZ(5);
  @$pb.TagNumber(6)
  set scrH($core.int value) => $_setUnsignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasScrH() => $_has(5);
  @$pb.TagNumber(6)
  void clearScrH() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.int get qType => $_getIZ(6);
  @$pb.TagNumber(7)
  set qType($core.int value) => $_setUnsignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasQType() => $_has(6);
  @$pb.TagNumber(7)
  void clearQType() => $_clearField(7);

  @$pb.TagNumber(8)
  $0.CommonRequest get common => $_getN(7);
  @$pb.TagNumber(8)
  set common($0.CommonRequest value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasCommon() => $_has(7);
  @$pb.TagNumber(8)
  void clearCommon() => $_clearField(8);
  @$pb.TagNumber(8)
  $0.CommonRequest ensureCommon() => $_ensure(7);

  @$pb.TagNumber(9)
  $fixnum.Int64 get userId => $_getI64(8);
  @$pb.TagNumber(9)
  set userId($fixnum.Int64 value) => $_setInt64(8, value);
  @$pb.TagNumber(9)
  $core.bool hasUserId() => $_has(8);
  @$pb.TagNumber(9)
  void clearUserId() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.String get daIdfa => $_getSZ(9);
  @$pb.TagNumber(10)
  set daIdfa($core.String value) => $_setString(9, value);
  @$pb.TagNumber(10)
  $core.bool hasDaIdfa() => $_has(9);
  @$pb.TagNumber(10)
  void clearDaIdfa() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.String get platform => $_getSZ(10);
  @$pb.TagNumber(11)
  set platform($core.String value) => $_setString(10, value);
  @$pb.TagNumber(11)
  $core.bool hasPlatform() => $_has(10);
  @$pb.TagNumber(11)
  void clearPlatform() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.double get scrDip => $_getN(11);
  @$pb.TagNumber(12)
  set scrDip($core.double value) => $_setDouble(11, value);
  @$pb.TagNumber(12)
  $core.bool hasScrDip() => $_has(11);
  @$pb.TagNumber(12)
  void clearScrDip() => $_clearField(12);

  @$pb.TagNumber(13)
  $core.int get pn => $_getIZ(12);
  @$pb.TagNumber(13)
  set pn($core.int value) => $_setSignedInt32(12, value);
  @$pb.TagNumber(13)
  $core.bool hasPn() => $_has(12);
  @$pb.TagNumber(13)
  void clearPn() => $_clearField(13);

  @$pb.TagNumber(14)
  $core.String get forumName => $_getSZ(13);
  @$pb.TagNumber(14)
  set forumName($core.String value) => $_setString(13, value);
  @$pb.TagNumber(14)
  $core.bool hasForumName() => $_has(13);
  @$pb.TagNumber(14)
  void clearForumName() => $_clearField(14);

  @$pb.TagNumber(15)
  $fixnum.Int64 get lastClickTid => $_getI64(14);
  @$pb.TagNumber(15)
  set lastClickTid($fixnum.Int64 value) => $_setInt64(14, value);
  @$pb.TagNumber(15)
  $core.bool hasLastClickTid() => $_has(14);
  @$pb.TagNumber(15)
  void clearLastClickTid() => $_clearField(15);

  @$pb.TagNumber(16)
  $core.int get sortType => $_getIZ(15);
  @$pb.TagNumber(16)
  set sortType($core.int value) => $_setSignedInt32(15, value);
  @$pb.TagNumber(16)
  $core.bool hasSortType() => $_has(15);
  @$pb.TagNumber(16)
  void clearSortType() => $_clearField(16);

  @$pb.TagNumber(17)
  $1.AppPosInfo get appPos => $_getN(16);
  @$pb.TagNumber(17)
  set appPos($1.AppPosInfo value) => $_setField(17, value);
  @$pb.TagNumber(17)
  $core.bool hasAppPos() => $_has(16);
  @$pb.TagNumber(17)
  void clearAppPos() => $_clearField(17);
  @$pb.TagNumber(17)
  $1.AppPosInfo ensureAppPos() => $_ensure(16);

  @$pb.TagNumber(18)
  $2.AdParam get adParam => $_getN(17);
  @$pb.TagNumber(18)
  set adParam($2.AdParam value) => $_setField(18, value);
  @$pb.TagNumber(18)
  $core.bool hasAdParam() => $_has(17);
  @$pb.TagNumber(18)
  void clearAdParam() => $_clearField(18);
  @$pb.TagNumber(18)
  $2.AdParam ensureAdParam() => $_ensure(17);

  @$pb.TagNumber(19)
  $core.String get adContextList => $_getSZ(18);
  @$pb.TagNumber(19)
  set adContextList($core.String value) => $_setString(18, value);
  @$pb.TagNumber(19)
  $core.bool hasAdContextList() => $_has(18);
  @$pb.TagNumber(19)
  void clearAdContextList() => $_clearField(19);
}

class ThreadListRequest extends $pb.GeneratedMessage {
  factory ThreadListRequest({
    ThreadListRequestData? data,
  }) {
    final result = create();
    if (data != null) result.data = data;
    return result;
  }

  ThreadListRequest._();

  factory ThreadListRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ThreadListRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ThreadListRequest',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'tieba.threadList'),
      createEmptyInstance: create)
    ..aOM<ThreadListRequestData>(1, _omitFieldNames ? '' : 'data',
        subBuilder: ThreadListRequestData.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ThreadListRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ThreadListRequest copyWith(void Function(ThreadListRequest) updates) =>
      super.copyWith((message) => updates(message as ThreadListRequest))
          as ThreadListRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ThreadListRequest create() => ThreadListRequest._();
  @$core.override
  ThreadListRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ThreadListRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ThreadListRequest>(create);
  static ThreadListRequest? _defaultInstance;

  @$pb.TagNumber(1)
  ThreadListRequestData get data => $_getN(0);
  @$pb.TagNumber(1)
  set data(ThreadListRequestData value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasData() => $_has(0);
  @$pb.TagNumber(1)
  void clearData() => $_clearField(1);
  @$pb.TagNumber(1)
  ThreadListRequestData ensureData() => $_ensure(0);
}

class ThreadListResponseData extends $pb.GeneratedMessage {
  factory ThreadListResponseData({
    $core.Iterable<$3.ThreadInfo>? threadList,
    $core.Iterable<$4.User>? userList,
  }) {
    final result = create();
    if (threadList != null) result.threadList.addAll(threadList);
    if (userList != null) result.userList.addAll(userList);
    return result;
  }

  ThreadListResponseData._();

  factory ThreadListResponseData.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ThreadListResponseData.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ThreadListResponseData',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'tieba.threadList'),
      createEmptyInstance: create)
    ..pPM<$3.ThreadInfo>(1, _omitFieldNames ? '' : 'threadList',
        subBuilder: $3.ThreadInfo.create)
    ..pPM<$4.User>(2, _omitFieldNames ? '' : 'userList',
        subBuilder: $4.User.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ThreadListResponseData clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ThreadListResponseData copyWith(
          void Function(ThreadListResponseData) updates) =>
      super.copyWith((message) => updates(message as ThreadListResponseData))
          as ThreadListResponseData;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ThreadListResponseData create() => ThreadListResponseData._();
  @$core.override
  ThreadListResponseData createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ThreadListResponseData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ThreadListResponseData>(create);
  static ThreadListResponseData? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$3.ThreadInfo> get threadList => $_getList(0);

  @$pb.TagNumber(2)
  $pb.PbList<$4.User> get userList => $_getList(1);
}

class ThreadListResponse extends $pb.GeneratedMessage {
  factory ThreadListResponse({
    $5.Error? error,
    ThreadListResponseData? data,
  }) {
    final result = create();
    if (error != null) result.error = error;
    if (data != null) result.data = data;
    return result;
  }

  ThreadListResponse._();

  factory ThreadListResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ThreadListResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ThreadListResponse',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'tieba.threadList'),
      createEmptyInstance: create)
    ..aOM<$5.Error>(1, _omitFieldNames ? '' : 'error',
        subBuilder: $5.Error.create)
    ..aOM<ThreadListResponseData>(2, _omitFieldNames ? '' : 'data',
        subBuilder: ThreadListResponseData.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ThreadListResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ThreadListResponse copyWith(void Function(ThreadListResponse) updates) =>
      super.copyWith((message) => updates(message as ThreadListResponse))
          as ThreadListResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ThreadListResponse create() => ThreadListResponse._();
  @$core.override
  ThreadListResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ThreadListResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ThreadListResponse>(create);
  static ThreadListResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $5.Error get error => $_getN(0);
  @$pb.TagNumber(1)
  set error($5.Error value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasError() => $_has(0);
  @$pb.TagNumber(1)
  void clearError() => $_clearField(1);
  @$pb.TagNumber(1)
  $5.Error ensureError() => $_ensure(0);

  @$pb.TagNumber(2)
  ThreadListResponseData get data => $_getN(1);
  @$pb.TagNumber(2)
  set data(ThreadListResponseData value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasData() => $_has(1);
  @$pb.TagNumber(2)
  void clearData() => $_clearField(2);
  @$pb.TagNumber(2)
  ThreadListResponseData ensureData() => $_ensure(1);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
