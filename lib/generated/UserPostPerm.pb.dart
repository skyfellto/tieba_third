// This is a generated file - do not edit.
//
// Generated from UserPostPerm.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class UserPostPerm extends $pb.GeneratedMessage {
  factory UserPostPerm({
    $core.int? notShowHideThread,
  }) {
    final result = create();
    if (notShowHideThread != null) result.notShowHideThread = notShowHideThread;
    return result;
  }

  UserPostPerm._();

  factory UserPostPerm.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UserPostPerm.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UserPostPerm',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'notShowHideThread',
        fieldType: $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UserPostPerm clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UserPostPerm copyWith(void Function(UserPostPerm) updates) =>
      super.copyWith((message) => updates(message as UserPostPerm))
          as UserPostPerm;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserPostPerm create() => UserPostPerm._();
  @$core.override
  UserPostPerm createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UserPostPerm getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UserPostPerm>(create);
  static UserPostPerm? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get notShowHideThread => $_getIZ(0);
  @$pb.TagNumber(1)
  set notShowHideThread($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasNotShowHideThread() => $_has(0);
  @$pb.TagNumber(1)
  void clearNotShowHideThread() => $_clearField(1);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
