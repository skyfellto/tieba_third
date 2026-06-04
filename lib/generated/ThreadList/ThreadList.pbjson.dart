// This is a generated file - do not edit.
//
// Generated from ThreadList/ThreadList.proto.

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

@$core.Deprecated('Use threadListRequestDataDescriptor instead')
const ThreadListRequestData$json = {
  '1': 'ThreadListRequestData',
  '2': [
    {
      '1': 'ad_context_list',
      '3': 19,
      '4': 1,
      '5': 9,
      '9': 0,
      '10': 'adContextList',
      '17': true
    },
    {
      '1': 'ad_param',
      '3': 18,
      '4': 1,
      '5': 11,
      '6': '.tieba.threadList.AdParam',
      '10': 'adParam'
    },
    {
      '1': 'app_pos',
      '3': 17,
      '4': 1,
      '5': 11,
      '6': '.tieba.AppPosInfo',
      '10': 'appPos'
    },
    {
      '1': 'common',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.tieba.CommonRequest',
      '10': 'common'
    },
    {'1': 'forum_id', '3': 2, '4': 1, '5': 4, '10': 'forumId'},
    {'1': 'forum_name', '3': 14, '4': 1, '5': 9, '10': 'forumName'},
    {
      '1': 'last_click_tid',
      '3': 15,
      '4': 1,
      '5': 4,
      '9': 1,
      '10': 'lastClickTid',
      '17': true
    },
    {
      '1': 'need_abstract',
      '3': 3,
      '4': 1,
      '5': 13,
      '9': 2,
      '10': 'needAbstract',
      '17': true
    },
    {'1': 'pn', '3': 13, '4': 1, '5': 5, '10': 'pn'},
    {'1': 'q_type', '3': 7, '4': 1, '5': 13, '10': 'qType'},
    {'1': 'scr_dip', '3': 12, '4': 1, '5': 1, '10': 'scrDip'},
    {'1': 'scr_h', '3': 6, '4': 1, '5': 13, '10': 'scrH'},
    {'1': 'scr_w', '3': 5, '4': 1, '5': 13, '10': 'scrW'},
    {
      '1': 'sort_type',
      '3': 16,
      '4': 1,
      '5': 5,
      '9': 3,
      '10': 'sortType',
      '17': true
    },
    {
      '1': 'st_type',
      '3': 4,
      '4': 1,
      '5': 13,
      '9': 4,
      '10': 'stType',
      '17': true
    },
    {'1': 'thread_ids', '3': 1, '4': 1, '5': 9, '10': 'threadIds'},
    {
      '1': 'user_id',
      '3': 9,
      '4': 1,
      '5': 3,
      '9': 5,
      '10': 'userId',
      '17': true
    },
    {
      '1': 'da_idfa',
      '3': 10,
      '4': 1,
      '5': 9,
      '9': 6,
      '10': 'daIdfa',
      '17': true
    },
    {'1': 'platform', '3': 11, '4': 1, '5': 9, '10': 'platform'},
    {'1': 'ad_bear_context', '3': 22, '4': 1, '5': 9, '10': 'adBearContext'},
    {'1': 'has_ad_bear', '3': 23, '4': 1, '5': 5, '10': 'hasAdBear'},
    {'1': 'ad_bear_sid', '3': 24, '4': 1, '5': 9, '10': 'adBearSid'},
    {'1': 'ad_bear_sid_price', '3': 25, '4': 1, '5': 1, '10': 'adBearSidPrice'},
    {'1': 'request_times', '3': 26, '4': 1, '5': 5, '10': 'requestTimes'},
    {'1': 'frs_common_info', '3': 27, '4': 1, '5': 9, '10': 'frsCommonInfo'},
    {'1': 'is_newfrs', '3': 28, '4': 1, '5': 5, '10': 'isNewfrs'},
    {'1': 'is_goodtab', '3': 29, '4': 1, '5': 5, '10': 'isGoodtab'},
    {'1': 'log_param', '3': 30, '4': 1, '5': 9, '10': 'logParam'},
    {'1': 'is_newfeed', '3': 31, '4': 1, '5': 13, '10': 'isNewfeed'},
    {'1': 'tid_src', '3': 32, '4': 1, '5': 4, '10': 'tidSrc'},
    {'1': 'nid_src', '3': 33, '4': 1, '5': 9, '10': 'nidSrc'},
    {'1': 'ad_external_info', '3': 36, '4': 1, '5': 9, '10': 'adExternalInfo'},
    {'1': 'simplify_field', '3': 41, '4': 1, '5': 9, '10': 'simplifyField'},
  ],
  '8': [
    {'1': '_ad_context_list'},
    {'1': '_last_click_tid'},
    {'1': '_need_abstract'},
    {'1': '_sort_type'},
    {'1': '_st_type'},
    {'1': '_user_id'},
    {'1': '_da_idfa'},
  ],
};

