// This is a generated file - do not edit.
//
// Generated from GetForumDetail/BazhuGrade.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports
// ignore_for_file: unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use bazhuGradeDescriptor instead')
const BazhuGrade$json = {
  '1': 'BazhuGrade',
  '2': [
    {'1': 'grade', '3': 1, '4': 1, '5': 9, '10': 'grade'},
    {
      '1': 'grade_point',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.tieba.GradePoint',
      '10': 'gradePoint'
    },
    {
      '1': 'estimation_left_text',
      '3': 3,
      '4': 1,
      '5': 9,
      '10': 'estimationLeftText'
    },
    {'1': 'grade_text', '3': 4, '4': 1, '5': 9, '10': 'gradeText'},
    {
      '1': 'estimation_left_time',
      '3': 5,
      '4': 1,
      '5': 5,
      '10': 'estimationLeftTime'
    },
  ],
};

/// Descriptor for `BazhuGrade`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bazhuGradeDescriptor = $convert.base64Decode(
    'CgpCYXpodUdyYWRlEhQKBWdyYWRlGAEgASgJUgVncmFkZRIyCgtncmFkZV9wb2ludBgCIAMoCz'
    'IRLnRpZWJhLkdyYWRlUG9pbnRSCmdyYWRlUG9pbnQSMAoUZXN0aW1hdGlvbl9sZWZ0X3RleHQY'
    'AyABKAlSEmVzdGltYXRpb25MZWZ0VGV4dBIdCgpncmFkZV90ZXh0GAQgASgJUglncmFkZVRleH'
    'QSMAoUZXN0aW1hdGlvbl9sZWZ0X3RpbWUYBSABKAVSEmVzdGltYXRpb25MZWZ0VGltZQ==');
