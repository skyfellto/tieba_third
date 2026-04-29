// This is a generated file - do not edit.
//
// Generated from ManagerElection.proto.

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

@$core.Deprecated('Use managerElectionDescriptor instead')
const ManagerElection$json = {
  '1': 'ManagerElection',
  '2': [
    {'1': 'can_vote', '3': 1, '4': 1, '5': 13, '10': 'canVote'},
    {'1': 'vote_num', '3': 2, '4': 1, '5': 13, '10': 'voteNum'},
    {'1': 'begin_vote_time', '3': 3, '4': 1, '5': 13, '10': 'beginVoteTime'},
    {'1': 'vote_condition', '3': 5, '4': 3, '5': 9, '10': 'voteCondition'},
    {'1': 'tail_text', '3': 6, '4': 1, '5': 9, '10': 'tailText'},
    {
      '1': 'is_show_distribute',
      '3': 7,
      '4': 1,
      '5': 13,
      '10': 'isShowDistribute'
    },
    {'1': 'remainder_time', '3': 8, '4': 1, '5': 13, '10': 'remainderTime'},
    {'1': 'status', '3': 9, '4': 1, '5': 13, '10': 'status'},
    {
      '1': 'vote_condition_title',
      '3': 10,
      '4': 3,
      '5': 9,
      '10': 'voteConditionTitle'
    },
    {
      '1': 'vote_condition_pic',
      '3': 11,
      '4': 3,
      '5': 9,
      '10': 'voteConditionPic'
    },
  ],
};

/// Descriptor for `ManagerElection`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List managerElectionDescriptor = $convert.base64Decode(
    'Cg9NYW5hZ2VyRWxlY3Rpb24SGQoIY2FuX3ZvdGUYASABKA1SB2NhblZvdGUSGQoIdm90ZV9udW'
    '0YAiABKA1SB3ZvdGVOdW0SJgoPYmVnaW5fdm90ZV90aW1lGAMgASgNUg1iZWdpblZvdGVUaW1l'
    'EiUKDnZvdGVfY29uZGl0aW9uGAUgAygJUg12b3RlQ29uZGl0aW9uEhsKCXRhaWxfdGV4dBgGIA'
    'EoCVIIdGFpbFRleHQSLAoSaXNfc2hvd19kaXN0cmlidXRlGAcgASgNUhBpc1Nob3dEaXN0cmli'
    'dXRlEiUKDnJlbWFpbmRlcl90aW1lGAggASgNUg1yZW1haW5kZXJUaW1lEhYKBnN0YXR1cxgJIA'
    'EoDVIGc3RhdHVzEjAKFHZvdGVfY29uZGl0aW9uX3RpdGxlGAogAygJUhJ2b3RlQ29uZGl0aW9u'
    'VGl0bGUSLAoSdm90ZV9jb25kaXRpb25fcGljGAsgAygJUhB2b3RlQ29uZGl0aW9uUGlj');
