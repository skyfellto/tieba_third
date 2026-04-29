// This is a generated file - do not edit.
//
// Generated from TPointPost.proto.

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

@$core.Deprecated('Use tPointPostDescriptor instead')
const TPointPost$json = {
  '1': 'TPointPost',
  '2': [
    {'1': 'is_tuiguang', '3': 1, '4': 1, '5': 13, '10': 'isTuiguang'},
    {'1': 'position', '3': 2, '4': 1, '5': 9, '10': 'position'},
    {'1': 'template_id', '3': 3, '4': 1, '5': 3, '10': 'templateId'},
    {'1': 'template_type', '3': 4, '4': 1, '5': 5, '10': 'templateType'},
    {
      '1': 'act_btn',
      '3': 5,
      '4': 3,
      '5': 11,
      '6': '.tieba.ActBtn',
      '10': 'actBtn'
    },
    {
      '1': 't_imgs',
      '3': 6,
      '4': 3,
      '5': 11,
      '6': '.tieba.Timgs',
      '10': 'tImgs'
    },
    {
      '1': 'detail_info',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.tieba.DetailInfo',
      '10': 'detailInfo'
    },
    {'1': 'monitor_id', '3': 8, '4': 1, '5': 9, '10': 'monitorId'},
    {'1': 'hidden_day', '3': 9, '4': 1, '5': 5, '10': 'hiddenDay'},
    {
      '1': 't_video',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.tieba.VideoInfo',
      '10': 'tVideo'
    },
    {'1': 'tag_name', '3': 11, '4': 1, '5': 9, '10': 'tagName'},
    {'1': 'tag_name_url', '3': 12, '4': 1, '5': 9, '10': 'tagNameUrl'},
    {'1': 'tag_name_wh', '3': 13, '4': 1, '5': 9, '10': 'tagNameWh'},
  ],
};

/// Descriptor for `TPointPost`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tPointPostDescriptor = $convert.base64Decode(
    'CgpUUG9pbnRQb3N0Eh8KC2lzX3R1aWd1YW5nGAEgASgNUgppc1R1aWd1YW5nEhoKCHBvc2l0aW'
    '9uGAIgASgJUghwb3NpdGlvbhIfCgt0ZW1wbGF0ZV9pZBgDIAEoA1IKdGVtcGxhdGVJZBIjCg10'
    'ZW1wbGF0ZV90eXBlGAQgASgFUgx0ZW1wbGF0ZVR5cGUSJgoHYWN0X2J0bhgFIAMoCzINLnRpZW'
    'JhLkFjdEJ0blIGYWN0QnRuEiMKBnRfaW1ncxgGIAMoCzIMLnRpZWJhLlRpbWdzUgV0SW1ncxIy'
    'CgtkZXRhaWxfaW5mbxgHIAEoCzIRLnRpZWJhLkRldGFpbEluZm9SCmRldGFpbEluZm8SHQoKbW'
    '9uaXRvcl9pZBgIIAEoCVIJbW9uaXRvcklkEh0KCmhpZGRlbl9kYXkYCSABKAVSCWhpZGRlbkRh'
    'eRIpCgd0X3ZpZGVvGAogASgLMhAudGllYmEuVmlkZW9JbmZvUgZ0VmlkZW8SGQoIdGFnX25hbW'
    'UYCyABKAlSB3RhZ05hbWUSIAoMdGFnX25hbWVfdXJsGAwgASgJUgp0YWdOYW1lVXJsEh4KC3Rh'
    'Z19uYW1lX3doGA0gASgJUgl0YWdOYW1lV2g=');
