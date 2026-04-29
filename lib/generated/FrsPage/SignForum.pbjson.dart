// This is a generated file - do not edit.
//
// Generated from FrsPage/SignForum.proto.

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

@$core.Deprecated('Use signForumDescriptor instead')
const SignForum$json = {
  '1': 'SignForum',
  '2': [
    {'1': 'is_on', '3': 1, '4': 1, '5': 5, '10': 'isOn'},
    {'1': 'is_filter', '3': 2, '4': 1, '5': 5, '10': 'isFilter'},
    {
      '1': 'forum_info',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.tieba.frsPage.Forum',
      '9': 0,
      '10': 'forumInfo',
      '17': true
    },
    {
      '1': 'current_rank_info',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.tieba.frsPage.RankInfo',
      '10': 'currentRankInfo'
    },
  ],
  '8': [
    {'1': '_forum_info'},
  ],
};

/// Descriptor for `SignForum`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List signForumDescriptor = $convert.base64Decode(
    'CglTaWduRm9ydW0SEwoFaXNfb24YASABKAVSBGlzT24SGwoJaXNfZmlsdGVyGAIgASgFUghpc0'
    'ZpbHRlchI4Cgpmb3J1bV9pbmZvGAMgASgLMhQudGllYmEuZnJzUGFnZS5Gb3J1bUgAUglmb3J1'
    'bUluZm+IAQESQwoRY3VycmVudF9yYW5rX2luZm8YBCABKAsyFy50aWViYS5mcnNQYWdlLlJhbm'
    'tJbmZvUg9jdXJyZW50UmFua0luZm9CDQoLX2ZvcnVtX2luZm8=');
