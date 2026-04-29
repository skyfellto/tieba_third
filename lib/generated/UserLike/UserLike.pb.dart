// This is a generated file - do not edit.
//
// Generated from UserLike/UserLike.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../CommonRequest.pb.dart' as $0;
import '../Error.pb.dart' as $1;
import '../PbContent.pb.dart' as $4;
import '../ThreadInfo.pb.dart' as $2;
import '../User.pb.dart' as $3;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class UserLikeRequestData extends $pb.GeneratedMessage {
  factory UserLikeRequestData({
    $0.CommonRequest? common,
    $core.String? pageTag,
    $fixnum.Int64? lastRequestUnix,
    $core.int? followType,
    $core.int? loadType,
  }) {
    final result = create();
    if (common != null) result.common = common;
    if (pageTag != null) result.pageTag = pageTag;
    if (lastRequestUnix != null) result.lastRequestUnix = lastRequestUnix;
    if (followType != null) result.followType = followType;
    if (loadType != null) result.loadType = loadType;
    return result;
  }

  UserLikeRequestData._();

  factory UserLikeRequestData.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UserLikeRequestData.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UserLikeRequestData',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba.userLike'),
      createEmptyInstance: create)
    ..aOM<$0.CommonRequest>(1, _omitFieldNames ? '' : 'common',
        subBuilder: $0.CommonRequest.create)
    ..aOS(2, _omitFieldNames ? '' : 'pageTag', protoName: 'pageTag')
    ..a<$fixnum.Int64>(
        3, _omitFieldNames ? '' : 'lastRequestUnix', $pb.PbFieldType.OU6,
        protoName: 'lastRequestUnix', defaultOrMaker: $fixnum.Int64.ZERO)
    ..aI(4, _omitFieldNames ? '' : 'followType', protoName: 'followType')
    ..aI(5, _omitFieldNames ? '' : 'loadType', protoName: 'loadType')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UserLikeRequestData clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UserLikeRequestData copyWith(void Function(UserLikeRequestData) updates) =>
      super.copyWith((message) => updates(message as UserLikeRequestData))
          as UserLikeRequestData;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserLikeRequestData create() => UserLikeRequestData._();
  @$core.override
  UserLikeRequestData createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UserLikeRequestData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UserLikeRequestData>(create);
  static UserLikeRequestData? _defaultInstance;

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
  $core.String get pageTag => $_getSZ(1);
  @$pb.TagNumber(2)
  set pageTag($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPageTag() => $_has(1);
  @$pb.TagNumber(2)
  void clearPageTag() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get lastRequestUnix => $_getI64(2);
  @$pb.TagNumber(3)
  set lastRequestUnix($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasLastRequestUnix() => $_has(2);
  @$pb.TagNumber(3)
  void clearLastRequestUnix() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get followType => $_getIZ(3);
  @$pb.TagNumber(4)
  set followType($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasFollowType() => $_has(3);
  @$pb.TagNumber(4)
  void clearFollowType() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get loadType => $_getIZ(4);
  @$pb.TagNumber(5)
  set loadType($core.int value) => $_setSignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasLoadType() => $_has(4);
  @$pb.TagNumber(5)
  void clearLoadType() => $_clearField(5);
}

class UserLikeRequest extends $pb.GeneratedMessage {
  factory UserLikeRequest({
    UserLikeRequestData? data,
  }) {
    final result = create();
    if (data != null) result.data = data;
    return result;
  }

  UserLikeRequest._();

  factory UserLikeRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UserLikeRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UserLikeRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba.userLike'),
      createEmptyInstance: create)
    ..aOM<UserLikeRequestData>(1, _omitFieldNames ? '' : 'data',
        subBuilder: UserLikeRequestData.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UserLikeRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UserLikeRequest copyWith(void Function(UserLikeRequest) updates) =>
      super.copyWith((message) => updates(message as UserLikeRequest))
          as UserLikeRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserLikeRequest create() => UserLikeRequest._();
  @$core.override
  UserLikeRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UserLikeRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UserLikeRequest>(create);
  static UserLikeRequest? _defaultInstance;

  @$pb.TagNumber(1)
  UserLikeRequestData get data => $_getN(0);
  @$pb.TagNumber(1)
  set data(UserLikeRequestData value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasData() => $_has(0);
  @$pb.TagNumber(1)
  void clearData() => $_clearField(1);
  @$pb.TagNumber(1)
  UserLikeRequestData ensureData() => $_ensure(0);
}

class UserLikeResponseData extends $pb.GeneratedMessage {
  factory UserLikeResponseData({
    $core.Iterable<ConcernData>? threadInfo,
    $core.String? pageTag,
    $core.int? hasMore,
    $fixnum.Int64? requestUnix,
  }) {
    final result = create();
    if (threadInfo != null) result.threadInfo.addAll(threadInfo);
    if (pageTag != null) result.pageTag = pageTag;
    if (hasMore != null) result.hasMore = hasMore;
    if (requestUnix != null) result.requestUnix = requestUnix;
    return result;
  }

  UserLikeResponseData._();

  factory UserLikeResponseData.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UserLikeResponseData.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UserLikeResponseData',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba.userLike'),
      createEmptyInstance: create)
    ..pPM<ConcernData>(1, _omitFieldNames ? '' : 'threadInfo',
        protoName: 'threadInfo', subBuilder: ConcernData.create)
    ..aOS(2, _omitFieldNames ? '' : 'pageTag', protoName: 'pageTag')
    ..aI(4, _omitFieldNames ? '' : 'hasMore', protoName: 'hasMore')
    ..a<$fixnum.Int64>(
        10, _omitFieldNames ? '' : 'requestUnix', $pb.PbFieldType.OU6,
        protoName: 'requestUnix', defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UserLikeResponseData clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UserLikeResponseData copyWith(void Function(UserLikeResponseData) updates) =>
      super.copyWith((message) => updates(message as UserLikeResponseData))
          as UserLikeResponseData;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserLikeResponseData create() => UserLikeResponseData._();
  @$core.override
  UserLikeResponseData createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UserLikeResponseData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UserLikeResponseData>(create);
  static UserLikeResponseData? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<ConcernData> get threadInfo => $_getList(0);

  @$pb.TagNumber(2)
  $core.String get pageTag => $_getSZ(1);
  @$pb.TagNumber(2)
  set pageTag($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPageTag() => $_has(1);
  @$pb.TagNumber(2)
  void clearPageTag() => $_clearField(2);

  @$pb.TagNumber(4)
  $core.int get hasMore => $_getIZ(2);
  @$pb.TagNumber(4)
  set hasMore($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(4)
  $core.bool hasHasMore() => $_has(2);
  @$pb.TagNumber(4)
  void clearHasMore() => $_clearField(4);

  @$pb.TagNumber(10)
  $fixnum.Int64 get requestUnix => $_getI64(3);
  @$pb.TagNumber(10)
  set requestUnix($fixnum.Int64 value) => $_setInt64(3, value);
  @$pb.TagNumber(10)
  $core.bool hasRequestUnix() => $_has(3);
  @$pb.TagNumber(10)
  void clearRequestUnix() => $_clearField(10);
}

class UserLikeResponse extends $pb.GeneratedMessage {
  factory UserLikeResponse({
    $1.Error? error,
    UserLikeResponseData? data,
  }) {
    final result = create();
    if (error != null) result.error = error;
    if (data != null) result.data = data;
    return result;
  }

  UserLikeResponse._();

  factory UserLikeResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UserLikeResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UserLikeResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba.userLike'),
      createEmptyInstance: create)
    ..aOM<$1.Error>(1, _omitFieldNames ? '' : 'error',
        subBuilder: $1.Error.create)
    ..aOM<UserLikeResponseData>(2, _omitFieldNames ? '' : 'data',
        subBuilder: UserLikeResponseData.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UserLikeResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UserLikeResponse copyWith(void Function(UserLikeResponse) updates) =>
      super.copyWith((message) => updates(message as UserLikeResponse))
          as UserLikeResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserLikeResponse create() => UserLikeResponse._();
  @$core.override
  UserLikeResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UserLikeResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UserLikeResponse>(create);
  static UserLikeResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $1.Error get error => $_getN(0);
  @$pb.TagNumber(1)
  set error($1.Error value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasError() => $_has(0);
  @$pb.TagNumber(1)
  void clearError() => $_clearField(1);
  @$pb.TagNumber(1)
  $1.Error ensureError() => $_ensure(0);

  @$pb.TagNumber(2)
  UserLikeResponseData get data => $_getN(1);
  @$pb.TagNumber(2)
  set data(UserLikeResponseData value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasData() => $_has(1);
  @$pb.TagNumber(2)
  void clearData() => $_clearField(2);
  @$pb.TagNumber(2)
  UserLikeResponseData ensureData() => $_ensure(1);
}

class ConcernData extends $pb.GeneratedMessage {
  factory ConcernData({
    $2.ThreadInfo? threadList,
    PostData? postData,
    $core.int? recommendType,
    $core.int? source,
    $core.Iterable<$3.User>? recommendUserList,
  }) {
    final result = create();
    if (threadList != null) result.threadList = threadList;
    if (postData != null) result.postData = postData;
    if (recommendType != null) result.recommendType = recommendType;
    if (source != null) result.source = source;
    if (recommendUserList != null)
      result.recommendUserList.addAll(recommendUserList);
    return result;
  }

  ConcernData._();

  factory ConcernData.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ConcernData.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ConcernData',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba.userLike'),
      createEmptyInstance: create)
    ..aOM<$2.ThreadInfo>(1, _omitFieldNames ? '' : 'threadList',
        protoName: 'threadList', subBuilder: $2.ThreadInfo.create)
    ..aOM<PostData>(2, _omitFieldNames ? '' : 'postData',
        protoName: 'postData', subBuilder: PostData.create)
    ..aI(3, _omitFieldNames ? '' : 'recommendType', protoName: 'recommendType')
    ..aI(4, _omitFieldNames ? '' : 'source')
    ..pPM<$3.User>(5, _omitFieldNames ? '' : 'recommendUserList',
        protoName: 'recommendUserList', subBuilder: $3.User.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ConcernData clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ConcernData copyWith(void Function(ConcernData) updates) =>
      super.copyWith((message) => updates(message as ConcernData))
          as ConcernData;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ConcernData create() => ConcernData._();
  @$core.override
  ConcernData createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ConcernData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ConcernData>(create);
  static ConcernData? _defaultInstance;

  @$pb.TagNumber(1)
  $2.ThreadInfo get threadList => $_getN(0);
  @$pb.TagNumber(1)
  set threadList($2.ThreadInfo value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasThreadList() => $_has(0);
  @$pb.TagNumber(1)
  void clearThreadList() => $_clearField(1);
  @$pb.TagNumber(1)
  $2.ThreadInfo ensureThreadList() => $_ensure(0);

  @$pb.TagNumber(2)
  PostData get postData => $_getN(1);
  @$pb.TagNumber(2)
  set postData(PostData value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasPostData() => $_has(1);
  @$pb.TagNumber(2)
  void clearPostData() => $_clearField(2);
  @$pb.TagNumber(2)
  PostData ensurePostData() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.int get recommendType => $_getIZ(2);
  @$pb.TagNumber(3)
  set recommendType($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasRecommendType() => $_has(2);
  @$pb.TagNumber(3)
  void clearRecommendType() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get source => $_getIZ(3);
  @$pb.TagNumber(4)
  set source($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasSource() => $_has(3);
  @$pb.TagNumber(4)
  void clearSource() => $_clearField(4);

  @$pb.TagNumber(5)
  $pb.PbList<$3.User> get recommendUserList => $_getList(4);
}

class PostData extends $pb.GeneratedMessage {
  factory PostData({
    $fixnum.Int64? id,
    $core.Iterable<$4.PbContent>? content,
    $core.String? postTitle,
    $3.User? author,
    $fixnum.Int64? time,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (content != null) result.content.addAll(content);
    if (postTitle != null) result.postTitle = postTitle;
    if (author != null) result.author = author;
    if (time != null) result.time = time;
    return result;
  }

  PostData._();

  factory PostData.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PostData.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PostData',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba.userLike'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..pPM<$4.PbContent>(2, _omitFieldNames ? '' : 'content',
        subBuilder: $4.PbContent.create)
    ..aOS(3, _omitFieldNames ? '' : 'postTitle', protoName: 'postTitle')
    ..aOM<$3.User>(4, _omitFieldNames ? '' : 'author',
        subBuilder: $3.User.create)
    ..a<$fixnum.Int64>(5, _omitFieldNames ? '' : 'time', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PostData clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PostData copyWith(void Function(PostData) updates) =>
      super.copyWith((message) => updates(message as PostData)) as PostData;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PostData create() => PostData._();
  @$core.override
  PostData createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PostData getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PostData>(create);
  static PostData? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<$4.PbContent> get content => $_getList(1);

  @$pb.TagNumber(3)
  $core.String get postTitle => $_getSZ(2);
  @$pb.TagNumber(3)
  set postTitle($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasPostTitle() => $_has(2);
  @$pb.TagNumber(3)
  void clearPostTitle() => $_clearField(3);

  @$pb.TagNumber(4)
  $3.User get author => $_getN(3);
  @$pb.TagNumber(4)
  set author($3.User value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasAuthor() => $_has(3);
  @$pb.TagNumber(4)
  void clearAuthor() => $_clearField(4);
  @$pb.TagNumber(4)
  $3.User ensureAuthor() => $_ensure(3);

  @$pb.TagNumber(5)
  $fixnum.Int64 get time => $_getI64(4);
  @$pb.TagNumber(5)
  set time($fixnum.Int64 value) => $_setInt64(4, value);
  @$pb.TagNumber(5)
  $core.bool hasTime() => $_has(4);
  @$pb.TagNumber(5)
  void clearTime() => $_clearField(5);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
