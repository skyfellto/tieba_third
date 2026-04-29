// This is a generated file - do not edit.
//
// Generated from AppPosInfo.proto.

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

@$core.Deprecated('Use appPosInfoDescriptor instead')
const AppPosInfo$json = {
  '1': 'AppPosInfo',
  '2': [
    {
      '1': 'addr_timestamp',
      '3': 6,
      '4': 1,
      '5': 3,
      '9': 0,
      '10': 'addrTimestamp',
      '17': true
    },
    {
      '1': 'ap_connected',
      '3': 2,
      '4': 1,
      '5': 8,
      '9': 1,
      '10': 'apConnected',
      '17': true
    },
    {'1': 'ap_mac', '3': 1, '4': 1, '5': 9, '9': 2, '10': 'apMac', '17': true},
    {
      '1': 'asp_shown_info',
      '3': 7,
      '4': 1,
      '5': 9,
      '9': 3,
      '10': 'aspShownInfo',
      '17': true
    },
    {
      '1': 'coordinate_type',
      '3': 3,
      '4': 1,
      '5': 9,
      '9': 4,
      '10': 'coordinateType',
      '17': true
    },
  ],
  '8': [
    {'1': '_addr_timestamp'},
    {'1': '_ap_connected'},
    {'1': '_ap_mac'},
    {'1': '_asp_shown_info'},
    {'1': '_coordinate_type'},
  ],
};

/// Descriptor for `AppPosInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List appPosInfoDescriptor = $convert.base64Decode(
    'CgpBcHBQb3NJbmZvEioKDmFkZHJfdGltZXN0YW1wGAYgASgDSABSDWFkZHJUaW1lc3RhbXCIAQ'
    'ESJgoMYXBfY29ubmVjdGVkGAIgASgISAFSC2FwQ29ubmVjdGVkiAEBEhoKBmFwX21hYxgBIAEo'
    'CUgCUgVhcE1hY4gBARIpCg5hc3Bfc2hvd25faW5mbxgHIAEoCUgDUgxhc3BTaG93bkluZm+IAQ'
    'ESLAoPY29vcmRpbmF0ZV90eXBlGAMgASgJSARSDmNvb3JkaW5hdGVUeXBliAEBQhEKD19hZGRy'
    'X3RpbWVzdGFtcEIPCg1fYXBfY29ubmVjdGVkQgkKB19hcF9tYWNCEQoPX2FzcF9zaG93bl9pbm'
    'ZvQhIKEF9jb29yZGluYXRlX3R5cGU=');
