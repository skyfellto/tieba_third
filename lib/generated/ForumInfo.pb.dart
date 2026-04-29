// This is a generated file - do not edit.
//
// Generated from ForumInfo.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class ForumInfo extends $pb.GeneratedMessage {
  factory ForumInfo({
    $core.int? forumId,
    $core.String? forumName,
    $core.String? avatar,
    $core.String? postNum,
    $core.String? concernNum,
    $core.int? hasConcerned,
  }) {
    final result = create();
    if (forumId != null) result.forumId = forumId;
    if (forumName != null) result.forumName = forumName;
    if (avatar != null) result.avatar = avatar;
    if (postNum != null) result.postNum = postNum;
    if (concernNum != null) result.concernNum = concernNum;
    if (hasConcerned != null) result.hasConcerned = hasConcerned;
    return result;
  }

  ForumInfo._();

  factory ForumInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ForumInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ForumInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'forumId', fieldType: $pb.PbFieldType.OU3)
    ..aOS(2, _omitFieldNames ? '' : 'forumName')
    ..aOS(3, _omitFieldNames ? '' : 'avatar')
    ..aOS(4, _omitFieldNames ? '' : 'postNum')
    ..aOS(5, _omitFieldNames ? '' : 'concernNum')
    ..aI(6, _omitFieldNames ? '' : 'hasConcerned')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ForumInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ForumInfo copyWith(void Function(ForumInfo) updates) =>
      super.copyWith((message) => updates(message as ForumInfo)) as ForumInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ForumInfo create() => ForumInfo._();
  @$core.override
  ForumInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ForumInfo getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ForumInfo>(create);
  static ForumInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get forumId => $_getIZ(0);
  @$pb.TagNumber(1)
  set forumId($core.int value) => $_setUnsignedInt32(0, value);
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
  $core.String get postNum => $_getSZ(3);
  @$pb.TagNumber(4)
  set postNum($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasPostNum() => $_has(3);
  @$pb.TagNumber(4)
  void clearPostNum() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get concernNum => $_getSZ(4);
  @$pb.TagNumber(5)
  set concernNum($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasConcernNum() => $_has(4);
  @$pb.TagNumber(5)
  void clearConcernNum() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get hasConcerned => $_getIZ(5);
  @$pb.TagNumber(6)
  set hasConcerned($core.int value) => $_setSignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasHasConcerned() => $_has(5);
  @$pb.TagNumber(6)
  void clearHasConcerned() => $_clearField(6);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
