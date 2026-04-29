// This is a generated file - do not edit.
//
// Generated from Profile/UserGodInfo.proto.

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

@$core.Deprecated('Use userGodInfoDescriptor instead')
const UserGodInfo$json = {
  '1': 'UserGodInfo',
  '2': [
    {'1': 'god_type', '3': 1, '4': 1, '5': 5, '10': 'godType'},
    {
      '1': 'god_info',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.tieba.profile.GodDetailInfo',
      '10': 'godInfo'
    },
    {
      '1': 'forum_god_list',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.tieba.profile.ForumGodDetailInfo',
      '10': 'forumGodList'
    },
    {'1': 'sex', '3': 4, '4': 1, '5': 5, '10': 'sex'},
    {'1': 'age', '3': 5, '4': 1, '5': 5, '10': 'age'},
    {'1': 'address', '3': 6, '4': 1, '5': 9, '10': 'address'},
    {
      '1': 'thread_list',
      '3': 7,
      '4': 3,
      '5': 11,
      '6': '.tieba.ThreadInfo',
      '10': 'threadList'
    },
    {'1': 'cur_page', '3': 8, '4': 1, '5': 5, '10': 'curPage'},
    {'1': 'total_thread', '3': 9, '4': 1, '5': 9, '10': 'totalThread'},
  ],
};

/// Descriptor for `UserGodInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userGodInfoDescriptor = $convert.base64Decode(
    'CgtVc2VyR29kSW5mbxIZCghnb2RfdHlwZRgBIAEoBVIHZ29kVHlwZRI3Cghnb2RfaW5mbxgCIA'
    'EoCzIcLnRpZWJhLnByb2ZpbGUuR29kRGV0YWlsSW5mb1IHZ29kSW5mbxJHCg5mb3J1bV9nb2Rf'
    'bGlzdBgDIAMoCzIhLnRpZWJhLnByb2ZpbGUuRm9ydW1Hb2REZXRhaWxJbmZvUgxmb3J1bUdvZE'
    'xpc3QSEAoDc2V4GAQgASgFUgNzZXgSEAoDYWdlGAUgASgFUgNhZ2USGAoHYWRkcmVzcxgGIAEo'
    'CVIHYWRkcmVzcxIyCgt0aHJlYWRfbGlzdBgHIAMoCzIRLnRpZWJhLlRocmVhZEluZm9SCnRocm'
    'VhZExpc3QSGQoIY3VyX3BhZ2UYCCABKAVSB2N1clBhZ2USIQoMdG90YWxfdGhyZWFkGAkgASgJ'
    'Ugt0b3RhbFRocmVhZA==');
