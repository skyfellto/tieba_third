// This is a generated file - do not edit.
//
// Generated from PbTopAgreePost.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'Post.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class PbTopAgreePost extends $pb.GeneratedMessage {
  factory PbTopAgreePost({
    $core.Iterable<$0.Post>? postList,
    $core.Iterable<$fixnum.Int64>? postIdList,
    $core.String? forumTopList,
  }) {
    final result = create();
    if (postList != null) result.postList.addAll(postList);
    if (postIdList != null) result.postIdList.addAll(postIdList);
    if (forumTopList != null) result.forumTopList = forumTopList;
    return result;
  }

  PbTopAgreePost._();

  factory PbTopAgreePost.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PbTopAgreePost.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PbTopAgreePost',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..pPM<$0.Post>(1, _omitFieldNames ? '' : 'postList',
        subBuilder: $0.Post.create)
    ..p<$fixnum.Int64>(
        3, _omitFieldNames ? '' : 'postIdList', $pb.PbFieldType.K6)
    ..aOS(4, _omitFieldNames ? '' : 'forumTopList')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PbTopAgreePost clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PbTopAgreePost copyWith(void Function(PbTopAgreePost) updates) =>
      super.copyWith((message) => updates(message as PbTopAgreePost))
          as PbTopAgreePost;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PbTopAgreePost create() => PbTopAgreePost._();
  @$core.override
  PbTopAgreePost createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PbTopAgreePost getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PbTopAgreePost>(create);
  static PbTopAgreePost? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$0.Post> get postList => $_getList(0);

  @$pb.TagNumber(3)
  $pb.PbList<$fixnum.Int64> get postIdList => $_getList(1);

  @$pb.TagNumber(4)
  $core.String get forumTopList => $_getSZ(2);
  @$pb.TagNumber(4)
  set forumTopList($core.String value) => $_setString(2, value);
  @$pb.TagNumber(4)
  $core.bool hasForumTopList() => $_has(2);
  @$pb.TagNumber(4)
  void clearForumTopList() => $_clearField(4);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
