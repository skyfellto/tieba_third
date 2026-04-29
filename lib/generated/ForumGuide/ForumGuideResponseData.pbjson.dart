// This is a generated file - do not edit.
//
// Generated from ForumGuide/ForumGuideResponseData.proto.

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

@$core.Deprecated('Use forumGuideResponseDataDescriptor instead')
const ForumGuideResponseData$json = {
  '1': 'ForumGuideResponseData',
  '2': [
    {
      '1': 'hot_search',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.tieba.forumGuide.HotSearch',
      '10': 'hotSearch'
    },
    {
      '1': 'like_forum',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.tieba.forumGuide.LikeForum',
      '10': 'likeForum'
    },
    {
      '1': 'forum_create_info',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.tieba.ForumCreateInfo',
      '10': 'forumCreateInfo'
    },
    {'1': 'is_login', '3': 4, '4': 1, '5': 13, '10': 'isLogin'},
    {'1': 'msign_valid', '3': 5, '4': 1, '5': 13, '10': 'msignValid'},
    {'1': 'msign_text', '3': 6, '4': 1, '5': 9, '10': 'msignText'},
    {'1': 'msign_level', '3': 7, '4': 1, '5': 13, '10': 'msignLevel'},
    {
      '1': 'voice_room_list',
      '3': 8,
      '4': 3,
      '5': 11,
      '6': '.tieba.ThreadInfo',
      '10': 'voiceRoomList'
    },
  ],
};

/// Descriptor for `ForumGuideResponseData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List forumGuideResponseDataDescriptor = $convert.base64Decode(
    'ChZGb3J1bUd1aWRlUmVzcG9uc2VEYXRhEjoKCmhvdF9zZWFyY2gYASADKAsyGy50aWViYS5mb3'
    'J1bUd1aWRlLkhvdFNlYXJjaFIJaG90U2VhcmNoEjoKCmxpa2VfZm9ydW0YAiADKAsyGy50aWVi'
    'YS5mb3J1bUd1aWRlLkxpa2VGb3J1bVIJbGlrZUZvcnVtEkIKEWZvcnVtX2NyZWF0ZV9pbmZvGA'
    'MgASgLMhYudGllYmEuRm9ydW1DcmVhdGVJbmZvUg9mb3J1bUNyZWF0ZUluZm8SGQoIaXNfbG9n'
    'aW4YBCABKA1SB2lzTG9naW4SHwoLbXNpZ25fdmFsaWQYBSABKA1SCm1zaWduVmFsaWQSHQoKbX'
    'NpZ25fdGV4dBgGIAEoCVIJbXNpZ25UZXh0Eh8KC21zaWduX2xldmVsGAcgASgNUgptc2lnbkxl'
    'dmVsEjkKD3ZvaWNlX3Jvb21fbGlzdBgIIAMoCzIRLnRpZWJhLlRocmVhZEluZm9SDXZvaWNlUm'
    '9vbUxpc3Q=');