/// Descriptor for `ThreadListRequestData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List threadListRequestDataDescriptor = $convert.base64Decode(
    'ChVUaHJlYWRMaXN0UmVxdWVzdERhdGESKwoPYWRfY29udGV4dF9saXN0GBMgASgJSABSDWFkQ2'
    '9udGV4dExpc3SIAQESNAoIYWRfcGFyYW0YEiABKAsyGS50aWViYS50aHJlYWRMaXN0LkFkUGFy'
    'YW1SB2FkUGFyYW0SKgoHYXBwX3BvcxgRIAEoCzIRLnRpZWJhLkFwcFBvc0luZm9SBmFwcFBvcx'
    'IsCgZjb21tb24YCCABKAsyFC50aWViYS5Db21tb25SZXF1ZXN0UgZjb21tb24SGQoIZm9ydW1f'
    'aWQYAiABKARSB2ZvcnVtSWQSHQoKZm9ydW1fbmFtZRgOIAEoCVIJZm9ydW1OYW1lEikKDmxhc3'
    'RfY2xpY2tfdGlkGA8gASgESAFSDGxhc3RDbGlja1RpZIgBARIoCg1uZWVkX2Fic3RyYWN0GAMg'
    'ASgNSAJSDG5lZWRBYnN0cmFjdIgBARIOCgJwbhgNIAEoBVICcG4SFQoGcV90eXBlGAcgASgNUg'
    'VxVHlwZRIXCgdzY3JfZGlwGAwgASgBUgZzY3JEaXASEwoFc2NyX2gYBiABKA1SBHNjckgSEwoF'
    'c2NyX3cYBSABKA1SBHNjclcSIAoJc29ydF90eXBlGBAgASgFSANSCHNvcnRUeXBliAEBEhwKB3'
    'N0X3R5cGUYBCABKA1IBFIGc3RUeXBliAEBEh0KCnRocmVhZF9pZHMYASABKAlSCXRocmVhZElk'
    'cxIcCgd1c2VyX2lkGAkgASgDSAVSBnVzZXJJZIgBARIcCgdkYV9pZGZhGAogASgJSAZSBmRhSW'
    'RmYYgBARIaCghwbGF0Zm9ybRgLIAEoCVIIcGxhdGZvcm0SJgoPYWRfYmVhcl9jb250ZXh0GBYg'
    'ASgJUg1hZEJlYXJDb250ZXh0Eh4KC2hhc19hZF9iZWFyGBcgASgFUgloYXNBZEJlYXISHgoLYW'
    'RfYmVhcl9zaWQYGCABKAlSCWFkQmVhclNpZBIpChFhZF9iZWFyX3NpZF9wcmljZRgZIAEoAVIO'
    'YWRCZWFyU2lkUHJpY2USIwoNcmVxdWVzdF90aW1lcxgaIAEoBVIMcmVxdWVzdFRpbWVzEiYKD2'
    'Zyc19jb21tb25faW5mbxgbIAEoCVINZnJzQ29tbW9uSW5mbxIbCglpc19uZXdmcnMYHCABKAVS'
    'CGlzTmV3ZnJzEh0KCmlzX2dvb2R0YWIYHSABKAVSCWlzR29vZHRhYhIbCglsb2dfcGFyYW0YHi'
    'ABKAlSCGxvZ1BhcmFtEh0KCmlzX25ld2ZlZWQYHyABKA1SCWlzTmV3ZmVlZBIXCgd0aWRfc3Jj'
    'GCAgASgEUgZ0aWRTcmMSFwoHbmlkX3NyYxghIAEoCVIGbmlkU3JjEigKEGFkX2V4dGVybmFsX2'
    'luZm8YJCABKAlSDmFkRXh0ZXJuYWxJbmZvEiUKDnNpbXBsaWZ5X2ZpZWxkGCkgASgJUg1zaW1w'
    'bGlmeUZpZWxkQhIKEF9hZF9jb250ZXh0X2xpc3RCEQoPX2xhc3RfY2xpY2tfdGlkQhAKDl9uZW'
    'VkX2Fic3RyYWN0QgwKCl9zb3J0X3R5cGVCCgoIX3N0X3R5cGVCCgoIX3VzZXJfaWRCCgoIX2Rh'
    'X2lkZmE=');

