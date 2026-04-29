// This is a generated file - do not edit.
//
// Generated from Personalized.proto.

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

@$core.Deprecated('Use personalizedRequestDataDescriptor instead')
const PersonalizedRequestData$json = {
  '1': 'PersonalizedRequestData',
  '2': [
    {'1': 'ad_context_list', '3': 30, '4': 1, '5': 9, '10': 'adContextList'},
    {'1': 'ad_ext_params', '3': 37, '4': 1, '5': 9, '10': 'adExtParams'},
    {
      '1': 'app_pos',
      '3': 36,
      '4': 1,
      '5': 11,
      '6': '.tieba.AppPosInfo',
      '10': 'appPos'
    },
    {
      '1': 'common',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.tieba.CommonRequest',
      '10': 'common'
    },
    {'1': 'invoke_source', '3': 29, '4': 1, '5': 9, '10': 'invokeSource'},
    {'1': 'load_type', '3': 4, '4': 1, '5': 13, '10': 'loadType'},
    {'1': 'need_forumlist', '3': 22, '4': 1, '5': 13, '10': 'needForumlist'},
    {'1': 'need_tags', '3': 3, '4': 1, '5': 13, '10': 'needTags'},
    {'1': 'new_install', '3': 27, '4': 1, '5': 5, '10': 'newInstall'},
    {'1': 'new_net_type', '3': 23, '4': 1, '5': 13, '10': 'newNetType'},
    {
      '1': 'page_thread_count',
      '3': 5,
      '4': 1,
      '5': 13,
      '10': 'pageThreadCount'
    },
    {'1': 'pn', '3': 6, '4': 1, '5': 13, '10': 'pn'},
    {
      '1': 'pre_ad_thread_count',
      '3': 26,
      '4': 1,
      '5': 5,
      '10': 'preAdThreadCount'
    },
    {'1': 'q_type', '3': 11, '4': 1, '5': 5, '10': 'qType'},
    {'1': 'request_times', '3': 28, '4': 1, '5': 5, '10': 'requestTimes'},
    {'1': 'scr_dip', '3': 10, '4': 1, '5': 1, '10': 'scrDip'},
    {'1': 'scr_h', '3': 9, '4': 1, '5': 5, '10': 'scrH'},
    {'1': 'scr_w', '3': 8, '4': 1, '5': 5, '10': 'scrW'},
    {'1': 'sug_count', '3': 7, '4': 1, '5': 13, '10': 'sugCount'},
    {'1': 'tag_code', '3': 2, '4': 1, '5': 13, '10': 'tagCode'},
  ],
};

/// Descriptor for `PersonalizedRequestData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List personalizedRequestDataDescriptor = $convert.base64Decode(
    'ChdQZXJzb25hbGl6ZWRSZXF1ZXN0RGF0YRImCg9hZF9jb250ZXh0X2xpc3QYHiABKAlSDWFkQ2'
    '9udGV4dExpc3QSIgoNYWRfZXh0X3BhcmFtcxglIAEoCVILYWRFeHRQYXJhbXMSKgoHYXBwX3Bv'
    'cxgkIAEoCzIRLnRpZWJhLkFwcFBvc0luZm9SBmFwcFBvcxIsCgZjb21tb24YASABKAsyFC50aW'
    'ViYS5Db21tb25SZXF1ZXN0UgZjb21tb24SIwoNaW52b2tlX3NvdXJjZRgdIAEoCVIMaW52b2tl'
    'U291cmNlEhsKCWxvYWRfdHlwZRgEIAEoDVIIbG9hZFR5cGUSJQoObmVlZF9mb3J1bWxpc3QYFi'
    'ABKA1SDW5lZWRGb3J1bWxpc3QSGwoJbmVlZF90YWdzGAMgASgNUghuZWVkVGFncxIfCgtuZXdf'
    'aW5zdGFsbBgbIAEoBVIKbmV3SW5zdGFsbBIgCgxuZXdfbmV0X3R5cGUYFyABKA1SCm5ld05ldF'
    'R5cGUSKgoRcGFnZV90aHJlYWRfY291bnQYBSABKA1SD3BhZ2VUaHJlYWRDb3VudBIOCgJwbhgG'
    'IAEoDVICcG4SLQoTcHJlX2FkX3RocmVhZF9jb3VudBgaIAEoBVIQcHJlQWRUaHJlYWRDb3VudB'
    'IVCgZxX3R5cGUYCyABKAVSBXFUeXBlEiMKDXJlcXVlc3RfdGltZXMYHCABKAVSDHJlcXVlc3RU'
    'aW1lcxIXCgdzY3JfZGlwGAogASgBUgZzY3JEaXASEwoFc2NyX2gYCSABKAVSBHNjckgSEwoFc2'
    'NyX3cYCCABKAVSBHNjclcSGwoJc3VnX2NvdW50GAcgASgNUghzdWdDb3VudBIZCgh0YWdfY29k'
    'ZRgCIAEoDVIHdGFnQ29kZQ==');

