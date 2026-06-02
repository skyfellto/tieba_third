// This is a generated file - do not edit.
//
// Generated from PollInfo.proto.

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

@$core.Deprecated('Use pollInfoDescriptor instead')
const PollInfo$json = {
  '1': 'PollInfo',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 5, '10': 'type'},
    {'1': 'is_multi', '3': 2, '4': 1, '5': 5, '10': 'isMulti'},
    {'1': 'total_num', '3': 3, '4': 1, '5': 3, '10': 'totalNum'},
    {'1': 'options_count', '3': 4, '4': 1, '5': 5, '10': 'optionsCount'},
    {'1': 'is_polled', '3': 5, '4': 1, '5': 5, '10': 'isPolled'},
    {'1': 'polled_value', '3': 6, '4': 1, '5': 9, '10': 'polledValue'},
    {'1': 'tips', '3': 7, '4': 1, '5': 9, '10': 'tips'},
    {'1': 'end_time', '3': 8, '4': 1, '5': 5, '10': 'endTime'},
    {
      '1': 'options',
      '3': 9,
      '4': 3,
      '5': 11,
      '6': '.tieba.PollOption',
      '10': 'options'
    },
    {'1': 'status', '3': 10, '4': 1, '5': 5, '10': 'status'},
    {'1': 'total_poll', '3': 11, '4': 1, '5': 3, '10': 'totalPoll'},
    {'1': 'title', '3': 12, '4': 1, '5': 9, '10': 'title'},
    {'1': 'last_time', '3': 13, '4': 1, '5': 13, '10': 'lastTime'},
    {
      '1': 'business_info',
      '3': 14,
      '4': 3,
      '5': 11,
      '6': '.tieba.FeedKV',
      '10': 'businessInfo'
    },
  ],
};

/// Descriptor for `PollInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pollInfoDescriptor = $convert.base64Decode(
    'CghQb2xsSW5mbxISCgR0eXBlGAEgASgFUgR0eXBlEhkKCGlzX211bHRpGAIgASgFUgdpc011bH'
    'RpEhsKCXRvdGFsX251bRgDIAEoA1IIdG90YWxOdW0SIwoNb3B0aW9uc19jb3VudBgEIAEoBVIM'
    'b3B0aW9uc0NvdW50EhsKCWlzX3BvbGxlZBgFIAEoBVIIaXNQb2xsZWQSIQoMcG9sbGVkX3ZhbH'
    'VlGAYgASgJUgtwb2xsZWRWYWx1ZRISCgR0aXBzGAcgASgJUgR0aXBzEhkKCGVuZF90aW1lGAgg'
    'ASgFUgdlbmRUaW1lEisKB29wdGlvbnMYCSADKAsyES50aWViYS5Qb2xsT3B0aW9uUgdvcHRpb2'
    '5zEhYKBnN0YXR1cxgKIAEoBVIGc3RhdHVzEh0KCnRvdGFsX3BvbGwYCyABKANSCXRvdGFsUG9s'
    'bBIUCgV0aXRsZRgMIAEoCVIFdGl0bGUSGwoJbGFzdF90aW1lGA0gASgNUghsYXN0VGltZRIyCg'
    '1idXNpbmVzc19pbmZvGA4gAygLMg0udGllYmEuRmVlZEtWUgxidXNpbmVzc0luZm8=');
