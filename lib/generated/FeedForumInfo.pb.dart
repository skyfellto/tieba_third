// This is a generated file - do not edit.
//
// Generated from FeedForumInfo.proto.

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

class FeedForumInfo extends $pb.GeneratedMessage {
  factory FeedForumInfo({
    $fixnum.Int64? forumId,
    $core.String? forumName,
    $core.int? memberCount,
    $core.int? postNum,
    $core.String? avatar,
    $core.String? reason,
    $core.int? pos,
    $core.int? isLike,
  }) {
    final result = create();
    if (forumId != null) result.forumId = forumId;
    if (forumName != null) result.forumName = forumName;
    if (memberCount != null) result.memberCount = memberCount;
    if (postNum != null) result.postNum = postNum;
    if (avatar != null) result.avatar = avatar;
    if (reason != null) result.reason = reason;
    if (pos != null) result.pos = pos;
    if (isLike != null) result.isLike = isLike;
    return result;
  }

  FeedForumInfo._();

  factory FeedForumInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FeedForumInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FeedForumInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'forumId', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(2, _omitFieldNames ? '' : 'forumName')
    ..aI(3, _omitFieldNames ? '' : 'memberCount')
    ..aI(4, _omitFieldNames ? '' : 'postNum')
    ..aOS(5, _omitFieldNames ? '' : 'avatar')
    ..aOS(6, _omitFieldNames ? '' : 'reason')
    ..aI(7, _omitFieldNames ? '' : 'pos')
    ..aI(8, _omitFieldNames ? '' : 'isLike')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FeedForumInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FeedForumInfo copyWith(void Function(FeedForumInfo) updates) =>
      super.copyWith((message) => updates(message as FeedForumInfo))
          as FeedForumInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FeedForumInfo create() => FeedForumInfo._();
  @$core.override
  FeedForumInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FeedForumInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FeedForumInfo>(create);
  static FeedForumInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get forumId => $_getI64(0);
  @$pb.TagNumber(1)
  set forumId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasForumId() => $_has(0);
  @$pb.TagNumber(1)
  void clearForumId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get forumName => $_getSZ(1);
  @$pb.TagNumber(2)
  set forumName($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasForumName() => $_has(1);
  @$pb.TagNumber(2)
  void clearForumName() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get memberCount => $_getIZ(2);
  @$pb.TagNumber(3)
  set memberCount($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasMemberCount() => $_has(2);
  @$pb.TagNumber(3)
  void clearMemberCount() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get postNum => $_getIZ(3);
  @$pb.TagNumber(4)
  set postNum($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasPostNum() => $_has(3);
  @$pb.TagNumber(4)
  void clearPostNum() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get avatar => $_getSZ(4);
  @$pb.TagNumber(5)
  set avatar($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasAvatar() => $_has(4);
  @$pb.TagNumber(5)
  void clearAvatar() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get reason => $_getSZ(5);
  @$pb.TagNumber(6)
  set reason($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasReason() => $_has(5);
  @$pb.TagNumber(6)
  void clearReason() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.int get pos => $_getIZ(6);
  @$pb.TagNumber(7)
  set pos($core.int value) => $_setSignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasPos() => $_has(6);
  @$pb.TagNumber(7)
  void clearPos() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.int get isLike => $_getIZ(7);
  @$pb.TagNumber(8)
  set isLike($core.int value) => $_setSignedInt32(7, value);
  @$pb.TagNumber(8)
  $core.bool hasIsLike() => $_has(7);
  @$pb.TagNumber(8)
  void clearIsLike() => $_clearField(8);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
