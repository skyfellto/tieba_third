// This is a generated file - do not edit.
//
// Generated from BannerList.proto.

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

@$core.Deprecated('Use bannerListDescriptor instead')
const BannerList$json = {
  '1': 'BannerList',
  '2': [
    {'1': 'app', '3': 1, '4': 3, '5': 11, '6': '.tieba.App', '10': 'app'},
    {
      '1': 'feed_forum',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.tieba.FeedForumInfo',
      '10': 'feedForum'
    },
    {
      '1': 'hot_topic',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.tieba.RecomTopicInfo',
      '10': 'hotTopic'
    },
    {'1': 'applist', '3': 4, '4': 1, '5': 9, '10': 'applist'},
    {
      '1': 'pb_banner_ad',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.tieba.App',
      '10': 'pbBannerAd'
    },
    {
      '1': 'video_recommend_ad',
      '3': 6,
      '4': 3,
      '5': 11,
      '6': '.tieba.App',
      '10': 'videoRecommendAd'
    },
  ],
};

/// Descriptor for `BannerList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bannerListDescriptor = $convert.base64Decode(
    'CgpCYW5uZXJMaXN0EhwKA2FwcBgBIAMoCzIKLnRpZWJhLkFwcFIDYXBwEjMKCmZlZWRfZm9ydW'
    '0YAiADKAsyFC50aWViYS5GZWVkRm9ydW1JbmZvUglmZWVkRm9ydW0SMgoJaG90X3RvcGljGAMg'
    'ASgLMhUudGllYmEuUmVjb21Ub3BpY0luZm9SCGhvdFRvcGljEhgKB2FwcGxpc3QYBCABKAlSB2'
    'FwcGxpc3QSLAoMcGJfYmFubmVyX2FkGAUgASgLMgoudGllYmEuQXBwUgpwYkJhbm5lckFkEjgK'
    'EnZpZGVvX3JlY29tbWVuZF9hZBgGIAMoCzIKLnRpZWJhLkFwcFIQdmlkZW9SZWNvbW1lbmRBZA'
    '==');
