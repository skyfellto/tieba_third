// This is a generated file - do not edit.
//
// Generated from Item.proto.

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

@$core.Deprecated('Use itemDescriptor instead')
const Item$json = {
  '1': 'Item',
  '2': [
    {'1': 'item_id', '3': 1, '4': 1, '5': 3, '10': 'itemId'},
    {'1': 'item_name', '3': 2, '4': 1, '5': 9, '10': 'itemName'},
    {'1': 'icon_size', '3': 3, '4': 1, '5': 1, '10': 'iconSize'},
    {'1': 'icon_url', '3': 4, '4': 1, '5': 9, '10': 'iconUrl'},
    {'1': 'tags', '3': 5, '4': 3, '5': 9, '10': 'tags'},
    {'1': 'score', '3': 6, '4': 1, '5': 1, '10': 'score'},
    {'1': 'star', '3': 7, '4': 1, '5': 5, '10': 'star'},
    {'1': 'button_name', '3': 8, '4': 1, '5': 9, '10': 'buttonName'},
    {'1': 'button_link', '3': 9, '4': 1, '5': 9, '10': 'buttonLink'},
    {'1': 'item_appid', '3': 10, '4': 1, '5': 9, '10': 'itemAppid'},
    {'1': 'category_id', '3': 11, '4': 1, '5': 5, '10': 'categoryId'},
    {'1': 'button_link_type', '3': 12, '4': 1, '5': 5, '10': 'buttonLinkType'},
    {'1': 'apk_name', '3': 13, '4': 1, '5': 9, '10': 'apkName'},
    {'1': 'forum_name', '3': 14, '4': 1, '5': 9, '10': 'forumName'},
    {
      '1': 'apk_detail',
      '3': 15,
      '4': 1,
      '5': 11,
      '6': '.tieba.ApkDetail',
      '10': 'apkDetail'
    },
  ],
};

/// Descriptor for `Item`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List itemDescriptor = $convert.base64Decode(
    'CgRJdGVtEhcKB2l0ZW1faWQYASABKANSBml0ZW1JZBIbCglpdGVtX25hbWUYAiABKAlSCGl0ZW'
    '1OYW1lEhsKCWljb25fc2l6ZRgDIAEoAVIIaWNvblNpemUSGQoIaWNvbl91cmwYBCABKAlSB2lj'
    'b25VcmwSEgoEdGFncxgFIAMoCVIEdGFncxIUCgVzY29yZRgGIAEoAVIFc2NvcmUSEgoEc3Rhch'
    'gHIAEoBVIEc3RhchIfCgtidXR0b25fbmFtZRgIIAEoCVIKYnV0dG9uTmFtZRIfCgtidXR0b25f'
    'bGluaxgJIAEoCVIKYnV0dG9uTGluaxIdCgppdGVtX2FwcGlkGAogASgJUglpdGVtQXBwaWQSHw'
    'oLY2F0ZWdvcnlfaWQYCyABKAVSCmNhdGVnb3J5SWQSKAoQYnV0dG9uX2xpbmtfdHlwZRgMIAEo'
    'BVIOYnV0dG9uTGlua1R5cGUSGQoIYXBrX25hbWUYDSABKAlSB2Fwa05hbWUSHQoKZm9ydW1fbm'
    'FtZRgOIAEoCVIJZm9ydW1OYW1lEi8KCmFwa19kZXRhaWwYDyABKAsyEC50aWViYS5BcGtEZXRh'
    'aWxSCWFwa0RldGFpbA==');
