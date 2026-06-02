// This is a generated file - do not edit.
//
// Generated from AgreeMe/DataRes.proto.

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

@$core.Deprecated('Use dataResDescriptor instead')
const DataRes$json = {
  '1': 'DataRes',
  '2': [
    {'1': 'has_more', '3': 1, '4': 1, '5': 5, '10': 'hasMore'},
    {
      '1': 'agree_list',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.tieba.AgreeList',
      '10': 'agreeList'
    },
  ],
};

/// Descriptor for `DataRes`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dataResDescriptor = $convert.base64Decode(
    'CgdEYXRhUmVzEhkKCGhhc19tb3JlGAEgASgFUgdoYXNNb3JlEi8KCmFncmVlX2xpc3QYAiADKA'
    'syEC50aWViYS5BZ3JlZUxpc3RSCWFncmVlTGlzdA==');
