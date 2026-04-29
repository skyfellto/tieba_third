// This is a generated file - do not edit.
//
// Generated from AlaCoverLabel.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class AlaCoverLabel extends $pb.GeneratedMessage {
  factory AlaCoverLabel({
    $core.int? labelId,
    $core.String? labelName,
    $core.String? labelRgb,
  }) {
    final result = create();
    if (labelId != null) result.labelId = labelId;
    if (labelName != null) result.labelName = labelName;
    if (labelRgb != null) result.labelRgb = labelRgb;
    return result;
  }

  AlaCoverLabel._();

  factory AlaCoverLabel.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AlaCoverLabel.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AlaCoverLabel',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'labelId', fieldType: $pb.PbFieldType.OU3)
    ..aOS(2, _omitFieldNames ? '' : 'labelName')
    ..aOS(3, _omitFieldNames ? '' : 'labelRgb')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AlaCoverLabel clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AlaCoverLabel copyWith(void Function(AlaCoverLabel) updates) =>
      super.copyWith((message) => updates(message as AlaCoverLabel))
          as AlaCoverLabel;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AlaCoverLabel create() => AlaCoverLabel._();
  @$core.override
  AlaCoverLabel createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AlaCoverLabel getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AlaCoverLabel>(create);
  static AlaCoverLabel? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get labelId => $_getIZ(0);
  @$pb.TagNumber(1)
  set labelId($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasLabelId() => $_has(0);
  @$pb.TagNumber(1)
  void clearLabelId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get labelName => $_getSZ(1);
  @$pb.TagNumber(2)
  set labelName($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasLabelName() => $_has(1);
  @$pb.TagNumber(2)
  void clearLabelName() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get labelRgb => $_getSZ(2);
  @$pb.TagNumber(3)
  set labelRgb($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasLabelRgb() => $_has(2);
  @$pb.TagNumber(3)
  void clearLabelRgb() => $_clearField(3);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
