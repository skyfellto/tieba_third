// This is a generated file - do not edit.
//
// Generated from AlaUserInfo.proto.

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

@$core.Deprecated('Use alaUserInfoDescriptor instead')
const AlaUserInfo$json = {
  '1': 'AlaUserInfo',
  '2': [
    {'1': 'ala_id', '3': 1, '4': 1, '5': 4, '10': 'alaId'},
    {'1': 'user_name', '3': 2, '4': 1, '5': 9, '10': 'userName'},
    {'1': 'portrait', '3': 3, '4': 1, '5': 9, '10': 'portrait'},
    {'1': 'description', '3': 4, '4': 1, '5': 9, '10': 'description'},
    {'1': 'sex', '3': 5, '4': 1, '5': 9, '10': 'sex'},
    {'1': 'enter_live', '3': 6, '4': 1, '5': 4, '10': 'enterLive'},
    {'1': 'anchor_live', '3': 7, '4': 1, '5': 4, '10': 'anchorLive'},
    {'1': 'live_status', '3': 8, '4': 1, '5': 13, '10': 'liveStatus'},
    {'1': 'live_id', '3': 9, '4': 1, '5': 4, '10': 'liveId'},
    {'1': 'location', '3': 10, '4': 1, '5': 9, '10': 'location'},
    {'1': 'lng', '3': 11, '4': 1, '5': 1, '10': 'lng'},
    {'1': 'lat', '3': 12, '4': 1, '5': 1, '10': 'lat'},
    {'1': 'update_time', '3': 13, '4': 1, '5': 13, '10': 'updateTime'},
    {'1': 'charm_count', '3': 14, '4': 1, '5': 4, '10': 'charmCount'},
    {'1': 'level_exp', '3': 15, '4': 1, '5': 4, '10': 'levelExp'},
    {'1': 'is_official', '3': 16, '4': 1, '5': 13, '10': 'isOfficial'},
    {'1': 'verify_status', '3': 17, '4': 1, '5': 9, '10': 'verifyStatus'},
    {'1': 'level_id', '3': 18, '4': 1, '5': 13, '10': 'levelId'},
    {
      '1': 'great_anchor_icon',
      '3': 19,
      '4': 1,
      '5': 9,
      '10': 'greatAnchorIcon'
    },
    {
      '1': 'great_anchor_desc_grade',
      '3': 20,
      '4': 1,
      '5': 9,
      '10': 'greatAnchorDescGrade'
    },
    {
      '1': 'great_anchor_desc_role',
      '3': 21,
      '4': 1,
      '5': 9,
      '10': 'greatAnchorDescRole'
    },
    {'1': 'level_name', '3': 22, '4': 1, '5': 9, '10': 'levelName'},
    {'1': 'user_id', '3': 23, '4': 1, '5': 4, '10': 'userId'},
    {'1': 'anchor_fans', '3': 24, '4': 1, '5': 5, '10': 'anchorFans'},
    {
      '1': 'yy_ext',
      '3': 25,
      '4': 1,
      '5': 11,
      '6': '.tieba.YyExt',
      '10': 'yyExt'
    },
  ],
};

/// Descriptor for `AlaUserInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List alaUserInfoDescriptor = $convert.base64Decode(
    'CgtBbGFVc2VySW5mbxIVCgZhbGFfaWQYASABKARSBWFsYUlkEhsKCXVzZXJfbmFtZRgCIAEoCV'
    'IIdXNlck5hbWUSGgoIcG9ydHJhaXQYAyABKAlSCHBvcnRyYWl0EiAKC2Rlc2NyaXB0aW9uGAQg'
    'ASgJUgtkZXNjcmlwdGlvbhIQCgNzZXgYBSABKAlSA3NleBIdCgplbnRlcl9saXZlGAYgASgEUg'
    'llbnRlckxpdmUSHwoLYW5jaG9yX2xpdmUYByABKARSCmFuY2hvckxpdmUSHwoLbGl2ZV9zdGF0'
    'dXMYCCABKA1SCmxpdmVTdGF0dXMSFwoHbGl2ZV9pZBgJIAEoBFIGbGl2ZUlkEhoKCGxvY2F0aW'
    '9uGAogASgJUghsb2NhdGlvbhIQCgNsbmcYCyABKAFSA2xuZxIQCgNsYXQYDCABKAFSA2xhdBIf'
    'Cgt1cGRhdGVfdGltZRgNIAEoDVIKdXBkYXRlVGltZRIfCgtjaGFybV9jb3VudBgOIAEoBFIKY2'
    'hhcm1Db3VudBIbCglsZXZlbF9leHAYDyABKARSCGxldmVsRXhwEh8KC2lzX29mZmljaWFsGBAg'
    'ASgNUgppc09mZmljaWFsEiMKDXZlcmlmeV9zdGF0dXMYESABKAlSDHZlcmlmeVN0YXR1cxIZCg'
    'hsZXZlbF9pZBgSIAEoDVIHbGV2ZWxJZBIqChFncmVhdF9hbmNob3JfaWNvbhgTIAEoCVIPZ3Jl'
    'YXRBbmNob3JJY29uEjUKF2dyZWF0X2FuY2hvcl9kZXNjX2dyYWRlGBQgASgJUhRncmVhdEFuY2'
    'hvckRlc2NHcmFkZRIzChZncmVhdF9hbmNob3JfZGVzY19yb2xlGBUgASgJUhNncmVhdEFuY2hv'
    'ckRlc2NSb2xlEh0KCmxldmVsX25hbWUYFiABKAlSCWxldmVsTmFtZRIXCgd1c2VyX2lkGBcgAS'
    'gEUgZ1c2VySWQSHwoLYW5jaG9yX2ZhbnMYGCABKAVSCmFuY2hvckZhbnMSIwoGeXlfZXh0GBkg'
    'ASgLMgwudGllYmEuWXlFeHRSBXl5RXh0');