@$core.Deprecated('Use personalizedRequestDescriptor instead')
const PersonalizedRequest$json = {
  '1': 'PersonalizedRequest',
  '2': [
    {
      '1': 'data',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.tieba.PersonalizedRequestData',
      '10': 'data'
    },
  ],
};

/// Descriptor for `PersonalizedRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List personalizedRequestDescriptor = $convert.base64Decode(
    'ChNQZXJzb25hbGl6ZWRSZXF1ZXN0EjIKBGRhdGEYASABKAsyHi50aWViYS5QZXJzb25hbGl6ZW'
    'RSZXF1ZXN0RGF0YVIEZGF0YQ==');

@$core.Deprecated('Use personalizedResponseDataDescriptor instead')
const PersonalizedResponseData$json = {
  '1': 'PersonalizedResponseData',
  '2': [
    {
      '1': 'thread_list',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.tieba.ThreadInfo',
      '10': 'threadList'
    },
    {
      '1': 'thread_personalized',
      '3': 7,
      '4': 3,
      '5': 11,
      '6': '.tieba.ThreadPersonalized',
      '10': 'threadPersonalized'
    },
  ],
};

/// Descriptor for `PersonalizedResponseData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List personalizedResponseDataDescriptor = $convert.base64Decode(
    'ChhQZXJzb25hbGl6ZWRSZXNwb25zZURhdGESMgoLdGhyZWFkX2xpc3QYAiADKAsyES50aWViYS'
    '5UaHJlYWRJbmZvUgp0aHJlYWRMaXN0EkoKE3RocmVhZF9wZXJzb25hbGl6ZWQYByADKAsyGS50'
    'aWViYS5UaHJlYWRQZXJzb25hbGl6ZWRSEnRocmVhZFBlcnNvbmFsaXplZA==');

@$core.Deprecated('Use personalizedResponseDescriptor instead')
const PersonalizedResponse$json = {
  '1': 'PersonalizedResponse',
  '2': [
    {'1': 'error', '3': 1, '4': 1, '5': 11, '6': '.tieba.Error', '10': 'error'},
    {
      '1': 'data',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.tieba.PersonalizedResponseData',
      '10': 'data'
    },
  ],
};

/// Descriptor for `PersonalizedResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List personalizedResponseDescriptor = $convert.base64Decode(
    'ChRQZXJzb25hbGl6ZWRSZXNwb25zZRIiCgVlcnJvchgBIAEoCzIMLnRpZWJhLkVycm9yUgVlcn'
    'JvchIzCgRkYXRhGAIgASgLMh8udGllYmEuUGVyc29uYWxpemVkUmVzcG9uc2VEYXRhUgRkYXRh');

@$core.Deprecated('Use threadPersonalizedDescriptor instead')
const ThreadPersonalized$json = {
  '1': 'ThreadPersonalized',
  '2': [
    {'1': 'tid', '3': 1, '4': 1, '5': 4, '10': 'tid'},
    {'1': 'weight', '3': 2, '4': 1, '5': 9, '10': 'weight'},
    {'1': 'source', '3': 3, '4': 1, '5': 9, '10': 'source'},
    {
      '1': 'dislikeResource',
      '3': 5,
      '4': 3,
      '5': 11,
      '6': '.tieba.DislikeReason',
      '10': 'dislikeResource'
    },
    {'1': 'extra', '3': 6, '4': 1, '5': 9, '10': 'extra'},
  ],
};

/// Descriptor for `ThreadPersonalized`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List threadPersonalizedDescriptor = $convert.base64Decode(
    'ChJUaHJlYWRQZXJzb25hbGl6ZWQSEAoDdGlkGAEgASgEUgN0aWQSFgoGd2VpZ2h0GAIgASgJUg'
    'Z3ZWlnaHQSFgoGc291cmNlGAMgASgJUgZzb3VyY2USPgoPZGlzbGlrZVJlc291cmNlGAUgAygL'
    'MhQudGllYmEuRGlzbGlrZVJlYXNvblIPZGlzbGlrZVJlc291cmNlEhQKBWV4dHJhGAYgASgJUg'
    'VleHRyYQ==');

@$core.Deprecated('Use dislikeReasonDescriptor instead')
const DislikeReason$json = {
  '1': 'DislikeReason',
  '2': [
    {'1': 'dislikeReason', '3': 1, '4': 1, '5': 9, '10': 'dislikeReason'},
    {'1': 'dislikeId', '3': 2, '4': 1, '5': 13, '10': 'dislikeId'},
    {'1': 'extra', '3': 3, '4': 1, '5': 9, '10': 'extra'},
  ],
};

/// Descriptor for `DislikeReason`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dislikeReasonDescriptor = $convert.base64Decode(
    'Cg1EaXNsaWtlUmVhc29uEiQKDWRpc2xpa2VSZWFzb24YASABKAlSDWRpc2xpa2VSZWFzb24SHA'
    'oJZGlzbGlrZUlkGAIgASgNUglkaXNsaWtlSWQSFAoFZXh0cmEYAyABKAlSBWV4dHJh');
