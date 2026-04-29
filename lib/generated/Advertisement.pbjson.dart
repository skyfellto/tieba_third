// This is a generated file - do not edit.
//
// Generated from Advertisement.proto.

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

@$core.Deprecated('Use advertisementDescriptor instead')
const Advertisement$json = {
  '1': 'Advertisement',
  '2': [
    {'1': 'time', '3': 1, '4': 1, '5': 3, '10': 'time'},
    {'1': 'pic', '3': 2, '4': 1, '5': 9, '10': 'pic'},
    {'1': 'pic_click', '3': 3, '4': 1, '5': 9, '10': 'picClick'},
    {'1': 'jump_link', '3': 4, '4': 1, '5': 9, '10': 'jumpLink'},
    {'1': 'advertisement_id', '3': 5, '4': 1, '5': 9, '10': 'advertisementId'},
    {
      '1': 'view_statistics_url',
      '3': 6,
      '4': 1,
      '5': 9,
      '10': 'viewStatisticsUrl'
    },
    {
      '1': 'click_statistics_url',
      '3': 7,
      '4': 1,
      '5': 9,
      '10': 'clickStatisticsUrl'
    },
    {'1': 'floating_text', '3': 8, '4': 1, '5': 9, '10': 'floatingText'},
    {'1': 'deeplink', '3': 9, '4': 1, '5': 9, '10': 'deeplink'},
    {'1': 'scheme', '3': 10, '4': 1, '5': 9, '10': 'scheme'},
    {'1': 'package_name', '3': 11, '4': 1, '5': 9, '10': 'packageName'},
    {'1': 'display_ad_icon', '3': 12, '4': 1, '5': 9, '10': 'displayAdIcon'},
  ],
};

/// Descriptor for `Advertisement`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List advertisementDescriptor = $convert.base64Decode(
    'Cg1BZHZlcnRpc2VtZW50EhIKBHRpbWUYASABKANSBHRpbWUSEAoDcGljGAIgASgJUgNwaWMSGw'
    'oJcGljX2NsaWNrGAMgASgJUghwaWNDbGljaxIbCglqdW1wX2xpbmsYBCABKAlSCGp1bXBMaW5r'
    'EikKEGFkdmVydGlzZW1lbnRfaWQYBSABKAlSD2FkdmVydGlzZW1lbnRJZBIuChN2aWV3X3N0YX'
    'Rpc3RpY3NfdXJsGAYgASgJUhF2aWV3U3RhdGlzdGljc1VybBIwChRjbGlja19zdGF0aXN0aWNz'
    'X3VybBgHIAEoCVISY2xpY2tTdGF0aXN0aWNzVXJsEiMKDWZsb2F0aW5nX3RleHQYCCABKAlSDG'
    'Zsb2F0aW5nVGV4dBIaCghkZWVwbGluaxgJIAEoCVIIZGVlcGxpbmsSFgoGc2NoZW1lGAogASgJ'
    'UgZzY2hlbWUSIQoMcGFja2FnZV9uYW1lGAsgASgJUgtwYWNrYWdlTmFtZRImCg9kaXNwbGF5X2'
    'FkX2ljb24YDCABKAlSDWRpc3BsYXlBZEljb24=');
