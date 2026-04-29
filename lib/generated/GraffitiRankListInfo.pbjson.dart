// This is a generated file - do not edit.
//
// Generated from GraffitiRankListInfo.proto.

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

@$core.Deprecated('Use graffitiRankListInfoDescriptor instead')
const GraffitiRankListInfo$json = {
  '1': 'GraffitiRankListInfo',
  '2': [
    {'1': 'has_more', '3': 1, '4': 1, '5': 5, '10': 'hasMore'},
    {'1': 'total', '3': 2, '4': 1, '5': 5, '10': 'total'},
    {
      '1': 'list',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.tieba.GraffitiRankItem',
      '10': 'list'
    },
    {'1': 'show_list_count', '3': 4, '4': 1, '5': 5, '10': 'showListCount'},
    {'1': 'quick_list_count', '3': 5, '4': 1, '5': 5, '10': 'quickListCount'},
    {'1': 'has_state', '3': 6, '4': 1, '5': 5, '10': 'hasState'},
    {'1': 'tid', '3': 7, '4': 1, '5': 3, '10': 'tid'},
    {
      '1': 'consent_list',
      '3': 8,
      '4': 3,
      '5': 11,
      '6': '.tieba.User',
      '10': 'consentList'
    },
  ],
};

/// Descriptor for `GraffitiRankListInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List graffitiRankListInfoDescriptor = $convert.base64Decode(
    'ChRHcmFmZml0aVJhbmtMaXN0SW5mbxIZCghoYXNfbW9yZRgBIAEoBVIHaGFzTW9yZRIUCgV0b3'
    'RhbBgCIAEoBVIFdG90YWwSKwoEbGlzdBgDIAMoCzIXLnRpZWJhLkdyYWZmaXRpUmFua0l0ZW1S'
    'BGxpc3QSJgoPc2hvd19saXN0X2NvdW50GAQgASgFUg1zaG93TGlzdENvdW50EigKEHF1aWNrX2'
    'xpc3RfY291bnQYBSABKAVSDnF1aWNrTGlzdENvdW50EhsKCWhhc19zdGF0ZRgGIAEoBVIIaGFz'
    'U3RhdGUSEAoDdGlkGAcgASgDUgN0aWQSLgoMY29uc2VudF9saXN0GAggAygLMgsudGllYmEuVX'
    'NlclILY29uc2VudExpc3Q=');
