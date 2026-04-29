// This is a generated file - do not edit.
//
// Generated from LikeForumInfo.proto.

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

class LikeForumInfo extends $pb.GeneratedMessage {
  factory LikeForumInfo({
    $core.String? forumName,
    $fixnum.Int64? forumId,
  }) {
    final result = create();
    if (forumName != null) result.forumName = forumName;
    if (forumId != null) result.forumId = forumId;
    return result;
  }

  LikeForumInfo._();

  factory LikeForumInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory LikeForumInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'LikeForumInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'forumName')
    ..a<$fixnum.Int64>(2, _omitFieldNames ? '' : 'forumId', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LikeForumInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LikeForumInfo copyWith(void Function(LikeForumInfo) updates) =>
      super.copyWith((message) => updates(message as LikeForumInfo))
          as LikeForumInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LikeForumInfo create() => LikeForumInfo._();
  @$core.override
  LikeForumInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static LikeForumInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LikeForumInfo>(create);
  static LikeForumInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get forumName => $_getSZ(0);
  @$pb.TagNumber(1)
  set forumName($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasForumName() => $_has(0);
  @$pb.TagNumber(1)
  void clearForumName() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get forumId => $_getI64(1);
  @$pb.TagNumber(2)
  set forumId($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasForumId() => $_has(1);
  @$pb.TagNumber(2)
  void clearForumId() => $_clearField(2);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
