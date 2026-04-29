// This is a generated file - do not edit.
//
// Generated from CustomGrid.proto.

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

class CustomGrid extends $pb.GeneratedMessage {
  factory CustomGrid({
    $core.String? title,
    $core.String? actionUri,
    $core.int? actionType,
    $core.String? icon,
    $core.int? type,
    $fixnum.Int64? redPointVersion,
    $core.String? desc,
    $core.String? markText,
  }) {
    final result = create();
    if (title != null) result.title = title;
    if (actionUri != null) result.actionUri = actionUri;
    if (actionType != null) result.actionType = actionType;
    if (icon != null) result.icon = icon;
    if (type != null) result.type = type;
    if (redPointVersion != null) result.redPointVersion = redPointVersion;
    if (desc != null) result.desc = desc;
    if (markText != null) result.markText = markText;
    return result;
  }

  CustomGrid._();

  factory CustomGrid.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CustomGrid.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CustomGrid',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'title')
    ..aOS(2, _omitFieldNames ? '' : 'actionUri')
    ..aI(3, _omitFieldNames ? '' : 'actionType')
    ..aOS(4, _omitFieldNames ? '' : 'icon')
    ..aI(6, _omitFieldNames ? '' : 'type')
    ..aInt64(7, _omitFieldNames ? '' : 'redPointVersion')
    ..aOS(8, _omitFieldNames ? '' : 'desc')
    ..aOS(9, _omitFieldNames ? '' : 'markText')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CustomGrid clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CustomGrid copyWith(void Function(CustomGrid) updates) =>
      super.copyWith((message) => updates(message as CustomGrid)) as CustomGrid;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CustomGrid create() => CustomGrid._();
  @$core.override
  CustomGrid createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CustomGrid getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CustomGrid>(create);
  static CustomGrid? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get actionUri => $_getSZ(1);
  @$pb.TagNumber(2)
  set actionUri($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasActionUri() => $_has(1);
  @$pb.TagNumber(2)
  void clearActionUri() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get actionType => $_getIZ(2);
  @$pb.TagNumber(3)
  set actionType($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasActionType() => $_has(2);
  @$pb.TagNumber(3)
  void clearActionType() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get icon => $_getSZ(3);
  @$pb.TagNumber(4)
  set icon($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasIcon() => $_has(3);
  @$pb.TagNumber(4)
  void clearIcon() => $_clearField(4);

  @$pb.TagNumber(6)
  $core.int get type => $_getIZ(4);
  @$pb.TagNumber(6)
  set type($core.int value) => $_setSignedInt32(4, value);
  @$pb.TagNumber(6)
  $core.bool hasType() => $_has(4);
  @$pb.TagNumber(6)
  void clearType() => $_clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get redPointVersion => $_getI64(5);
  @$pb.TagNumber(7)
  set redPointVersion($fixnum.Int64 value) => $_setInt64(5, value);
  @$pb.TagNumber(7)
  $core.bool hasRedPointVersion() => $_has(5);
  @$pb.TagNumber(7)
  void clearRedPointVersion() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.String get desc => $_getSZ(6);
  @$pb.TagNumber(8)
  set desc($core.String value) => $_setString(6, value);
  @$pb.TagNumber(8)
  $core.bool hasDesc() => $_has(6);
  @$pb.TagNumber(8)
  void clearDesc() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.String get markText => $_getSZ(7);
  @$pb.TagNumber(9)
  set markText($core.String value) => $_setString(7, value);
  @$pb.TagNumber(9)
  $core.bool hasMarkText() => $_has(7);
  @$pb.TagNumber(9)
  void clearMarkText() => $_clearField(9);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
