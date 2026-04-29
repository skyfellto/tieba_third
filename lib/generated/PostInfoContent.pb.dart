// This is a generated file - do not edit.
//
// Generated from PostInfoContent.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'Abstract.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class PostInfoContent extends $pb.GeneratedMessage {
  factory PostInfoContent({
    $core.Iterable<$0.Abstract>? postContent,
    $fixnum.Int64? createTime,
    $fixnum.Int64? postType,
    $fixnum.Int64? postId,
    $core.int? isAuthorView,
    $core.String? targetScheme,
  }) {
    final result = create();
    if (postContent != null) result.postContent.addAll(postContent);
    if (createTime != null) result.createTime = createTime;
    if (postType != null) result.postType = postType;
    if (postId != null) result.postId = postId;
    if (isAuthorView != null) result.isAuthorView = isAuthorView;
    if (targetScheme != null) result.targetScheme = targetScheme;
    return result;
  }

  PostInfoContent._();

  factory PostInfoContent.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PostInfoContent.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PostInfoContent',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..pPM<$0.Abstract>(1, _omitFieldNames ? '' : 'postContent',
        subBuilder: $0.Abstract.create)
    ..a<$fixnum.Int64>(
        2, _omitFieldNames ? '' : 'createTime', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(
        3, _omitFieldNames ? '' : 'postType', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(4, _omitFieldNames ? '' : 'postId', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aI(5, _omitFieldNames ? '' : 'isAuthorView')
    ..aOS(7, _omitFieldNames ? '' : 'targetScheme')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PostInfoContent clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PostInfoContent copyWith(void Function(PostInfoContent) updates) =>
      super.copyWith((message) => updates(message as PostInfoContent))
          as PostInfoContent;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PostInfoContent create() => PostInfoContent._();
  @$core.override
  PostInfoContent createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PostInfoContent getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PostInfoContent>(create);
  static PostInfoContent? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$0.Abstract> get postContent => $_getList(0);

  @$pb.TagNumber(2)
  $fixnum.Int64 get createTime => $_getI64(1);
  @$pb.TagNumber(2)
  set createTime($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCreateTime() => $_has(1);
  @$pb.TagNumber(2)
  void clearCreateTime() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get postType => $_getI64(2);
  @$pb.TagNumber(3)
  set postType($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasPostType() => $_has(2);
  @$pb.TagNumber(3)
  void clearPostType() => $_clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get postId => $_getI64(3);
  @$pb.TagNumber(4)
  set postId($fixnum.Int64 value) => $_setInt64(3, value);
  @$pb.TagNumber(4)
  $core.bool hasPostId() => $_has(3);
  @$pb.TagNumber(4)
  void clearPostId() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get isAuthorView => $_getIZ(4);
  @$pb.TagNumber(5)
  set isAuthorView($core.int value) => $_setSignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasIsAuthorView() => $_has(4);
  @$pb.TagNumber(5)
  void clearIsAuthorView() => $_clearField(5);

  @$pb.TagNumber(7)
  $core.String get targetScheme => $_getSZ(5);
  @$pb.TagNumber(7)
  set targetScheme($core.String value) => $_setString(5, value);
  @$pb.TagNumber(7)
  $core.bool hasTargetScheme() => $_has(5);
  @$pb.TagNumber(7)
  void clearTargetScheme() => $_clearField(7);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
