// This is a generated file - do not edit.
//
// Generated from OriginThreadInfo.proto.

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

@$core.Deprecated('Use originThreadInfoDescriptor instead')
const OriginThreadInfo$json = {
  '1': 'OriginThreadInfo',
  '2': [
    {'1': 'title', '3': 1, '4': 1, '5': 9, '10': 'title'},
    {'1': 'media', '3': 2, '4': 3, '5': 11, '6': '.tieba.Media', '10': 'media'},
    {
      '1': '_abstract',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.tieba.Abstract',
      '10': 'Abstract'
    },
    {'1': 'fname', '3': 4, '4': 1, '5': 9, '10': 'fname'},
    {'1': 'tid', '3': 5, '4': 1, '5': 9, '10': 'tid'},
    {
      '1': 'ala_info',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.tieba.AlaLiveInfo',
      '10': 'alaInfo'
    },
    {'1': 'fid', '3': 7, '4': 1, '5': 3, '10': 'fid'},
    {'1': 'thread_type', '3': 8, '4': 1, '5': 5, '10': 'threadType'},
    {'1': 'is_deleted', '3': 9, '4': 1, '5': 5, '10': 'isDeleted'},
    {'1': 'is_ugc', '3': 10, '4': 1, '5': 5, '10': 'isUgc'},
    {
      '1': 'ori_ugc_info',
      '3': 11,
      '4': 1,
      '5': 11,
      '6': '.tieba.Baijiahao',
      '10': 'oriUgcInfo'
    },
    {
      '1': 'voice_info',
      '3': 12,
      '4': 3,
      '5': 11,
      '6': '.tieba.Voice',
      '10': 'voiceInfo'
    },
    {
      '1': 'video_info',
      '3': 13,
      '4': 1,
      '5': 11,
      '6': '.tieba.VideoInfo',
      '10': 'videoInfo'
    },
    {
      '1': 'content',
      '3': 14,
      '4': 3,
      '5': 11,
      '6': '.tieba.PbContent',
      '10': 'content'
    },
    {'1': 'is_new_style', '3': 15, '4': 1, '5': 5, '10': 'isNewStyle'},
    {'1': 'reply_num', '3': 16, '4': 1, '5': 5, '10': 'replyNum'},
    {
      '1': 'author',
      '3': 18,
      '4': 1,
      '5': 11,
      '6': '.tieba.User',
      '10': 'author'
    },
    {
      '1': 'agree',
      '3': 19,
      '4': 1,
      '5': 11,
      '6': '.tieba.Agree',
      '10': 'agree'
    },
    {'1': 'shared_num', '3': 20, '4': 1, '5': 5, '10': 'sharedNum'},
    {
      '1': 'poll_info',
      '3': 21,
      '4': 1,
      '5': 11,
      '6': '.tieba.PollInfo',
      '10': 'pollInfo'
    },
    {'1': 'item', '3': 22, '4': 1, '5': 11, '6': '.tieba.Item', '10': 'item'},
    {
      '1': 'item_star',
      '3': 23,
      '4': 3,
      '5': 11,
      '6': '.tieba.HeadItem',
      '10': 'itemStar'
    },
    {
      '1': 'pb_link_info',
      '3': 24,
      '4': 3,
      '5': 11,
      '6': '.tieba.PbLinkInfo',
      '10': 'pbLinkInfo'
    },
    {'1': 'pid', '3': 25, '4': 1, '5': 3, '10': 'pid'},
    {'1': 'good_types', '3': 26, '4': 1, '5': 5, '10': 'goodTypes'},
    {'1': 'top_types', '3': 27, '4': 1, '5': 5, '10': 'topTypes'},
    {'1': 'is_frs_mask', '3': 28, '4': 1, '5': 5, '10': 'isFrsMask'},
  ],
};

/// Descriptor for `OriginThreadInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List originThreadInfoDescriptor = $convert.base64Decode(
    'ChBPcmlnaW5UaHJlYWRJbmZvEhQKBXRpdGxlGAEgASgJUgV0aXRsZRIiCgVtZWRpYRgCIAMoCz'
    'IMLnRpZWJhLk1lZGlhUgVtZWRpYRIsCglfYWJzdHJhY3QYAyADKAsyDy50aWViYS5BYnN0cmFj'
    'dFIIQWJzdHJhY3QSFAoFZm5hbWUYBCABKAlSBWZuYW1lEhAKA3RpZBgFIAEoCVIDdGlkEi0KCG'
    'FsYV9pbmZvGAYgASgLMhIudGllYmEuQWxhTGl2ZUluZm9SB2FsYUluZm8SEAoDZmlkGAcgASgD'
    'UgNmaWQSHwoLdGhyZWFkX3R5cGUYCCABKAVSCnRocmVhZFR5cGUSHQoKaXNfZGVsZXRlZBgJIA'
    'EoBVIJaXNEZWxldGVkEhUKBmlzX3VnYxgKIAEoBVIFaXNVZ2MSMgoMb3JpX3VnY19pbmZvGAsg'
    'ASgLMhAudGllYmEuQmFpamlhaGFvUgpvcmlVZ2NJbmZvEisKCnZvaWNlX2luZm8YDCADKAsyDC'
    '50aWViYS5Wb2ljZVIJdm9pY2VJbmZvEi8KCnZpZGVvX2luZm8YDSABKAsyEC50aWViYS5WaWRl'
    'b0luZm9SCXZpZGVvSW5mbxIqCgdjb250ZW50GA4gAygLMhAudGllYmEuUGJDb250ZW50Ugdjb2'
    '50ZW50EiAKDGlzX25ld19zdHlsZRgPIAEoBVIKaXNOZXdTdHlsZRIbCglyZXBseV9udW0YECAB'
    'KAVSCHJlcGx5TnVtEiMKBmF1dGhvchgSIAEoCzILLnRpZWJhLlVzZXJSBmF1dGhvchIiCgVhZ3'
    'JlZRgTIAEoCzIMLnRpZWJhLkFncmVlUgVhZ3JlZRIdCgpzaGFyZWRfbnVtGBQgASgFUglzaGFy'
    'ZWROdW0SLAoJcG9sbF9pbmZvGBUgASgLMg8udGllYmEuUG9sbEluZm9SCHBvbGxJbmZvEh8KBG'
    'l0ZW0YFiABKAsyCy50aWViYS5JdGVtUgRpdGVtEiwKCWl0ZW1fc3RhchgXIAMoCzIPLnRpZWJh'
    'LkhlYWRJdGVtUghpdGVtU3RhchIzCgxwYl9saW5rX2luZm8YGCADKAsyES50aWViYS5QYkxpbm'
    'tJbmZvUgpwYkxpbmtJbmZvEhAKA3BpZBgZIAEoA1IDcGlkEh0KCmdvb2RfdHlwZXMYGiABKAVS'
    'CWdvb2RUeXBlcxIbCgl0b3BfdHlwZXMYGyABKAVSCHRvcFR5cGVzEh4KC2lzX2Zyc19tYXNrGB'
    'wgASgFUglpc0Zyc01hc2s=');
