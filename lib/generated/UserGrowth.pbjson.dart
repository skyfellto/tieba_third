// This is a generated file - do not edit.
//
// Generated from UserGrowth.proto.

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

@$core.Deprecated('Use userGrowthDescriptor instead')
const UserGrowth$json = {
  '1': 'UserGrowth',
  '2': [
    {'1': 'level_id', '3': 1, '4': 1, '5': 13, '10': 'levelId'},
    {'1': 'score', '3': 2, '4': 1, '5': 3, '10': 'score'},
    {'1': 'target_score', '3': 3, '4': 1, '5': 3, '10': 'targetScore'},
    {'1': 'tmoney', '3': 4, '4': 1, '5': 1, '10': 'tmoney'},
    {
      '1': 'task_info',
      '3': 5,
      '4': 3,
      '5': 11,
      '6': '.UserTaskInfo',
      '10': 'taskInfo'
    },
  ],
};

/// Descriptor for `UserGrowth`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userGrowthDescriptor = $convert.base64Decode(
    'CgpVc2VyR3Jvd3RoEhkKCGxldmVsX2lkGAEgASgNUgdsZXZlbElkEhQKBXNjb3JlGAIgASgDUg'
    'VzY29yZRIhCgx0YXJnZXRfc2NvcmUYAyABKANSC3RhcmdldFNjb3JlEhYKBnRtb25leRgEIAEo'
    'AVIGdG1vbmV5EioKCXRhc2tfaW5mbxgFIAMoCzINLlVzZXJUYXNrSW5mb1IIdGFza0luZm8=');
