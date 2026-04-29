// This is a generated file - do not edit.
//
// Generated from ForumCreateInfo.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class ForumCreateInfo extends $pb.GeneratedMessage {
  factory ForumCreateInfo({
    $core.int? isShowCreate,
    $core.int? isCanCreate,
    $core.int? canCreateErrno,
    $core.String? canCreateErrdata,
  }) {
    final result = create();
    if (isShowCreate != null) result.isShowCreate = isShowCreate;
    if (isCanCreate != null) result.isCanCreate = isCanCreate;
    if (canCreateErrno != null) result.canCreateErrno = canCreateErrno;
    if (canCreateErrdata != null) result.canCreateErrdata = canCreateErrdata;
    return result;
  }

  ForumCreateInfo._();

  factory ForumCreateInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ForumCreateInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ForumCreateInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'isShowCreate')
    ..aI(2, _omitFieldNames ? '' : 'isCanCreate')
    ..aI(3, _omitFieldNames ? '' : 'canCreateErrno')
    ..aOS(4, _omitFieldNames ? '' : 'canCreateErrdata')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ForumCreateInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ForumCreateInfo copyWith(void Function(ForumCreateInfo) updates) =>
      super.copyWith((message) => updates(message as ForumCreateInfo))
          as ForumCreateInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ForumCreateInfo create() => ForumCreateInfo._();
  @$core.override
  ForumCreateInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ForumCreateInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ForumCreateInfo>(create);
  static ForumCreateInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get isShowCreate => $_getIZ(0);
  @$pb.TagNumber(1)
  set isShowCreate($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasIsShowCreate() => $_has(0);
  @$pb.TagNumber(1)
  void clearIsShowCreate() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get isCanCreate => $_getIZ(1);
  @$pb.TagNumber(2)
  set isCanCreate($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasIsCanCreate() => $_has(1);
  @$pb.TagNumber(2)
  void clearIsCanCreate() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get canCreateErrno => $_getIZ(2);
  @$pb.TagNumber(3)
  set canCreateErrno($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasCanCreateErrno() => $_has(2);
  @$pb.TagNumber(3)
  void clearCanCreateErrno() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get canCreateErrdata => $_getSZ(3);
  @$pb.TagNumber(4)
  set canCreateErrdata($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasCanCreateErrdata() => $_has(3);
  @$pb.TagNumber(4)
  void clearCanCreateErrdata() => $_clearField(4);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
