// This is a generated file - do not edit.
//
// Generated from MultipleForum.proto.

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

class MultipleForum extends $pb.GeneratedMessage {
  factory MultipleForum({
    $fixnum.Int64? forumId,
    $core.String? forumName,
    $core.int? isBawu,
    $core.String? bawuType,
    $core.int? isDeleted,
  }) {
    final result = create();
    if (forumId != null) result.forumId = forumId;
    if (forumName != null) result.forumName = forumName;
    if (isBawu != null) result.isBawu = isBawu;
    if (bawuType != null) result.bawuType = bawuType;
    if (isDeleted != null) result.isDeleted = isDeleted;
    return result;
  }

  MultipleForum._();

  factory MultipleForum.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MultipleForum.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MultipleForum',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'forumId')
    ..aOS(2, _omitFieldNames ? '' : 'forumName')
    ..aI(3, _omitFieldNames ? '' : 'isBawu')
    ..aOS(4, _omitFieldNames ? '' : 'bawuType')
    ..aI(5, _omitFieldNames ? '' : 'isDeleted')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MultipleForum clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MultipleForum copyWith(void Function(MultipleForum) updates) =>
      super.copyWith((message) => updates(message as MultipleForum))
          as MultipleForum;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MultipleForum create() => MultipleForum._();
  @$core.override
  MultipleForum createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MultipleForum getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MultipleForum>(create);
  static MultipleForum? _defaultInstance;

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
  $core.int get isBawu => $_getIZ(2);
  @$pb.TagNumber(3)
  set isBawu($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasIsBawu() => $_has(2);
  @$pb.TagNumber(3)
  void clearIsBawu() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get bawuType => $_getSZ(3);
  @$pb.TagNumber(4)
  set bawuType($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasBawuType() => $_has(3);
  @$pb.TagNumber(4)
  void clearBawuType() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get isDeleted => $_getIZ(4);
  @$pb.TagNumber(5)
  set isDeleted($core.int value) => $_setSignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasIsDeleted() => $_has(4);
  @$pb.TagNumber(5)
  void clearIsDeleted() => $_clearField(5);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
