// This is a generated file - do not edit.
//
// Generated from FrsPage/Manager.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class Manager extends $pb.GeneratedMessage {
  factory Manager({
    $fixnum.Int64? id,
    $core.String? name,
    $core.String? showName,
    $core.String? portrait,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (name != null) result.name = name;
    if (showName != null) result.showName = showName;
    if (portrait != null) result.portrait = portrait;
    return result;
  }

  Manager._();

  factory Manager.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Manager.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Manager',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba.frsPage'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'showName')
    ..aOS(4, _omitFieldNames ? '' : 'portrait')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Manager clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Manager copyWith(void Function(Manager) updates) =>
      super.copyWith((message) => updates(message as Manager)) as Manager;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Manager create() => Manager._();
  @$core.override
  Manager createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Manager getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Manager>(create);
  static Manager? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get showName => $_getSZ(2);
  @$pb.TagNumber(3)
  set showName($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasShowName() => $_has(2);
  @$pb.TagNumber(3)
  void clearShowName() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get portrait => $_getSZ(3);
  @$pb.TagNumber(4)
  set portrait($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasPortrait() => $_has(3);
  @$pb.TagNumber(4)
  void clearPortrait() => $_clearField(4);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
