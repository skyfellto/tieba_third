// This is a generated file - do not edit.
//
// Generated from TaskInfo.proto.

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

@$core.Deprecated('Use taskInfoDescriptor instead')
const TaskInfo$json = {
  '1': 'TaskInfo',
  '2': [
    {'1': 'task_id', '3': 1, '4': 1, '5': 3, '10': 'taskId'},
    {'1': 'thread_id', '3': 2, '4': 1, '5': 3, '10': 'threadId'},
    {'1': 'bgimg', '3': 3, '4': 1, '5': 9, '10': 'bgimg'},
    {'1': 'thread_img', '3': 4, '4': 1, '5': 9, '10': 'threadImg'},
    {'1': 'start_time', '3': 5, '4': 1, '5': 3, '10': 'startTime'},
    {'1': 'end_time', '3': 6, '4': 1, '5': 3, '10': 'endTime'},
    {'1': 'thread_img_size', '3': 7, '4': 1, '5': 9, '10': 'threadImgSize'},
    {'1': 'forum_id', '3': 8, '4': 1, '5': 3, '10': 'forumId'},
    {'1': 'forum_name', '3': 9, '4': 1, '5': 9, '10': 'forumName'},
    {'1': 'obj_id', '3': 10, '4': 1, '5': 9, '10': 'objId'},
    {
      '1': 'vote_schema',
      '3': 11,
      '4': 1,
      '5': 11,
      '6': '.tieba.VoteSchema',
      '10': 'voteSchema'
    },
    {
      '1': 'reward_card',
      '3': 12,
      '4': 1,
      '5': 11,
      '6': '.tieba.RewardCard',
      '10': 'rewardCard'
    },
    {'1': 'is_god_reply', '3': 13, '4': 1, '5': 5, '10': 'isGodReply'},
    {'1': 'floor_god_reply', '3': 14, '4': 1, '5': 9, '10': 'floorGodReply'},
    {'1': 'card_type', '3': 15, '4': 1, '5': 5, '10': 'cardType'},
    {'1': 'wh_rate', '3': 16, '4': 1, '5': 9, '10': 'whRate'},
    {'1': 'webview_url', '3': 17, '4': 1, '5': 9, '10': 'webviewUrl'},
    {
      '1': 'top_background_img',
      '3': 18,
      '4': 1,
      '5': 9,
      '10': 'topBackgroundImg'
    },
    {'1': 'theme_color', '3': 19, '4': 1, '5': 9, '10': 'themeColor'},
    {'1': 'webview_data', '3': 20, '4': 1, '5': 9, '10': 'webviewData'},
  ],
};

/// Descriptor for `TaskInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List taskInfoDescriptor = $convert.base64Decode(
    'CghUYXNrSW5mbxIXCgd0YXNrX2lkGAEgASgDUgZ0YXNrSWQSGwoJdGhyZWFkX2lkGAIgASgDUg'
    'h0aHJlYWRJZBIUCgViZ2ltZxgDIAEoCVIFYmdpbWcSHQoKdGhyZWFkX2ltZxgEIAEoCVIJdGhy'
    'ZWFkSW1nEh0KCnN0YXJ0X3RpbWUYBSABKANSCXN0YXJ0VGltZRIZCghlbmRfdGltZRgGIAEoA1'
    'IHZW5kVGltZRImCg90aHJlYWRfaW1nX3NpemUYByABKAlSDXRocmVhZEltZ1NpemUSGQoIZm9y'
    'dW1faWQYCCABKANSB2ZvcnVtSWQSHQoKZm9ydW1fbmFtZRgJIAEoCVIJZm9ydW1OYW1lEhUKBm'
    '9ial9pZBgKIAEoCVIFb2JqSWQSMgoLdm90ZV9zY2hlbWEYCyABKAsyES50aWViYS5Wb3RlU2No'
    'ZW1hUgp2b3RlU2NoZW1hEjIKC3Jld2FyZF9jYXJkGAwgASgLMhEudGllYmEuUmV3YXJkQ2FyZF'
    'IKcmV3YXJkQ2FyZBIgCgxpc19nb2RfcmVwbHkYDSABKAVSCmlzR29kUmVwbHkSJgoPZmxvb3Jf'
    'Z29kX3JlcGx5GA4gASgJUg1mbG9vckdvZFJlcGx5EhsKCWNhcmRfdHlwZRgPIAEoBVIIY2FyZF'
    'R5cGUSFwoHd2hfcmF0ZRgQIAEoCVIGd2hSYXRlEh8KC3dlYnZpZXdfdXJsGBEgASgJUgp3ZWJ2'
    'aWV3VXJsEiwKEnRvcF9iYWNrZ3JvdW5kX2ltZxgSIAEoCVIQdG9wQmFja2dyb3VuZEltZxIfCg'
    't0aGVtZV9jb2xvchgTIAEoCVIKdGhlbWVDb2xvchIhCgx3ZWJ2aWV3X2RhdGEYFCABKAlSC3dl'
    'YnZpZXdEYXRh');
