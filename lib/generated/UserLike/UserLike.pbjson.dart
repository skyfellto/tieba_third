// This is a generated file - do not edit.
//
// Generated from UserLike/UserLike.proto.

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

@$core.Deprecated('Use userLikeRequestDataDescriptor instead')
const UserLikeRequestData$json = {
  '1': 'UserLikeRequestData',
  '2': [
    {
      '1': 'common',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.tieba.CommonRequest',
      '10': 'common'
    },
    {'1': 'pageTag', '3': 2, '4': 1, '5': 9, '10': 'pageTag'},
    {'1': 'lastRequestUnix', '3': 3, '4': 1, '5': 4, '10': 'lastRequestUnix'},
    {'1': 'followType', '3': 4, '4': 1, '5': 5, '10': 'followType'},
    {'1': 'loadType', '3': 5, '4': 1, '5': 5, '10': 'loadType'},
  ],
};

/// Descriptor for `UserLikeRequestData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userLikeRequestDataDescriptor = $convert.base64Decode(
    'ChNVc2VyTGlrZVJlcXVlc3REYXRhEiwKBmNvbW1vbhgBIAEoCzIULnRpZWJhLkNvbW1vblJlcX'
    'Vlc3RSBmNvbW1vbhIYCgdwYWdlVGFnGAIgASgJUgdwYWdlVGFnEigKD2xhc3RSZXF1ZXN0VW5p'
    'eBgDIAEoBFIPbGFzdFJlcXVlc3RVbml4Eh4KCmZvbGxvd1R5cGUYBCABKAVSCmZvbGxvd1R5cG'
    'USGgoIbG9hZFR5cGUYBSABKAVSCGxvYWRUeXBl');

@$core.Deprecated('Use userLikeRequestDescriptor instead')
const UserLikeRequest$json = {
  '1': 'UserLikeRequest',
  '2': [
    {
      '1': 'data',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.tieba.userLike.UserLikeRequestData',
      '10': 'data'
    },
  ],
};

/// Descriptor for `UserLikeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userLikeRequestDescriptor = $convert.base64Decode(
    'Cg9Vc2VyTGlrZVJlcXVlc3QSNwoEZGF0YRgBIAEoCzIjLnRpZWJhLnVzZXJMaWtlLlVzZXJMaW'
    'tlUmVxdWVzdERhdGFSBGRhdGE=');

@$core.Deprecated('Use userLikeResponseDataDescriptor instead')
const UserLikeResponseData$json = {
  '1': 'UserLikeResponseData',
  '2': [
    {
      '1': 'threadInfo',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.tieba.userLike.ConcernData',
      '10': 'threadInfo'
    },
    {'1': 'pageTag', '3': 2, '4': 1, '5': 9, '10': 'pageTag'},
    {'1': 'hasMore', '3': 4, '4': 1, '5': 5, '10': 'hasMore'},
    {'1': 'requestUnix', '3': 10, '4': 1, '5': 4, '10': 'requestUnix'},
  ],
};

/// Descriptor for `UserLikeResponseData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userLikeResponseDataDescriptor = $convert.base64Decode(
    'ChRVc2VyTGlrZVJlc3BvbnNlRGF0YRI7Cgp0aHJlYWRJbmZvGAEgAygLMhsudGllYmEudXNlck'
    'xpa2UuQ29uY2VybkRhdGFSCnRocmVhZEluZm8SGAoHcGFnZVRhZxgCIAEoCVIHcGFnZVRhZxIY'
    'CgdoYXNNb3JlGAQgASgFUgdoYXNNb3JlEiAKC3JlcXVlc3RVbml4GAogASgEUgtyZXF1ZXN0VW'
    '5peA==');

@$core.Deprecated('Use userLikeResponseDescriptor instead')
const UserLikeResponse$json = {
  '1': 'UserLikeResponse',
  '2': [
    {'1': 'error', '3': 1, '4': 1, '5': 11, '6': '.tieba.Error', '10': 'error'},
    {
      '1': 'data',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.tieba.userLike.UserLikeResponseData',
      '10': 'data'
    },
  ],
};

/// Descriptor for `UserLikeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userLikeResponseDescriptor = $convert.base64Decode(
    'ChBVc2VyTGlrZVJlc3BvbnNlEiIKBWVycm9yGAEgASgLMgwudGllYmEuRXJyb3JSBWVycm9yEj'
    'gKBGRhdGEYAiABKAsyJC50aWViYS51c2VyTGlrZS5Vc2VyTGlrZVJlc3BvbnNlRGF0YVIEZGF0'
    'YQ==');

@$core.Deprecated('Use concernDataDescriptor instead')
const ConcernData$json = {
  '1': 'ConcernData',
  '2': [
    {
      '1': 'threadList',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.tieba.ThreadInfo',
      '10': 'threadList'
    },
    {
      '1': 'postData',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.tieba.userLike.PostData',
      '10': 'postData'
    },
    {'1': 'recommendType', '3': 3, '4': 1, '5': 5, '10': 'recommendType'},
    {'1': 'source', '3': 4, '4': 1, '5': 5, '10': 'source'},
    {
      '1': 'recommendUserList',
      '3': 5,
      '4': 3,
      '5': 11,
      '6': '.tieba.User',
      '10': 'recommendUserList'
    },
  ],
};

/// Descriptor for `ConcernData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List concernDataDescriptor = $convert.base64Decode(
    'CgtDb25jZXJuRGF0YRIxCgp0aHJlYWRMaXN0GAEgASgLMhEudGllYmEuVGhyZWFkSW5mb1IKdG'
    'hyZWFkTGlzdBI0Cghwb3N0RGF0YRgCIAEoCzIYLnRpZWJhLnVzZXJMaWtlLlBvc3REYXRhUghw'
    'b3N0RGF0YRIkCg1yZWNvbW1lbmRUeXBlGAMgASgFUg1yZWNvbW1lbmRUeXBlEhYKBnNvdXJjZR'
    'gEIAEoBVIGc291cmNlEjkKEXJlY29tbWVuZFVzZXJMaXN0GAUgAygLMgsudGllYmEuVXNlclIR'
    'cmVjb21tZW5kVXNlckxpc3Q=');

@$core.Deprecated('Use postDataDescriptor instead')
const PostData$json = {
  '1': 'PostData',
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
    {'1': 'postTitle', '3': 3, '4': 1, '5': 9, '10': 'postTitle'},
    {
      '1': 'author',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.tieba.User',
      '10': 'author'
    },
    {'1': 'time', '3': 5, '4': 1, '5': 4, '10': 'time'},
  ],
};

/// Descriptor for `PostData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List postDataDescriptor = $convert.base64Decode(
    'CghQb3N0RGF0YRIOCgJpZBgBIAEoBFICaWQSKgoHY29udGVudBgCIAMoCzIQLnRpZWJhLlBiQ2'
    '9udGVudFIHY29udGVudBIcCglwb3N0VGl0bGUYAyABKAlSCXBvc3RUaXRsZRIjCgZhdXRob3IY'
    'BCABKAsyCy50aWViYS5Vc2VyUgZhdXRob3ISEgoEdGltZRgFIAEoBFIEdGltZQ==');
