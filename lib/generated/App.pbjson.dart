// This is a generated file - do not edit.
//
// Generated from App.proto.

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

@$core.Deprecated('Use appDescriptor instead')
const App$json = {
  '1': 'App',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 5, '10': 'type'},
    {'1': 'pos', '3': 2, '4': 1, '5': 5, '10': 'pos'},
    {'1': 'icon_url', '3': 3, '4': 1, '5': 9, '10': 'iconUrl'},
    {'1': 'icon_link', '3': 4, '4': 1, '5': 9, '10': 'iconLink'},
    {'1': 'app_name', '3': 5, '4': 1, '5': 9, '10': 'appName'},
    {'1': 'app_desc', '3': 6, '4': 1, '5': 9, '10': 'appDesc'},
    {'1': 'p_name', '3': 7, '4': 1, '5': 9, '10': 'pName'},
    {'1': 'p_url', '3': 8, '4': 1, '5': 9, '10': 'pUrl'},
    {'1': 'img_url', '3': 9, '4': 1, '5': 9, '10': 'imgUrl'},
    {'1': 'app_time', '3': 10, '4': 1, '5': 5, '10': 'appTime'},
    {'1': 'web_url', '3': 11, '4': 1, '5': 9, '10': 'webUrl'},
    {'1': 'ad_id', '3': 12, '4': 1, '5': 9, '10': 'adId'},
    {'1': 'id', '3': 13, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 14, '4': 1, '5': 9, '10': 'name'},
    {'1': 'url_type', '3': 15, '4': 1, '5': 5, '10': 'urlType'},
    {'1': 'url', '3': 16, '4': 1, '5': 9, '10': 'url'},
    {'1': 'ios_url', '3': 17, '4': 1, '5': 9, '10': 'iosUrl'},
    {'1': 'apk_url', '3': 18, '4': 1, '5': 9, '10': 'apkUrl'},
    {'1': 'apk_name', '3': 19, '4': 1, '5': 9, '10': 'apkName'},
    {'1': 'pos_name', '3': 20, '4': 1, '5': 9, '10': 'posName'},
    {'1': 'first_name', '3': 21, '4': 1, '5': 9, '10': 'firstName'},
    {'1': 'second_name', '3': 22, '4': 1, '5': 9, '10': 'secondName'},
    {'1': 'cpid', '3': 23, '4': 1, '5': 5, '10': 'cpid'},
    {'1': 'abtest', '3': 24, '4': 1, '5': 9, '10': 'abtest'},
    {'1': 'plan_id', '3': 25, '4': 1, '5': 5, '10': 'planId'},
    {'1': 'user_id', '3': 26, '4': 1, '5': 9, '10': 'userId'},
    {'1': 'price', '3': 27, '4': 1, '5': 9, '10': 'price'},
    {'1': 'verify', '3': 28, '4': 1, '5': 9, '10': 'verify'},
    {'1': 'ext_info', '3': 29, '4': 1, '5': 9, '10': 'extInfo'},
    {
      '1': 'goods_info',
      '3': 30,
      '4': 3,
      '5': 11,
      '6': '.tieba.GoodsInfo',
      '10': 'goodsInfo'
    },
    {'1': 'loc_code', '3': 31, '4': 1, '5': 9, '10': 'locCode'},
    {'1': 'deep_url', '3': 32, '4': 1, '5': 9, '10': 'deepUrl'},
  ],
};

/// Descriptor for `App`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List appDescriptor = $convert.base64Decode(
    'CgNBcHASEgoEdHlwZRgBIAEoBVIEdHlwZRIQCgNwb3MYAiABKAVSA3BvcxIZCghpY29uX3VybB'
    'gDIAEoCVIHaWNvblVybBIbCglpY29uX2xpbmsYBCABKAlSCGljb25MaW5rEhkKCGFwcF9uYW1l'
    'GAUgASgJUgdhcHBOYW1lEhkKCGFwcF9kZXNjGAYgASgJUgdhcHBEZXNjEhUKBnBfbmFtZRgHIA'
    'EoCVIFcE5hbWUSEwoFcF91cmwYCCABKAlSBHBVcmwSFwoHaW1nX3VybBgJIAEoCVIGaW1nVXJs'
    'EhkKCGFwcF90aW1lGAogASgFUgdhcHBUaW1lEhcKB3dlYl91cmwYCyABKAlSBndlYlVybBITCg'
    'VhZF9pZBgMIAEoCVIEYWRJZBIOCgJpZBgNIAEoCVICaWQSEgoEbmFtZRgOIAEoCVIEbmFtZRIZ'
    'Cgh1cmxfdHlwZRgPIAEoBVIHdXJsVHlwZRIQCgN1cmwYECABKAlSA3VybBIXCgdpb3NfdXJsGB'
    'EgASgJUgZpb3NVcmwSFwoHYXBrX3VybBgSIAEoCVIGYXBrVXJsEhkKCGFwa19uYW1lGBMgASgJ'
    'UgdhcGtOYW1lEhkKCHBvc19uYW1lGBQgASgJUgdwb3NOYW1lEh0KCmZpcnN0X25hbWUYFSABKA'
    'lSCWZpcnN0TmFtZRIfCgtzZWNvbmRfbmFtZRgWIAEoCVIKc2Vjb25kTmFtZRISCgRjcGlkGBcg'
    'ASgFUgRjcGlkEhYKBmFidGVzdBgYIAEoCVIGYWJ0ZXN0EhcKB3BsYW5faWQYGSABKAVSBnBsYW'
    '5JZBIXCgd1c2VyX2lkGBogASgJUgZ1c2VySWQSFAoFcHJpY2UYGyABKAlSBXByaWNlEhYKBnZl'
    'cmlmeRgcIAEoCVIGdmVyaWZ5EhkKCGV4dF9pbmZvGB0gASgJUgdleHRJbmZvEi8KCmdvb2RzX2'
    'luZm8YHiADKAsyEC50aWViYS5Hb29kc0luZm9SCWdvb2RzSW5mbxIZCghsb2NfY29kZRgfIAEo'
    'CVIHbG9jQ29kZRIZCghkZWVwX3VybBggIAEoCVIHZGVlcFVybA==');
