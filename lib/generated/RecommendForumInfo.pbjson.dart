// This is a generated file - do not edit.
//
// Generated from RecommendForumInfo.proto.

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

@$core.Deprecated('Use recommendForumInfoDescriptor instead')
const RecommendForumInfo$json = {
  '1': 'RecommendForumInfo',
  '2': [
    {'1': 'avatar', '3': 1, '4': 1, '5': 9, '10': 'avatar'},
    {'1': 'forum_id', '3': 2, '4': 1, '5': 4, '10': 'forumId'},
    {'1': 'forum_name', '3': 3, '4': 1, '5': 9, '10': 'forumName'},
    {'1': 'is_like', '3': 4, '4': 1, '5': 13, '10': 'isLike'},
    {'1': 'member_count', '3': 5, '4': 1, '5': 13, '10': 'memberCount'},
    {'1': 'thread_count', '3': 6, '4': 1, '5': 13, '10': 'threadCount'},
    {'1': 'slogan', '3': 7, '4': 1, '5': 9, '10': 'slogan'},
    {
      '1': 'content',
      '3': 8,
      '4': 3,
      '5': 11,
      '6': '.tieba.PbContent',
      '10': 'content'
    },
    {'1': 'forum_type', '3': 9, '4': 1, '5': 13, '10': 'forumType'},
    {'1': 'authen', '3': 10, '4': 1, '5': 9, '10': 'authen'},
    {'1': 'recom_reason', '3': 11, '4': 1, '5': 9, '10': 'recomReason'},
    {'1': 'is_brand_forum', '3': 12, '4': 1, '5': 13, '10': 'isBrandForum'},
    {'1': 'hot_text', '3': 13, '4': 1, '5': 9, '10': 'hotText'},
    {'1': 'abtest_tag', '3': 14, '4': 1, '5': 9, '10': 'abtestTag'},
    {'1': 'source', '3': 15, '4': 1, '5': 9, '10': 'source'},
    {'1': 'extra', '3': 16, '4': 1, '5': 9, '10': 'extra'},
    {'1': 'is_private_forum', '3': 17, '4': 1, '5': 13, '10': 'isPrivateForum'},
    {'1': 'lv1_name', '3': 18, '4': 1, '5': 9, '10': 'lv1Name'},
    {'1': 'lv2_name', '3': 19, '4': 1, '5': 9, '10': 'lv2Name'},
    {'1': 'avatar_origin', '3': 20, '4': 1, '5': 9, '10': 'avatarOrigin'},
    {'1': 'hot_thread_id', '3': 22, '4': 1, '5': 4, '10': 'hotThreadId'},
    {
      '1': 'is_recommend_forum',
      '3': 23,
      '4': 1,
      '5': 5,
      '10': 'isRecommendForum'
    },
  ],
};

/// Descriptor for `RecommendForumInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List recommendForumInfoDescriptor = $convert.base64Decode(
    'ChJSZWNvbW1lbmRGb3J1bUluZm8SFgoGYXZhdGFyGAEgASgJUgZhdmF0YXISGQoIZm9ydW1faW'
    'QYAiABKARSB2ZvcnVtSWQSHQoKZm9ydW1fbmFtZRgDIAEoCVIJZm9ydW1OYW1lEhcKB2lzX2xp'
    'a2UYBCABKA1SBmlzTGlrZRIhCgxtZW1iZXJfY291bnQYBSABKA1SC21lbWJlckNvdW50EiEKDH'
    'RocmVhZF9jb3VudBgGIAEoDVILdGhyZWFkQ291bnQSFgoGc2xvZ2FuGAcgASgJUgZzbG9nYW4S'
    'KgoHY29udGVudBgIIAMoCzIQLnRpZWJhLlBiQ29udGVudFIHY29udGVudBIdCgpmb3J1bV90eX'
    'BlGAkgASgNUglmb3J1bVR5cGUSFgoGYXV0aGVuGAogASgJUgZhdXRoZW4SIQoMcmVjb21fcmVh'
    'c29uGAsgASgJUgtyZWNvbVJlYXNvbhIkCg5pc19icmFuZF9mb3J1bRgMIAEoDVIMaXNCcmFuZE'
    'ZvcnVtEhkKCGhvdF90ZXh0GA0gASgJUgdob3RUZXh0Eh0KCmFidGVzdF90YWcYDiABKAlSCWFi'
    'dGVzdFRhZxIWCgZzb3VyY2UYDyABKAlSBnNvdXJjZRIUCgVleHRyYRgQIAEoCVIFZXh0cmESKA'
    'oQaXNfcHJpdmF0ZV9mb3J1bRgRIAEoDVIOaXNQcml2YXRlRm9ydW0SGQoIbHYxX25hbWUYEiAB'
    'KAlSB2x2MU5hbWUSGQoIbHYyX25hbWUYEyABKAlSB2x2Mk5hbWUSIwoNYXZhdGFyX29yaWdpbh'
    'gUIAEoCVIMYXZhdGFyT3JpZ2luEiIKDWhvdF90aHJlYWRfaWQYFiABKARSC2hvdFRocmVhZElk'
    'EiwKEmlzX3JlY29tbWVuZF9mb3J1bRgXIAEoBVIQaXNSZWNvbW1lbmRGb3J1bQ==');
