// This is a generated file - do not edit.
//
// Generated from VoteRequest.proto.

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

@$core.Deprecated('Use voteRequestDescriptor instead')
const VoteRequest$json = {
  '1': 'VoteRequest',
  '2': [
    {
      '1': 'common',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.tieba.CommonReq',
      '10': 'common'
    },
    {'1': 'tid', '3': 1, '4': 1, '5': 3, '10': 'tid'},
    {'1': 'option_ids', '3': 2, '4': 1, '5': 9, '10': 'optionIds'},
    {'1': 'fid', '3': 4, '4': 1, '5': 3, '10': 'fid'},
  ],
};

/// Descriptor for `VoteRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List voteRequestDescriptor = $convert.base64Decode(
    'CgtWb3RlUmVxdWVzdBIoCgZjb21tb24YAyABKAsyEC50aWViYS5Db21tb25SZXFSBmNvbW1vbh'
    'IQCgN0aWQYASABKANSA3RpZBIdCgpvcHRpb25faWRzGAIgASgJUglvcHRpb25JZHMSEAoDZmlk'
    'GAQgASgDUgNmaWQ=');
