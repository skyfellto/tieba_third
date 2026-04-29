// This is a generated file - do not edit.
//
// Generated from PbHotPost.proto.

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

@$core.Deprecated('Use pbHotPostDescriptor instead')
const PbHotPost$json = {
  '1': 'PbHotPost',
  '2': [
    {
      '1': 'post_list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.tieba.Post',
      '10': 'postList'
    },
    {'1': 'need_hot_post', '3': 2, '4': 1, '5': 5, '10': 'needHotPost'},
    {'1': 'need_post_zan', '3': 3, '4': 1, '5': 5, '10': 'needPostZan'},
    {
      '1': 'hot_post_list',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.tieba.HotPost',
      '10': 'hotPostList'
    },
  ],
};

/// Descriptor for `PbHotPost`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pbHotPostDescriptor = $convert.base64Decode(
    'CglQYkhvdFBvc3QSKAoJcG9zdF9saXN0GAEgAygLMgsudGllYmEuUG9zdFIIcG9zdExpc3QSIg'
    'oNbmVlZF9ob3RfcG9zdBgCIAEoBVILbmVlZEhvdFBvc3QSIgoNbmVlZF9wb3N0X3phbhgDIAEo'
    'BVILbmVlZFBvc3RaYW4SMgoNaG90X3Bvc3RfbGlzdBgEIAMoCzIOLnRpZWJhLkhvdFBvc3RSC2'
    'hvdFBvc3RMaXN0');
