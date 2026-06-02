// This is a generated file - do not edit.
//
// Generated from ReplyMe/ReplyList.proto.

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

@$core.Deprecated('Use replyListDescriptor instead')
const ReplyList$json = {
  '1': 'ReplyList',
  '2': [
    {'1': 'thread_id', '3': 1, '4': 1, '5': 4, '10': 'threadId'},
    {'1': 'post_id', '3': 2, '4': 1, '5': 4, '10': 'postId'},
    {'1': 'time', '3': 3, '4': 1, '5': 13, '10': 'time'},
    {'1': 'title', '3': 4, '4': 1, '5': 9, '10': 'title'},
    {'1': 'fname', '3': 5, '4': 1, '5': 9, '10': 'fname'},
    {'1': 'content', '3': 6, '4': 1, '5': 9, '10': 'content'},
    {'1': 'is_floor', '3': 7, '4': 1, '5': 13, '10': 'isFloor'},
    {'1': 'quote_content', '3': 8, '4': 1, '5': 9, '10': 'quoteContent'},
    {
      '1': 'replyer',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.tieba.User',
      '10': 'replyer'
    },
    {'1': 'type', '3': 10, '4': 1, '5': 13, '10': 'type'},
    {'1': 'unread', '3': 11, '4': 1, '5': 13, '10': 'unread'},
    {'1': 'item_type', '3': 12, '4': 1, '5': 9, '10': 'itemType'},
    {'1': 'zan', '3': 13, '4': 1, '5': 11, '6': '.tieba.Zan', '10': 'zan'},
    {'1': 'quote_pid', '3': 14, '4': 1, '5': 4, '10': 'quotePid'},
    {
      '1': 'quote_user',
      '3': 15,
      '4': 1,
      '5': 11,
      '6': '.tieba.User',
      '10': 'quoteUser'
    },
    {'1': 'server_time', '3': 16, '4': 1, '5': 5, '10': 'serverTime'},
    {'1': 'thread_type', '3': 17, '4': 1, '5': 13, '10': 'threadType'},
    {'1': 'v_forum_id', '3': 18, '4': 1, '5': 4, '10': 'vForumId'},
    {'1': 'hide_fname', '3': 19, '4': 1, '5': 13, '10': 'hideFname'},
    {'1': 'is_story', '3': 20, '4': 1, '5': 5, '10': 'isStory'},
    {
      '1': 'origin_thread_info',
      '3': 21,
      '4': 1,
      '5': 11,
      '6': '.tieba.OriginThreadInfo',
      '10': 'originThreadInfo'
    },
    {'1': 'post_from', '3': 22, '4': 1, '5': 9, '10': 'postFrom'},
    {'1': 'is_share_thread', '3': 23, '4': 1, '5': 5, '10': 'isShareThread'},
    {'1': 'thread_img_url', '3': 24, '4': 1, '5': 9, '10': 'threadImgUrl'},
    {
      '1': 'thread_author_user',
      '3': 25,
      '4': 1,
      '5': 11,
      '6': '.tieba.User',
      '10': 'threadAuthorUser'
    },
    {'1': 'is_bjh', '3': 26, '4': 1, '5': 5, '10': 'isBjh'},
    {
      '1': 'baijiahao',
      '3': 27,
      '4': 1,
      '5': 11,
      '6': '.tieba.Baijiahao',
      '10': 'baijiahao'
    },
    {
      '1': 'new_floor_info',
      '3': 28,
      '4': 3,
      '5': 11,
      '6': '.tieba.NewFloorInfo',
      '10': 'newFloorInfo'
    },
    {'1': 'has_agree', '3': 29, '4': 1, '5': 5, '10': 'hasAgree'},
    {'1': 'target_scheme', '3': 30, '4': 1, '5': 9, '10': 'targetScheme'},
    {'1': 'display_text', '3': 31, '4': 1, '5': 9, '10': 'displayText'},
    {'1': 'is_filter', '3': 32, '4': 1, '5': 5, '10': 'isFilter'},
    {'1': 'first_scheme', '3': 33, '4': 1, '5': 9, '10': 'firstScheme'},
    {'1': 'second_scheme', '3': 34, '4': 1, '5': 9, '10': 'secondScheme'},
    {'1': 'third_scheme', '3': 35, '4': 1, '5': 9, '10': 'thirdScheme'},
  ],
};

