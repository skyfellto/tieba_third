// This is a generated file - do not edit.
//
// Generated from TopicList/TopicList.proto.

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

@$core.Deprecated('Use topicListRequestDataDescriptor instead')
const TopicListRequestData$json = {
  '1': 'TopicListRequestData',
  '2': [
    {
      '1': 'common',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.tieba.CommonRequest',
      '10': 'common'
    },
    {'1': 'call_from', '3': 2, '4': 1, '5': 9, '10': 'callFrom'},
    {'1': 'list_type', '3': 3, '4': 1, '5': 9, '10': 'listType'},
    {'1': 'need_tab_list', '3': 4, '4': 1, '5': 9, '10': 'needTabList'},
    {'1': 'fid', '3': 5, '4': 1, '5': 3, '10': 'fid'},
  ],
};

/// Descriptor for `TopicListRequestData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List topicListRequestDataDescriptor = $convert.base64Decode(
    'ChRUb3BpY0xpc3RSZXF1ZXN0RGF0YRIsCgZjb21tb24YASABKAsyFC50aWViYS5Db21tb25SZX'
    'F1ZXN0UgZjb21tb24SGwoJY2FsbF9mcm9tGAIgASgJUghjYWxsRnJvbRIbCglsaXN0X3R5cGUY'
    'AyABKAlSCGxpc3RUeXBlEiIKDW5lZWRfdGFiX2xpc3QYBCABKAlSC25lZWRUYWJMaXN0EhAKA2'
    'ZpZBgFIAEoA1IDZmlk');

@$core.Deprecated('Use topicListRequestDescriptor instead')
const TopicListRequest$json = {
  '1': 'TopicListRequest',
  '2': [
    {
      '1': 'data',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.tieba.topicList.TopicListRequestData',
      '10': 'data'
    },
  ],
};

/// Descriptor for `TopicListRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List topicListRequestDescriptor = $convert.base64Decode(
    'ChBUb3BpY0xpc3RSZXF1ZXN0EjkKBGRhdGEYASABKAsyJS50aWViYS50b3BpY0xpc3QuVG9waW'
    'NMaXN0UmVxdWVzdERhdGFSBGRhdGE=');

@$core.Deprecated('Use topicListModuleDescriptor instead')
const TopicListModule$json = {
  '1': 'TopicListModule',
  '2': [
    {'1': 'module_title', '3': 1, '4': 1, '5': 9, '10': 'moduleTitle'},
    {
      '1': 'topic_list',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.tieba.topicList.TopicList',
      '10': 'topicList'
    },
    {'1': 'tips', '3': 3, '4': 1, '5': 9, '10': 'tips'},
    {'1': 'rule_jump_url', '3': 4, '4': 1, '5': 9, '10': 'ruleJumpUrl'},
  ],
};

/// Descriptor for `TopicListModule`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List topicListModuleDescriptor = $convert.base64Decode(
    'Cg9Ub3BpY0xpc3RNb2R1bGUSIQoMbW9kdWxlX3RpdGxlGAEgASgJUgttb2R1bGVUaXRsZRI5Cg'
    'p0b3BpY19saXN0GAIgAygLMhoudGllYmEudG9waWNMaXN0LlRvcGljTGlzdFIJdG9waWNMaXN0'
    'EhIKBHRpcHMYAyABKAlSBHRpcHMSIgoNcnVsZV9qdW1wX3VybBgEIAEoCVILcnVsZUp1bXBVcm'
    'w=');

@$core.Deprecated('Use mediaTopicDescriptor instead')
const MediaTopic$json = {
  '1': 'MediaTopic',
  '2': [
    {'1': 'topic_id', '3': 1, '4': 1, '5': 4, '10': 'topicId'},
    {'1': 'topic_name', '3': 2, '4': 1, '5': 9, '10': 'topicName'},
    {
      '1': 'video_info',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.tieba.VideoInfo',
      '10': 'videoInfo'
    },
    {'1': 'pic_url', '3': 4, '4': 1, '5': 9, '10': 'picUrl'},
  ],
};

/// Descriptor for `MediaTopic`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mediaTopicDescriptor = $convert.base64Decode(
    'CgpNZWRpYVRvcGljEhkKCHRvcGljX2lkGAEgASgEUgd0b3BpY0lkEh0KCnRvcGljX25hbWUYAi'
    'ABKAlSCXRvcGljTmFtZRIvCgp2aWRlb19pbmZvGAMgASgLMhAudGllYmEuVmlkZW9JbmZvUgl2'
    'aWRlb0luZm8SFwoHcGljX3VybBgEIAEoCVIGcGljVXJs');

