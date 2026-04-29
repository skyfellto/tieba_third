// This is a generated file - do not edit.
//
// Generated from UserPics.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class UserPics extends $pb.GeneratedMessage {
  factory UserPics({
    $core.String? big,
    $core.String? small,
  }) {
    final result = create();
    if (big != null) result.big = big;
    if (small != null) result.small = small;
    return result;
  }

  UserPics._();

  factory UserPics.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UserPics.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UserPics',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'big')
    ..aOS(2, _omitFieldNames ? '' : 'small')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UserPics clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UserPics copyWith(void Function(UserPics) updates) =>
      super.copyWith((message) => updates(message as UserPics)) as UserPics;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserPics create() => UserPics._();
  @$core.override
  UserPics createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UserPics getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserPics>(create);
  static UserPics? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get big => $_getSZ(0);
  @$pb.TagNumber(1)
  set big($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasBig() => $_has(0);
  @$pb.TagNumber(1)
  void clearBig() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get small => $_getSZ(1);
  @$pb.TagNumber(2)
  set small($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSmall() => $_has(1);
  @$pb.TagNumber(2)
  void clearSmall() => $_clearField(2);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
