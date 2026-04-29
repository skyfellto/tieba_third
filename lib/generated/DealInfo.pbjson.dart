// This is a generated file - do not edit.
//
// Generated from DealInfo.proto.

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

@$core.Deprecated('Use dealInfoDescriptor instead')
const DealInfo$json = {
  '1': 'DealInfo',
  '2': [
    {'1': 'title', '3': 1, '4': 1, '5': 9, '10': 'title'},
    {'1': 'des', '3': 2, '4': 1, '5': 9, '10': 'des'},
    {'1': 'stock', '3': 3, '4': 1, '5': 4, '10': 'stock'},
    {'1': 'sales', '3': 4, '4': 1, '5': 4, '10': 'sales'},
    {'1': 'expire_time', '3': 5, '4': 1, '5': 13, '10': 'expireTime'},
    {'1': 'unit_price', '3': 6, '4': 1, '5': 4, '10': 'unitPrice'},
    {'1': 'product_id', '3': 7, '4': 1, '5': 4, '10': 'productId'},
    {'1': 'seller_address', '3': 8, '4': 1, '5': 9, '10': 'sellerAddress'},
    {'1': 'recommendations', '3': 9, '4': 1, '5': 3, '10': 'recommendations'},
    {'1': 'has_recommend', '3': 10, '4': 1, '5': 8, '10': 'hasRecommend'},
    {'1': 'status', '3': 11, '4': 1, '5': 5, '10': 'status'},
    {
      '1': 'media',
      '3': 12,
      '4': 3,
      '5': 11,
      '6': '.tieba.DealMedia',
      '10': 'media'
    },
    {
      '1': 'auth_info',
      '3': 13,
      '4': 3,
      '5': 11,
      '6': '.tieba.DealAuthInfo',
      '10': 'authInfo'
    },
    {'1': 'ship_fee', '3': 14, '4': 1, '5': 4, '10': 'shipFee'},
  ],
};

/// Descriptor for `DealInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dealInfoDescriptor = $convert.base64Decode(
    'CghEZWFsSW5mbxIUCgV0aXRsZRgBIAEoCVIFdGl0bGUSEAoDZGVzGAIgASgJUgNkZXMSFAoFc3'
    'RvY2sYAyABKARSBXN0b2NrEhQKBXNhbGVzGAQgASgEUgVzYWxlcxIfCgtleHBpcmVfdGltZRgF'
    'IAEoDVIKZXhwaXJlVGltZRIdCgp1bml0X3ByaWNlGAYgASgEUgl1bml0UHJpY2USHQoKcHJvZH'
    'VjdF9pZBgHIAEoBFIJcHJvZHVjdElkEiUKDnNlbGxlcl9hZGRyZXNzGAggASgJUg1zZWxsZXJB'
    'ZGRyZXNzEigKD3JlY29tbWVuZGF0aW9ucxgJIAEoA1IPcmVjb21tZW5kYXRpb25zEiMKDWhhc1'
    '9yZWNvbW1lbmQYCiABKAhSDGhhc1JlY29tbWVuZBIWCgZzdGF0dXMYCyABKAVSBnN0YXR1cxIm'
    'CgVtZWRpYRgMIAMoCzIQLnRpZWJhLkRlYWxNZWRpYVIFbWVkaWESMAoJYXV0aF9pbmZvGA0gAy'
    'gLMhMudGllYmEuRGVhbEF1dGhJbmZvUghhdXRoSW5mbxIZCghzaGlwX2ZlZRgOIAEoBFIHc2hp'
    'cEZlZQ==');
