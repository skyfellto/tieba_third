// This is a generated file - do not edit.
//
// Generated from NewGodInfo.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class NewGodInfo extends $pb.GeneratedMessage {
  factory NewGodInfo({
    $core.int? status,
    $core.int? fieldId,
    $core.String? fieldName,
    $core.int? type,
    $core.String? typeName,
  }) {
    final result = create();
    if (status != null) result.status = status;
    if (fieldId != null) result.fieldId = fieldId;
    if (fieldName != null) result.fieldName = fieldName;
    if (type != null) result.type = type;
    if (typeName != null) result.typeName = typeName;
    return result;
  }

  NewGodInfo._();

  factory NewGodInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory NewGodInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'NewGodInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'status')
    ..aI(2, _omitFieldNames ? '' : 'fieldId', fieldType: $pb.PbFieldType.OU3)
    ..aOS(3, _omitFieldNames ? '' : 'fieldName')
    ..aI(4, _omitFieldNames ? '' : 'type', fieldType: $pb.PbFieldType.OU3)
    ..aOS(5, _omitFieldNames ? '' : 'typeName')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NewGodInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NewGodInfo copyWith(void Function(NewGodInfo) updates) =>
      super.copyWith((message) => updates(message as NewGodInfo)) as NewGodInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NewGodInfo create() => NewGodInfo._();
  @$core.override
  NewGodInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static NewGodInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<NewGodInfo>(create);
  static NewGodInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get status => $_getIZ(0);
  @$pb.TagNumber(1)
  set status($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get fieldId => $_getIZ(1);
  @$pb.TagNumber(2)
  set fieldId($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasFieldId() => $_has(1);
  @$pb.TagNumber(2)
  void clearFieldId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get fieldName => $_getSZ(2);
  @$pb.TagNumber(3)
  set fieldName($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasFieldName() => $_has(2);
  @$pb.TagNumber(3)
  void clearFieldName() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get type => $_getIZ(3);
  @$pb.TagNumber(4)
  set type($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasType() => $_has(3);
  @$pb.TagNumber(4)
  void clearType() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get typeName => $_getSZ(4);
  @$pb.TagNumber(5)
  set typeName($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasTypeName() => $_has(4);
  @$pb.TagNumber(5)
  void clearTypeName() => $_clearField(5);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
