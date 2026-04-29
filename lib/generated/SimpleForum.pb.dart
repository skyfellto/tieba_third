// This is a generated file - do not edit.
//
// Generated from SimpleForum.proto.

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

class SimpleForum extends $pb.GeneratedMessage {
  factory SimpleForum({
    $fixnum.Int64? id,
    $core.String? name,
    $core.String? avatar,
    $core.int? memberNum,
    $core.int? postNum,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (name != null) result.name = name;
    if (avatar != null) result.avatar = avatar;
    if (memberNum != null) result.memberNum = memberNum;
    if (postNum != null) result.postNum = postNum;
    return result;
  }

  SimpleForum._();

  factory SimpleForum.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SimpleForum.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SimpleForum',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(4, _omitFieldNames ? '' : 'avatar')
    ..aI(12, _omitFieldNames ? '' : 'memberNum', protoName: 'memberNum')
    ..aI(13, _omitFieldNames ? '' : 'postNum', protoName: 'postNum')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SimpleForum clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SimpleForum copyWith(void Function(SimpleForum) updates) =>
      super.copyWith((message) => updates(message as SimpleForum))
          as SimpleForum;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SimpleForum create() => SimpleForum._();
  @$core.override
  SimpleForum createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SimpleForum getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SimpleForum>(create);
  static SimpleForum? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => $_clearField(2);

  @$pb.TagNumber(4)
  $core.String get avatar => $_getSZ(2);
  @$pb.TagNumber(4)
  set avatar($core.String value) => $_setString(2, value);
  @$pb.TagNumber(4)
  $core.bool hasAvatar() => $_has(2);
  @$pb.TagNumber(4)
  void clearAvatar() => $_clearField(4);

  @$pb.TagNumber(12)
  $core.int get memberNum => $_getIZ(3);
  @$pb.TagNumber(12)
  set memberNum($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(12)
  $core.bool hasMemberNum() => $_has(3);
  @$pb.TagNumber(12)
  void clearMemberNum() => $_clearField(12);

  @$pb.TagNumber(13)
  $core.int get postNum => $_getIZ(4);
  @$pb.TagNumber(13)
  set postNum($core.int value) => $_setSignedInt32(4, value);
  @$pb.TagNumber(13)
  $core.bool hasPostNum() => $_has(4);
  @$pb.TagNumber(13)
  void clearPostNum() => $_clearField(13);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