@$core.Deprecated('Use threadListRequestDescriptor instead')
const ThreadListRequest$json = {
  '1': 'ThreadListRequest',
  '2': [
    {
      '1': 'data',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.tieba.threadList.ThreadListRequestData',
      '10': 'data'
    },
  ],
};

/// Descriptor for `ThreadListRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List threadListRequestDescriptor = $convert.base64Decode(
    'ChFUaHJlYWRMaXN0UmVxdWVzdBI7CgRkYXRhGAEgASgLMicudGllYmEudGhyZWFkTGlzdC5UaH'
    'JlYWRMaXN0UmVxdWVzdERhdGFSBGRhdGE=');

@$core.Deprecated('Use threadListResponseDataDescriptor instead')
const ThreadListResponseData$json = {
  '1': 'ThreadListResponseData',
  '2': [
    {
      '1': 'thread_list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.tieba.ThreadInfo',
      '10': 'threadList'
    },
    {
      '1': 'user_list',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.tieba.User',
      '10': 'userList'
    },
  ],
};

/// Descriptor for `ThreadListResponseData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List threadListResponseDataDescriptor = $convert.base64Decode(
    'ChZUaHJlYWRMaXN0UmVzcG9uc2VEYXRhEjIKC3RocmVhZF9saXN0GAEgAygLMhEudGllYmEuVG'
    'hyZWFkSW5mb1IKdGhyZWFkTGlzdBIoCgl1c2VyX2xpc3QYAiADKAsyCy50aWViYS5Vc2VyUgh1'
    'c2VyTGlzdA==');

@$core.Deprecated('Use threadListResponseDescriptor instead')
const ThreadListResponse$json = {
  '1': 'ThreadListResponse',
  '2': [
    {'1': 'error', '3': 1, '4': 1, '5': 11, '6': '.tieba.Error', '10': 'error'},
    {
      '1': 'data',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.tieba.threadList.ThreadListResponseData',
      '10': 'data'
    },
  ],
};

/// Descriptor for `ThreadListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List threadListResponseDescriptor = $convert.base64Decode(
    'ChJUaHJlYWRMaXN0UmVzcG9uc2USIgoFZXJyb3IYASABKAsyDC50aWViYS5FcnJvclIFZXJyb3'
    'ISPAoEZGF0YRgCIAEoCzIoLnRpZWJhLnRocmVhZExpc3QuVGhyZWFkTGlzdFJlc3BvbnNlRGF0'
    'YVIEZGF0YQ==');
