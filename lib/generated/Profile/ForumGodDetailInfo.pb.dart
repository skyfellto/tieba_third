// This is a generated file - do not edit.
//
// Generated from Profile/ForumGodDetailInfo.proto.

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

class ForumGodDetailInfo extends $pb.GeneratedMessage {
  factory ForumGodDetailInfo({
    $fixnum.Int64? godId,
    $fixnum.Int64? userId,
    $core.String? intro,
    $core.String? detailIntro,
    $fixnum.Int64? forumId,
    $core.String? forumName,
    $core.String? avatar,
  }) {
    final result = create();
    if (godId != null) result.godId = godId;
    if (userId != null) result.userId = userId;
    if (intro != null) result.intro = intro;
    if (detailIntro != null) result.detailIntro = detailIntro;
    if (forumId != null) result.forumId = forumId;
    if (forumName != null) result.forumName = forumName;
    if (avatar != null) result.avatar = avatar;
    return result;
  }

  ForumGodDetailInfo._();

  factory ForumGodDetailInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ForumGodDetailInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ForumGodDetailInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba.profile'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'godId')
    ..aInt64(2, _omitFieldNames ? '' : 'userId')
    ..aOS(3, _omitFieldNames ? '' : 'intro')
    ..aOS(4, _omitFieldNames ? '' : 'detailIntro')
    ..aInt64(5, _omitFieldNames ? '' : 'forumId')
    ..aOS(6, _omitFieldNames ? '' : 'forumName')
    ..aOS(7, _omitFieldNames ? '' : 'avatar')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ForumGodDetailInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ForumGodDetailInfo copyWith(void Function(ForumGodDetailInfo) updates) =>
      super.copyWith((message) => updates(message as ForumGodDetailInfo))
          as ForumGodDetailInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ForumGodDetailInfo create() => ForumGodDetailInfo._();
  @$core.override
  ForumGodDetailInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ForumGodDetailInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ForumGodDetailInfo>(create);
  static ForumGodDetailInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get godId => $_getI64(0);
  @$pb.TagNumber(1)
  set godId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasGodId() => $_has(0);
  @$pb.TagNumber(1)
  void clearGodId() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get userId => $_getI64(1);
  @$pb.TagNumber(2)
  set userId($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasUserId() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get intro => $_getSZ(2);
  @$pb.TagNumber(3)
  set intro($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasIntro() => $_has(2);
  @$pb.TagNumber(3)
  void clearIntro() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get detailIntro => $_getSZ(3);
  @$pb.TagNumber(4)
  set detailIntro($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasDetailIntro() => $_has(3);
  @$pb.TagNumber(4)
  void clearDetailIntro() => $_clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get forumId => $_getI64(4);
  @$pb.TagNumber(5)
  set forumId($fixnum.Int64 value) => $_setInt64(4, value);
  @$pb.TagNumber(5)
  $core.bool hasForumId() => $_has(4);
  @$pb.TagNumber(5)
  void clearForumId() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get forumName => $_getSZ(5);
  @$pb.TagNumber(6)
  set forumName($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasForumName() => $_has(5);
  @$pb.TagNumber(6)
  void clearForumName() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get avatar => $_getSZ(6);
  @$pb.TagNumber(7)
  set avatar($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasAvatar() => $_has(6);
  @$pb.TagNumber(7)
  void clearAvatar() => $_clearField(7);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
