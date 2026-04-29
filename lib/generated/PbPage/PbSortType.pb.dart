// This is a generated file - do not edit.
//
// Generated from PbPage/PbSortType.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class PbSortType extends $pb.GeneratedMessage {
  factory PbSortType({
    $core.int? sortType,
    $core.String? sortName,
  }) {
    final result = create();
    if (sortType != null) result.sortType = sortType;
    if (sortName != null) result.sortName = sortName;
    return result;
  }

  PbSortType._();

  factory PbSortType.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PbSortType.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PbSortType',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba.pbPage'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'sortType')
    ..aOS(2, _omitFieldNames ? '' : 'sortName')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PbSortType clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PbSortType copyWith(void Function(PbSortType) updates) =>
      super.copyWith((message) => updates(message as PbSortType)) as PbSortType;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PbSortType create() => PbSortType._();
  @$core.override
  PbSortType createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PbSortType getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PbSortType>(create);
  static PbSortType? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get sortType => $_getIZ(0);
  @$pb.TagNumber(1)
  set sortType($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSortType() => $_has(0);
  @$pb.TagNumber(1)
  void clearSortType() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get sortName => $_getSZ(1);
  @$pb.TagNumber(2)
  set sortName($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSortName() => $_has(1);
  @$pb.TagNumber(2)
  void clearSortName() => $_clearField(2);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
