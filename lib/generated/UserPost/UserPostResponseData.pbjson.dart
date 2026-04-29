// This is a generated file - do not edit.
//
// Generated from UserPost/UserPostResponseData.proto.

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

@$core.Deprecated('Use userPostResponseDataDescriptor instead')
const UserPostResponseData$json = {
  '1': 'UserPostResponseData',
  '2': [
    {
      '1': 'post_list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.tieba.PostInfoList',
      '10': 'postList'
    },
    {'1': 'hide_post', '3': 2, '4': 1, '5': 13, '10': 'hidePost'},
    {'1': 'time', '3': 3, '4': 1, '5': 4, '10': 'time'},
    {'1': 'ctime', '3': 4, '4': 1, '5': 4, '10': 'ctime'},
    {'1': 'logid', '3': 5, '4': 1, '5': 4, '10': 'logid'},
    {'1': 'mask_type', '3': 6, '4': 1, '5': 5, '10': 'maskType'},
    {'1': 'view_card_num', '3': 7, '4': 1, '5': 5, '10': 'viewCardNum'},
    {
      '1': 'reddot_deleted_thread',
      '3': 8,
      '4': 1,
      '5': 5,
      '10': 'reddotDeletedThread'
    },
  ],
};

/// Descriptor for `UserPostResponseData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userPostResponseDataDescriptor = $convert.base64Decode(
    'ChRVc2VyUG9zdFJlc3BvbnNlRGF0YRIwCglwb3N0X2xpc3QYASADKAsyEy50aWViYS5Qb3N0SW'
    '5mb0xpc3RSCHBvc3RMaXN0EhsKCWhpZGVfcG9zdBgCIAEoDVIIaGlkZVBvc3QSEgoEdGltZRgD'
    'IAEoBFIEdGltZRIUCgVjdGltZRgEIAEoBFIFY3RpbWUSFAoFbG9naWQYBSABKARSBWxvZ2lkEh'
    'sKCW1hc2tfdHlwZRgGIAEoBVIIbWFza1R5cGUSIgoNdmlld19jYXJkX251bRgHIAEoBVILdmll'
    'd0NhcmROdW0SMgoVcmVkZG90X2RlbGV0ZWRfdGhyZWFkGAggASgFUhNyZWRkb3REZWxldGVkVG'
    'hyZWFk');
