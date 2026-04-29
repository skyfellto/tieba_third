// This is a generated file - do not edit.
//
// Generated from PbHotPost.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'HotPost.pb.dart' as $1;
import 'Post.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class PbHotPost extends $pb.GeneratedMessage {
  factory PbHotPost({
    $core.Iterable<$0.Post>? postList,
    $core.int? needHotPost,
    $core.int? needPostZan,
    $core.Iterable<$1.HotPost>? hotPostList,
  }) {
    final result = create();
    if (postList != null) result.postList.addAll(postList);
    if (needHotPost != null) result.needHotPost = needHotPost;
    if (needPostZan != null) result.needPostZan = needPostZan;
    if (hotPostList != null) result.hotPostList.addAll(hotPostList);
    return result;
  }

  PbHotPost._();

  factory PbHotPost.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PbHotPost.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PbHotPost',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..pPM<$0.Post>(1, _omitFieldNames ? '' : 'postList',
        subBuilder: $0.Post.create)
    ..aI(2, _omitFieldNames ? '' : 'needHotPost')
    ..aI(3, _omitFieldNames ? '' : 'needPostZan')
    ..pPM<$1.HotPost>(4, _omitFieldNames ? '' : 'hotPostList',
        subBuilder: $1.HotPost.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PbHotPost clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PbHotPost copyWith(void Function(PbHotPost) updates) =>
      super.copyWith((message) => updates(message as PbHotPost)) as PbHotPost;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PbHotPost create() => PbHotPost._();
  @$core.override
  PbHotPost createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PbHotPost getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PbHotPost>(create);
  static PbHotPost? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$0.Post> get postList => $_getList(0);

  @$pb.TagNumber(2)
  $core.int get needHotPost => $_getIZ(1);
  @$pb.TagNumber(2)
  set needHotPost($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasNeedHotPost() => $_has(1);
  @$pb.TagNumber(2)
  void clearNeedHotPost() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get needPostZan => $_getIZ(2);
  @$pb.TagNumber(3)
  set needPostZan($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasNeedPostZan() => $_has(2);
  @$pb.TagNumber(3)
  void clearNeedPostZan() => $_clearField(3);

  @$pb.TagNumber(4)
  $pb.PbList<$1.HotPost> get hotPostList => $_getList(3);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
