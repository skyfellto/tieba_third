// This is a generated file - do not edit.
//
// Generated from ForumRecommend/ForumRecommend.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../CommonRequest.pb.dart' as $0;
import '../Error.pb.dart' as $2;
import 'LikeForum.pb.dart' as $1;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class ForumRecommendRequestData extends $pb.GeneratedMessage {
  factory ForumRecommendRequestData({
    $core.int? likeForum,
    $core.int? topic,
    $core.int? recommend,
    $0.CommonRequest? common,
    $core.String? visitHistory,
    $core.int? sortType,
  }) {
    final result = create();
    if (likeForum != null) result.likeForum = likeForum;
    if (topic != null) result.topic = topic;
    if (recommend != null) result.recommend = recommend;
    if (common != null) result.common = common;
    if (visitHistory != null) result.visitHistory = visitHistory;
    if (sortType != null) result.sortType = sortType;
    return result;
  }

  ForumRecommendRequestData._();

  factory ForumRecommendRequestData.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ForumRecommendRequestData.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ForumRecommendRequestData',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'tieba.forumRecommend'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'likeForum', fieldType: $pb.PbFieldType.OU3)
    ..aI(2, _omitFieldNames ? '' : 'topic', fieldType: $pb.PbFieldType.OU3)
    ..aI(3, _omitFieldNames ? '' : 'recommend', fieldType: $pb.PbFieldType.OU3)
    ..aOM<$0.CommonRequest>(4, _omitFieldNames ? '' : 'common',
        subBuilder: $0.CommonRequest.create)
    ..aOS(5, _omitFieldNames ? '' : 'visitHistory')
    ..aI(7, _omitFieldNames ? '' : 'sortType')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ForumRecommendRequestData clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ForumRecommendRequestData copyWith(
          void Function(ForumRecommendRequestData) updates) =>
      super.copyWith((message) => updates(message as ForumRecommendRequestData))
          as ForumRecommendRequestData;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ForumRecommendRequestData create() => ForumRecommendRequestData._();
  @$core.override
  ForumRecommendRequestData createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ForumRecommendRequestData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ForumRecommendRequestData>(create);
  static ForumRecommendRequestData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get likeForum => $_getIZ(0);
  @$pb.TagNumber(1)
  set likeForum($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasLikeForum() => $_has(0);
  @$pb.TagNumber(1)
  void clearLikeForum() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get topic => $_getIZ(1);
  @$pb.TagNumber(2)
  set topic($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasTopic() => $_has(1);
  @$pb.TagNumber(2)
  void clearTopic() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get recommend => $_getIZ(2);
  @$pb.TagNumber(3)
  set recommend($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasRecommend() => $_has(2);
  @$pb.TagNumber(3)
  void clearRecommend() => $_clearField(3);

  @$pb.TagNumber(4)
  $0.CommonRequest get common => $_getN(3);
  @$pb.TagNumber(4)
  set common($0.CommonRequest value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasCommon() => $_has(3);
  @$pb.TagNumber(4)
  void clearCommon() => $_clearField(4);
  @$pb.TagNumber(4)
  $0.CommonRequest ensureCommon() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.String get visitHistory => $_getSZ(4);
  @$pb.TagNumber(5)
  set visitHistory($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasVisitHistory() => $_has(4);
  @$pb.TagNumber(5)
  void clearVisitHistory() => $_clearField(5);

  @$pb.TagNumber(7)
  $core.int get sortType => $_getIZ(5);
  @$pb.TagNumber(7)
  set sortType($core.int value) => $_setSignedInt32(5, value);
  @$pb.TagNumber(7)
  $core.bool hasSortType() => $_has(5);
  @$pb.TagNumber(7)
  void clearSortType() => $_clearField(7);
}

class ForumRecommendRequest extends $pb.GeneratedMessage {
  factory ForumRecommendRequest({
    ForumRecommendRequestData? data,
  }) {
    final result = create();
    if (data != null) result.data = data;
    return result;
  }

  ForumRecommendRequest._();

  factory ForumRecommendRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ForumRecommendRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ForumRecommendRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'tieba.forumRecommend'),
      createEmptyInstance: create)
    ..aOM<ForumRecommendRequestData>(1, _omitFieldNames ? '' : 'data',
        subBuilder: ForumRecommendRequestData.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ForumRecommendRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ForumRecommendRequest copyWith(
          void Function(ForumRecommendRequest) updates) =>
      super.copyWith((message) => updates(message as ForumRecommendRequest))
          as ForumRecommendRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ForumRecommendRequest create() => ForumRecommendRequest._();
  @$core.override
  ForumRecommendRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ForumRecommendRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ForumRecommendRequest>(create);
  static ForumRecommendRequest? _defaultInstance;

  @$pb.TagNumber(1)
  ForumRecommendRequestData get data => $_getN(0);
  @$pb.TagNumber(1)
  set data(ForumRecommendRequestData value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasData() => $_has(0);
  @$pb.TagNumber(1)
  void clearData() => $_clearField(1);
  @$pb.TagNumber(1)
  ForumRecommendRequestData ensureData() => $_ensure(0);
}

class ForumRecommendResponseData extends $pb.GeneratedMessage {
  factory ForumRecommendResponseData({
    $core.Iterable<$1.LikeForum>? likeForum,
    $core.int? isLogin,
    $core.int? sortType,
  }) {
    final result = create();
    if (likeForum != null) result.likeForum.addAll(likeForum);
    if (isLogin != null) result.isLogin = isLogin;
    if (sortType != null) result.sortType = sortType;
    return result;
  }

  ForumRecommendResponseData._();

  factory ForumRecommendResponseData.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ForumRecommendResponseData.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ForumRecommendResponseData',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'tieba.forumRecommend'),
      createEmptyInstance: create)
    ..pPM<$1.LikeForum>(2, _omitFieldNames ? '' : 'likeForum',
        subBuilder: $1.LikeForum.create)
    ..aI(4, _omitFieldNames ? '' : 'isLogin')
    ..aI(18, _omitFieldNames ? '' : 'sortType')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ForumRecommendResponseData clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ForumRecommendResponseData copyWith(
          void Function(ForumRecommendResponseData) updates) =>
      super.copyWith(
              (message) => updates(message as ForumRecommendResponseData))
          as ForumRecommendResponseData;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ForumRecommendResponseData create() => ForumRecommendResponseData._();
  @$core.override
  ForumRecommendResponseData createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ForumRecommendResponseData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ForumRecommendResponseData>(create);
  static ForumRecommendResponseData? _defaultInstance;

  @$pb.TagNumber(2)
  $pb.PbList<$1.LikeForum> get likeForum => $_getList(0);

  @$pb.TagNumber(4)
  $core.int get isLogin => $_getIZ(1);
  @$pb.TagNumber(4)
  set isLogin($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(4)
  $core.bool hasIsLogin() => $_has(1);
  @$pb.TagNumber(4)
  void clearIsLogin() => $_clearField(4);

  @$pb.TagNumber(18)
  $core.int get sortType => $_getIZ(2);
  @$pb.TagNumber(18)
  set sortType($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(18)
  $core.bool hasSortType() => $_has(2);
  @$pb.TagNumber(18)
  void clearSortType() => $_clearField(18);
}

class ForumRecommendResponse extends $pb.GeneratedMessage {
  factory ForumRecommendResponse({
    $2.Error? error,
    ForumRecommendResponseData? data,
  }) {
    final result = create();
    if (error != null) result.error = error;
    if (data != null) result.data = data;
    return result;
  }

  ForumRecommendResponse._();

  factory ForumRecommendResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ForumRecommendResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ForumRecommendResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'tieba.forumRecommend'),
      createEmptyInstance: create)
    ..aOM<$2.Error>(1, _omitFieldNames ? '' : 'error',
        subBuilder: $2.Error.create)
    ..aOM<ForumRecommendResponseData>(2, _omitFieldNames ? '' : 'data',
        subBuilder: ForumRecommendResponseData.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ForumRecommendResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ForumRecommendResponse copyWith(
          void Function(ForumRecommendResponse) updates) =>
      super.copyWith((message) => updates(message as ForumRecommendResponse))
          as ForumRecommendResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ForumRecommendResponse create() => ForumRecommendResponse._();
  @$core.override
  ForumRecommendResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ForumRecommendResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ForumRecommendResponse>(create);
  static ForumRecommendResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $2.Error get error => $_getN(0);
  @$pb.TagNumber(1)
  set error($2.Error value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasError() => $_has(0);
  @$pb.TagNumber(1)
  void clearError() => $_clearField(1);
  @$pb.TagNumber(1)
  $2.Error ensureError() => $_ensure(0);

  @$pb.TagNumber(2)
  ForumRecommendResponseData get data => $_getN(1);
  @$pb.TagNumber(2)
  set data(ForumRecommendResponseData value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasData() => $_has(1);
  @$pb.TagNumber(2)
  void clearData() => $_clearField(2);
  @$pb.TagNumber(2)
  ForumRecommendResponseData ensureData() => $_ensure(1);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
