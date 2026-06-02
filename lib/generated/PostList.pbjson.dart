// This is a generated file - do not edit.
//
// Generated from PostList.proto.

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

@$core.Deprecated('Use postListDescriptor instead')
const PostList$json = {
  '1': 'PostList',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    {
      '1': 'author',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.tieba.User',
      '10': 'author'
    },
    {
      '1': '_abstract',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.tieba.Abstract',
      '10': 'Abstract'
    },
    {'1': 'media', '3': 4, '4': 3, '5': 11, '6': '.tieba.Media', '10': 'media'},
    {
      '1': 'media_num',
      '3': 5,
      '4': 3,
      '5': 11,
      '6': '.tieba.MediaNum',
      '10': 'mediaNum'
    },
    {
      '1': 'voice_info',
      '3': 6,
      '4': 3,
      '5': 11,
      '6': '.tieba.Voice',
      '10': 'voiceInfo'
    },
    {'1': 'author_id', '3': 7, '4': 1, '5': 3, '10': 'authorId'},
    {'1': 'agree', '3': 8, '4': 1, '5': 11, '6': '.tieba.Agree', '10': 'agree'},
  ],
};

/// Descriptor for `PostList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List postListDescriptor = $convert.base64Decode(
    'CghQb3N0TGlzdBIOCgJpZBgBIAEoA1ICaWQSIwoGYXV0aG9yGAIgASgLMgsudGllYmEuVXNlcl'
    'IGYXV0aG9yEiwKCV9hYnN0cmFjdBgDIAMoCzIPLnRpZWJhLkFic3RyYWN0UghBYnN0cmFjdBIi'
    'CgVtZWRpYRgEIAMoCzIMLnRpZWJhLk1lZGlhUgVtZWRpYRIsCgltZWRpYV9udW0YBSADKAsyDy'
    '50aWViYS5NZWRpYU51bVIIbWVkaWFOdW0SKwoKdm9pY2VfaW5mbxgGIAMoCzIMLnRpZWJhLlZv'
    'aWNlUgl2b2ljZUluZm8SGwoJYXV0aG9yX2lkGAcgASgDUghhdXRob3JJZBIiCgVhZ3JlZRgIIA'
    'EoCzIMLnRpZWJhLkFncmVlUgVhZ3JlZQ==');
