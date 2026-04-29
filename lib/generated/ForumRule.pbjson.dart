// This is a generated file - do not edit.
//
// Generated from ForumRule.proto.

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

@$core.Deprecated('Use forumRuleDescriptor instead')
const ForumRule$json = {
  '1': 'ForumRule',
  '2': [
    {'1': 'title', '3': 1, '4': 1, '5': 9, '10': 'title'},
    {
      '1': 'content',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.tieba.PbContent',
      '10': 'content'
    },
    {'1': 'status', '3': 3, '4': 1, '5': 5, '10': 'status'},
  ],
};

/// Descriptor for `ForumRule`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List forumRuleDescriptor = $convert.base64Decode(
    'CglGb3J1bVJ1bGUSFAoFdGl0bGUYASABKAlSBXRpdGxlEioKB2NvbnRlbnQYAiADKAsyEC50aW'
    'ViYS5QYkNvbnRlbnRSB2NvbnRlbnQSFgoGc3RhdHVzGAMgASgFUgZzdGF0dXM=');
