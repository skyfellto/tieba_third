// This is a generated file - do not edit.
//
// Generated from HotPost.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'PbContent.pb.dart' as $1;
import 'PbPostZan.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class HotPost extends $pb.GeneratedMessage {
  factory HotPost({
    $fixnum.Int64? threadId,
    $fixnum.Int64? postId,
    $core.String? userName,
    $fixnum.Int64? userId,
    $0.PbPostZan? postZan,
    $core.int? postNum,
    $core.Iterable<$1.PbContent>? content,
    $core.int? createTime,
    $core.int? floor,
    $core.String? portrait,
  }) {
    final result = create();
    if (threadId != null) result.threadId = threadId;
    if (postId != null) result.postId = postId;
    if (userName != null) result.userName = userName;
    if (userId != null) result.userId = userId;
    if (postZan != null) result.postZan = postZan;
    if (postNum != null) result.postNum = postNum;
    if (content != null) result.content.addAll(content);
    if (createTime != null) result.createTime = createTime;
    if (floor != null) result.floor = floor;
    if (portrait != null) result.portrait = portrait;
    return result;
  }

  HotPost._();

  factory HotPost.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory HotPost.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'HotPost',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(
        1, _omitFieldNames ? '' : 'threadId', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, _omitFieldNames ? '' : 'postId', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(3, _omitFieldNames ? '' : 'userName')
    ..a<$fixnum.Int64>(4, _omitFieldNames ? '' : 'userId', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<$0.PbPostZan>(5, _omitFieldNames ? '' : 'postZan',
        subBuilder: $0.PbPostZan.create)
    ..aI(6, _omitFieldNames ? '' : 'postNum')
    ..pPM<$1.PbContent>(7, _omitFieldNames ? '' : 'content',
        subBuilder: $1.PbContent.create)
    ..aI(8, _omitFieldNames ? '' : 'createTime', fieldType: $pb.PbFieldType.OU3)
    ..aI(9, _omitFieldNames ? '' : 'floor', fieldType: $pb.PbFieldType.OU3)
    ..aOS(10, _omitFieldNames ? '' : 'portrait')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HotPost clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HotPost copyWith(void Function(HotPost) updates) =>
      super.copyWith((message) => updates(message as HotPost)) as HotPost;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HotPost create() => HotPost._();
  @$core.override
  HotPost createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static HotPost getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HotPost>(create);
  static HotPost? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get threadId => $_getI64(0);
  @$pb.TagNumber(1)
  set threadId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasThreadId() => $_has(0);
  @$pb.TagNumber(1)
  void clearThreadId() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get postId => $_getI64(1);
  @$pb.TagNumber(2)
  set postId($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPostId() => $_has(1);
  @$pb.TagNumber(2)
  void clearPostId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get userName => $_getSZ(2);
  @$pb.TagNumber(3)
  set userName($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasUserName() => $_has(2);
  @$pb.TagNumber(3)
  void clearUserName() => $_clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get userId => $_getI64(3);
  @$pb.TagNumber(4)
  set userId($fixnum.Int64 value) => $_setInt64(3, value);
  @$pb.TagNumber(4)
  $core.bool hasUserId() => $_has(3);
  @$pb.TagNumber(4)
  void clearUserId() => $_clearField(4);

  @$pb.TagNumber(5)
  $0.PbPostZan get postZan => $_getN(4);
  @$pb.TagNumber(5)
  set postZan($0.PbPostZan value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasPostZan() => $_has(4);
  @$pb.TagNumber(5)
  void clearPostZan() => $_clearField(5);
  @$pb.TagNumber(5)
  $0.PbPostZan ensurePostZan() => $_ensure(4);

  @$pb.TagNumber(6)
  $core.int get postNum => $_getIZ(5);
  @$pb.TagNumber(6)
  set postNum($core.int value) => $_setSignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasPostNum() => $_has(5);
  @$pb.TagNumber(6)
  void clearPostNum() => $_clearField(6);

  @$pb.TagNumber(7)
  $pb.PbList<$1.PbContent> get content => $_getList(6);

  @$pb.TagNumber(8)
  $core.int get createTime => $_getIZ(7);
  @$pb.TagNumber(8)
  set createTime($core.int value) => $_setUnsignedInt32(7, value);
  @$pb.TagNumber(8)
  $core.bool hasCreateTime() => $_has(7);
  @$pb.TagNumber(8)
  void clearCreateTime() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.int get floor => $_getIZ(8);
  @$pb.TagNumber(9)
  set floor($core.int value) => $_setUnsignedInt32(8, value);
  @$pb.TagNumber(9)
  $core.bool hasFloor() => $_has(8);
  @$pb.TagNumber(9)
  void clearFloor() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.String get portrait => $_getSZ(9);
  @$pb.TagNumber(10)
  set portrait($core.String value) => $_setString(9, value);
  @$pb.TagNumber(10)
  $core.bool hasPortrait() => $_has(9);
  @$pb.TagNumber(10)
  void clearPortrait() => $_clearField(10);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
