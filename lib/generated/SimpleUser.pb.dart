// This is a generated file - do not edit.
//
// Generated from SimpleUser.proto.

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

class SimpleUser extends $pb.GeneratedMessage {
  factory SimpleUser({
    $fixnum.Int64? userId,
    $core.int? userStatus,
    $core.String? secureemail,
    $core.String? securemobil,
    $core.String? userName,
    $core.String? userNickname,
    $core.int? incompleteUser,
    $core.String? portrait,
    $core.int? agreeType,
    $core.String? aheadUrl,
    $core.String? blockMsg,
    $core.int? showOnlyme,
  }) {
    final result = create();
    if (userId != null) result.userId = userId;
    if (userStatus != null) result.userStatus = userStatus;
    if (secureemail != null) result.secureemail = secureemail;
    if (securemobil != null) result.securemobil = securemobil;
    if (userName != null) result.userName = userName;
    if (userNickname != null) result.userNickname = userNickname;
    if (incompleteUser != null) result.incompleteUser = incompleteUser;
    if (portrait != null) result.portrait = portrait;
    if (agreeType != null) result.agreeType = agreeType;
    if (aheadUrl != null) result.aheadUrl = aheadUrl;
    if (blockMsg != null) result.blockMsg = blockMsg;
    if (showOnlyme != null) result.showOnlyme = showOnlyme;
    return result;
  }

  SimpleUser._();

  factory SimpleUser.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SimpleUser.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SimpleUser',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'userId')
    ..aI(2, _omitFieldNames ? '' : 'userStatus')
    ..aOS(3, _omitFieldNames ? '' : 'secureemail')
    ..aOS(4, _omitFieldNames ? '' : 'securemobil')
    ..aOS(5, _omitFieldNames ? '' : 'userName')
    ..aOS(6, _omitFieldNames ? '' : 'userNickname')
    ..aI(7, _omitFieldNames ? '' : 'incompleteUser',
        fieldType: $pb.PbFieldType.OU3)
    ..aOS(8, _omitFieldNames ? '' : 'portrait')
    ..aI(9, _omitFieldNames ? '' : 'agreeType')
    ..aOS(10, _omitFieldNames ? '' : 'aheadUrl')
    ..aOS(11, _omitFieldNames ? '' : 'blockMsg')
    ..aI(12, _omitFieldNames ? '' : 'showOnlyme')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SimpleUser clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SimpleUser copyWith(void Function(SimpleUser) updates) =>
      super.copyWith((message) => updates(message as SimpleUser)) as SimpleUser;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SimpleUser create() => SimpleUser._();
  @$core.override
  SimpleUser createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SimpleUser getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SimpleUser>(create);
  static SimpleUser? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get userId => $_getI64(0);
  @$pb.TagNumber(1)
  set userId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get userStatus => $_getIZ(1);
  @$pb.TagNumber(2)
  set userStatus($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasUserStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserStatus() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get secureemail => $_getSZ(2);
  @$pb.TagNumber(3)
  set secureemail($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasSecureemail() => $_has(2);
  @$pb.TagNumber(3)
  void clearSecureemail() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get securemobil => $_getSZ(3);
  @$pb.TagNumber(4)
  set securemobil($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasSecuremobil() => $_has(3);
  @$pb.TagNumber(4)
  void clearSecuremobil() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get userName => $_getSZ(4);
  @$pb.TagNumber(5)
  set userName($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasUserName() => $_has(4);
  @$pb.TagNumber(5)
  void clearUserName() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get userNickname => $_getSZ(5);
  @$pb.TagNumber(6)
  set userNickname($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasUserNickname() => $_has(5);
  @$pb.TagNumber(6)
  void clearUserNickname() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.int get incompleteUser => $_getIZ(6);
  @$pb.TagNumber(7)
  set incompleteUser($core.int value) => $_setUnsignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasIncompleteUser() => $_has(6);
  @$pb.TagNumber(7)
  void clearIncompleteUser() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.String get portrait => $_getSZ(7);
  @$pb.TagNumber(8)
  set portrait($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasPortrait() => $_has(7);
  @$pb.TagNumber(8)
  void clearPortrait() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.int get agreeType => $_getIZ(8);
  @$pb.TagNumber(9)
  set agreeType($core.int value) => $_setSignedInt32(8, value);
  @$pb.TagNumber(9)
  $core.bool hasAgreeType() => $_has(8);
  @$pb.TagNumber(9)
  void clearAgreeType() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.String get aheadUrl => $_getSZ(9);
  @$pb.TagNumber(10)
  set aheadUrl($core.String value) => $_setString(9, value);
  @$pb.TagNumber(10)
  $core.bool hasAheadUrl() => $_has(9);
  @$pb.TagNumber(10)
  void clearAheadUrl() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.String get blockMsg => $_getSZ(10);
  @$pb.TagNumber(11)
  set blockMsg($core.String value) => $_setString(10, value);
  @$pb.TagNumber(11)
  $core.bool hasBlockMsg() => $_has(10);
  @$pb.TagNumber(11)
  void clearBlockMsg() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.int get showOnlyme => $_getIZ(11);
  @$pb.TagNumber(12)
  set showOnlyme($core.int value) => $_setSignedInt32(11, value);
  @$pb.TagNumber(12)
  $core.bool hasShowOnlyme() => $_has(11);
  @$pb.TagNumber(12)
  void clearShowOnlyme() => $_clearField(12);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
