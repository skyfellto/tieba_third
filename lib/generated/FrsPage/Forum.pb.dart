// This is a generated file - do not edit.
//
// Generated from FrsPage/Forum.proto.

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

class Forum extends $pb.GeneratedMessage {
  factory Forum({
    $fixnum.Int64? forumId,
    $core.String? level1DirName,
  }) {
    final result = create();
    if (forumId != null) result.forumId = forumId;
    if (level1DirName != null) result.level1DirName = level1DirName;
    return result;
  }

  Forum._();

  factory Forum.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Forum.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Forum',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba.frsPage'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'forumId')
    ..aOS(2, _omitFieldNames ? '' : 'level1DirName')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Forum clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Forum copyWith(void Function(Forum) updates) =>
      super.copyWith((message) => updates(message as Forum)) as Forum;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Forum create() => Forum._();
  @$core.override
  Forum createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Forum getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Forum>(create);
  static Forum? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get forumId => $_getI64(0);
  @$pb.TagNumber(1)
  set forumId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasForumId() => $_has(0);
  @$pb.TagNumber(1)
  void clearForumId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get level1DirName => $_getSZ(1);
  @$pb.TagNumber(2)
  set level1DirName($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasLevel1DirName() => $_has(1);
  @$pb.TagNumber(2)
  void clearLevel1DirName() => $_clearField(2);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