/// Descriptor for `ReplyList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List replyListDescriptor = $convert.base64Decode(
    'CglSZXBseUxpc3QSGwoJdGhyZWFkX2lkGAEgASgEUgh0aHJlYWRJZBIXCgdwb3N0X2lkGAIgAS'
    'gEUgZwb3N0SWQSEgoEdGltZRgDIAEoDVIEdGltZRIUCgV0aXRsZRgEIAEoCVIFdGl0bGUSFAoF'
    'Zm5hbWUYBSABKAlSBWZuYW1lEhgKB2NvbnRlbnQYBiABKAlSB2NvbnRlbnQSGQoIaXNfZmxvb3'
    'IYByABKA1SB2lzRmxvb3ISIwoNcXVvdGVfY29udGVudBgIIAEoCVIMcXVvdGVDb250ZW50EiUK'
    'B3JlcGx5ZXIYCSABKAsyCy50aWViYS5Vc2VyUgdyZXBseWVyEhIKBHR5cGUYCiABKA1SBHR5cG'
    'USFgoGdW5yZWFkGAsgASgNUgZ1bnJlYWQSGwoJaXRlbV90eXBlGAwgASgJUghpdGVtVHlwZRIc'
    'CgN6YW4YDSABKAsyCi50aWViYS5aYW5SA3phbhIbCglxdW90ZV9waWQYDiABKARSCHF1b3RlUG'
    'lkEioKCnF1b3RlX3VzZXIYDyABKAsyCy50aWViYS5Vc2VyUglxdW90ZVVzZXISHwoLc2VydmVy'
    'X3RpbWUYECABKAVSCnNlcnZlclRpbWUSHwoLdGhyZWFkX3R5cGUYESABKA1SCnRocmVhZFR5cG'
    'USHAoKdl9mb3J1bV9pZBgSIAEoBFIIdkZvcnVtSWQSHQoKaGlkZV9mbmFtZRgTIAEoDVIJaGlk'
    'ZUZuYW1lEhkKCGlzX3N0b3J5GBQgASgFUgdpc1N0b3J5EkUKEm9yaWdpbl90aHJlYWRfaW5mbx'
    'gVIAEoCzIXLnRpZWJhLk9yaWdpblRocmVhZEluZm9SEG9yaWdpblRocmVhZEluZm8SGwoJcG9z'
    'dF9mcm9tGBYgASgJUghwb3N0RnJvbRImCg9pc19zaGFyZV90aHJlYWQYFyABKAVSDWlzU2hhcm'
    'VUaHJlYWQSJAoOdGhyZWFkX2ltZ191cmwYGCABKAlSDHRocmVhZEltZ1VybBI5ChJ0aHJlYWRf'
    'YXV0aG9yX3VzZXIYGSABKAsyCy50aWViYS5Vc2VyUhB0aHJlYWRBdXRob3JVc2VyEhUKBmlzX2'
    'JqaBgaIAEoBVIFaXNCamgSLgoJYmFpamlhaGFvGBsgASgLMhAudGllYmEuQmFpamlhaGFvUgli'
    'YWlqaWFoYW8SOQoObmV3X2Zsb29yX2luZm8YHCADKAsyEy50aWViYS5OZXdGbG9vckluZm9SDG'
    '5ld0Zsb29ySW5mbxIbCgloYXNfYWdyZWUYHSABKAVSCGhhc0FncmVlEiMKDXRhcmdldF9zY2hl'
    'bWUYHiABKAlSDHRhcmdldFNjaGVtZRIhCgxkaXNwbGF5X3RleHQYHyABKAlSC2Rpc3BsYXlUZX'
    'h0EhsKCWlzX2ZpbHRlchggIAEoBVIIaXNGaWx0ZXISIQoMZmlyc3Rfc2NoZW1lGCEgASgJUgtm'
    'aXJzdFNjaGVtZRIjCg1zZWNvbmRfc2NoZW1lGCIgASgJUgxzZWNvbmRTY2hlbWUSIQoMdGhpcm'
    'Rfc2NoZW1lGCMgASgJUgt0aGlyZFNjaGVtZQ==');
