// This is a generated file - do not edit.
//
// Generated from AccessState.proto.

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

@$core.Deprecated('Use accessStateDescriptor instead')
const AccessState$json = {
  '1': 'AccessState',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 9, '10': 'type'},
    {'1': 'token', '3': 2, '4': 1, '5': 9, '10': 'token'},
    {
      '1': 'userinfo',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.tieba.UserSessionInfo',
      '10': 'userinfo'
    },
  ],
};

/// Descriptor for `AccessState`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accessStateDescriptor = $convert.base64Decode(
    'CgtBY2Nlc3NTdGF0ZRISCgR0eXBlGAEgASgJUgR0eXBlEhQKBXRva2VuGAIgASgJUgV0b2tlbh'
    'IyCgh1c2VyaW5mbxgDIAEoCzIWLnRpZWJhLlVzZXJTZXNzaW9uSW5mb1IIdXNlcmluZm8=');
