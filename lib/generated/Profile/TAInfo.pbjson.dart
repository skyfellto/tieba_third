// This is a generated file - do not edit.
//
// Generated from Profile/TAInfo.proto.

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

@$core.Deprecated('Use tAInfoDescriptor instead')
const TAInfo$json = {
  '1': 'TAInfo',
  '2': [
    {'1': 'foruminfo', '3': 1, '4': 3, '5': 9, '10': 'foruminfo'},
    {'1': 'groupinfo', '3': 2, '4': 3, '5': 9, '10': 'groupinfo'},
    {'1': 'friendinfo', '3': 3, '4': 3, '5': 9, '10': 'friendinfo'},
    {
      '1': 'distanceinfo',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.tieba.profile.CommonDistance',
      '10': 'distanceinfo'
    },
    {'1': 'groupnum', '3': 5, '4': 1, '5': 13, '10': 'groupnum'},
    {'1': 'friendnum', '3': 6, '4': 1, '5': 13, '10': 'friendnum'},
    {'1': 'is_friend', '3': 7, '4': 1, '5': 13, '10': 'isFriend'},
    {
      '1': 'reply_list',
      '3': 8,
      '4': 3,
      '5': 11,
      '6': '.tieba.profile.ReplyList',
      '10': 'replyList'
    },
    {
      '1': 'userClientVersionIsLower',
      '3': 9,
      '4': 1,
      '5': 13,
      '10': 'userClientVersionIsLower'
    },
    {
      '1': 'location',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.tieba.profile.CommonLocation',
      '10': 'location'
    },
    {'1': 'hide_user_feed', '3': 11, '4': 1, '5': 9, '10': 'hideUserFeed'},
  ],
};

/// Descriptor for `TAInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tAInfoDescriptor = $convert.base64Decode(
    'CgZUQUluZm8SHAoJZm9ydW1pbmZvGAEgAygJUglmb3J1bWluZm8SHAoJZ3JvdXBpbmZvGAIgAy'
    'gJUglncm91cGluZm8SHgoKZnJpZW5kaW5mbxgDIAMoCVIKZnJpZW5kaW5mbxJBCgxkaXN0YW5j'
    'ZWluZm8YBCABKAsyHS50aWViYS5wcm9maWxlLkNvbW1vbkRpc3RhbmNlUgxkaXN0YW5jZWluZm'
    '8SGgoIZ3JvdXBudW0YBSABKA1SCGdyb3VwbnVtEhwKCWZyaWVuZG51bRgGIAEoDVIJZnJpZW5k'
    'bnVtEhsKCWlzX2ZyaWVuZBgHIAEoDVIIaXNGcmllbmQSNwoKcmVwbHlfbGlzdBgIIAMoCzIYLn'
    'RpZWJhLnByb2ZpbGUuUmVwbHlMaXN0UglyZXBseUxpc3QSOgoYdXNlckNsaWVudFZlcnNpb25J'
    'c0xvd2VyGAkgASgNUhh1c2VyQ2xpZW50VmVyc2lvbklzTG93ZXISOQoIbG9jYXRpb24YCiABKA'
    'syHS50aWViYS5wcm9maWxlLkNvbW1vbkxvY2F0aW9uUghsb2NhdGlvbhIkCg5oaWRlX3VzZXJf'
    'ZmVlZBgLIAEoCVIMaGlkZVVzZXJGZWVk');
