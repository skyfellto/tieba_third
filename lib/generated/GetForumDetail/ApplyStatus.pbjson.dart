// This is a generated file - do not edit.
//
// Generated from GetForumDetail/ApplyStatus.proto.

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

@$core.Deprecated('Use applyStatusDescriptor instead')
const ApplyStatus$json = {
  '1': 'ApplyStatus',
  '2': [
    {
      '1': 'is_avatar_applying',
      '3': 1,
      '4': 1,
      '5': 5,
      '10': 'isAvatarApplying'
    },
    {'1': 'is_desc_applying', '3': 2, '4': 1, '5': 5, '10': 'isDescApplying'},
    {
      '1': 'next_avatar_apply_time',
      '3': 3,
      '4': 1,
      '5': 5,
      '10': 'nextAvatarApplyTime'
    },
    {
      '1': 'next_desc_apply_time',
      '3': 4,
      '4': 1,
      '5': 5,
      '10': 'nextDescApplyTime'
    },
    {'1': 'is_fdir_applying', '3': 5, '4': 1, '5': 5, '10': 'isFdirApplying'},
    {
      '1': 'fdir_next_apply_time',
      '3': 6,
      '4': 1,
      '5': 5,
      '10': 'fdirNextApplyTime'
    },
  ],
};

/// Descriptor for `ApplyStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List applyStatusDescriptor = $convert.base64Decode(
    'CgtBcHBseVN0YXR1cxIsChJpc19hdmF0YXJfYXBwbHlpbmcYASABKAVSEGlzQXZhdGFyQXBwbH'
    'lpbmcSKAoQaXNfZGVzY19hcHBseWluZxgCIAEoBVIOaXNEZXNjQXBwbHlpbmcSMwoWbmV4dF9h'
    'dmF0YXJfYXBwbHlfdGltZRgDIAEoBVITbmV4dEF2YXRhckFwcGx5VGltZRIvChRuZXh0X2Rlc2'
    'NfYXBwbHlfdGltZRgEIAEoBVIRbmV4dERlc2NBcHBseVRpbWUSKAoQaXNfZmRpcl9hcHBseWlu'
    'ZxgFIAEoBVIOaXNGZGlyQXBwbHlpbmcSLwoUZmRpcl9uZXh0X2FwcGx5X3RpbWUYBiABKAVSEW'
    'ZkaXJOZXh0QXBwbHlUaW1l');
