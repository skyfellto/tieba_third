// This is a generated file - do not edit.
//
// Generated from BawuRoleInfoPub.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'BaijiahaoInfo.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class BawuRoleInfoPub extends $pb.GeneratedMessage {
  factory BawuRoleInfoPub({
    $fixnum.Int64? forumId,
    $fixnum.Int64? userId,
    $core.int? roleId,
    $core.String? roleName,
    $core.String? portrait,
    $core.int? userLevel,
    $core.String? levelName,
    $core.String? userName,
    $core.String? nameShow,
    $0.BaijiahaoInfo? baijiahaoInfo,
  }) {
    final result = create();
    if (forumId != null) result.forumId = forumId;
    if (userId != null) result.userId = userId;
    if (roleId != null) result.roleId = roleId;
    if (roleName != null) result.roleName = roleName;
    if (portrait != null) result.portrait = portrait;
    if (userLevel != null) result.userLevel = userLevel;
    if (levelName != null) result.levelName = levelName;
    if (userName != null) result.userName = userName;
    if (nameShow != null) result.nameShow = nameShow;
    if (baijiahaoInfo != null) result.baijiahaoInfo = baijiahaoInfo;
    return result;
  }

  BawuRoleInfoPub._();

  factory BawuRoleInfoPub.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BawuRoleInfoPub.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BawuRoleInfoPub',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'forumId', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aInt64(2, _omitFieldNames ? '' : 'userId')
    ..aI(3, _omitFieldNames ? '' : 'roleId')
    ..aOS(4, _omitFieldNames ? '' : 'roleName')
    ..aOS(5, _omitFieldNames ? '' : 'portrait')
    ..aI(6, _omitFieldNames ? '' : 'userLevel')
    ..aOS(7, _omitFieldNames ? '' : 'levelName')
    ..aOS(8, _omitFieldNames ? '' : 'userName')
    ..aOS(9, _omitFieldNames ? '' : 'nameShow')
    ..aOM<$0.BaijiahaoInfo>(10, _omitFieldNames ? '' : 'baijiahaoInfo',
        subBuilder: $0.BaijiahaoInfo.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BawuRoleInfoPub clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BawuRoleInfoPub copyWith(void Function(BawuRoleInfoPub) updates) =>
      super.copyWith((message) => updates(message as BawuRoleInfoPub))
          as BawuRoleInfoPub;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BawuRoleInfoPub create() => BawuRoleInfoPub._();
  @$core.override
  BawuRoleInfoPub createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BawuRoleInfoPub getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BawuRoleInfoPub>(create);
  static BawuRoleInfoPub? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get forumId => $_getI64(0);
  @$pb.TagNumber(1)
  set forumId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasForumId() => $_has(0);
  @$pb.TagNumber(1)
  void clearForumId() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get userId => $_getI64(1);
  @$pb.TagNumber(2)
  set userId($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasUserId() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get roleId => $_getIZ(2);
  @$pb.TagNumber(3)
  set roleId($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasRoleId() => $_has(2);
  @$pb.TagNumber(3)
  void clearRoleId() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get roleName => $_getSZ(3);
  @$pb.TagNumber(4)
  set roleName($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasRoleName() => $_has(3);
  @$pb.TagNumber(4)
  void clearRoleName() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get portrait => $_getSZ(4);
  @$pb.TagNumber(5)
  set portrait($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasPortrait() => $_has(4);
  @$pb.TagNumber(5)
  void clearPortrait() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get userLevel => $_getIZ(5);
  @$pb.TagNumber(6)
  set userLevel($core.int value) => $_setSignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasUserLevel() => $_has(5);
  @$pb.TagNumber(6)
  void clearUserLevel() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get levelName => $_getSZ(6);
  @$pb.TagNumber(7)
  set levelName($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasLevelName() => $_has(6);
  @$pb.TagNumber(7)
  void clearLevelName() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.String get userName => $_getSZ(7);
  @$pb.TagNumber(8)
  set userName($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasUserName() => $_has(7);
  @$pb.TagNumber(8)
  void clearUserName() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.String get nameShow => $_getSZ(8);
  @$pb.TagNumber(9)
  set nameShow($core.String value) => $_setString(8, value);
  @$pb.TagNumber(9)
  $core.bool hasNameShow() => $_has(8);
  @$pb.TagNumber(9)
  void clearNameShow() => $_clearField(9);

  @$pb.TagNumber(10)
  $0.BaijiahaoInfo get baijiahaoInfo => $_getN(9);
  @$pb.TagNumber(10)
  set baijiahaoInfo($0.BaijiahaoInfo value) => $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasBaijiahaoInfo() => $_has(9);
  @$pb.TagNumber(10)
  void clearBaijiahaoInfo() => $_clearField(10);
  @$pb.TagNumber(10)
  $0.BaijiahaoInfo ensureBaijiahaoInfo() => $_ensure(9);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
