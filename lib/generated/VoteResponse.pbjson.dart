// This is a generated file - do not edit.
//
// Generated from VoteResponse.proto.

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

@$core.Deprecated('Use voteResponseDescriptor instead')
const VoteResponse$json = {
  '1': 'VoteResponse',
  '2': [
    {
      '1': 'res1',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.tieba.VoteResponse.SubResponse',
      '10': 'res1'
    },
    {
      '1': 'res2',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.tieba.VoteResponse.SubResponse',
      '10': 'res2'
    },
  ],
  '3': [VoteResponse_SubResponse$json],
};

@$core.Deprecated('Use voteResponseDescriptor instead')
const VoteResponse_SubResponse$json = {
  '1': 'SubResponse',
  '2': [
    {'1': 'code', '3': 1, '4': 1, '5': 5, '10': 'code'},
    {'1': 'msg', '3': 2, '4': 1, '5': 9, '10': 'msg'},
    {'1': 'extra', '3': 3, '4': 1, '5': 9, '10': 'extra'},
  ],
};

/// Descriptor for `VoteResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List voteResponseDescriptor = $convert.base64Decode(
    'CgxWb3RlUmVzcG9uc2USMwoEcmVzMRgBIAEoCzIfLnRpZWJhLlZvdGVSZXNwb25zZS5TdWJSZX'
    'Nwb25zZVIEcmVzMRIzCgRyZXMyGAIgASgLMh8udGllYmEuVm90ZVJlc3BvbnNlLlN1YlJlc3Bv'
    'bnNlUgRyZXMyGkkKC1N1YlJlc3BvbnNlEhIKBGNvZGUYASABKAVSBGNvZGUSEAoDbXNnGAIgAS'
    'gJUgNtc2cSFAoFZXh0cmEYAyABKAlSBWV4dHJh');
