// This is a generated file - do not edit.
//
// Generated from ThreadModule.proto.

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

@$core.Deprecated('Use threadModuleDescriptor instead')
const ThreadModule$json = {
  '1': 'ThreadModule',
  '2': [
    {'1': 'module_id', '3': 1, '4': 1, '5': 3, '10': 'moduleId'},
    {'1': 'module_name', '3': 2, '4': 1, '5': 9, '10': 'moduleName'},
    {
      '1': 'thread_info',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.tieba.ThreadInfo',
      '10': 'threadInfo'
    },
    {'1': 'show_num', '3': 4, '4': 1, '5': 3, '10': 'showNum'},
  ],
};

/// Descriptor for `ThreadModule`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List threadModuleDescriptor = $convert.base64Decode(
    'CgxUaHJlYWRNb2R1bGUSGwoJbW9kdWxlX2lkGAEgASgDUghtb2R1bGVJZBIfCgttb2R1bGVfbm'
    'FtZRgCIAEoCVIKbW9kdWxlTmFtZRIyCgt0aHJlYWRfaW5mbxgDIAMoCzIRLnRpZWJhLlRocmVh'
    'ZEluZm9SCnRocmVhZEluZm8SGQoIc2hvd19udW0YBCABKANSB3Nob3dOdW0=');
