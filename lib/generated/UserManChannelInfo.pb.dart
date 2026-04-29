// This is a generated file - do not edit.
//
// Generated from UserManChannelInfo.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class UserManChannelInfo extends $pb.GeneratedMessage {
  factory UserManChannelInfo({
    $core.int? manChannel,
    $core.int? followChannel,
  }) {
    final result = create();
    if (manChannel != null) result.manChannel = manChannel;
    if (followChannel != null) result.followChannel = followChannel;
    return result;
  }

  UserManChannelInfo._();

  factory UserManChannelInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UserManChannelInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UserManChannelInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'manChannel', fieldType: $pb.PbFieldType.OU3)
    ..aI(2, _omitFieldNames ? '' : 'followChannel',
        fieldType: $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UserManChannelInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UserManChannelInfo copyWith(void Function(UserManChannelInfo) updates) =>
      super.copyWith((message) => updates(message as UserManChannelInfo))
          as UserManChannelInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserManChannelInfo create() => UserManChannelInfo._();
  @$core.override
  UserManChannelInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UserManChannelInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UserManChannelInfo>(create);
  static UserManChannelInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get manChannel => $_getIZ(0);
  @$pb.TagNumber(1)
  set manChannel($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasManChannel() => $_has(0);
  @$pb.TagNumber(1)
  void clearManChannel() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get followChannel => $_getIZ(1);
  @$pb.TagNumber(2)
  set followChannel($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasFollowChannel() => $_has(1);
  @$pb.TagNumber(2)
  void clearFollowChannel() => $_clearField(2);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
