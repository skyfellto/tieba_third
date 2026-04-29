// This is a generated file - do not edit.
//
// Generated from GodInfo.proto.

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

class GodInfo extends $pb.GeneratedMessage {
  factory GodInfo({
    $fixnum.Int64? id,
    $core.String? intro,
    $core.int? type,
    $fixnum.Int64? fid,
    $core.int? followed,
    $core.String? recommendReason,
    $core.String? forumName,
    $core.int? canSendMsg,
    $core.String? prefix,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (intro != null) result.intro = intro;
    if (type != null) result.type = type;
    if (fid != null) result.fid = fid;
    if (followed != null) result.followed = followed;
    if (recommendReason != null) result.recommendReason = recommendReason;
    if (forumName != null) result.forumName = forumName;
    if (canSendMsg != null) result.canSendMsg = canSendMsg;
    if (prefix != null) result.prefix = prefix;
    return result;
  }

  GodInfo._();

  factory GodInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GodInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GodInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'intro')
    ..aI(3, _omitFieldNames ? '' : 'type')
    ..aInt64(4, _omitFieldNames ? '' : 'fid')
    ..aI(5, _omitFieldNames ? '' : 'followed')
    ..aOS(6, _omitFieldNames ? '' : 'recommendReason')
    ..aOS(7, _omitFieldNames ? '' : 'forumName')
    ..aI(8, _omitFieldNames ? '' : 'canSendMsg')
    ..aOS(9, _omitFieldNames ? '' : 'prefix')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GodInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GodInfo copyWith(void Function(GodInfo) updates) =>
      super.copyWith((message) => updates(message as GodInfo)) as GodInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GodInfo create() => GodInfo._();
  @$core.override
  GodInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GodInfo getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GodInfo>(create);
  static GodInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get intro => $_getSZ(1);
  @$pb.TagNumber(2)
  set intro($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasIntro() => $_has(1);
  @$pb.TagNumber(2)
  void clearIntro() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get type => $_getIZ(2);
  @$pb.TagNumber(3)
  set type($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasType() => $_has(2);
  @$pb.TagNumber(3)
  void clearType() => $_clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get fid => $_getI64(3);
  @$pb.TagNumber(4)
  set fid($fixnum.Int64 value) => $_setInt64(3, value);
  @$pb.TagNumber(4)
  $core.bool hasFid() => $_has(3);
  @$pb.TagNumber(4)
  void clearFid() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get followed => $_getIZ(4);
  @$pb.TagNumber(5)
  set followed($core.int value) => $_setSignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasFollowed() => $_has(4);
  @$pb.TagNumber(5)
  void clearFollowed() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get recommendReason => $_getSZ(5);
  @$pb.TagNumber(6)
  set recommendReason($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasRecommendReason() => $_has(5);
  @$pb.TagNumber(6)
  void clearRecommendReason() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get forumName => $_getSZ(6);
  @$pb.TagNumber(7)
  set forumName($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasForumName() => $_has(6);
  @$pb.TagNumber(7)
  void clearForumName() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.int get canSendMsg => $_getIZ(7);
  @$pb.TagNumber(8)
  set canSendMsg($core.int value) => $_setSignedInt32(7, value);
  @$pb.TagNumber(8)
  $core.bool hasCanSendMsg() => $_has(7);
  @$pb.TagNumber(8)
  void clearCanSendMsg() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.String get prefix => $_getSZ(8);
  @$pb.TagNumber(9)
  set prefix($core.String value) => $_setString(8, value);
  @$pb.TagNumber(9)
  $core.bool hasPrefix() => $_has(8);
  @$pb.TagNumber(9)
  void clearPrefix() => $_clearField(9);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
