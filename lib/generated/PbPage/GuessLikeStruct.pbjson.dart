// This is a generated file - do not edit.
//
// Generated from PbPage/GuessLikeStruct.proto.

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

@$core.Deprecated('Use guessLikeStructDescriptor instead')
const GuessLikeStruct$json = {
  '1': 'GuessLikeStruct',
  '2': [
    {'1': 'title', '3': 1, '4': 1, '5': 9, '10': 'title'},
    {
      '1': 'thread_list',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.tieba.GuessLikeThreadInfo',
      '10': 'threadList'
    },
  ],
};

/// Descriptor for `GuessLikeStruct`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List guessLikeStructDescriptor = $convert.base64Decode(
    'Cg9HdWVzc0xpa2VTdHJ1Y3QSFAoFdGl0bGUYASABKAlSBXRpdGxlEjsKC3RocmVhZF9saXN0GA'
    'IgAygLMhoudGllYmEuR3Vlc3NMaWtlVGhyZWFkSW5mb1IKdGhyZWFkTGlzdA==');
