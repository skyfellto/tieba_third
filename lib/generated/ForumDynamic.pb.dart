// This is a generated file - do not edit.
//
// Generated from ForumDynamic.proto.

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

class ForumDynamic extends $pb.GeneratedMessage {
  factory ForumDynamic({
    $fixnum.Int64? forumId,
    $core.String? forumName,
    $core.String? avatar,
    $core.String? slogan,
    $core.int? isLike,
    $core.int? memberCount,
    $core.int? threadCount,
    $core.int? userThreadCount,
  }) {
    final result = create();
    if (forumId != null) result.forumId = forumId;
    if (forumName != null) result.forumName = forumName;
    if (avatar != null) result.avatar = avatar;
    if (slogan != null) result.slogan = slogan;
    if (isLike != null) result.isLike = isLike;
    if (memberCount != null) result.memberCount = memberCount;
    if (threadCount != null) result.threadCount = threadCount;
    if (userThreadCount != null) result.userThreadCount = userThreadCount;
    return result;
  }

  ForumDynamic._();

  factory ForumDynamic.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ForumDynamic.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ForumDynamic',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'forumId')
    ..aOS(2, _omitFieldNames ? '' : 'forumName')
    ..aOS(3, _omitFieldNames ? '' : 'avatar')
    ..aOS(4, _omitFieldNames ? '' : 'slogan')
    ..aI(5, _omitFieldNames ? '' : 'isLike', fieldType: $pb.PbFieldType.OU3)
    ..aI(6, _omitFieldNames ? '' : 'memberCount',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(7, _omitFieldNames ? '' : 'threadCount',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(9, _omitFieldNames ? '' : 'userThreadCount',
        fieldType: $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ForumDynamic clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ForumDynamic copyWith(void Function(ForumDynamic) updates) =>
      super.copyWith((message) => updates(message as ForumDynamic))
          as ForumDynamic;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ForumDynamic create() => ForumDynamic._();
  @$core.override
  ForumDynamic createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ForumDynamic getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ForumDynamic>(create);
  static ForumDynamic? _defaultInstance;

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
  $core.String get avatar => $_getSZ(2);
  @$pb.TagNumber(3)
  set avatar($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasAvatar() => $_has(2);
  @$pb.TagNumber(3)
  void clearAvatar() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get slogan => $_getSZ(3);
  @$pb.TagNumber(4)
  set slogan($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasSlogan() => $_has(3);
  @$pb.TagNumber(4)
  void clearSlogan() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get isLike => $_getIZ(4);
  @$pb.TagNumber(5)
  set isLike($core.int value) => $_setUnsignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasIsLike() => $_has(4);
  @$pb.TagNumber(5)
  void clearIsLike() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get memberCount => $_getIZ(5);
  @$pb.TagNumber(6)
  set memberCount($core.int value) => $_setUnsignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasMemberCount() => $_has(5);
  @$pb.TagNumber(6)
  void clearMemberCount() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.int get threadCount => $_getIZ(6);
  @$pb.TagNumber(7)
  set threadCount($core.int value) => $_setUnsignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasThreadCount() => $_has(6);
  @$pb.TagNumber(7)
  void clearThreadCount() => $_clearField(7);

  @$pb.TagNumber(9)
  $core.int get userThreadCount => $_getIZ(7);
  @$pb.TagNumber(9)
  set userThreadCount($core.int value) => $_setUnsignedInt32(7, value);
  @$pb.TagNumber(9)
  $core.bool hasUserThreadCount() => $_has(7);
  @$pb.TagNumber(9)
  void clearUserThreadCount() => $_clearField(9);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
