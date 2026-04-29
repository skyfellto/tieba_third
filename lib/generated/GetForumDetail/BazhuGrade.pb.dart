// This is a generated file - do not edit.
//
// Generated from GetForumDetail/BazhuGrade.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../GradePoint.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class BazhuGrade extends $pb.GeneratedMessage {
  factory BazhuGrade({
    $core.String? grade,
    $core.Iterable<$0.GradePoint>? gradePoint,
    $core.String? estimationLeftText,
    $core.String? gradeText,
    $core.int? estimationLeftTime,
  }) {
    final result = create();
    if (grade != null) result.grade = grade;
    if (gradePoint != null) result.gradePoint.addAll(gradePoint);
    if (estimationLeftText != null)
      result.estimationLeftText = estimationLeftText;
    if (gradeText != null) result.gradeText = gradeText;
    if (estimationLeftTime != null)
      result.estimationLeftTime = estimationLeftTime;
    return result;
  }

  BazhuGrade._();

  factory BazhuGrade.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BazhuGrade.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BazhuGrade',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'tieba.getForumDetail'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'grade')
    ..pPM<$0.GradePoint>(2, _omitFieldNames ? '' : 'gradePoint',
        subBuilder: $0.GradePoint.create)
    ..aOS(3, _omitFieldNames ? '' : 'estimationLeftText')
    ..aOS(4, _omitFieldNames ? '' : 'gradeText')
    ..aI(5, _omitFieldNames ? '' : 'estimationLeftTime')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BazhuGrade clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BazhuGrade copyWith(void Function(BazhuGrade) updates) =>
      super.copyWith((message) => updates(message as BazhuGrade)) as BazhuGrade;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BazhuGrade create() => BazhuGrade._();
  @$core.override
  BazhuGrade createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BazhuGrade getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BazhuGrade>(create);
  static BazhuGrade? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get grade => $_getSZ(0);
  @$pb.TagNumber(1)
  set grade($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasGrade() => $_has(0);
  @$pb.TagNumber(1)
  void clearGrade() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<$0.GradePoint> get gradePoint => $_getList(1);

  @$pb.TagNumber(3)
  $core.String get estimationLeftText => $_getSZ(2);
  @$pb.TagNumber(3)
  set estimationLeftText($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasEstimationLeftText() => $_has(2);
  @$pb.TagNumber(3)
  void clearEstimationLeftText() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get gradeText => $_getSZ(3);
  @$pb.TagNumber(4)
  set gradeText($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasGradeText() => $_has(3);
  @$pb.TagNumber(4)
  void clearGradeText() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get estimationLeftTime => $_getIZ(4);
  @$pb.TagNumber(5)
  set estimationLeftTime($core.int value) => $_setSignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasEstimationLeftTime() => $_has(4);
  @$pb.TagNumber(5)
  void clearEstimationLeftTime() => $_clearField(5);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
