// This is a generated file - do not edit.
//
// Generated from BawuRoleDes.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'BawuRoleInfoPub.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class BawuRoleDes extends $pb.GeneratedMessage {
  factory BawuRoleDes({
    $core.String? roleName,
    $core.Iterable<$0.BawuRoleInfoPub>? roleInfo,
  }) {
    final result = create();
    if (roleName != null) result.roleName = roleName;
    if (roleInfo != null) result.roleInfo.addAll(roleInfo);
    return result;
  }

  BawuRoleDes._();

  factory BawuRoleDes.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BawuRoleDes.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BawuRoleDes',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'roleName')
    ..pPM<$0.BawuRoleInfoPub>(2, _omitFieldNames ? '' : 'roleInfo',
        subBuilder: $0.BawuRoleInfoPub.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BawuRoleDes clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BawuRoleDes copyWith(void Function(BawuRoleDes) updates) =>
      super.copyWith((message) => updates(message as BawuRoleDes))
          as BawuRoleDes;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BawuRoleDes create() => BawuRoleDes._();
  @$core.override
  BawuRoleDes createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BawuRoleDes getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BawuRoleDes>(create);
  static BawuRoleDes? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get roleName => $_getSZ(0);
  @$pb.TagNumber(1)
  set roleName($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasRoleName() => $_has(0);
  @$pb.TagNumber(1)
  void clearRoleName() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<$0.BawuRoleInfoPub> get roleInfo => $_getList(1);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
