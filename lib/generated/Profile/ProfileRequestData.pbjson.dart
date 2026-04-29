// This is a generated file - do not edit.
//
// Generated from Profile/ProfileRequestData.proto.

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

@$core.Deprecated('Use profileRequestDataDescriptor instead')
const ProfileRequestData$json = {
  '1': 'ProfileRequestData',
  '2': [
    {'1': 'uid', '3': 1, '4': 1, '5': 3, '9': 0, '10': 'uid', '17': true},
    {'1': 'need_post_count', '3': 2, '4': 1, '5': 13, '10': 'needPostCount'},
    {
      '1': 'friend_uid',
      '3': 3,
      '4': 1,
      '5': 3,
      '9': 1,
      '10': 'friendUid',
      '17': true
    },
    {'1': 'is_guest', '3': 4, '4': 1, '5': 13, '10': 'isGuest'},
    {'1': 'st_type', '3': 5, '4': 1, '5': 9, '10': 'stType'},
    {'1': 'pn', '3': 6, '4': 1, '5': 13, '10': 'pn'},
    {'1': 'rn', '3': 7, '4': 1, '5': 13, '10': 'rn'},
    {'1': 'has_plist', '3': 8, '4': 1, '5': 13, '10': 'hasPlist'},
    {
      '1': 'common',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.tieba.CommonRequest',
      '10': 'common'
    },
    {'1': 'scr_w', '3': 10, '4': 1, '5': 13, '10': 'scrW'},
    {'1': 'scr_h', '3': 11, '4': 1, '5': 13, '10': 'scrH'},
    {'1': 'q_type', '3': 12, '4': 1, '5': 13, '10': 'qType'},
    {'1': 'scr_dip', '3': 13, '4': 1, '5': 1, '10': 'scrDip'},
    {
      '1': 'is_from_usercenter',
      '3': 14,
      '4': 1,
      '5': 5,
      '10': 'isFromUsercenter'
    },
    {'1': 'page', '3': 15, '4': 1, '5': 5, '10': 'page'},
    {
      '1': 'friend_uid_portrait',
      '3': 16,
      '4': 1,
      '5': 9,
      '10': 'friendUidPortrait'
    },
    {
      '1': 'history_forum_ids',
      '3': 17,
      '4': 1,
      '5': 9,
      '10': 'historyForumIds'
    },
    {
      '1': 'history_forum_names',
      '3': 18,
      '4': 1,
      '5': 9,
      '10': 'historyForumNames'
    },
    {
      '1': 'need_usergrowth_task',
      '3': 19,
      '4': 1,
      '5': 5,
      '10': 'needUsergrowthTask'
    },
  ],
  '8': [
    {'1': '_uid'},
    {'1': '_friend_uid'},
  ],
};

/// Descriptor for `ProfileRequestData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List profileRequestDataDescriptor = $convert.base64Decode(
    'ChJQcm9maWxlUmVxdWVzdERhdGESFQoDdWlkGAEgASgDSABSA3VpZIgBARImCg9uZWVkX3Bvc3'
    'RfY291bnQYAiABKA1SDW5lZWRQb3N0Q291bnQSIgoKZnJpZW5kX3VpZBgDIAEoA0gBUglmcmll'
    'bmRVaWSIAQESGQoIaXNfZ3Vlc3QYBCABKA1SB2lzR3Vlc3QSFwoHc3RfdHlwZRgFIAEoCVIGc3'
    'RUeXBlEg4KAnBuGAYgASgNUgJwbhIOCgJybhgHIAEoDVICcm4SGwoJaGFzX3BsaXN0GAggASgN'
    'UghoYXNQbGlzdBIsCgZjb21tb24YCSABKAsyFC50aWViYS5Db21tb25SZXF1ZXN0UgZjb21tb2'
    '4SEwoFc2NyX3cYCiABKA1SBHNjclcSEwoFc2NyX2gYCyABKA1SBHNjckgSFQoGcV90eXBlGAwg'
    'ASgNUgVxVHlwZRIXCgdzY3JfZGlwGA0gASgBUgZzY3JEaXASLAoSaXNfZnJvbV91c2VyY2VudG'
    'VyGA4gASgFUhBpc0Zyb21Vc2VyY2VudGVyEhIKBHBhZ2UYDyABKAVSBHBhZ2USLgoTZnJpZW5k'
    'X3VpZF9wb3J0cmFpdBgQIAEoCVIRZnJpZW5kVWlkUG9ydHJhaXQSKgoRaGlzdG9yeV9mb3J1bV'
    '9pZHMYESABKAlSD2hpc3RvcnlGb3J1bUlkcxIuChNoaXN0b3J5X2ZvcnVtX25hbWVzGBIgASgJ'
    'UhFoaXN0b3J5Rm9ydW1OYW1lcxIwChRuZWVkX3VzZXJncm93dGhfdGFzaxgTIAEoBVISbmVlZF'
    'VzZXJncm93dGhUYXNrQgYKBF91aWRCDQoLX2ZyaWVuZF91aWQ=');
