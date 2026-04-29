// This is a generated file - do not edit.
//
// Generated from ForumMember.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class ForumMember extends $pb.GeneratedMessage {
  factory ForumMember({
    $core.int? isLike,
    $core.int? userLevel,
    $core.String? levelName,
    $core.int? curScore,
    $core.int? levelupScore,
  }) {
    final result = create();
    if (isLike != null) result.isLike = isLike;
    if (userLevel != null) result.userLevel = userLevel;
    if (levelName != null) result.levelName = levelName;
    if (curScore != null) result.curScore = curScore;
    if (levelupScore != null) result.levelupScore = levelupScore;
    return result;
  }

  ForumMember._();

  factory ForumMember.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ForumMember.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ForumMember',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'isLike')
    ..aI(2, _omitFieldNames ? '' : 'userLevel')
    ..aOS(3, _omitFieldNames ? '' : 'levelName')
    ..aI(4, _omitFieldNames ? '' : 'curScore')
    ..aI(5, _omitFieldNames ? '' : 'levelupScore')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ForumMember clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ForumMember copyWith(void Function(ForumMember) updates) =>
      super.copyWith((message) => updates(message as ForumMember))
          as ForumMember;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ForumMember create() => ForumMember._();
  @$core.override
  ForumMember createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ForumMember getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ForumMember>(create);
  static ForumMember? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get isLike => $_getIZ(0);
  @$pb.TagNumber(1)
  set isLike($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasIsLike() => $_has(0);
  @$pb.TagNumber(1)
  void clearIsLike() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get userLevel => $_getIZ(1);
  @$pb.TagNumber(2)
  set userLevel($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasUserLevel() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserLevel() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get levelName => $_getSZ(2);
  @$pb.TagNumber(3)
  set levelName($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasLevelName() => $_has(2);
  @$pb.TagNumber(3)
  void clearLevelName() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get curScore => $_getIZ(3);
  @$pb.TagNumber(4)
  set curScore($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasCurScore() => $_has(3);
  @$pb.TagNumber(4)
  void clearCurScore() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get levelupScore => $_getIZ(4);
  @$pb.TagNumber(5)
  set levelupScore($core.int value) => $_setSignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasLevelupScore() => $_has(4);
  @$pb.TagNumber(5)
  void clearLevelupScore() => $_clearField(5);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
