// This is a generated file - do not edit.
//
// Generated from UserDynamic.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'User.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class UserDynamic extends $pb.GeneratedMessage {
  factory UserDynamic({
    $core.Iterable<$0.User>? concernedUserList,
  }) {
    final result = create();
    if (concernedUserList != null)
      result.concernedUserList.addAll(concernedUserList);
    return result;
  }

  UserDynamic._();

  factory UserDynamic.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UserDynamic.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UserDynamic',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..pPM<$0.User>(1, _omitFieldNames ? '' : 'concernedUserList',
        subBuilder: $0.User.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UserDynamic clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UserDynamic copyWith(void Function(UserDynamic) updates) =>
      super.copyWith((message) => updates(message as UserDynamic))
          as UserDynamic;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserDynamic create() => UserDynamic._();
  @$core.override
  UserDynamic createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UserDynamic getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UserDynamic>(create);
  static UserDynamic? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$0.User> get concernedUserList => $_getList(0);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
