// This is a generated file - do not edit.
//
// Generated from UcCard.proto.

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

@$core.Deprecated('Use ucCardDescriptor instead')
const UcCard$json = {
  '1': 'UcCard',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'icon', '3': 2, '4': 1, '5': 9, '10': 'icon'},
    {'1': 'doc', '3': 3, '4': 1, '5': 9, '10': 'doc'},
    {'1': 'jmp', '3': 4, '4': 1, '5': 9, '10': 'jmp'},
    {
      '1': 'uc_cards',
      '3': 5,
      '4': 3,
      '5': 11,
      '6': '.tieba.UcCardInfo',
      '10': 'ucCards'
    },
  ],
};

/// Descriptor for `UcCard`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ucCardDescriptor = $convert.base64Decode(
    'CgZVY0NhcmQSEgoEbmFtZRgBIAEoCVIEbmFtZRISCgRpY29uGAIgASgJUgRpY29uEhAKA2RvYx'
    'gDIAEoCVIDZG9jEhAKA2ptcBgEIAEoCVIDam1wEiwKCHVjX2NhcmRzGAUgAygLMhEudGllYmEu'
    'VWNDYXJkSW5mb1IHdWNDYXJkcw==');
