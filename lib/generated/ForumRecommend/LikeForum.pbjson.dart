// This is a generated file - do not edit.
//
// Generated from ForumRecommend/LikeForum.proto.

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

@$core.Deprecated('Use likeForumDescriptor instead')
const LikeForum$json = {
  '1': 'LikeForum',
  '2': [
    {'1': 'forum_id', '3': 1, '4': 1, '5': 3, '10': 'forumId'},
    {'1': 'forum_name', '3': 2, '4': 1, '5': 9, '10': 'forumName'},
    {'1': 'avatar', '3': 3, '4': 1, '5': 9, '10': 'avatar'},
    {'1': 'is_sign', '3': 4, '4': 1, '5': 5, '10': 'isSign'},
    {'1': 'level_id', '3': 5, '4': 1, '5': 5, '10': 'levelId'},
    {'1': 'is_liveforum', '3': 6, '4': 1, '5': 5, '10': 'isLiveforum'},
    {'1': 'is_brand_forum', '3': 7, '4': 1, '5': 13, '10': 'isBrandForum'},
    {'1': 'content', '3': 9, '4': 1, '5': 9, '10': 'content'},
    {'1': 'is_top', '3': 10, '4': 1, '5': 5, '10': 'isTop'},
    {'1': 'sort_type', '3': 11, '4': 1, '5': 5, '10': 'sortType'},
    {
      '1': 'theme_color',
      '3': 12,
      '4': 1,
      '5': 11,
      '6': '.tieba.ThemeColorInfo',
      '10': 'themeColor'
    },
    {'1': 'need_trans', '3': 14, '4': 1, '5': 8, '10': 'needTrans'},
    {'1': 'is_private_forum', '3': 15, '4': 1, '5': 5, '10': 'isPrivateForum'},
    {'1': 'is_manager', '3': 18, '4': 1, '5': 5, '10': 'isManager'},
    {
      '1': 'private_forum_info',
      '3': 19,
      '4': 1,
      '5': 11,
      '6': '.tieba.PrivateForumInfo',
      '9': 0,
      '10': 'privateForumInfo',
      '17': true
    },
    {'1': 'hot_thread_id', '3': 20, '4': 1, '5': 3, '10': 'hotThreadId'},
    {
      '1': 'tab_info',
      '3': 21,
      '4': 3,
      '5': 11,
      '6': '.tieba.FrsTabInfo',
      '10': 'tabInfo'
    },
  ],
  '8': [
    {'1': '_private_forum_info'},
  ],
};

/// Descriptor for `LikeForum`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List likeForumDescriptor = $convert.base64Decode(
    'CglMaWtlRm9ydW0SGQoIZm9ydW1faWQYASABKANSB2ZvcnVtSWQSHQoKZm9ydW1fbmFtZRgCIA'
    'EoCVIJZm9ydW1OYW1lEhYKBmF2YXRhchgDIAEoCVIGYXZhdGFyEhcKB2lzX3NpZ24YBCABKAVS'
    'BmlzU2lnbhIZCghsZXZlbF9pZBgFIAEoBVIHbGV2ZWxJZBIhCgxpc19saXZlZm9ydW0YBiABKA'
    'VSC2lzTGl2ZWZvcnVtEiQKDmlzX2JyYW5kX2ZvcnVtGAcgASgNUgxpc0JyYW5kRm9ydW0SGAoH'
    'Y29udGVudBgJIAEoCVIHY29udGVudBIVCgZpc190b3AYCiABKAVSBWlzVG9wEhsKCXNvcnRfdH'
    'lwZRgLIAEoBVIIc29ydFR5cGUSNgoLdGhlbWVfY29sb3IYDCABKAsyFS50aWViYS5UaGVtZUNv'
    'bG9ySW5mb1IKdGhlbWVDb2xvchIdCgpuZWVkX3RyYW5zGA4gASgIUgluZWVkVHJhbnMSKAoQaX'
    'NfcHJpdmF0ZV9mb3J1bRgPIAEoBVIOaXNQcml2YXRlRm9ydW0SHQoKaXNfbWFuYWdlchgSIAEo'
    'BVIJaXNNYW5hZ2VyEkoKEnByaXZhdGVfZm9ydW1faW5mbxgTIAEoCzIXLnRpZWJhLlByaXZhdG'
    'VGb3J1bUluZm9IAFIQcHJpdmF0ZUZvcnVtSW5mb4gBARIiCg1ob3RfdGhyZWFkX2lkGBQgASgD'
    'Ugtob3RUaHJlYWRJZBIsCgh0YWJfaW5mbxgVIAMoCzIRLnRpZWJhLkZyc1RhYkluZm9SB3RhYk'
    'luZm9CFQoTX3ByaXZhdGVfZm9ydW1faW5mbw==');
