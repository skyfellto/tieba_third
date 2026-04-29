// This is a generated file - do not edit.
//
// Generated from UserPost/UserPostRequest.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'UserPostRequestData.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class UserPostRequest extends $pb.GeneratedMessage {
  factory UserPostRequest({
    $0.UserPostRequestData? data,
  }) {
    final result = create();
    if (data != null) result.data = data;
    return result;
  }

  UserPostRequest._();

  factory UserPostRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UserPostRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UserPostRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba.userPost'),
      createEmptyInstance: create)
    ..aOM<$0.UserPostRequestData>(1, _omitFieldNames ? '' : 'data',
        subBuilder: $0.UserPostRequestData.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UserPostRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UserPostRequest copyWith(void Function(UserPostRequest) updates) =>
      super.copyWith((message) => updates(message as UserPostRequest))
          as UserPostRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserPostRequest create() => UserPostRequest._();
  @$core.override
  UserPostRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UserPostRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UserPostRequest>(create);
  static UserPostRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $0.UserPostRequestData get data => $_getN(0);
  @$pb.TagNumber(1)
  set data($0.UserPostRequestData value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasData() => $_has(0);
  @$pb.TagNumber(1)
  void clearData() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.UserPostRequestData ensureData() => $_ensure(0);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
