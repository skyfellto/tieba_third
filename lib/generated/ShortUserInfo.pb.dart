// This is a generated file - do not edit.
//
// Generated from ShortUserInfo.proto.

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

class ShortUserInfo extends $pb.GeneratedMessage {
  factory ShortUserInfo({
    $fixnum.Int64? userId,
    $core.String? portrait,
    $core.String? userName,
    $core.int? gender,
    $core.String? intro,
  }) {
    final result = create();
    if (userId != null) result.userId = userId;
    if (portrait != null) result.portrait = portrait;
    if (userName != null) result.userName = userName;
    if (gender != null) result.gender = gender;
    if (intro != null) result.intro = intro;
    return result;
  }

  ShortUserInfo._();

  factory ShortUserInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ShortUserInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ShortUserInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'userId')
    ..aOS(2, _omitFieldNames ? '' : 'portrait')
    ..aOS(3, _omitFieldNames ? '' : 'userName')
    ..aI(4, _omitFieldNames ? '' : 'gender')
    ..aOS(5, _omitFieldNames ? '' : 'intro')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ShortUserInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ShortUserInfo copyWith(void Function(ShortUserInfo) updates) =>
      super.copyWith((message) => updates(message as ShortUserInfo))
          as ShortUserInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ShortUserInfo create() => ShortUserInfo._();
  @$core.override
  ShortUserInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ShortUserInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ShortUserInfo>(create);
  static ShortUserInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get userId => $_getI64(0);
  @$pb.TagNumber(1)
  set userId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get portrait => $_getSZ(1);
  @$pb.TagNumber(2)
  set portrait($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPortrait() => $_has(1);
  @$pb.TagNumber(2)
  void clearPortrait() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get userName => $_getSZ(2);
  @$pb.TagNumber(3)
  set userName($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasUserName() => $_has(2);
  @$pb.TagNumber(3)
  void clearUserName() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get gender => $_getIZ(3);
  @$pb.TagNumber(4)
  set gender($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasGender() => $_has(3);
  @$pb.TagNumber(4)
  void clearGender() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get intro => $_getSZ(4);
  @$pb.TagNumber(5)
  set intro($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasIntro() => $_has(4);
  @$pb.TagNumber(5)
  void clearIntro() => $_clearField(5);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
