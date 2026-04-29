// This is a generated file - do not edit.
//
// Generated from Personalized.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'AppPosInfo.pb.dart' as $1;
import 'CommonRequest.pb.dart' as $0;
import 'Error.pb.dart' as $3;
import 'ThreadInfo.pb.dart' as $2;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class PersonalizedRequestData extends $pb.GeneratedMessage {
  factory PersonalizedRequestData({
    $0.CommonRequest? common,
    $core.int? tagCode,
    $core.int? needTags,
    $core.int? loadType,
    $core.int? pageThreadCount,
    $core.int? pn,
    $core.int? sugCount,
    $core.int? scrW,
    $core.int? scrH,
    $core.double? scrDip,
    $core.int? qType,
    $core.int? needForumlist,
    $core.int? newNetType,
    $core.int? preAdThreadCount,
    $core.int? newInstall,
    $core.int? requestTimes,
    $core.String? invokeSource,
    $core.String? adContextList,
    $1.AppPosInfo? appPos,
    $core.String? adExtParams,
  }) {
    final result = create();
    if (common != null) result.common = common;
    if (tagCode != null) result.tagCode = tagCode;
    if (needTags != null) result.needTags = needTags;
    if (loadType != null) result.loadType = loadType;
    if (pageThreadCount != null) result.pageThreadCount = pageThreadCount;
    if (pn != null) result.pn = pn;
    if (sugCount != null) result.sugCount = sugCount;
    if (scrW != null) result.scrW = scrW;
    if (scrH != null) result.scrH = scrH;
    if (scrDip != null) result.scrDip = scrDip;
    if (qType != null) result.qType = qType;
    if (needForumlist != null) result.needForumlist = needForumlist;
    if (newNetType != null) result.newNetType = newNetType;
    if (preAdThreadCount != null) result.preAdThreadCount = preAdThreadCount;
    if (newInstall != null) result.newInstall = newInstall;
    if (requestTimes != null) result.requestTimes = requestTimes;
    if (invokeSource != null) result.invokeSource = invokeSource;
    if (adContextList != null) result.adContextList = adContextList;
    if (appPos != null) result.appPos = appPos;
    if (adExtParams != null) result.adExtParams = adExtParams;
    return result;
  }

  PersonalizedRequestData._();

  factory PersonalizedRequestData.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PersonalizedRequestData.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PersonalizedRequestData',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aOM<$0.CommonRequest>(1, _omitFieldNames ? '' : 'common',
        subBuilder: $0.CommonRequest.create)
    ..aI(2, _omitFieldNames ? '' : 'tagCode', fieldType: $pb.PbFieldType.OU3)
    ..aI(3, _omitFieldNames ? '' : 'needTags', fieldType: $pb.PbFieldType.OU3)
    ..aI(4, _omitFieldNames ? '' : 'loadType', fieldType: $pb.PbFieldType.OU3)
    ..aI(5, _omitFieldNames ? '' : 'pageThreadCount',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(6, _omitFieldNames ? '' : 'pn', fieldType: $pb.PbFieldType.OU3)
    ..aI(7, _omitFieldNames ? '' : 'sugCount', fieldType: $pb.PbFieldType.OU3)
    ..aI(8, _omitFieldNames ? '' : 'scrW')
    ..aI(9, _omitFieldNames ? '' : 'scrH')
    ..aD(10, _omitFieldNames ? '' : 'scrDip')
    ..aI(11, _omitFieldNames ? '' : 'qType')
    ..aI(22, _omitFieldNames ? '' : 'needForumlist',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(23, _omitFieldNames ? '' : 'newNetType',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(26, _omitFieldNames ? '' : 'preAdThreadCount')
    ..aI(27, _omitFieldNames ? '' : 'newInstall')
    ..aI(28, _omitFieldNames ? '' : 'requestTimes')
    ..aOS(29, _omitFieldNames ? '' : 'invokeSource')
    ..aOS(30, _omitFieldNames ? '' : 'adContextList')
    ..aOM<$1.AppPosInfo>(36, _omitFieldNames ? '' : 'appPos',
        subBuilder: $1.AppPosInfo.create)
    ..aOS(37, _omitFieldNames ? '' : 'adExtParams')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PersonalizedRequestData clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PersonalizedRequestData copyWith(
          void Function(PersonalizedRequestData) updates) =>
      super.copyWith((message) => updates(message as PersonalizedRequestData))
          as PersonalizedRequestData;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PersonalizedRequestData create() => PersonalizedRequestData._();
  @$core.override
  PersonalizedRequestData createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PersonalizedRequestData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PersonalizedRequestData>(create);
  static PersonalizedRequestData? _defaultInstance;

  @$pb.TagNumber(1)
  $0.CommonRequest get common => $_getN(0);
  @$pb.TagNumber(1)
  set common($0.CommonRequest value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasCommon() => $_has(0);
  @$pb.TagNumber(1)
  void clearCommon() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.CommonRequest ensureCommon() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.int get tagCode => $_getIZ(1);
  @$pb.TagNumber(2)
  set tagCode($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasTagCode() => $_has(1);
  @$pb.TagNumber(2)
  void clearTagCode() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get needTags => $_getIZ(2);
  @$pb.TagNumber(3)
  set needTags($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasNeedTags() => $_has(2);
  @$pb.TagNumber(3)
  void clearNeedTags() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get loadType => $_getIZ(3);
  @$pb.TagNumber(4)
  set loadType($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasLoadType() => $_has(3);
  @$pb.TagNumber(4)
  void clearLoadType() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get pageThreadCount => $_getIZ(4);
  @$pb.TagNumber(5)
  set pageThreadCount($core.int value) => $_setUnsignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasPageThreadCount() => $_has(4);
  @$pb.TagNumber(5)
  void clearPageThreadCount() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get pn => $_getIZ(5);
  @$pb.TagNumber(6)
  set pn($core.int value) => $_setUnsignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasPn() => $_has(5);
  @$pb.TagNumber(6)
  void clearPn() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.int get sugCount => $_getIZ(6);
  @$pb.TagNumber(7)
  set sugCount($core.int value) => $_setUnsignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasSugCount() => $_has(6);
  @$pb.TagNumber(7)
  void clearSugCount() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.int get scrW => $_getIZ(7);
  @$pb.TagNumber(8)
  set scrW($core.int value) => $_setSignedInt32(7, value);
  @$pb.TagNumber(8)
  $core.bool hasScrW() => $_has(7);
  @$pb.TagNumber(8)
  void clearScrW() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.int get scrH => $_getIZ(8);
  @$pb.TagNumber(9)
  set scrH($core.int value) => $_setSignedInt32(8, value);
  @$pb.TagNumber(9)
  $core.bool hasScrH() => $_has(8);
  @$pb.TagNumber(9)
  void clearScrH() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.double get scrDip => $_getN(9);
  @$pb.TagNumber(10)
  set scrDip($core.double value) => $_setDouble(9, value);
  @$pb.TagNumber(10)
  $core.bool hasScrDip() => $_has(9);
  @$pb.TagNumber(10)
  void clearScrDip() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.int get qType => $_getIZ(10);
  @$pb.TagNumber(11)
  set qType($core.int value) => $_setSignedInt32(10, value);
  @$pb.TagNumber(11)
  $core.bool hasQType() => $_has(10);
  @$pb.TagNumber(11)
  void clearQType() => $_clearField(11);

  @$pb.TagNumber(22)
  $core.int get needForumlist => $_getIZ(11);
  @$pb.TagNumber(22)
  set needForumlist($core.int value) => $_setUnsignedInt32(11, value);
  @$pb.TagNumber(22)
  $core.bool hasNeedForumlist() => $_has(11);
  @$pb.TagNumber(22)
  void clearNeedForumlist() => $_clearField(22);

  @$pb.TagNumber(23)
  $core.int get newNetType => $_getIZ(12);
  @$pb.TagNumber(23)
  set newNetType($core.int value) => $_setUnsignedInt32(12, value);
  @$pb.TagNumber(23)
  $core.bool hasNewNetType() => $_has(12);
  @$pb.TagNumber(23)
  void clearNewNetType() => $_clearField(23);

  @$pb.TagNumber(26)
  $core.int get preAdThreadCount => $_getIZ(13);
  @$pb.TagNumber(26)
  set preAdThreadCount($core.int value) => $_setSignedInt32(13, value);
  @$pb.TagNumber(26)
  $core.bool hasPreAdThreadCount() => $_has(13);
  @$pb.TagNumber(26)
  void clearPreAdThreadCount() => $_clearField(26);

  @$pb.TagNumber(27)
  $core.int get newInstall => $_getIZ(14);
  @$pb.TagNumber(27)
  set newInstall($core.int value) => $_setSignedInt32(14, value);
  @$pb.TagNumber(27)
  $core.bool hasNewInstall() => $_has(14);
  @$pb.TagNumber(27)
  void clearNewInstall() => $_clearField(27);

  @$pb.TagNumber(28)
  $core.int get requestTimes => $_getIZ(15);
  @$pb.TagNumber(28)
  set requestTimes($core.int value) => $_setSignedInt32(15, value);
  @$pb.TagNumber(28)
  $core.bool hasRequestTimes() => $_has(15);
  @$pb.TagNumber(28)
  void clearRequestTimes() => $_clearField(28);

  @$pb.TagNumber(29)
  $core.String get invokeSource => $_getSZ(16);
  @$pb.TagNumber(29)
  set invokeSource($core.String value) => $_setString(16, value);
  @$pb.TagNumber(29)
  $core.bool hasInvokeSource() => $_has(16);
  @$pb.TagNumber(29)
  void clearInvokeSource() => $_clearField(29);

  @$pb.TagNumber(30)
  $core.String get adContextList => $_getSZ(17);
  @$pb.TagNumber(30)
  set adContextList($core.String value) => $_setString(17, value);
  @$pb.TagNumber(30)
  $core.bool hasAdContextList() => $_has(17);
  @$pb.TagNumber(30)
  void clearAdContextList() => $_clearField(30);

  @$pb.TagNumber(36)
  $1.AppPosInfo get appPos => $_getN(18);
  @$pb.TagNumber(36)
  set appPos($1.AppPosInfo value) => $_setField(36, value);
  @$pb.TagNumber(36)
  $core.bool hasAppPos() => $_has(18);
  @$pb.TagNumber(36)
  void clearAppPos() => $_clearField(36);
  @$pb.TagNumber(36)
  $1.AppPosInfo ensureAppPos() => $_ensure(18);

  @$pb.TagNumber(37)
  $core.String get adExtParams => $_getSZ(19);
  @$pb.TagNumber(37)
  set adExtParams($core.String value) => $_setString(19, value);
  @$pb.TagNumber(37)
  $core.bool hasAdExtParams() => $_has(19);
  @$pb.TagNumber(37)
  void clearAdExtParams() => $_clearField(37);
}

class PersonalizedRequest extends $pb.GeneratedMessage {
  factory PersonalizedRequest({
    PersonalizedRequestData? data,
  }) {
    final result = create();
    if (data != null) result.data = data;
    return result;
  }

  PersonalizedRequest._();

  factory PersonalizedRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PersonalizedRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PersonalizedRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aOM<PersonalizedRequestData>(1, _omitFieldNames ? '' : 'data',
        subBuilder: PersonalizedRequestData.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PersonalizedRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PersonalizedRequest copyWith(void Function(PersonalizedRequest) updates) =>
      super.copyWith((message) => updates(message as PersonalizedRequest))
          as PersonalizedRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PersonalizedRequest create() => PersonalizedRequest._();
  @$core.override
  PersonalizedRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PersonalizedRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PersonalizedRequest>(create);
  static PersonalizedRequest? _defaultInstance;

  @$pb.TagNumber(1)
  PersonalizedRequestData get data => $_getN(0);
  @$pb.TagNumber(1)
  set data(PersonalizedRequestData value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasData() => $_has(0);
  @$pb.TagNumber(1)
  void clearData() => $_clearField(1);
  @$pb.TagNumber(1)
  PersonalizedRequestData ensureData() => $_ensure(0);
}

class PersonalizedResponseData extends $pb.GeneratedMessage {
  factory PersonalizedResponseData({
    $core.Iterable<$2.ThreadInfo>? threadList,
    $core.Iterable<ThreadPersonalized>? threadPersonalized,
  }) {
    final result = create();
    if (threadList != null) result.threadList.addAll(threadList);
    if (threadPersonalized != null)
      result.threadPersonalized.addAll(threadPersonalized);
    return result;
  }

  PersonalizedResponseData._();

  factory PersonalizedResponseData.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PersonalizedResponseData.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PersonalizedResponseData',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..pPM<$2.ThreadInfo>(2, _omitFieldNames ? '' : 'threadList',
        subBuilder: $2.ThreadInfo.create)
    ..pPM<ThreadPersonalized>(7, _omitFieldNames ? '' : 'threadPersonalized',
        subBuilder: ThreadPersonalized.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PersonalizedResponseData clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PersonalizedResponseData copyWith(
          void Function(PersonalizedResponseData) updates) =>
      super.copyWith((message) => updates(message as PersonalizedResponseData))
          as PersonalizedResponseData;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PersonalizedResponseData create() => PersonalizedResponseData._();
  @$core.override
  PersonalizedResponseData createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PersonalizedResponseData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PersonalizedResponseData>(create);
  static PersonalizedResponseData? _defaultInstance;

  @$pb.TagNumber(2)
  $pb.PbList<$2.ThreadInfo> get threadList => $_getList(0);

  @$pb.TagNumber(7)
  $pb.PbList<ThreadPersonalized> get threadPersonalized => $_getList(1);
}

class PersonalizedResponse extends $pb.GeneratedMessage {
  factory PersonalizedResponse({
    $3.Error? error,
    PersonalizedResponseData? data,
  }) {
    final result = create();
    if (error != null) result.error = error;
    if (data != null) result.data = data;
    return result;
  }

  PersonalizedResponse._();

  factory PersonalizedResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PersonalizedResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PersonalizedResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aOM<$3.Error>(1, _omitFieldNames ? '' : 'error',
        subBuilder: $3.Error.create)
    ..aOM<PersonalizedResponseData>(2, _omitFieldNames ? '' : 'data',
        subBuilder: PersonalizedResponseData.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PersonalizedResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PersonalizedResponse copyWith(void Function(PersonalizedResponse) updates) =>
      super.copyWith((message) => updates(message as PersonalizedResponse))
          as PersonalizedResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PersonalizedResponse create() => PersonalizedResponse._();
  @$core.override
  PersonalizedResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PersonalizedResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PersonalizedResponse>(create);
  static PersonalizedResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $3.Error get error => $_getN(0);
  @$pb.TagNumber(1)
  set error($3.Error value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasError() => $_has(0);
  @$pb.TagNumber(1)
  void clearError() => $_clearField(1);
  @$pb.TagNumber(1)
  $3.Error ensureError() => $_ensure(0);

  @$pb.TagNumber(2)
  PersonalizedResponseData get data => $_getN(1);
  @$pb.TagNumber(2)
  set data(PersonalizedResponseData value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasData() => $_has(1);
  @$pb.TagNumber(2)
  void clearData() => $_clearField(2);
  @$pb.TagNumber(2)
  PersonalizedResponseData ensureData() => $_ensure(1);
}

class ThreadPersonalized extends $pb.GeneratedMessage {
  factory ThreadPersonalized({
    $fixnum.Int64? tid,
    $core.String? weight,
    $core.String? source,
    $core.Iterable<DislikeReason>? dislikeResource,
    $core.String? extra,
  }) {
    final result = create();
    if (tid != null) result.tid = tid;
    if (weight != null) result.weight = weight;
    if (source != null) result.source = source;
    if (dislikeResource != null) result.dislikeResource.addAll(dislikeResource);
    if (extra != null) result.extra = extra;
    return result;
  }

  ThreadPersonalized._();

  factory ThreadPersonalized.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ThreadPersonalized.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ThreadPersonalized',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'tid', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(2, _omitFieldNames ? '' : 'weight')
    ..aOS(3, _omitFieldNames ? '' : 'source')
    ..pPM<DislikeReason>(5, _omitFieldNames ? '' : 'dislikeResource',
        protoName: 'dislikeResource', subBuilder: DislikeReason.create)
    ..aOS(6, _omitFieldNames ? '' : 'extra')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ThreadPersonalized clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ThreadPersonalized copyWith(void Function(ThreadPersonalized) updates) =>
      super.copyWith((message) => updates(message as ThreadPersonalized))
          as ThreadPersonalized;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ThreadPersonalized create() => ThreadPersonalized._();
  @$core.override
  ThreadPersonalized createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ThreadPersonalized getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ThreadPersonalized>(create);
  static ThreadPersonalized? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get tid => $_getI64(0);
  @$pb.TagNumber(1)
  set tid($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTid() => $_has(0);
  @$pb.TagNumber(1)
  void clearTid() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get weight => $_getSZ(1);
  @$pb.TagNumber(2)
  set weight($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasWeight() => $_has(1);
  @$pb.TagNumber(2)
  void clearWeight() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get source => $_getSZ(2);
  @$pb.TagNumber(3)
  set source($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasSource() => $_has(2);
  @$pb.TagNumber(3)
  void clearSource() => $_clearField(3);

  @$pb.TagNumber(5)
  $pb.PbList<DislikeReason> get dislikeResource => $_getList(3);

  @$pb.TagNumber(6)
  $core.String get extra => $_getSZ(4);
  @$pb.TagNumber(6)
  set extra($core.String value) => $_setString(4, value);
  @$pb.TagNumber(6)
  $core.bool hasExtra() => $_has(4);
  @$pb.TagNumber(6)
  void clearExtra() => $_clearField(6);
}

class DislikeReason extends $pb.GeneratedMessage {
  factory DislikeReason({
    $core.String? dislikeReason,
    $core.int? dislikeId,
    $core.String? extra,
  }) {
    final result = create();
    if (dislikeReason != null) result.dislikeReason = dislikeReason;
    if (dislikeId != null) result.dislikeId = dislikeId;
    if (extra != null) result.extra = extra;
    return result;
  }

  DislikeReason._();

  factory DislikeReason.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DislikeReason.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DislikeReason',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'dislikeReason', protoName: 'dislikeReason')
    ..aI(2, _omitFieldNames ? '' : 'dislikeId',
        protoName: 'dislikeId', fieldType: $pb.PbFieldType.OU3)
    ..aOS(3, _omitFieldNames ? '' : 'extra')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DislikeReason clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DislikeReason copyWith(void Function(DislikeReason) updates) =>
      super.copyWith((message) => updates(message as DislikeReason))
          as DislikeReason;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DislikeReason create() => DislikeReason._();
  @$core.override
  DislikeReason createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DislikeReason getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DislikeReason>(create);
  static DislikeReason? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get dislikeReason => $_getSZ(0);
  @$pb.TagNumber(1)
  set dislikeReason($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDislikeReason() => $_has(0);
  @$pb.TagNumber(1)
  void clearDislikeReason() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get dislikeId => $_getIZ(1);
  @$pb.TagNumber(2)
  set dislikeId($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasDislikeId() => $_has(1);
  @$pb.TagNumber(2)
  void clearDislikeId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get extra => $_getSZ(2);
  @$pb.TagNumber(3)
  set extra($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasExtra() => $_has(2);
  @$pb.TagNumber(3)
  void clearExtra() => $_clearField(3);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
