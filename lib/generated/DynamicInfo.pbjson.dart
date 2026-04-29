// This is a generated file - do not edit.
//
// Generated from DynamicInfo.proto.

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

@$core.Deprecated('Use dynamicInfoDescriptor instead')
const DynamicInfo$json = {
  '1': 'DynamicInfo',
  '2': [
    {
      '1': 'thread_dynamic',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.tieba.ThreadInfo',
      '10': 'threadDynamic'
    },
    {
      '1': 'dynamic_timestamp',
      '3': 2,
      '4': 1,
      '5': 3,
      '10': 'dynamicTimestamp'
    },
    {
      '1': 'forum_dynamic',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.tieba.ForumDynamic',
      '10': 'forumDynamic'
    },
    {
      '1': 'user_dynamic',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.tieba.UserDynamic',
      '10': 'userDynamic'
    },
    {'1': 'type', '3': 5, '4': 1, '5': 5, '10': 'type'},
    {'1': 'is_hide', '3': 6, '4': 1, '5': 9, '10': 'isHide'},
  ],
};

/// Descriptor for `DynamicInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dynamicInfoDescriptor = $convert.base64Decode(
    'CgtEeW5hbWljSW5mbxI4Cg50aHJlYWRfZHluYW1pYxgBIAEoCzIRLnRpZWJhLlRocmVhZEluZm'
    '9SDXRocmVhZER5bmFtaWMSKwoRZHluYW1pY190aW1lc3RhbXAYAiABKANSEGR5bmFtaWNUaW1l'
    'c3RhbXASOAoNZm9ydW1fZHluYW1pYxgDIAEoCzITLnRpZWJhLkZvcnVtRHluYW1pY1IMZm9ydW'
    '1EeW5hbWljEjUKDHVzZXJfZHluYW1pYxgEIAEoCzISLnRpZWJhLlVzZXJEeW5hbWljUgt1c2Vy'
    'RHluYW1pYxISCgR0eXBlGAUgASgFUgR0eXBlEhcKB2lzX2hpZGUYBiABKAlSBmlzSGlkZQ==');
