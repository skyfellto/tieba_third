// This is a generated file - do not edit.
//
// Generated from BaijiahaoInfo.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class BaijiahaoInfo extends $pb.GeneratedMessage {
  factory BaijiahaoInfo({
    $core.String? name,
    $core.String? avatar,
    $core.String? avatarH,
    $core.String? brief,
    $core.int? authId,
    $core.String? authDesc,
    $core.int? canModifyAvatar,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (avatar != null) result.avatar = avatar;
    if (avatarH != null) result.avatarH = avatarH;
    if (brief != null) result.brief = brief;
    if (authId != null) result.authId = authId;
    if (authDesc != null) result.authDesc = authDesc;
    if (canModifyAvatar != null) result.canModifyAvatar = canModifyAvatar;
    return result;
  }

  BaijiahaoInfo._();

  factory BaijiahaoInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BaijiahaoInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BaijiahaoInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'avatar')
    ..aOS(3, _omitFieldNames ? '' : 'avatarH')
    ..aOS(4, _omitFieldNames ? '' : 'brief')
    ..aI(5, _omitFieldNames ? '' : 'authId')
    ..aOS(6, _omitFieldNames ? '' : 'authDesc')
    ..aI(7, _omitFieldNames ? '' : 'canModifyAvatar')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BaijiahaoInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BaijiahaoInfo copyWith(void Function(BaijiahaoInfo) updates) =>
      super.copyWith((message) => updates(message as BaijiahaoInfo))
          as BaijiahaoInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BaijiahaoInfo create() => BaijiahaoInfo._();
  @$core.override
  BaijiahaoInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BaijiahaoInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BaijiahaoInfo>(create);
  static BaijiahaoInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get avatar => $_getSZ(1);
  @$pb.TagNumber(2)
  set avatar($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasAvatar() => $_has(1);
  @$pb.TagNumber(2)
  void clearAvatar() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get avatarH => $_getSZ(2);
  @$pb.TagNumber(3)
  set avatarH($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasAvatarH() => $_has(2);
  @$pb.TagNumber(3)
  void clearAvatarH() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get brief => $_getSZ(3);
  @$pb.TagNumber(4)
  set brief($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasBrief() => $_has(3);
  @$pb.TagNumber(4)
  void clearBrief() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get authId => $_getIZ(4);
  @$pb.TagNumber(5)
  set authId($core.int value) => $_setSignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasAuthId() => $_has(4);
  @$pb.TagNumber(5)
  void clearAuthId() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get authDesc => $_getSZ(5);
  @$pb.TagNumber(6)
  set authDesc($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasAuthDesc() => $_has(5);
  @$pb.TagNumber(6)
  void clearAuthDesc() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.int get canModifyAvatar => $_getIZ(6);
  @$pb.TagNumber(7)
  set canModifyAvatar($core.int value) => $_setSignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasCanModifyAvatar() => $_has(6);
  @$pb.TagNumber(7)
  void clearCanModifyAvatar() => $_clearField(7);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
