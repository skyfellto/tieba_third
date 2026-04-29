// This is a generated file - do not edit.
//
// Generated from SearchSug/SearchSugResponseData.proto.

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

@$core.Deprecated('Use searchSugResponseDataDescriptor instead')
const SearchSugResponseData$json = {
  '1': 'SearchSugResponseData',
  '2': [
    {'1': 'forum_loc', '3': 1, '4': 1, '5': 5, '10': 'forumLoc'},
    {'1': 'list', '3': 2, '4': 3, '5': 9, '10': 'list'},
    {
      '1': 'forum_list',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.tieba.ForumInfo',
      '10': 'forumList'
    },
    {
      '1': 'forum_card',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.tieba.RecommendForumInfo',
      '10': 'forumCard'
    },
    {
      '1': 'item_card',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.tieba.Item',
      '10': 'itemCard'
    },
    {
      '1': 'live_card',
      '3': 6,
      '4': 3,
      '5': 11,
      '6': '.tieba.SugLiveInfo',
      '10': 'liveCard'
    },
    {
      '1': 'ranking_card',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.tieba.SugRankingInfo',
      '10': 'rankingCard'
    },
  ],
};

/// Descriptor for `SearchSugResponseData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List searchSugResponseDataDescriptor = $convert.base64Decode(
    'ChVTZWFyY2hTdWdSZXNwb25zZURhdGESGwoJZm9ydW1fbG9jGAEgASgFUghmb3J1bUxvYxISCg'
    'RsaXN0GAIgAygJUgRsaXN0Ei8KCmZvcnVtX2xpc3QYAyADKAsyEC50aWViYS5Gb3J1bUluZm9S'
    'CWZvcnVtTGlzdBI4Cgpmb3J1bV9jYXJkGAQgASgLMhkudGllYmEuUmVjb21tZW5kRm9ydW1Jbm'
    'ZvUglmb3J1bUNhcmQSKAoJaXRlbV9jYXJkGAUgASgLMgsudGllYmEuSXRlbVIIaXRlbUNhcmQS'
    'LwoJbGl2ZV9jYXJkGAYgAygLMhIudGllYmEuU3VnTGl2ZUluZm9SCGxpdmVDYXJkEjgKDHJhbm'
    'tpbmdfY2FyZBgHIAEoCzIVLnRpZWJhLlN1Z1JhbmtpbmdJbmZvUgtyYW5raW5nQ2FyZA==');