@$core.Deprecated('Use tabListDescriptor instead')
const TabList$json = {
  '1': 'TabList',
  '2': [
    {'1': 'tab_name', '3': 1, '4': 1, '5': 9, '10': 'tabName'},
    {'1': 'tab_type', '3': 2, '4': 1, '5': 9, '10': 'tabType'},
    {'1': 'share_pic', '3': 3, '4': 1, '5': 9, '10': 'sharePic'},
    {'1': 'share_title', '3': 4, '4': 1, '5': 9, '10': 'shareTitle'},
    {'1': 'share_desc', '3': 5, '4': 1, '5': 9, '10': 'shareDesc'},
    {'1': 'share_url', '3': 6, '4': 1, '5': 9, '10': 'shareUrl'},
  ],
};

/// Descriptor for `TabList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tabListDescriptor = $convert.base64Decode(
    'CgdUYWJMaXN0EhkKCHRhYl9uYW1lGAEgASgJUgd0YWJOYW1lEhkKCHRhYl90eXBlGAIgASgJUg'
    'd0YWJUeXBlEhsKCXNoYXJlX3BpYxgDIAEoCVIIc2hhcmVQaWMSHwoLc2hhcmVfdGl0bGUYBCAB'
    'KAlSCnNoYXJlVGl0bGUSHQoKc2hhcmVfZGVzYxgFIAEoCVIJc2hhcmVEZXNjEhsKCXNoYXJlX3'
    'VybBgGIAEoCVIIc2hhcmVVcmw=');

@$core.Deprecated('Use topicListDescriptor instead')
const TopicList$json = {
  '1': 'TopicList',
  '2': [
    {'1': 'topic_id', '3': 1, '4': 1, '5': 4, '10': 'topicId'},
    {'1': 'topic_name', '3': 2, '4': 1, '5': 9, '10': 'topicName'},
    {'1': 'discuss_num', '3': 3, '4': 1, '5': 4, '10': 'discussNum'},
    {'1': 'tag', '3': 4, '4': 1, '5': 5, '10': 'tag'},
    {'1': 'topic_desc', '3': 5, '4': 1, '5': 9, '10': 'topicDesc'},
    {'1': 'topic_pic', '3': 6, '4': 1, '5': 9, '10': 'topicPic'},
    {'1': 'update_time', '3': 7, '4': 1, '5': 3, '10': 'updateTime'},
    {'1': 'topic_user_name', '3': 8, '4': 1, '5': 9, '10': 'topicUserName'},
    {'1': 'media', '3': 9, '4': 3, '5': 11, '6': '.tieba.Media', '10': 'media'},
    {'1': 'topic_tid', '3': 10, '4': 1, '5': 3, '10': 'topicTid'},
    {'1': 'topic_h5_url', '3': 11, '4': 1, '5': 9, '10': 'topicH5Url'},
    {
      '1': 'video_info',
      '3': 12,
      '4': 1,
      '5': 11,
      '6': '.tieba.VideoInfo',
      '10': 'videoInfo'
    },
    {
      '1': 'topic_thread_types',
      '3': 13,
      '4': 1,
      '5': 5,
      '10': 'topicThreadTypes'
    },
  ],
};

/// Descriptor for `TopicList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List topicListDescriptor = $convert.base64Decode(
    'CglUb3BpY0xpc3QSGQoIdG9waWNfaWQYASABKARSB3RvcGljSWQSHQoKdG9waWNfbmFtZRgCIA'
    'EoCVIJdG9waWNOYW1lEh8KC2Rpc2N1c3NfbnVtGAMgASgEUgpkaXNjdXNzTnVtEhAKA3RhZxgE'
    'IAEoBVIDdGFnEh0KCnRvcGljX2Rlc2MYBSABKAlSCXRvcGljRGVzYxIbCgl0b3BpY19waWMYBi'
    'ABKAlSCHRvcGljUGljEh8KC3VwZGF0ZV90aW1lGAcgASgDUgp1cGRhdGVUaW1lEiYKD3RvcGlj'
    'X3VzZXJfbmFtZRgIIAEoCVINdG9waWNVc2VyTmFtZRIiCgVtZWRpYRgJIAMoCzIMLnRpZWJhLk'
    '1lZGlhUgVtZWRpYRIbCgl0b3BpY190aWQYCiABKANSCHRvcGljVGlkEiAKDHRvcGljX2g1X3Vy'
    'bBgLIAEoCVIKdG9waWNINVVybBIvCgp2aWRlb19pbmZvGAwgASgLMhAudGllYmEuVmlkZW9Jbm'
    'ZvUgl2aWRlb0luZm8SLAoSdG9waWNfdGhyZWFkX3R5cGVzGA0gASgFUhB0b3BpY1RocmVhZFR5'
    'cGVz');

