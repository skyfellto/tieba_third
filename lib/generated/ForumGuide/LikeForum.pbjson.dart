// This is a generated file - do not edit.
//
// Generated from ForumGuide/LikeForum.proto.

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
    {'1': 'forum_id', '3': 1, '4': 1, '5': 4, '10': 'forumId'},
    {'1': 'forum_name', '3': 2, '4': 1, '5': 9, '10': 'forumName'},
    {'1': 'avatar', '3': 3, '4': 1, '5': 9, '10': 'avatar'},
    {'1': 'hot_num', '3': 4, '4': 1, '5': 13, '10': 'hotNum'},
    {'1': 'member_count', '3': 5, '4': 1, '5': 13, '10': 'memberCount'},
    {'1': 'thread_num', '3': 6, '4': 1, '5': 13, '10': 'threadNum'},
    {'1': 'sort_value', '3': 7, '4': 1, '5': 4, '10': 'sortValue'},
    {
      '1': 'theme_color',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.tieba.ThemeColorInfo',
      '10': 'themeColor'
    },
    {'1': 'need_trans', '3': 9, '4': 1, '5': 8, '10': 'needTrans'},
    {'1': 'level_id', '3': 10, '4': 1, '5': 5, '10': 'levelId'},
    {'1': 'level_name', '3': 11, '4': 1, '5': 9, '10': 'levelName'},
    {'1': 'is_sign', '3': 12, '4': 1, '5': 5, '10': 'isSign'},
  ],
};

/// Descriptor for `LikeForum`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List likeForumDescriptor = $convert.base64Decode(
    'CglMaWtlRm9ydW0SGQoIZm9ydW1faWQYASABKARSB2ZvcnVtSWQSHQoKZm9ydW1fbmFtZRgCIA'
    'EoCVIJZm9ydW1OYW1lEhYKBmF2YXRhchgDIAEoCVIGYXZhdGFyEhcKB2hvdF9udW0YBCABKA1S'
    'BmhvdE51bRIhCgxtZW1iZXJfY291bnQYBSABKA1SC21lbWJlckNvdW50Eh0KCnRocmVhZF9udW'
    '0YBiABKA1SCXRocmVhZE51bRIdCgpzb3J0X3ZhbHVlGAcgASgEUglzb3J0VmFsdWUSNgoLdGhl'
    'bWVfY29sb3IYCCABKAsyFS50aWViYS5UaGVtZUNvbG9ySW5mb1IKdGhlbWVDb2xvchIdCgpuZW'
    'VkX3RyYW5zGAkgASgIUgluZWVkVHJhbnMSGQoIbGV2ZWxfaWQYCiABKAVSB2xldmVsSWQSHQoK'
    'bGV2ZWxfbmFtZRgLIAEoCVIJbGV2ZWxOYW1lEhcKB2lzX3NpZ24YDCABKAVSBmlzU2lnbg==');
