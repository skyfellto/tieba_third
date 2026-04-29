// This is a generated file - do not edit.
//
// Generated from PbFloor/PbFloorResponseData.proto.

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

@$core.Deprecated('Use pbFloorResponseDataDescriptor instead')
const PbFloorResponseData$json = {
  '1': 'PbFloorResponseData',
  '2': [
    {'1': 'page', '3': 1, '4': 1, '5': 11, '6': '.tieba.Page', '10': 'page'},
    {'1': 'anti', '3': 2, '4': 1, '5': 11, '6': '.tieba.Anti', '10': 'anti'},
    {'1': 'post', '3': 3, '4': 1, '5': 11, '6': '.tieba.Post', '10': 'post'},
    {
      '1': 'subpost_list',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.tieba.SubPostList',
      '10': 'subpostList'
    },
    {
      '1': 'thread',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.tieba.ThreadInfo',
      '10': 'thread'
    },
    {
      '1': 'forum',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.tieba.SimpleForum',
      '10': 'forum'
    },
    {'1': 'server_time', '3': 7, '4': 1, '5': 5, '10': 'serverTime'},
    {
      '1': 'display_forum',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.tieba.SimpleForum',
      '10': 'displayForum'
    },
    {'1': 'is_black_white', '3': 9, '4': 1, '5': 5, '10': 'isBlackWhite'},
  ],
};

/// Descriptor for `PbFloorResponseData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pbFloorResponseDataDescriptor = $convert.base64Decode(
    'ChNQYkZsb29yUmVzcG9uc2VEYXRhEh8KBHBhZ2UYASABKAsyCy50aWViYS5QYWdlUgRwYWdlEh'
    '8KBGFudGkYAiABKAsyCy50aWViYS5BbnRpUgRhbnRpEh8KBHBvc3QYAyABKAsyCy50aWViYS5Q'
    'b3N0UgRwb3N0EjUKDHN1YnBvc3RfbGlzdBgEIAMoCzISLnRpZWJhLlN1YlBvc3RMaXN0UgtzdW'
    'Jwb3N0TGlzdBIpCgZ0aHJlYWQYBSABKAsyES50aWViYS5UaHJlYWRJbmZvUgZ0aHJlYWQSKAoF'
    'Zm9ydW0YBiABKAsyEi50aWViYS5TaW1wbGVGb3J1bVIFZm9ydW0SHwoLc2VydmVyX3RpbWUYBy'
    'ABKAVSCnNlcnZlclRpbWUSNwoNZGlzcGxheV9mb3J1bRgIIAEoCzISLnRpZWJhLlNpbXBsZUZv'
    'cnVtUgxkaXNwbGF5Rm9ydW0SJAoOaXNfYmxhY2tfd2hpdGUYCSABKAVSDGlzQmxhY2tXaGl0ZQ'
    '==');
