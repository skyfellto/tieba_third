// This is a generated file - do not edit.
//
// Generated from ForumRuleDetail/ForumRuleDetailResponseData.proto.

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

@$core.Deprecated('Use forumRuleDetailResponseDataDescriptor instead')
const ForumRuleDetailResponseData$json = {
  '1': 'ForumRuleDetailResponseData',
  '2': [
    {
      '1': 'forum',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.tieba.ForumInfo',
      '10': 'forum'
    },
    {'1': 'title', '3': 3, '4': 1, '5': 9, '10': 'title'},
    {'1': 'preface', '3': 4, '4': 1, '5': 9, '10': 'preface'},
    {
      '1': 'rules',
      '3': 5,
      '4': 3,
      '5': 11,
      '6': '.tieba.ForumRule',
      '10': 'rules'
    },
    {'1': 'audit_status', '3': 6, '4': 1, '5': 5, '10': 'auditStatus'},
    {'1': 'audit_opinion', '3': 7, '4': 1, '5': 9, '10': 'auditOpinion'},
    {'1': 'is_manager', '3': 8, '4': 1, '5': 5, '10': 'isManager'},
    {'1': 'forum_rule_id', '3': 9, '4': 1, '5': 3, '10': 'forumRuleId'},
    {'1': 'publish_time', '3': 10, '4': 1, '5': 9, '10': 'publishTime'},
    {
      '1': 'bazhu',
      '3': 11,
      '4': 1,
      '5': 11,
      '6': '.tieba.BawuRoleInfoPub',
      '10': 'bazhu'
    },
    {'1': 'cur_time', '3': 12, '4': 1, '5': 9, '10': 'curTime'},
  ],
};

/// Descriptor for `ForumRuleDetailResponseData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List forumRuleDetailResponseDataDescriptor = $convert.base64Decode(
    'ChtGb3J1bVJ1bGVEZXRhaWxSZXNwb25zZURhdGESJgoFZm9ydW0YAiABKAsyEC50aWViYS5Gb3'
    'J1bUluZm9SBWZvcnVtEhQKBXRpdGxlGAMgASgJUgV0aXRsZRIYCgdwcmVmYWNlGAQgASgJUgdw'
    'cmVmYWNlEiYKBXJ1bGVzGAUgAygLMhAudGllYmEuRm9ydW1SdWxlUgVydWxlcxIhCgxhdWRpdF'
    '9zdGF0dXMYBiABKAVSC2F1ZGl0U3RhdHVzEiMKDWF1ZGl0X29waW5pb24YByABKAlSDGF1ZGl0'
    'T3BpbmlvbhIdCgppc19tYW5hZ2VyGAggASgFUglpc01hbmFnZXISIgoNZm9ydW1fcnVsZV9pZB'
    'gJIAEoA1ILZm9ydW1SdWxlSWQSIQoMcHVibGlzaF90aW1lGAogASgJUgtwdWJsaXNoVGltZRIs'
    'CgViYXpodRgLIAEoCzIWLnRpZWJhLkJhd3VSb2xlSW5mb1B1YlIFYmF6aHUSGQoIY3VyX3RpbW'
    'UYDCABKAlSB2N1clRpbWU=');
