// This is a generated file - do not edit.
//
// Generated from AlaChallengeInfo.proto.

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

@$core.Deprecated('Use alaChallengeInfoDescriptor instead')
const AlaChallengeInfo$json = {
  '1': 'AlaChallengeInfo',
  '2': [
    {'1': 'challenge_id', '3': 1, '4': 1, '5': 3, '10': 'challengeId'},
    {'1': 'winning_num', '3': 2, '4': 1, '5': 3, '10': 'winningNum'},
    {'1': 'rival_session', '3': 3, '4': 1, '5': 9, '10': 'rivalSession'},
    {'1': 'rival_rtmp_url', '3': 4, '4': 1, '5': 9, '10': 'rivalRtmpUrl'},
    {'1': 'rival_hls_url', '3': 5, '4': 1, '5': 9, '10': 'rivalHlsUrl'},
    {'1': 'ext', '3': 6, '4': 1, '5': 9, '10': 'ext'},
  ],
};

/// Descriptor for `AlaChallengeInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List alaChallengeInfoDescriptor = $convert.base64Decode(
    'ChBBbGFDaGFsbGVuZ2VJbmZvEiEKDGNoYWxsZW5nZV9pZBgBIAEoA1ILY2hhbGxlbmdlSWQSHw'
    'oLd2lubmluZ19udW0YAiABKANSCndpbm5pbmdOdW0SIwoNcml2YWxfc2Vzc2lvbhgDIAEoCVIM'
    'cml2YWxTZXNzaW9uEiQKDnJpdmFsX3J0bXBfdXJsGAQgASgJUgxyaXZhbFJ0bXBVcmwSIgoNcm'
    'l2YWxfaGxzX3VybBgFIAEoCVILcml2YWxIbHNVcmwSEAoDZXh0GAYgASgJUgNleHQ=');