@$core.Deprecated('Use newTopicListDescriptor instead')
const NewTopicList$json = {
  '1': 'NewTopicList',
  '2': [
    {'1': 'topic_id', '3': 1, '4': 1, '5': 3, '10': 'topicId'},
    {'1': 'topic_name', '3': 2, '4': 1, '5': 9, '10': 'topicName'},
    {'1': 'topic_desc', '3': 3, '4': 1, '5': 9, '10': 'topicDesc'},
    {'1': 'discuss_num', '3': 4, '4': 1, '5': 3, '10': 'discussNum'},
    {'1': 'topic_image', '3': 5, '4': 1, '5': 9, '10': 'topicImage'},
    {'1': 'topic_tag', '3': 6, '4': 1, '5': 5, '10': 'topicTag'},
  ],
};

/// Descriptor for `NewTopicList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List newTopicListDescriptor = $convert.base64Decode(
    'CgxOZXdUb3BpY0xpc3QSGQoIdG9waWNfaWQYASABKANSB3RvcGljSWQSHQoKdG9waWNfbmFtZR'
    'gCIAEoCVIJdG9waWNOYW1lEh0KCnRvcGljX2Rlc2MYAyABKAlSCXRvcGljRGVzYxIfCgtkaXNj'
    'dXNzX251bRgEIAEoA1IKZGlzY3Vzc051bRIfCgt0b3BpY19pbWFnZRgFIAEoCVIKdG9waWNJbW'
    'FnZRIbCgl0b3BpY190YWcYBiABKAVSCHRvcGljVGFn');

@$core.Deprecated('Use topicListResponseDataDescriptor instead')
const TopicListResponseData$json = {
  '1': 'TopicListResponseData',
  '2': [
    {
      '1': 'topic_bang',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.tieba.topicList.TopicListModule',
      '10': 'topicBang'
    },
    {
      '1': 'topic_manual',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.tieba.topicList.TopicListModule',
      '10': 'topicManual'
    },
    {
      '1': 'media_topic',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.tieba.topicList.MediaTopic',
      '10': 'mediaTopic'
    },
    {
      '1': 'tab_list',
      '3': 6,
      '4': 3,
      '5': 11,
      '6': '.tieba.topicList.TabList',
      '10': 'tabList'
    },
    {
      '1': 'frs_tab_topic',
      '3': 7,
      '4': 3,
      '5': 11,
      '6': '.tieba.topicList.TopicList',
      '10': 'frsTabTopic'
    },
    {
      '1': 'topic_list',
      '3': 8,
      '4': 3,
      '5': 11,
      '6': '.tieba.topicList.NewTopicList',
      '10': 'topicList'
    },
  ],
};

/// Descriptor for `TopicListResponseData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List topicListResponseDataDescriptor = $convert.base64Decode(
    'ChVUb3BpY0xpc3RSZXNwb25zZURhdGESPwoKdG9waWNfYmFuZxgBIAEoCzIgLnRpZWJhLnRvcG'
    'ljTGlzdC5Ub3BpY0xpc3RNb2R1bGVSCXRvcGljQmFuZxJDCgx0b3BpY19tYW51YWwYAiABKAsy'
    'IC50aWViYS50b3BpY0xpc3QuVG9waWNMaXN0TW9kdWxlUgt0b3BpY01hbnVhbBI8CgttZWRpYV'
    '90b3BpYxgDIAEoCzIbLnRpZWJhLnRvcGljTGlzdC5NZWRpYVRvcGljUgptZWRpYVRvcGljEjMK'
    'CHRhYl9saXN0GAYgAygLMhgudGllYmEudG9waWNMaXN0LlRhYkxpc3RSB3RhYkxpc3QSPgoNZn'
    'JzX3RhYl90b3BpYxgHIAMoCzIaLnRpZWJhLnRvcGljTGlzdC5Ub3BpY0xpc3RSC2Zyc1RhYlRv'
    'cGljEjwKCnRvcGljX2xpc3QYCCADKAsyHS50aWViYS50b3BpY0xpc3QuTmV3VG9waWNMaXN0Ug'
    'l0b3BpY0xpc3Q=');

@$core.Deprecated('Use topicListResponseDescriptor instead')
const TopicListResponse$json = {
  '1': 'TopicListResponse',
  '2': [
    {'1': 'error', '3': 1, '4': 1, '5': 11, '6': '.tieba.Error', '10': 'error'},
    {
      '1': 'data',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.tieba.topicList.TopicListResponseData',
      '10': 'data'
    },
  ],
};

/// Descriptor for `TopicListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List topicListResponseDescriptor = $convert.base64Decode(
    'ChFUb3BpY0xpc3RSZXNwb25zZRIiCgVlcnJvchgBIAEoCzIMLnRpZWJhLkVycm9yUgVlcnJvch'
    'I6CgRkYXRhGAIgASgLMiYudGllYmEudG9waWNMaXN0LlRvcGljTGlzdFJlc3BvbnNlRGF0YVIE'
    'ZGF0YQ==');
