// This is a generated file - do not edit.
//
// Generated from GradePoint.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class GradePoint extends $pb.GeneratedMessage {
  factory GradePoint({
    $core.String? pointName,
    $core.int? pointType,
    $core.int? currentPoint,
    $core.int? nextPoint,
  }) {
    final result = create();
    if (pointName != null) result.pointName = pointName;
    if (pointType != null) result.pointType = pointType;
    if (currentPoint != null) result.currentPoint = currentPoint;
    if (nextPoint != null) result.nextPoint = nextPoint;
    return result;
  }

  GradePoint._();

  factory GradePoint.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GradePoint.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GradePoint',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'pointName')
    ..aI(2, _omitFieldNames ? '' : 'pointType')
    ..aI(3, _omitFieldNames ? '' : 'currentPoint')
    ..aI(4, _omitFieldNames ? '' : 'nextPoint')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GradePoint clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GradePoint copyWith(void Function(GradePoint) updates) =>
      super.copyWith((message) => updates(message as GradePoint)) as GradePoint;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GradePoint create() => GradePoint._();
  @$core.override
  GradePoint createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GradePoint getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GradePoint>(create);
  static GradePoint? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get pointName => $_getSZ(0);
  @$pb.TagNumber(1)
  set pointName($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPointName() => $_has(0);
  @$pb.TagNumber(1)
  void clearPointName() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get pointType => $_getIZ(1);
  @$pb.TagNumber(2)
  set pointType($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPointType() => $_has(1);
  @$pb.TagNumber(2)
  void clearPointType() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get currentPoint => $_getIZ(2);
  @$pb.TagNumber(3)
  set currentPoint($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasCurrentPoint() => $_has(2);
  @$pb.TagNumber(3)
  void clearCurrentPoint() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get nextPoint => $_getIZ(3);
  @$pb.TagNumber(4)
  set nextPoint($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasNextPoint() => $_has(3);
  @$pb.TagNumber(4)
  void clearNextPoint() => $_clearField(4);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
