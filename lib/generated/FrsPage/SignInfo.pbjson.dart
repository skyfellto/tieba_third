// This is a generated file - do not edit.
//
// Generated from FrsPage/SignInfo.proto.

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

@$core.Deprecated('Use signInfoDescriptor instead')
const SignInfo$json = {
  '1': 'SignInfo',
  '2': [
    {
      '1': 'user_info',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.tieba.frsPage.SignUser',
      '10': 'userInfo'
    },
    {
      '1': 'forum_info',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.tieba.frsPage.SignForum',
      '10': 'forumInfo'
    },
  ],
};

/// Descriptor for `SignInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List signInfoDescriptor = $convert.base64Decode(
    'CghTaWduSW5mbxI0Cgl1c2VyX2luZm8YASABKAsyFy50aWViYS5mcnNQYWdlLlNpZ25Vc2VyUg'
    'h1c2VySW5mbxI3Cgpmb3J1bV9pbmZvGAIgASgLMhgudGllYmEuZnJzUGFnZS5TaWduRm9ydW1S'
    'CWZvcnVtSW5mbw==');
