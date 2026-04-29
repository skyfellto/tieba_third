// This is a generated file - do not edit.
//
// Generated from FrsPage/ActivityHead.proto.

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

@$core.Deprecated('Use activityHeadDescriptor instead')
const ActivityHead$json = {
  '1': 'ActivityHead',
  '2': [
    {'1': 'activity_type', '3': 1, '4': 1, '5': 5, '10': 'activityType'},
    {'1': 'activity_title', '3': 2, '4': 1, '5': 9, '10': 'activityTitle'},
    {
      '1': 'head_imgs',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.tieba.frsPage.HeadImgs',
      '10': 'headImgs'
    },
    {
      '1': 'top_size',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.tieba.frsPage.Size',
      '10': 'topSize'
    },
    {'1': 'obj_id', '3': 5, '4': 1, '5': 9, '10': 'objId'},
    {'1': 'pull_down_url', '3': 7, '4': 1, '5': 9, '10': 'pullDownUrl'},
    {
      '1': 'pull_down_interval',
      '3': 8,
      '4': 1,
      '5': 5,
      '10': 'pullDownInterval'
    },
    {'1': 'pull_down_pic_ios', '3': 9, '4': 1, '5': 9, '10': 'pullDownPicIos'},
    {
      '1': 'pull_down_pic_android',
      '3': 10,
      '4': 1,
      '5': 9,
      '10': 'pullDownPicAndroid'
    },
    {
      '1': 'pull_down_exposure_url',
      '3': 11,
      '4': 1,
      '5': 9,
      '10': 'pullDownExposureUrl'
    },
    {
      '1': 'pull_down_click_url',
      '3': 12,
      '4': 1,
      '5': 9,
      '10': 'pullDownClickUrl'
    },
    {'1': 'is_ad', '3': 13, '4': 1, '5': 8, '10': 'isAd'},
    {'1': 'pull_down_schema', '3': 14, '4': 1, '5': 9, '10': 'pullDownSchema'},
    {
      '1': 'pull_down_package_name',
      '3': 15,
      '4': 1,
      '5': 9,
      '10': 'pullDownPackageName'
    },
  ],
};

/// Descriptor for `ActivityHead`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List activityHeadDescriptor = $convert.base64Decode(
    'CgxBY3Rpdml0eUhlYWQSIwoNYWN0aXZpdHlfdHlwZRgBIAEoBVIMYWN0aXZpdHlUeXBlEiUKDm'
    'FjdGl2aXR5X3RpdGxlGAIgASgJUg1hY3Rpdml0eVRpdGxlEjQKCWhlYWRfaW1ncxgDIAMoCzIX'
    'LnRpZWJhLmZyc1BhZ2UuSGVhZEltZ3NSCGhlYWRJbWdzEi4KCHRvcF9zaXplGAQgASgLMhMudG'
    'llYmEuZnJzUGFnZS5TaXplUgd0b3BTaXplEhUKBm9ial9pZBgFIAEoCVIFb2JqSWQSIgoNcHVs'
    'bF9kb3duX3VybBgHIAEoCVILcHVsbERvd25VcmwSLAoScHVsbF9kb3duX2ludGVydmFsGAggAS'
    'gFUhBwdWxsRG93bkludGVydmFsEikKEXB1bGxfZG93bl9waWNfaW9zGAkgASgJUg5wdWxsRG93'
    'blBpY0lvcxIxChVwdWxsX2Rvd25fcGljX2FuZHJvaWQYCiABKAlSEnB1bGxEb3duUGljQW5kcm'
    '9pZBIzChZwdWxsX2Rvd25fZXhwb3N1cmVfdXJsGAsgASgJUhNwdWxsRG93bkV4cG9zdXJlVXJs'
    'Ei0KE3B1bGxfZG93bl9jbGlja191cmwYDCABKAlSEHB1bGxEb3duQ2xpY2tVcmwSEwoFaXNfYW'
    'QYDSABKAhSBGlzQWQSKAoQcHVsbF9kb3duX3NjaGVtYRgOIAEoCVIOcHVsbERvd25TY2hlbWES'
    'MwoWcHVsbF9kb3duX3BhY2thZ2VfbmFtZRgPIAEoCVITcHVsbERvd25QYWNrYWdlTmFtZQ==');
