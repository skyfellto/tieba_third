// This is a generated file - do not edit.
//
// Generated from AddPost/AddPostResponseData.proto.

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

@$core.Deprecated('Use addPostResponseDataDescriptor instead')
const AddPostResponseData$json = {
  '1': 'AddPostResponseData',
  '2': [
    {'1': 'opgroup', '3': 1, '4': 1, '5': 9, '10': 'opgroup'},
    {'1': 'tid', '3': 2, '4': 1, '5': 9, '10': 'tid'},
    {'1': 'pid', '3': 3, '4': 1, '5': 9, '10': 'pid'},
    {'1': 'video_id', '3': 4, '4': 1, '5': 9, '10': 'videoId'},
    {'1': 'msg', '3': 5, '4': 1, '5': 9, '10': 'msg'},
    {'1': 'pre_msg', '3': 6, '4': 1, '5': 9, '10': 'preMsg'},
    {'1': 'color_msg', '3': 7, '4': 1, '5': 9, '10': 'colorMsg'},
    {
      '1': 'twzhibo_info',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.tieba.ZhiBoInfoTW',
      '10': 'twzhiboInfo'
    },
    {'1': 'exp', '3': 9, '4': 1, '5': 11, '6': '.tieba.ReplyExp', '10': 'exp'},
    {
      '1': 'contri_info',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.tieba.ContriInfo',
      '10': 'contriInfo'
    },
    {
      '1': 'star_info',
      '3': 11,
      '4': 1,
      '5': 11,
      '6': '.tieba.ThreadEasterEgg',
      '10': 'starInfo'
    },
    {
      '1': 'advertisement',
      '3': 12,
      '4': 1,
      '5': 11,
      '6': '.tieba.Advertisement',
      '10': 'advertisement'
    },
    {
      '1': 'icon_stamp_info',
      '3': 13,
      '4': 1,
      '5': 11,
      '6': '.tieba.IconStampInfo',
      '10': 'iconStampInfo'
    },
    {
      '1': 'info',
      '3': 14,
      '4': 1,
      '5': 11,
      '6': '.tieba.PostAntiInfo',
      '10': 'info'
    },
    {
      '1': 'anti_stat',
      '3': 15,
      '4': 1,
      '5': 11,
      '6': '.tieba.Anti',
      '10': 'antiStat'
    },
    {
      '1': 'tb_hudong',
      '3': 16,
      '4': 1,
      '5': 11,
      '6': '.tieba.TbInteraction',
      '10': 'tbHudong'
    },
    {
      '1': 'anti',
      '3': 17,
      '4': 1,
      '5': 11,
      '6': '.tieba.VcodeInfo',
      '10': 'anti'
    },
    {'1': 'ext_msg', '3': 18, '4': 1, '5': 9, '10': 'extMsg'},
    {
      '1': 'toast',
      '3': 19,
      '4': 1,
      '5': 11,
      '6': '.tieba.Toast',
      '10': 'toast'
    },
  ],
};

/// Descriptor for `AddPostResponseData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addPostResponseDataDescriptor = $convert.base64Decode(
    'ChNBZGRQb3N0UmVzcG9uc2VEYXRhEhgKB29wZ3JvdXAYASABKAlSB29wZ3JvdXASEAoDdGlkGA'
    'IgASgJUgN0aWQSEAoDcGlkGAMgASgJUgNwaWQSGQoIdmlkZW9faWQYBCABKAlSB3ZpZGVvSWQS'
    'EAoDbXNnGAUgASgJUgNtc2cSFwoHcHJlX21zZxgGIAEoCVIGcHJlTXNnEhsKCWNvbG9yX21zZx'
    'gHIAEoCVIIY29sb3JNc2cSNQoMdHd6aGlib19pbmZvGAggASgLMhIudGllYmEuWmhpQm9JbmZv'
    'VFdSC3R3emhpYm9JbmZvEiEKA2V4cBgJIAEoCzIPLnRpZWJhLlJlcGx5RXhwUgNleHASMgoLY2'
    '9udHJpX2luZm8YCiABKAsyES50aWViYS5Db250cmlJbmZvUgpjb250cmlJbmZvEjMKCXN0YXJf'
    'aW5mbxgLIAEoCzIWLnRpZWJhLlRocmVhZEVhc3RlckVnZ1IIc3RhckluZm8SOgoNYWR2ZXJ0aX'
    'NlbWVudBgMIAEoCzIULnRpZWJhLkFkdmVydGlzZW1lbnRSDWFkdmVydGlzZW1lbnQSPAoPaWNv'
    'bl9zdGFtcF9pbmZvGA0gASgLMhQudGllYmEuSWNvblN0YW1wSW5mb1INaWNvblN0YW1wSW5mbx'
    'InCgRpbmZvGA4gASgLMhMudGllYmEuUG9zdEFudGlJbmZvUgRpbmZvEigKCWFudGlfc3RhdBgP'
    'IAEoCzILLnRpZWJhLkFudGlSCGFudGlTdGF0EjEKCXRiX2h1ZG9uZxgQIAEoCzIULnRpZWJhLl'
    'RiSW50ZXJhY3Rpb25SCHRiSHVkb25nEiQKBGFudGkYESABKAsyEC50aWViYS5WY29kZUluZm9S'
    'BGFudGkSFwoHZXh0X21zZxgSIAEoCVIGZXh0TXNnEiIKBXRvYXN0GBMgASgLMgwudGllYmEuVG'
    '9hc3RSBXRvYXN0');
