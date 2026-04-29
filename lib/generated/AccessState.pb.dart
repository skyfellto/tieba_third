// This is a generated file - do not edit.
//
// Generated from AccessState.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'UserSessionInfo.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class AccessState extends $pb.GeneratedMessage {
  factory AccessState({
    $core.String? type,
    $core.String? token,
    $0.UserSessionInfo? userinfo,
  }) {
    final result = create();
    if (type != null) result.type = type;
    if (token != null) result.token = token;
    if (userinfo != null) result.userinfo = userinfo;
    return result;
  }

  AccessState._();

  factory AccessState.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AccessState.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AccessState',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'type')
    ..aOS(2, _omitFieldNames ? '' : 'token')
    ..aOM<$0.UserSessionInfo>(3, _omitFieldNames ? '' : 'userinfo',
        subBuilder: $0.UserSessionInfo.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AccessState clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AccessState copyWith(void Function(AccessState) updates) =>
      super.copyWith((message) => updates(message as AccessState))
          as AccessState;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AccessState create() => AccessState._();
  @$core.override
  AccessState createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AccessState getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AccessState>(create);
  static AccessState? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get type => $_getSZ(0);
  @$pb.TagNumber(1)
  set type($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get token => $_getSZ(1);
  @$pb.TagNumber(2)
  set token($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearToken() => $_clearField(2);

  @$pb.TagNumber(3)
  $0.UserSessionInfo get userinfo => $_getN(2);
  @$pb.TagNumber(3)
  set userinfo($0.UserSessionInfo value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasUserinfo() => $_has(2);
  @$pb.TagNumber(3)
  void clearUserinfo() => $_clearField(3);
  @$pb.TagNumber(3)
  $0.UserSessionInfo ensureUserinfo() => $_ensure(2);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
