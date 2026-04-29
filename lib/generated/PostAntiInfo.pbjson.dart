// This is a generated file - do not edit.
//
// Generated from PostAntiInfo.proto.

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

@$core.Deprecated('Use postAntiInfoDescriptor instead')
const PostAntiInfo$json = {
  '1': 'PostAntiInfo',
  '2': [
    {
      '1': 'access_state',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.tieba.AccessState',
      '10': 'accessState'
    },
    {
      '1': 'confilter_hitwords',
      '3': 2,
      '4': 3,
      '5': 9,
      '10': 'confilterHitwords'
    },
    {'1': 'need_vcode', '3': 3, '4': 1, '5': 9, '10': 'needVcode'},
    {'1': 'vcode_md5', '3': 4, '4': 1, '5': 9, '10': 'vcodeMd5'},
    {'1': 'vcode_prev_type', '3': 5, '4': 1, '5': 9, '10': 'vcodePrevType'},
    {'1': 'vcode_type', '3': 6, '4': 1, '5': 9, '10': 'vcodeType'},
    {'1': 'pass_token', '3': 7, '4': 1, '5': 9, '10': 'passToken'},
    {'1': 'block_content', '3': 8, '4': 1, '5': 9, '10': 'blockContent'},
    {'1': 'block_cancel', '3': 9, '4': 1, '5': 9, '10': 'blockCancel'},
    {'1': 'block_confirm', '3': 10, '4': 1, '5': 9, '10': 'blockConfirm'},
    {'1': 'vcode_pic_url', '3': 12, '4': 1, '5': 9, '10': 'vcodePicUrl'},
    {
      '1': 'vcode_extra',
      '3': 13,
      '4': 1,
      '5': 11,
      '6': '.tieba.VcodeExtra',
      '10': 'vcodeExtra'
    },
  ],
};

/// Descriptor for `PostAntiInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List postAntiInfoDescriptor = $convert.base64Decode(
    'CgxQb3N0QW50aUluZm8SNQoMYWNjZXNzX3N0YXRlGAEgASgLMhIudGllYmEuQWNjZXNzU3RhdG'
    'VSC2FjY2Vzc1N0YXRlEi0KEmNvbmZpbHRlcl9oaXR3b3JkcxgCIAMoCVIRY29uZmlsdGVySGl0'
    'd29yZHMSHQoKbmVlZF92Y29kZRgDIAEoCVIJbmVlZFZjb2RlEhsKCXZjb2RlX21kNRgEIAEoCV'
    'IIdmNvZGVNZDUSJgoPdmNvZGVfcHJldl90eXBlGAUgASgJUg12Y29kZVByZXZUeXBlEh0KCnZj'
    'b2RlX3R5cGUYBiABKAlSCXZjb2RlVHlwZRIdCgpwYXNzX3Rva2VuGAcgASgJUglwYXNzVG9rZW'
    '4SIwoNYmxvY2tfY29udGVudBgIIAEoCVIMYmxvY2tDb250ZW50EiEKDGJsb2NrX2NhbmNlbBgJ'
    'IAEoCVILYmxvY2tDYW5jZWwSIwoNYmxvY2tfY29uZmlybRgKIAEoCVIMYmxvY2tDb25maXJtEi'
    'IKDXZjb2RlX3BpY191cmwYDCABKAlSC3Zjb2RlUGljVXJsEjIKC3Zjb2RlX2V4dHJhGA0gASgL'
    'MhEudGllYmEuVmNvZGVFeHRyYVIKdmNvZGVFeHRyYQ==');
