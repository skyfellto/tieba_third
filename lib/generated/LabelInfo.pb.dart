// This is a generated file - do not edit.
//
// Generated from LabelInfo.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class LabelInfo extends $pb.GeneratedMessage {
  factory LabelInfo({
    $core.int? labelHot,
    $core.String? labelContent,
    $core.String? labelId,
  }) {
    final result = create();
    if (labelHot != null) result.labelHot = labelHot;
    if (labelContent != null) result.labelContent = labelContent;
    if (labelId != null) result.labelId = labelId;
    return result;
  }

  LabelInfo._();

  factory LabelInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory LabelInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'LabelInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'labelHot', protoName: 'labelHot')
    ..aOS(2, _omitFieldNames ? '' : 'labelContent', protoName: 'labelContent')
    ..aOS(3, _omitFieldNames ? '' : 'labelId', protoName: 'labelId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LabelInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LabelInfo copyWith(void Function(LabelInfo) updates) =>
      super.copyWith((message) => updates(message as LabelInfo)) as LabelInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LabelInfo create() => LabelInfo._();
  @$core.override
  LabelInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static LabelInfo getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LabelInfo>(create);
  static LabelInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get labelHot => $_getIZ(0);
  @$pb.TagNumber(1)
  set labelHot($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasLabelHot() => $_has(0);
  @$pb.TagNumber(1)
  void clearLabelHot() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get labelContent => $_getSZ(1);
  @$pb.TagNumber(2)
  set labelContent($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasLabelContent() => $_has(1);
  @$pb.TagNumber(2)
  void clearLabelContent() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get labelId => $_getSZ(2);
  @$pb.TagNumber(3)
  set labelId($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasLabelId() => $_has(2);
  @$pb.TagNumber(3)
  void clearLabelId() => $_clearField(3);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
