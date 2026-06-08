// This is a generated file - do not edit.
//
// Generated from FeedHeadText.proto.

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

@$core.Deprecated('Use feedHeadTextDescriptor instead')
const FeedHeadText$json = {
  '1': 'FeedHeadText',
  '2': [
    {'1': 'text', '3': 1, '4': 1, '5': 9, '10': 'text'},
    {'1': 'priority', '3': 2, '4': 1, '5': 5, '10': 'priority'},
    {'1': 'can_degrade', '3': 3, '4': 1, '5': 5, '10': 'canDegrade'},
    {'1': 'degrade_len', '3': 4, '4': 1, '5': 13, '10': 'degradeLen'},
    {'1': 'degrade_priority', '3': 5, '4': 1, '5': 5, '10': 'degradePriority'},
    {'1': 'suffix', '3': 6, '4': 1, '5': 9, '10': 'suffix'},
    {'1': 'type', '3': 7, '4': 1, '5': 5, '10': 'type'},
    {
      '1': 'color',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.tieba.BaseTextColor',
      '10': 'color'
    },
    {
      '1': 'bg_color',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.tieba.BaseTextColor',
      '10': 'bgColor'
    },
    {'1': 'font_size', '3': 10, '4': 1, '5': 9, '10': 'fontSize'},
    {'1': 'font_weight', '3': 11, '4': 1, '5': 5, '10': 'fontWeight'},
  ],
};

/// Descriptor for `FeedHeadText`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List feedHeadTextDescriptor = $convert.base64Decode(
    'CgxGZWVkSGVhZFRleHQSEgoEdGV4dBgBIAEoCVIEdGV4dBIaCghwcmlvcml0eRgCIAEoBVIIcH'
    'Jpb3JpdHkSHwoLY2FuX2RlZ3JhZGUYAyABKAVSCmNhbkRlZ3JhZGUSHwoLZGVncmFkZV9sZW4Y'
    'BCABKA1SCmRlZ3JhZGVMZW4SKQoQZGVncmFkZV9wcmlvcml0eRgFIAEoBVIPZGVncmFkZVByaW'
    '9yaXR5EhYKBnN1ZmZpeBgGIAEoCVIGc3VmZml4EhIKBHR5cGUYByABKAVSBHR5cGUSKgoFY29s'
    'b3IYCCABKAsyFC50aWViYS5CYXNlVGV4dENvbG9yUgVjb2xvchIvCghiZ19jb2xvchgJIAEoCz'
    'IULnRpZWJhLkJhc2VUZXh0Q29sb3JSB2JnQ29sb3ISGwoJZm9udF9zaXplGAogASgJUghmb250'
    'U2l6ZRIfCgtmb250X3dlaWdodBgLIAEoBVIKZm9udFdlaWdodA==');
