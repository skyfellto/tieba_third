// This is a generated file - do not edit.
//
// Generated from AgreeList.proto.

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

@$core.Deprecated('Use agreeListDescriptor instead')
const AgreeList$json = {
  '1': 'AgreeList',
  '2': [
    {
      '1': 'thread_info',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.tieba.ThreadInfo',
      '10': 'threadInfo'
    },
    {'1': 'time', '3': 4, '4': 1, '5': 13, '10': 'time'},
    {'1': 'is_del', '3': 5, '4': 1, '5': 5, '10': 'isDel'},
    {'1': 'type', '3': 6, '4': 1, '5': 5, '10': 'type'},
    {'1': 'id', '3': 7, '4': 1, '5': 4, '10': 'id'},
    {
      '1': 'agreeer',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.tieba.User',
      '10': 'agreeer'
    },
    {
      '1': 'post_info',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.tieba.Post',
      '10': 'postInfo'
    },
    {
      '1': 'virtual_image_url',
      '3': 10,
      '4': 1,
      '5': 9,
      '10': 'virtualImageUrl'
    },
    {'1': 'snapshoot_pic_id', '3': 11, '4': 1, '5': 5, '10': 'snapshootPicId'},
    {'1': 'target_scheme', '3': 12, '4': 1, '5': 9, '10': 'targetScheme'},
  ],
};

/// Descriptor for `AgreeList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List agreeListDescriptor = $convert.base64Decode(
    'CglBZ3JlZUxpc3QSMgoLdGhyZWFkX2luZm8YASABKAsyES50aWViYS5UaHJlYWRJbmZvUgp0aH'
    'JlYWRJbmZvEhIKBHRpbWUYBCABKA1SBHRpbWUSFQoGaXNfZGVsGAUgASgFUgVpc0RlbBISCgR0'
    'eXBlGAYgASgFUgR0eXBlEg4KAmlkGAcgASgEUgJpZBIlCgdhZ3JlZWVyGAggASgLMgsudGllYm'
    'EuVXNlclIHYWdyZWVlchIoCglwb3N0X2luZm8YCSABKAsyCy50aWViYS5Qb3N0Ughwb3N0SW5m'
    'bxIqChF2aXJ0dWFsX2ltYWdlX3VybBgKIAEoCVIPdmlydHVhbEltYWdlVXJsEigKEHNuYXBzaG'
    '9vdF9waWNfaWQYCyABKAVSDnNuYXBzaG9vdFBpY0lkEiMKDXRhcmdldF9zY2hlbWUYDCABKAlS'
    'DHRhcmdldFNjaGVtZQ==');
