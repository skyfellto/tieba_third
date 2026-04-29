// This is a generated file - do not edit.
//
// Generated from FrsPage/SignUser.proto.

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

class SignUser extends $pb.GeneratedMessage {
  factory SignUser({
    $fixnum.Int64? userId,
    $core.int? isSignIn,
    $core.int? userSignRank,
    $core.int? signTime,
    $core.int? contSignNum,
    $core.int? coutTotalSignNum,
    $core.int? isOrgDisabled,
    $core.int? cSignNum,
    $core.int? hunSignNum,
    $core.int? totalResignNum,
    $core.int? missSignNum,
  }) {
    final result = create();
    if (userId != null) result.userId = userId;
    if (isSignIn != null) result.isSignIn = isSignIn;
    if (userSignRank != null) result.userSignRank = userSignRank;
    if (signTime != null) result.signTime = signTime;
    if (contSignNum != null) result.contSignNum = contSignNum;
    if (coutTotalSignNum != null) result.coutTotalSignNum = coutTotalSignNum;
    if (isOrgDisabled != null) result.isOrgDisabled = isOrgDisabled;
    if (cSignNum != null) result.cSignNum = cSignNum;
    if (hunSignNum != null) result.hunSignNum = hunSignNum;
    if (totalResignNum != null) result.totalResignNum = totalResignNum;
    if (missSignNum != null) result.missSignNum = missSignNum;
    return result;
  }

  SignUser._();

  factory SignUser.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SignUser.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SignUser',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba.frsPage'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'userId')
    ..aI(2, _omitFieldNames ? '' : 'isSignIn')
    ..aI(3, _omitFieldNames ? '' : 'userSignRank')
    ..aI(4, _omitFieldNames ? '' : 'signTime')
    ..aI(5, _omitFieldNames ? '' : 'contSignNum')
    ..aI(6, _omitFieldNames ? '' : 'coutTotalSignNum')
    ..aI(7, _omitFieldNames ? '' : 'isOrgDisabled')
    ..aI(8, _omitFieldNames ? '' : 'cSignNum')
    ..aI(9, _omitFieldNames ? '' : 'hunSignNum')
    ..aI(10, _omitFieldNames ? '' : 'totalResignNum')
    ..aI(11, _omitFieldNames ? '' : 'missSignNum')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SignUser clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SignUser copyWith(void Function(SignUser) updates) =>
      super.copyWith((message) => updates(message as SignUser)) as SignUser;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SignUser create() => SignUser._();
  @$core.override
  SignUser createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SignUser getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SignUser>(create);
  static SignUser? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get userId => $_getI64(0);
  @$pb.TagNumber(1)
  set userId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get isSignIn => $_getIZ(1);
  @$pb.TagNumber(2)
  set isSignIn($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasIsSignIn() => $_has(1);
  @$pb.TagNumber(2)
  void clearIsSignIn() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get userSignRank => $_getIZ(2);
  @$pb.TagNumber(3)
  set userSignRank($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasUserSignRank() => $_has(2);
  @$pb.TagNumber(3)
  void clearUserSignRank() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get signTime => $_getIZ(3);
  @$pb.TagNumber(4)
  set signTime($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasSignTime() => $_has(3);
  @$pb.TagNumber(4)
  void clearSignTime() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get contSignNum => $_getIZ(4);
  @$pb.TagNumber(5)
  set contSignNum($core.int value) => $_setSignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasContSignNum() => $_has(4);
  @$pb.TagNumber(5)
  void clearContSignNum() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get coutTotalSignNum => $_getIZ(5);
  @$pb.TagNumber(6)
  set coutTotalSignNum($core.int value) => $_setSignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasCoutTotalSignNum() => $_has(5);
  @$pb.TagNumber(6)
  void clearCoutTotalSignNum() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.int get isOrgDisabled => $_getIZ(6);
  @$pb.TagNumber(7)
  set isOrgDisabled($core.int value) => $_setSignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasIsOrgDisabled() => $_has(6);
  @$pb.TagNumber(7)
  void clearIsOrgDisabled() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.int get cSignNum => $_getIZ(7);
  @$pb.TagNumber(8)
  set cSignNum($core.int value) => $_setSignedInt32(7, value);
  @$pb.TagNumber(8)
  $core.bool hasCSignNum() => $_has(7);
  @$pb.TagNumber(8)
  void clearCSignNum() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.int get hunSignNum => $_getIZ(8);
  @$pb.TagNumber(9)
  set hunSignNum($core.int value) => $_setSignedInt32(8, value);
  @$pb.TagNumber(9)
  $core.bool hasHunSignNum() => $_has(8);
  @$pb.TagNumber(9)
  void clearHunSignNum() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.int get totalResignNum => $_getIZ(9);
  @$pb.TagNumber(10)
  set totalResignNum($core.int value) => $_setSignedInt32(9, value);
  @$pb.TagNumber(10)
  $core.bool hasTotalResignNum() => $_has(9);
  @$pb.TagNumber(10)
  void clearTotalResignNum() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.int get missSignNum => $_getIZ(10);
  @$pb.TagNumber(11)
  set missSignNum($core.int value) => $_setSignedInt32(10, value);
  @$pb.TagNumber(11)
  $core.bool hasMissSignNum() => $_has(10);
  @$pb.TagNumber(11)
  void clearMissSignNum() => $_clearField(11);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
