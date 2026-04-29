// This is a generated file - do not edit.
//
// Generated from RecomThreadList.proto.

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

@$core.Deprecated('Use recomThreadListDescriptor instead')
const RecomThreadList$json = {
  '1': 'RecomThreadList',
  '2': [
    {
      '1': 'user_list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.tieba.User',
      '10': 'userList'
    },
    {
      '1': 'thread_list',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.tieba.ThreadInfo',
      '10': 'threadList'
    },
    {'1': 'recommend_date', '3': 3, '4': 1, '5': 9, '10': 'recommendDate'},
    {'1': 'current_pv', '3': 4, '4': 1, '5': 3, '10': 'currentPv'},
  ],
};

/// Descriptor for `RecomThreadList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List recomThreadListDescriptor = $convert.base64Decode(
    'Cg9SZWNvbVRocmVhZExpc3QSKAoJdXNlcl9saXN0GAEgAygLMgsudGllYmEuVXNlclIIdXNlck'
    'xpc3QSMgoLdGhyZWFkX2xpc3QYAiADKAsyES50aWViYS5UaHJlYWRJbmZvUgp0aHJlYWRMaXN0'
    'EiUKDnJlY29tbWVuZF9kYXRlGAMgASgJUg1yZWNvbW1lbmREYXRlEh0KCmN1cnJlbnRfcHYYBC'
    'ABKANSCWN1cnJlbnRQdg==');
