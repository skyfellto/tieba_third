// This is a generated file - do not edit.
//
// Generated from FrsPage/SignForum.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'Forum.pb.dart' as $0;
import 'RankInfo.pb.dart' as $1;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class SignForum extends $pb.GeneratedMessage {
  factory SignForum({
    $core.int? isOn,
    $core.int? isFilter,
    $0.Forum? forumInfo,
    $1.RankInfo? currentRankInfo,
  }) {
    final result = create();
    if (isOn != null) result.isOn = isOn;
    if (isFilter != null) result.isFilter = isFilter;
    if (forumInfo != null) result.forumInfo = forumInfo;
    if (currentRankInfo != null) result.currentRankInfo = currentRankInfo;
    return result;
  }

  SignForum._();

  factory SignForum.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SignForum.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SignForum',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba.frsPage'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'isOn')
    ..aI(2, _omitFieldNames ? '' : 'isFilter')
    ..aOM<$0.Forum>(3, _omitFieldNames ? '' : 'forumInfo',
        subBuilder: $0.Forum.create)
    ..aOM<$1.RankInfo>(4, _omitFieldNames ? '' : 'currentRankInfo',
        subBuilder: $1.RankInfo.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SignForum clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SignForum copyWith(void Function(SignForum) updates) =>
      super.copyWith((message) => updates(message as SignForum)) as SignForum;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SignForum create() => SignForum._();
  @$core.override
  SignForum createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SignForum getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SignForum>(create);
  static SignForum? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get isOn => $_getIZ(0);
  @$pb.TagNumber(1)
  set isOn($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasIsOn() => $_has(0);
  @$pb.TagNumber(1)
  void clearIsOn() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get isFilter => $_getIZ(1);
  @$pb.TagNumber(2)
  set isFilter($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasIsFilter() => $_has(1);
  @$pb.TagNumber(2)
  void clearIsFilter() => $_clearField(2);

  @$pb.TagNumber(3)
  $0.Forum get forumInfo => $_getN(2);
  @$pb.TagNumber(3)
  set forumInfo($0.Forum value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasForumInfo() => $_has(2);
  @$pb.TagNumber(3)
  void clearForumInfo() => $_clearField(3);
  @$pb.TagNumber(3)
  $0.Forum ensureForumInfo() => $_ensure(2);

  @$pb.TagNumber(4)
  $1.RankInfo get currentRankInfo => $_getN(3);
  @$pb.TagNumber(4)
  set currentRankInfo($1.RankInfo value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasCurrentRankInfo() => $_has(3);
  @$pb.TagNumber(4)
  void clearCurrentRankInfo() => $_clearField(4);
  @$pb.TagNumber(4)
  $1.RankInfo ensureCurrentRankInfo() => $_ensure(3);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
