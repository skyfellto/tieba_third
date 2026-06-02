// This is a generated file - do not edit.
//
// Generated from ReplyMe/DataReq.proto.

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

@$core.Deprecated('Use dataReqDescriptor instead')
const DataReq$json = {
  '1': 'DataReq',
  '2': [
    {'1': 'pn', '3': 1, '4': 1, '5': 5, '10': 'pn'},
    {'1': 'ids', '3': 2, '4': 1, '5': 9, '10': 'ids'},
    {
      '1': 'common',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.tieba.CommonReq',
      '10': 'common'
    },
    {'1': 'scr_w', '3': 4, '4': 1, '5': 5, '10': 'scrW'},
    {'1': 'scr_h', '3': 5, '4': 1, '5': 5, '10': 'scrH'},
    {'1': 'scr_dip', '3': 6, '4': 1, '5': 1, '10': 'scrDip'},
    {'1': 'q_type', '3': 7, '4': 1, '5': 5, '10': 'qType'},
    {'1': 'is_first', '3': 8, '4': 1, '5': 5, '10': 'isFirst'},
    {'1': 'call_from', '3': 9, '4': 1, '5': 9, '10': 'callFrom'},
    {'1': 'time', '3': 10, '4': 1, '5': 3, '10': 'time'},
    {'1': 'tid', '3': 11, '4': 1, '5': 3, '10': 'tid'},
  ],
};

/// Descriptor for `DataReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dataReqDescriptor = $convert.base64Decode(
    'CgdEYXRhUmVxEg4KAnBuGAEgASgFUgJwbhIQCgNpZHMYAiABKAlSA2lkcxIoCgZjb21tb24YAy'
    'ABKAsyEC50aWViYS5Db21tb25SZXFSBmNvbW1vbhITCgVzY3JfdxgEIAEoBVIEc2NyVxITCgVz'
    'Y3JfaBgFIAEoBVIEc2NySBIXCgdzY3JfZGlwGAYgASgBUgZzY3JEaXASFQoGcV90eXBlGAcgAS'
    'gFUgVxVHlwZRIZCghpc19maXJzdBgIIAEoBVIHaXNGaXJzdBIbCgljYWxsX2Zyb20YCSABKAlS'
    'CGNhbGxGcm9tEhIKBHRpbWUYCiABKANSBHRpbWUSEAoDdGlkGAsgASgDUgN0aWQ=');
