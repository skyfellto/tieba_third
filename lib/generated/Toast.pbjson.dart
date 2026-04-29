// This is a generated file - do not edit.
//
// Generated from Toast.proto.

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

@$core.Deprecated('Use toastDescriptor instead')
const Toast$json = {
  '1': 'Toast',
  '2': [
    {'1': 'icon_type', '3': 1, '4': 1, '5': 5, '10': 'iconType'},
    {
      '1': 'content',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.tieba.ToastContent',
      '10': 'content'
    },
    {'1': 'url', '3': 3, '4': 1, '5': 9, '10': 'url'},
    {'1': 'background', '3': 4, '4': 1, '5': 9, '10': 'background'},
  ],
};

/// Descriptor for `Toast`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List toastDescriptor = $convert.base64Decode(
    'CgVUb2FzdBIbCglpY29uX3R5cGUYASABKAVSCGljb25UeXBlEi0KB2NvbnRlbnQYAiADKAsyEy'
    '50aWViYS5Ub2FzdENvbnRlbnRSB2NvbnRlbnQSEAoDdXJsGAMgASgJUgN1cmwSHgoKYmFja2dy'
    'b3VuZBgEIAEoCVIKYmFja2dyb3VuZA==');
