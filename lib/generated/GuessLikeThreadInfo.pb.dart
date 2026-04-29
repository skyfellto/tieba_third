// This is a generated file - do not edit.
//
// Generated from GuessLikeThreadInfo.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class GuessLikeThreadInfo extends $pb.GeneratedMessage {
  factory GuessLikeThreadInfo({
    $fixnum.Int64? threadId,
    $fixnum.Int64? forumId,
    $core.String? forumName,
    $fixnum.Int64? replyNum,
    $core.String? recomCover,
    $core.String? recomReason,
    $core.String? title,
  }) {
    final result = create();
    if (threadId != null) result.threadId = threadId;
    if (forumId != null) result.forumId = forumId;
    if (forumName != null) result.forumName = forumName;
    if (replyNum != null) result.replyNum = replyNum;
    if (recomCover != null) result.recomCover = recomCover;
    if (recomReason != null) result.recomReason = recomReason;
    if (title != null) result.title = title;
    return result;
  }

  GuessLikeThreadInfo._();

  factory GuessLikeThreadInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GuessLikeThreadInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GuessLikeThreadInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'threadId')
    ..aInt64(2, _omitFieldNames ? '' : 'forumId')
    ..aOS(3, _omitFieldNames ? '' : 'forumName')
    ..aInt64(4, _omitFieldNames ? '' : 'replyNum')
    ..aOS(5, _omitFieldNames ? '' : 'recomCover')
    ..aOS(6, _omitFieldNames ? '' : 'recomReason')
    ..aOS(7, _omitFieldNames ? '' : 'title')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GuessLikeThreadInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GuessLikeThreadInfo copyWith(void Function(GuessLikeThreadInfo) updates) =>
      super.copyWith((message) => updates(message as GuessLikeThreadInfo))
          as GuessLikeThreadInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GuessLikeThreadInfo create() => GuessLikeThreadInfo._();
  @$core.override
  GuessLikeThreadInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GuessLikeThreadInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GuessLikeThreadInfo>(create);
  static GuessLikeThreadInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get threadId => $_getI64(0);
  @$pb.TagNumber(1)
  set threadId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasThreadId() => $_has(0);
  @$pb.TagNumber(1)
  void clearThreadId() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get forumId => $_getI64(1);
  @$pb.TagNumber(2)
  set forumId($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasForumId() => $_has(1);
  @$pb.TagNumber(2)
  void clearForumId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get forumName => $_getSZ(2);
  @$pb.TagNumber(3)
  set forumName($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasForumName() => $_has(2);
  @$pb.TagNumber(3)
  void clearForumName() => $_clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get replyNum => $_getI64(3);
  @$pb.TagNumber(4)
  set replyNum($fixnum.Int64 value) => $_setInt64(3, value);
  @$pb.TagNumber(4)
  $core.bool hasReplyNum() => $_has(3);
  @$pb.TagNumber(4)
  void clearReplyNum() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get recomCover => $_getSZ(4);
  @$pb.TagNumber(5)
  set recomCover($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasRecomCover() => $_has(4);
  @$pb.TagNumber(5)
  void clearRecomCover() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get recomReason => $_getSZ(5);
  @$pb.TagNumber(6)
  set recomReason($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasRecomReason() => $_has(5);
  @$pb.TagNumber(6)
  void clearRecomReason() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get title => $_getSZ(6);
  @$pb.TagNumber(7)
  set title($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasTitle() => $_has(6);
  @$pb.TagNumber(7)
  void clearTitle() => $_clearField(7);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
