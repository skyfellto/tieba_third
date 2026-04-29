// This is a generated file - do not edit.
//
// Generated from DynamicInfo.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'ForumDynamic.pb.dart' as $1;
import 'ThreadInfo.pb.dart' as $0;
import 'UserDynamic.pb.dart' as $2;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class DynamicInfo extends $pb.GeneratedMessage {
  factory DynamicInfo({
    $0.ThreadInfo? threadDynamic,
    $fixnum.Int64? dynamicTimestamp,
    $1.ForumDynamic? forumDynamic,
    $2.UserDynamic? userDynamic,
    $core.int? type,
    $core.String? isHide,
  }) {
    final result = create();
    if (threadDynamic != null) result.threadDynamic = threadDynamic;
    if (dynamicTimestamp != null) result.dynamicTimestamp = dynamicTimestamp;
    if (forumDynamic != null) result.forumDynamic = forumDynamic;
    if (userDynamic != null) result.userDynamic = userDynamic;
    if (type != null) result.type = type;
    if (isHide != null) result.isHide = isHide;
    return result;
  }

  DynamicInfo._();

  factory DynamicInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DynamicInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DynamicInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aOM<$0.ThreadInfo>(1, _omitFieldNames ? '' : 'threadDynamic',
        subBuilder: $0.ThreadInfo.create)
    ..aInt64(2, _omitFieldNames ? '' : 'dynamicTimestamp')
    ..aOM<$1.ForumDynamic>(3, _omitFieldNames ? '' : 'forumDynamic',
        subBuilder: $1.ForumDynamic.create)
    ..aOM<$2.UserDynamic>(4, _omitFieldNames ? '' : 'userDynamic',
        subBuilder: $2.UserDynamic.create)
    ..aI(5, _omitFieldNames ? '' : 'type')
    ..aOS(6, _omitFieldNames ? '' : 'isHide')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DynamicInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DynamicInfo copyWith(void Function(DynamicInfo) updates) =>
      super.copyWith((message) => updates(message as DynamicInfo))
          as DynamicInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DynamicInfo create() => DynamicInfo._();
  @$core.override
  DynamicInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DynamicInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DynamicInfo>(create);
  static DynamicInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $0.ThreadInfo get threadDynamic => $_getN(0);
  @$pb.TagNumber(1)
  set threadDynamic($0.ThreadInfo value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasThreadDynamic() => $_has(0);
  @$pb.TagNumber(1)
  void clearThreadDynamic() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.ThreadInfo ensureThreadDynamic() => $_ensure(0);

  @$pb.TagNumber(2)
  $fixnum.Int64 get dynamicTimestamp => $_getI64(1);
  @$pb.TagNumber(2)
  set dynamicTimestamp($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasDynamicTimestamp() => $_has(1);
  @$pb.TagNumber(2)
  void clearDynamicTimestamp() => $_clearField(2);

  @$pb.TagNumber(3)
  $1.ForumDynamic get forumDynamic => $_getN(2);
  @$pb.TagNumber(3)
  set forumDynamic($1.ForumDynamic value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasForumDynamic() => $_has(2);
  @$pb.TagNumber(3)
  void clearForumDynamic() => $_clearField(3);
  @$pb.TagNumber(3)
  $1.ForumDynamic ensureForumDynamic() => $_ensure(2);

  @$pb.TagNumber(4)
  $2.UserDynamic get userDynamic => $_getN(3);
  @$pb.TagNumber(4)
  set userDynamic($2.UserDynamic value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasUserDynamic() => $_has(3);
  @$pb.TagNumber(4)
  void clearUserDynamic() => $_clearField(4);
  @$pb.TagNumber(4)
  $2.UserDynamic ensureUserDynamic() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.int get type => $_getIZ(4);
  @$pb.TagNumber(5)
  set type($core.int value) => $_setSignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasType() => $_has(4);
  @$pb.TagNumber(5)
  void clearType() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get isHide => $_getSZ(5);
  @$pb.TagNumber(6)
  set isHide($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasIsHide() => $_has(5);
  @$pb.TagNumber(6)
  void clearIsHide() => $_clearField(6);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
