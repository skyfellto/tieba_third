// This is a generated file - do not edit.
//
// Generated from VcodeInfo.proto.

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

@$core.Deprecated('Use vcodeInfoDescriptor instead')
const VcodeInfo$json = {
  '1': 'VcodeInfo',
  '2': [
    {'1': 'vcode_md5', '3': 1, '4': 1, '5': 9, '10': 'vcodeMd5'},
    {'1': 'vcode_pic_url', '3': 2, '4': 1, '5': 9, '10': 'vcodePicUrl'},
    {'1': 'vcode_type', '3': 3, '4': 1, '5': 9, '10': 'vcodeType'},
    {
      '1': 'vcode_extra',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.tieba.VcodeExtra',
      '10': 'vcodeExtra'
    },
  ],
};

/// Descriptor for `VcodeInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List vcodeInfoDescriptor = $convert.base64Decode(
    'CglWY29kZUluZm8SGwoJdmNvZGVfbWQ1GAEgASgJUgh2Y29kZU1kNRIiCg12Y29kZV9waWNfdX'
    'JsGAIgASgJUgt2Y29kZVBpY1VybBIdCgp2Y29kZV90eXBlGAMgASgJUgl2Y29kZVR5cGUSMgoL'
    'dmNvZGVfZXh0cmEYBCABKAsyES50aWViYS5WY29kZUV4dHJhUgp2Y29kZUV4dHJh');
