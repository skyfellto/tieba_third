// This is a generated file - do not edit.
//
// Generated from HotPost.proto.

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

@$core.Deprecated('Use hotPostDescriptor instead')
const HotPost$json = {
  '1': 'HotPost',
  '2': [
    {'1': 'thread_id', '3': 1, '4': 1, '5': 4, '10': 'threadId'},
    {'1': 'post_id', '3': 2, '4': 1, '5': 4, '10': 'postId'},
    {'1': 'user_name', '3': 3, '4': 1, '5': 9, '10': 'userName'},
    {'1': 'user_id', '3': 4, '4': 1, '5': 4, '10': 'userId'},
    {
      '1': 'post_zan',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.tieba.PbPostZan',
      '10': 'postZan'
    },
    {'1': 'post_num', '3': 6, '4': 1, '5': 5, '10': 'postNum'},
    {
      '1': 'content',
      '3': 7,
      '4': 3,
      '5': 11,
      '6': '.tieba.PbContent',
      '10': 'content'
    },
    {'1': 'create_time', '3': 8, '4': 1, '5': 13, '10': 'createTime'},
    {'1': 'floor', '3': 9, '4': 1, '5': 13, '10': 'floor'},
    {'1': 'portrait', '3': 10, '4': 1, '5': 9, '10': 'portrait'},
  ],
};

/// Descriptor for `HotPost`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List hotPostDescriptor = $convert.base64Decode(
    'CgdIb3RQb3N0EhsKCXRocmVhZF9pZBgBIAEoBFIIdGhyZWFkSWQSFwoHcG9zdF9pZBgCIAEoBF'
    'IGcG9zdElkEhsKCXVzZXJfbmFtZRgDIAEoCVIIdXNlck5hbWUSFwoHdXNlcl9pZBgEIAEoBFIG'
    'dXNlcklkEisKCHBvc3RfemFuGAUgASgLMhAudGllYmEuUGJQb3N0WmFuUgdwb3N0WmFuEhkKCH'
    'Bvc3RfbnVtGAYgASgFUgdwb3N0TnVtEioKB2NvbnRlbnQYByADKAsyEC50aWViYS5QYkNvbnRl'
    'bnRSB2NvbnRlbnQSHwoLY3JlYXRlX3RpbWUYCCABKA1SCmNyZWF0ZVRpbWUSFAoFZmxvb3IYCS'
    'ABKA1SBWZsb29yEhoKCHBvcnRyYWl0GAogASgJUghwb3J0cmFpdA==');
