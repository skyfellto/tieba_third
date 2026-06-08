// This is a generated file - do not edit.
//
// Generated from FeedHeadSymbol.proto.

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

@$core.Deprecated('Use feedHeadSymbolDescriptor instead')
const FeedHeadSymbol$json = {
  '1': 'FeedHeadSymbol',
  '2': [
    {
      '1': 'icon',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.tieba.FeedHeadIcon',
      '10': 'icon'
    },
    {'1': 'type', '3': 2, '4': 1, '5': 13, '10': 'type'},
    {
      '1': 'text',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.tieba.FeedHeadText',
      '10': 'text'
    },
    {'1': 'schema', '3': 4, '4': 1, '5': 9, '10': 'schema'},
    {
      '1': 'log_info',
      '3': 5,
      '4': 3,
      '5': 11,
      '6': '.tieba.FeedKV',
      '10': 'logInfo'
    },
    {
      '1': 'custom',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.tieba.FeedContentCustom',
      '10': 'custom'
    },
    {
      '1': 'prefix_icon',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.tieba.FeedHeadIcon',
      '10': 'prefixIcon'
    },
    {
      '1': 'business_info',
      '3': 8,
      '4': 3,
      '5': 11,
      '6': '.tieba.FeedKV',
      '10': 'businessInfo'
    },
  ],
};

/// Descriptor for `FeedHeadSymbol`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List feedHeadSymbolDescriptor = $convert.base64Decode(
    'Cg5GZWVkSGVhZFN5bWJvbBInCgRpY29uGAEgASgLMhMudGllYmEuRmVlZEhlYWRJY29uUgRpY2'
    '9uEhIKBHR5cGUYAiABKA1SBHR5cGUSJwoEdGV4dBgDIAEoCzITLnRpZWJhLkZlZWRIZWFkVGV4'
    'dFIEdGV4dBIWCgZzY2hlbWEYBCABKAlSBnNjaGVtYRIoCghsb2dfaW5mbxgFIAMoCzINLnRpZW'
    'JhLkZlZWRLVlIHbG9nSW5mbxIwCgZjdXN0b20YBiABKAsyGC50aWViYS5GZWVkQ29udGVudEN1'
    'c3RvbVIGY3VzdG9tEjQKC3ByZWZpeF9pY29uGAcgASgLMhMudGllYmEuRmVlZEhlYWRJY29uUg'
    'pwcmVmaXhJY29uEjIKDWJ1c2luZXNzX2luZm8YCCADKAsyDS50aWViYS5GZWVkS1ZSDGJ1c2lu'
    'ZXNzSW5mbw==');
