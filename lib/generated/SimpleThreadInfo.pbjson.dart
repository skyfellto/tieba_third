// This is a generated file - do not edit.
//
// Generated from SimpleThreadInfo.proto.

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

@$core.Deprecated('Use simpleThreadInfoDescriptor instead')
const SimpleThreadInfo$json = {
  '1': 'SimpleThreadInfo',
  '2': [
    {'1': 'tid', '3': 1, '4': 1, '5': 4, '10': 'tid'},
    {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    {'1': 'reply_num', '3': 3, '4': 1, '5': 5, '10': 'replyNum'},
    {'1': 'last_time_int', '3': 4, '4': 1, '5': 5, '10': 'lastTimeInt'},
    {
      '1': '_abstract',
      '3': 5,
      '4': 3,
      '5': 11,
      '6': '.tieba.Abstract',
      '10': 'Abstract'
    },
    {'1': 'zan', '3': 6, '4': 1, '5': 11, '6': '.tieba.Zan', '10': 'zan'},
    {'1': 'thread_type', '3': 7, '4': 1, '5': 4, '10': 'threadType'},
  ],
};

/// Descriptor for `SimpleThreadInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List simpleThreadInfoDescriptor = $convert.base64Decode(
    'ChBTaW1wbGVUaHJlYWRJbmZvEhAKA3RpZBgBIAEoBFIDdGlkEhQKBXRpdGxlGAIgASgJUgV0aX'
    'RsZRIbCglyZXBseV9udW0YAyABKAVSCHJlcGx5TnVtEiIKDWxhc3RfdGltZV9pbnQYBCABKAVS'
    'C2xhc3RUaW1lSW50EiwKCV9hYnN0cmFjdBgFIAMoCzIPLnRpZWJhLkFic3RyYWN0UghBYnN0cm'
    'FjdBIcCgN6YW4YBiABKAsyCi50aWViYS5aYW5SA3phbhIfCgt0aHJlYWRfdHlwZRgHIAEoBFIK'
    'dGhyZWFkVHlwZQ==');
