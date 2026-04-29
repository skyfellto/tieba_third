// This is a generated file - do not edit.
//
// Generated from PbPage/AddPost.proto.

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

@$core.Deprecated('Use addPostDescriptor instead')
const AddPost$json = {
  '1': 'AddPost',
  '2': [
    {'1': 'create_time', '3': 1, '4': 1, '5': 5, '10': 'createTime'},
    {'1': 'post_id', '3': 2, '4': 1, '5': 9, '10': 'postId'},
    {'1': 'already_count', '3': 3, '4': 1, '5': 5, '10': 'alreadyCount'},
    {'1': 'total_count', '3': 4, '4': 1, '5': 5, '10': 'totalCount'},
    {
      '1': 'last_addition_content',
      '3': 5,
      '4': 1,
      '5': 9,
      '10': 'lastAdditionContent'
    },
    {
      '1': 'last_addition_time',
      '3': 6,
      '4': 1,
      '5': 5,
      '10': 'lastAdditionTime'
    },
    {'1': 'warn_msg', '3': 7, '4': 1, '5': 9, '10': 'warnMsg'},
  ],
};

/// Descriptor for `AddPost`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addPostDescriptor = $convert.base64Decode(
    'CgdBZGRQb3N0Eh8KC2NyZWF0ZV90aW1lGAEgASgFUgpjcmVhdGVUaW1lEhcKB3Bvc3RfaWQYAi'
    'ABKAlSBnBvc3RJZBIjCg1hbHJlYWR5X2NvdW50GAMgASgFUgxhbHJlYWR5Q291bnQSHwoLdG90'
    'YWxfY291bnQYBCABKAVSCnRvdGFsQ291bnQSMgoVbGFzdF9hZGRpdGlvbl9jb250ZW50GAUgAS'
    'gJUhNsYXN0QWRkaXRpb25Db250ZW50EiwKEmxhc3RfYWRkaXRpb25fdGltZRgGIAEoBVIQbGFz'
    'dEFkZGl0aW9uVGltZRIZCgh3YXJuX21zZxgHIAEoCVIHd2Fybk1zZw==');
