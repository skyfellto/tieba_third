// This is a generated file - do not edit.
//
// Generated from SubPostList.proto.

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

@$core.Deprecated('Use subPostListDescriptor instead')
const SubPostList$json = {
  '1': 'SubPostList',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    {
      '1': 'content',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.tieba.PbContent',
      '10': 'content'
    },
    {'1': 'time', '3': 3, '4': 1, '5': 13, '10': 'time'},
    {'1': 'author_id', '3': 4, '4': 1, '5': 3, '10': 'authorId'},
    {'1': 'title', '3': 5, '4': 1, '5': 9, '10': 'title'},
    {'1': 'floor', '3': 6, '4': 1, '5': 13, '10': 'floor'},
    {
      '1': 'author',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.tieba.User',
      '10': 'author'
    },
    {'1': 'is_giftpost', '3': 8, '4': 1, '5': 5, '10': 'isGiftpost'},
    {'1': 'agree', '3': 9, '4': 1, '5': 11, '6': '.tieba.Agree', '10': 'agree'},
    {
      '1': 'location',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.tieba.Lbs',
      '10': 'location'
    },
    {'1': 'is_fake_top', '3': 11, '4': 1, '5': 5, '10': 'isFakeTop'},
    {'1': 'is_author_view', '3': 12, '4': 1, '5': 5, '10': 'isAuthorView'},
    {'1': 'footer', '3': 13, '4': 1, '5': 9, '10': 'footer'},
    {
      '1': 'log_param',
      '3': 14,
      '4': 3,
      '5': 11,
      '6': '.tieba.FeedKV',
      '10': 'logParam'
    },
  ],
};

/// Descriptor for `SubPostList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List subPostListDescriptor = $convert.base64Decode(
    'CgtTdWJQb3N0TGlzdBIOCgJpZBgBIAEoBFICaWQSKgoHY29udGVudBgCIAMoCzIQLnRpZWJhLl'
    'BiQ29udGVudFIHY29udGVudBISCgR0aW1lGAMgASgNUgR0aW1lEhsKCWF1dGhvcl9pZBgEIAEo'
    'A1IIYXV0aG9ySWQSFAoFdGl0bGUYBSABKAlSBXRpdGxlEhQKBWZsb29yGAYgASgNUgVmbG9vch'
    'IjCgZhdXRob3IYByABKAsyCy50aWViYS5Vc2VyUgZhdXRob3ISHwoLaXNfZ2lmdHBvc3QYCCAB'
    'KAVSCmlzR2lmdHBvc3QSIgoFYWdyZWUYCSABKAsyDC50aWViYS5BZ3JlZVIFYWdyZWUSJgoIbG'
    '9jYXRpb24YCiABKAsyCi50aWViYS5MYnNSCGxvY2F0aW9uEh4KC2lzX2Zha2VfdG9wGAsgASgF'
    'Uglpc0Zha2VUb3ASJAoOaXNfYXV0aG9yX3ZpZXcYDCABKAVSDGlzQXV0aG9yVmlldxIWCgZmb2'
    '90ZXIYDSABKAlSBmZvb3RlchIqCglsb2dfcGFyYW0YDiADKAsyDS50aWViYS5GZWVkS1ZSCGxv'
    'Z1BhcmFt');
