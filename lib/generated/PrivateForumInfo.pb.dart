// This is a generated file - do not edit.
//
// Generated from PrivateForumInfo.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class PrivateForumInfo extends $pb.GeneratedMessage {
  factory PrivateForumInfo({
    $core.int? privateForumStatus,
    $core.int? privateForumAuditStatus,
  }) {
    final result = create();
    if (privateForumStatus != null)
      result.privateForumStatus = privateForumStatus;
    if (privateForumAuditStatus != null)
      result.privateForumAuditStatus = privateForumAuditStatus;
    return result;
  }

  PrivateForumInfo._();

  factory PrivateForumInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PrivateForumInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PrivateForumInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'privateForumStatus')
    ..aI(2, _omitFieldNames ? '' : 'privateForumAuditStatus')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PrivateForumInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PrivateForumInfo copyWith(void Function(PrivateForumInfo) updates) =>
      super.copyWith((message) => updates(message as PrivateForumInfo))
          as PrivateForumInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PrivateForumInfo create() => PrivateForumInfo._();
  @$core.override
  PrivateForumInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PrivateForumInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PrivateForumInfo>(create);
  static PrivateForumInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get privateForumStatus => $_getIZ(0);
  @$pb.TagNumber(1)
  set privateForumStatus($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPrivateForumStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearPrivateForumStatus() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get privateForumAuditStatus => $_getIZ(1);
  @$pb.TagNumber(2)
  set privateForumAuditStatus($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPrivateForumAuditStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearPrivateForumAuditStatus() => $_clearField(2);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
