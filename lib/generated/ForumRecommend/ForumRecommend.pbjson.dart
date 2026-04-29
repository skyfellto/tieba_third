// This is a generated file - do not edit.
//
// Generated from ForumRecommend/ForumRecommend.proto.

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

@$core.Deprecated('Use forumRecommendRequestDataDescriptor instead')
const ForumRecommendRequestData$json = {
  '1': 'ForumRecommendRequestData',
  '2': [
    {'1': 'like_forum', '3': 1, '4': 1, '5': 13, '10': 'likeForum'},
    {'1': 'topic', '3': 2, '4': 1, '5': 13, '10': 'topic'},
    {'1': 'recommend', '3': 3, '4': 1, '5': 13, '10': 'recommend'},
    {
      '1': 'common',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.tieba.CommonRequest',
      '10': 'common'
    },
    {'1': 'visit_history', '3': 5, '4': 1, '5': 9, '10': 'visitHistory'},
    {'1': 'sort_type', '3': 7, '4': 1, '5': 5, '10': 'sortType'},
  ],
};

/// Descriptor for `ForumRecommendRequestData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List forumRecommendRequestDataDescriptor = $convert.base64Decode(
    'ChlGb3J1bVJlY29tbWVuZFJlcXVlc3REYXRhEh0KCmxpa2VfZm9ydW0YASABKA1SCWxpa2VGb3'
    'J1bRIUCgV0b3BpYxgCIAEoDVIFdG9waWMSHAoJcmVjb21tZW5kGAMgASgNUglyZWNvbW1lbmQS'
    'LAoGY29tbW9uGAQgASgLMhQudGllYmEuQ29tbW9uUmVxdWVzdFIGY29tbW9uEiMKDXZpc2l0X2'
    'hpc3RvcnkYBSABKAlSDHZpc2l0SGlzdG9yeRIbCglzb3J0X3R5cGUYByABKAVSCHNvcnRUeXBl');

@$core.Deprecated('Use forumRecommendRequestDescriptor instead')
const ForumRecommendRequest$json = {
  '1': 'ForumRecommendRequest',
  '2': [
    {
      '1': 'data',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.tieba.forumRecommend.ForumRecommendRequestData',
      '10': 'data'
    },
  ],
};

/// Descriptor for `ForumRecommendRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List forumRecommendRequestDescriptor = $convert.base64Decode(
    'ChVGb3J1bVJlY29tbWVuZFJlcXVlc3QSQwoEZGF0YRgBIAEoCzIvLnRpZWJhLmZvcnVtUmVjb2'
    '1tZW5kLkZvcnVtUmVjb21tZW5kUmVxdWVzdERhdGFSBGRhdGE=');

@$core.Deprecated('Use forumRecommendResponseDataDescriptor instead')
const ForumRecommendResponseData$json = {
  '1': 'ForumRecommendResponseData',
  '2': [
    {
      '1': 'like_forum',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.tieba.forumRecommend.LikeForum',
      '10': 'likeForum'
    },
    {'1': 'is_login', '3': 4, '4': 1, '5': 5, '10': 'isLogin'},
    {'1': 'sort_type', '3': 18, '4': 1, '5': 5, '10': 'sortType'},
  ],
};

/// Descriptor for `ForumRecommendResponseData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List forumRecommendResponseDataDescriptor =
    $convert.base64Decode(
        'ChpGb3J1bVJlY29tbWVuZFJlc3BvbnNlRGF0YRI+CgpsaWtlX2ZvcnVtGAEgAygLMh8udGllYm'
        'EuZm9ydW1SZWNvbW1lbmQuTGlrZUZvcnVtUglsaWtlRm9ydW0SGQoIaXNfbG9naW4YBCABKAVS'
        'B2lzTG9naW4SGwoJc29ydF90eXBlGBIgASgFUghzb3J0VHlwZQ==');

@$core.Deprecated('Use forumRecommendResponseDescriptor instead')
const ForumRecommendResponse$json = {
  '1': 'ForumRecommendResponse',
  '2': [
    {'1': 'error', '3': 1, '4': 1, '5': 11, '6': '.tieba.Error', '10': 'error'},
    {
      '1': 'data',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.tieba.forumRecommend.ForumRecommendResponseData',
      '10': 'data'
    },
  ],
};

/// Descriptor for `ForumRecommendResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List forumRecommendResponseDescriptor = $convert.base64Decode(
    'ChZGb3J1bVJlY29tbWVuZFJlc3BvbnNlEiIKBWVycm9yGAEgASgLMgwudGllYmEuRXJyb3JSBW'
    'Vycm9yEkQKBGRhdGEYAiABKAsyMC50aWViYS5mb3J1bVJlY29tbWVuZC5Gb3J1bVJlY29tbWVu'
    'ZFJlc3BvbnNlRGF0YVIEZGF0YQ==');
