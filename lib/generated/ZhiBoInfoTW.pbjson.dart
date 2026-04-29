// This is a generated file - do not edit.
//
// Generated from ZhiBoInfoTW.proto.

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

@$core.Deprecated('Use zhiBoInfoTWDescriptor instead')
const ZhiBoInfoTW$json = {
  '1': 'ZhiBoInfoTW',
  '2': [
    {'1': 'thread_id', '3': 1, '4': 1, '5': 4, '10': 'threadId'},
    {'1': 'livecover_src', '3': 2, '4': 1, '5': 9, '10': 'livecoverSrc'},
    {
      '1': 'livecover_src_bsize',
      '3': 3,
      '4': 1,
      '5': 9,
      '10': 'livecoverSrcBsize'
    },
    {'1': 'post_num', '3': 4, '4': 1, '5': 13, '10': 'postNum'},
    {'1': 'reply_num', '3': 5, '4': 1, '5': 13, '10': 'replyNum'},
    {'1': 'zan', '3': 6, '4': 1, '5': 11, '6': '.tieba.Zan', '10': 'zan'},
    {'1': 'forum_name', '3': 7, '4': 1, '5': 9, '10': 'forumName'},
    {'1': 'forum_id', '3': 8, '4': 1, '5': 4, '10': 'forumId'},
    {
      '1': 'last_modified_time',
      '3': 9,
      '4': 1,
      '5': 4,
      '10': 'lastModifiedTime'
    },
    {'1': 'title', '3': 10, '4': 1, '5': 9, '10': 'title'},
    {'1': 'content', '3': 11, '4': 1, '5': 9, '10': 'content'},
    {'1': 'user', '3': 12, '4': 1, '5': 11, '6': '.tieba.User', '10': 'user'},
    {
      '1': 'hot_tw_info',
      '3': 13,
      '4': 1,
      '5': 11,
      '6': '.tieba.HotTWThreadInfo',
      '10': 'hotTwInfo'
    },
    {
      '1': 'labelInfo',
      '3': 14,
      '4': 3,
      '5': 11,
      '6': '.tieba.LabelInfo',
      '10': 'labelInfo'
    },
    {
      '1': 'livecover_src_status',
      '3': 15,
      '4': 1,
      '5': 9,
      '10': 'livecoverSrcStatus'
    },
    {
      '1': 'notice_info',
      '3': 16,
      '4': 1,
      '5': 11,
      '6': '.tieba.NoticeInfo',
      '10': 'noticeInfo'
    },
    {'1': 'is_headline', '3': 17, '4': 1, '5': 5, '10': 'isHeadline'},
    {
      '1': 'livecover_status',
      '3': 18,
      '4': 1,
      '5': 11,
      '6': '.tieba.LiveCoverStatus',
      '10': 'livecoverStatus'
    },
    {'1': 'freq_num', '3': 19, '4': 1, '5': 13, '10': 'freqNum'},
    {
      '1': 'copythread_remind',
      '3': 20,
      '4': 1,
      '5': 13,
      '10': 'copythreadRemind'
    },
    {'1': 'is_copytwzhibo', '3': 21, '4': 1, '5': 13, '10': 'isCopytwzhibo'},
    {'1': 'field_ex', '3': 22, '4': 1, '5': 9, '10': 'fieldEx'},
  ],
};

/// Descriptor for `ZhiBoInfoTW`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List zhiBoInfoTWDescriptor = $convert.base64Decode(
    'CgtaaGlCb0luZm9UVxIbCgl0aHJlYWRfaWQYASABKARSCHRocmVhZElkEiMKDWxpdmVjb3Zlcl'
    '9zcmMYAiABKAlSDGxpdmVjb3ZlclNyYxIuChNsaXZlY292ZXJfc3JjX2JzaXplGAMgASgJUhFs'
    'aXZlY292ZXJTcmNCc2l6ZRIZCghwb3N0X251bRgEIAEoDVIHcG9zdE51bRIbCglyZXBseV9udW'
    '0YBSABKA1SCHJlcGx5TnVtEhwKA3phbhgGIAEoCzIKLnRpZWJhLlphblIDemFuEh0KCmZvcnVt'
    'X25hbWUYByABKAlSCWZvcnVtTmFtZRIZCghmb3J1bV9pZBgIIAEoBFIHZm9ydW1JZBIsChJsYX'
    'N0X21vZGlmaWVkX3RpbWUYCSABKARSEGxhc3RNb2RpZmllZFRpbWUSFAoFdGl0bGUYCiABKAlS'
    'BXRpdGxlEhgKB2NvbnRlbnQYCyABKAlSB2NvbnRlbnQSHwoEdXNlchgMIAEoCzILLnRpZWJhLl'
    'VzZXJSBHVzZXISNgoLaG90X3R3X2luZm8YDSABKAsyFi50aWViYS5Ib3RUV1RocmVhZEluZm9S'
    'CWhvdFR3SW5mbxIuCglsYWJlbEluZm8YDiADKAsyEC50aWViYS5MYWJlbEluZm9SCWxhYmVsSW'
    '5mbxIwChRsaXZlY292ZXJfc3JjX3N0YXR1cxgPIAEoCVISbGl2ZWNvdmVyU3JjU3RhdHVzEjIK'
    'C25vdGljZV9pbmZvGBAgASgLMhEudGllYmEuTm90aWNlSW5mb1IKbm90aWNlSW5mbxIfCgtpc1'
    '9oZWFkbGluZRgRIAEoBVIKaXNIZWFkbGluZRJBChBsaXZlY292ZXJfc3RhdHVzGBIgASgLMhYu'
    'dGllYmEuTGl2ZUNvdmVyU3RhdHVzUg9saXZlY292ZXJTdGF0dXMSGQoIZnJlcV9udW0YEyABKA'
    '1SB2ZyZXFOdW0SKwoRY29weXRocmVhZF9yZW1pbmQYFCABKA1SEGNvcHl0aHJlYWRSZW1pbmQS'
    'JQoOaXNfY29weXR3emhpYm8YFSABKA1SDWlzQ29weXR3emhpYm8SGQoIZmllbGRfZXgYFiABKA'
    'lSB2ZpZWxkRXg=');
