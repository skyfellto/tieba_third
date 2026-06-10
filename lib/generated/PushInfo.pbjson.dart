// This is a generated file - do not edit.
//
// Generated from PushInfo.proto.

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

@$core.Deprecated('Use pushInfoDescriptor instead')
const PushInfo$json = {
  '1': 'PushInfo',
  '2': [
    {'1': 'task_id', '3': 1, '4': 1, '5': 9, '10': 'taskId'},
    {'1': 'service_id', '3': 2, '4': 1, '5': 9, '10': 'serviceId'},
    {'1': 'target_url', '3': 3, '4': 1, '5': 9, '10': 'targetUrl'},
    {'1': 'push_time', '3': 4, '4': 1, '5': 5, '10': 'pushTime'},
    {'1': 'ext', '3': 5, '4': 1, '5': 9, '10': 'ext'},
  ],
};

/// Descriptor for `PushInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pushInfoDescriptor = $convert.base64Decode(
    'CghQdXNoSW5mbxIXCgd0YXNrX2lkGAEgASgJUgZ0YXNrSWQSHQoKc2VydmljZV9pZBgCIAEoCV'
    'IJc2VydmljZUlkEh0KCnRhcmdldF91cmwYAyABKAlSCXRhcmdldFVybBIbCglwdXNoX3RpbWUY'
    'BCABKAVSCHB1c2hUaW1lEhAKA2V4dBgFIAEoCVIDZXh0');
