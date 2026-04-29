// This is a generated file - do not edit.
//
// Generated from SendCardInfo.proto.

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

@$core.Deprecated('Use sendCardInfoDescriptor instead')
const SendCardInfo$json = {
  '1': 'SendCardInfo',
  '2': [
    {'1': 'card_logo', '3': 1, '4': 1, '5': 9, '10': 'cardLogo'},
    {'1': 'card_name', '3': 2, '4': 1, '5': 9, '10': 'cardName'},
    {'1': 'card_pro', '3': 3, '4': 1, '5': 9, '10': 'cardPro'},
    {'1': 'card_get_status', '3': 4, '4': 1, '5': 5, '10': 'cardGetStatus'},
    {'1': 'packet_id', '3': 5, '4': 1, '5': 3, '10': 'packetId'},
  ],
};

/// Descriptor for `SendCardInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sendCardInfoDescriptor = $convert.base64Decode(
    'CgxTZW5kQ2FyZEluZm8SGwoJY2FyZF9sb2dvGAEgASgJUghjYXJkTG9nbxIbCgljYXJkX25hbW'
    'UYAiABKAlSCGNhcmROYW1lEhkKCGNhcmRfcHJvGAMgASgJUgdjYXJkUHJvEiYKD2NhcmRfZ2V0'
    'X3N0YXR1cxgEIAEoBVINY2FyZEdldFN0YXR1cxIbCglwYWNrZXRfaWQYBSABKANSCHBhY2tldE'
    'lk');
