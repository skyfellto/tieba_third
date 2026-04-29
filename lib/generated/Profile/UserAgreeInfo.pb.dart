// This is a generated file - do not edit.
//
// Generated from Profile/UserAgreeInfo.proto.

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

class UserAgreeInfo extends $pb.GeneratedMessage {
  factory UserAgreeInfo({
    $fixnum.Int64? totalAgreeNum,
    $fixnum.Int64? normalAgreeNum,
    $fixnum.Int64? userAgreeNum,
    $fixnum.Int64? videoAgreeNum,
    $fixnum.Int64? alaAgreeNum,
    $core.int? hasUserAgree,
  }) {
    final result = create();
    if (totalAgreeNum != null) result.totalAgreeNum = totalAgreeNum;
    if (normalAgreeNum != null) result.normalAgreeNum = normalAgreeNum;
    if (userAgreeNum != null) result.userAgreeNum = userAgreeNum;
    if (videoAgreeNum != null) result.videoAgreeNum = videoAgreeNum;
    if (alaAgreeNum != null) result.alaAgreeNum = alaAgreeNum;
    if (hasUserAgree != null) result.hasUserAgree = hasUserAgree;
    return result;
  }

  UserAgreeInfo._();

  factory UserAgreeInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UserAgreeInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UserAgreeInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba.profile'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'totalAgreeNum')
    ..aInt64(2, _omitFieldNames ? '' : 'normalAgreeNum')
    ..aInt64(3, _omitFieldNames ? '' : 'userAgreeNum')
    ..aInt64(4, _omitFieldNames ? '' : 'videoAgreeNum')
    ..aInt64(5, _omitFieldNames ? '' : 'alaAgreeNum')
    ..aI(6, _omitFieldNames ? '' : 'hasUserAgree')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UserAgreeInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UserAgreeInfo copyWith(void Function(UserAgreeInfo) updates) =>
      super.copyWith((message) => updates(message as UserAgreeInfo))
          as UserAgreeInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserAgreeInfo create() => UserAgreeInfo._();
  @$core.override
  UserAgreeInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UserAgreeInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UserAgreeInfo>(create);
  static UserAgreeInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get totalAgreeNum => $_getI64(0);
  @$pb.TagNumber(1)
  set totalAgreeNum($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTotalAgreeNum() => $_has(0);
  @$pb.TagNumber(1)
  void clearTotalAgreeNum() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get normalAgreeNum => $_getI64(1);
  @$pb.TagNumber(2)
  set normalAgreeNum($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasNormalAgreeNum() => $_has(1);
  @$pb.TagNumber(2)
  void clearNormalAgreeNum() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get userAgreeNum => $_getI64(2);
  @$pb.TagNumber(3)
  set userAgreeNum($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasUserAgreeNum() => $_has(2);
  @$pb.TagNumber(3)
  void clearUserAgreeNum() => $_clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get videoAgreeNum => $_getI64(3);
  @$pb.TagNumber(4)
  set videoAgreeNum($fixnum.Int64 value) => $_setInt64(3, value);
  @$pb.TagNumber(4)
  $core.bool hasVideoAgreeNum() => $_has(3);
  @$pb.TagNumber(4)
  void clearVideoAgreeNum() => $_clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get alaAgreeNum => $_getI64(4);
  @$pb.TagNumber(5)
  set alaAgreeNum($fixnum.Int64 value) => $_setInt64(4, value);
  @$pb.TagNumber(5)
  $core.bool hasAlaAgreeNum() => $_has(4);
  @$pb.TagNumber(5)
  void clearAlaAgreeNum() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get hasUserAgree => $_getIZ(5);
  @$pb.TagNumber(6)
  set hasUserAgree($core.int value) => $_setSignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasHasUserAgree() => $_has(5);
  @$pb.TagNumber(6)
  void clearHasUserAgree() => $_clearField(6);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
