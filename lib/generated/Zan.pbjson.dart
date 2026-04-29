// This is a generated file - do not edit.
//
// Generated from Zan.proto.

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

@$core.Deprecated('Use zanDescriptor instead')
const Zan$json = {
  '1': 'Zan',
  '2': [
    {'1': 'num', '3': 1, '4': 1, '5': 5, '10': 'num'},
    {
      '1': 'liker_list',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.tieba.User',
      '10': 'likerList'
    },
    {'1': 'is_liked', '3': 3, '4': 1, '5': 5, '10': 'isLiked'},
    {'1': 'last_time', '3': 4, '4': 1, '5': 5, '10': 'lastTime'},
    {'1': 'liker_id', '3': 5, '4': 3, '5': 3, '10': 'likerId'},
    {'1': 'consent_type', '3': 6, '4': 1, '5': 5, '10': 'consentType'},
  ],
};

/// Descriptor for `Zan`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List zanDescriptor = $convert.base64Decode(
    'CgNaYW4SEAoDbnVtGAEgASgFUgNudW0SKgoKbGlrZXJfbGlzdBgCIAMoCzILLnRpZWJhLlVzZX'
    'JSCWxpa2VyTGlzdBIZCghpc19saWtlZBgDIAEoBVIHaXNMaWtlZBIbCglsYXN0X3RpbWUYBCAB'
    'KAVSCGxhc3RUaW1lEhkKCGxpa2VyX2lkGAUgAygDUgdsaWtlcklkEiEKDGNvbnNlbnRfdHlwZR'
    'gGIAEoBVILY29uc2VudFR5cGU=');
