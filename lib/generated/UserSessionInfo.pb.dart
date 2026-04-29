// This is a generated file - do not edit.
//
// Generated from UserSessionInfo.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class UserSessionInfo extends $pb.GeneratedMessage {
  factory UserSessionInfo({
    $core.String? bduss,
    $core.String? mobile,
    $core.String? email,
  }) {
    final result = create();
    if (bduss != null) result.bduss = bduss;
    if (mobile != null) result.mobile = mobile;
    if (email != null) result.email = email;
    return result;
  }

  UserSessionInfo._();

  factory UserSessionInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UserSessionInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UserSessionInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'bduss')
    ..aOS(2, _omitFieldNames ? '' : 'mobile')
    ..aOS(3, _omitFieldNames ? '' : 'email')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UserSessionInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UserSessionInfo copyWith(void Function(UserSessionInfo) updates) =>
      super.copyWith((message) => updates(message as UserSessionInfo))
          as UserSessionInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserSessionInfo create() => UserSessionInfo._();
  @$core.override
  UserSessionInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UserSessionInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UserSessionInfo>(create);
  static UserSessionInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get bduss => $_getSZ(0);
  @$pb.TagNumber(1)
  set bduss($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasBduss() => $_has(0);
  @$pb.TagNumber(1)
  void clearBduss() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get mobile => $_getSZ(1);
  @$pb.TagNumber(2)
  set mobile($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMobile() => $_has(1);
  @$pb.TagNumber(2)
  void clearMobile() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get email => $_getSZ(2);
  @$pb.TagNumber(3)
  set email($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasEmail() => $_has(2);
  @$pb.TagNumber(3)
  void clearEmail() => $_clearField(3);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
