// This is a generated file - do not edit.
//
// Generated from GoodsInfo.proto.

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

@$core.Deprecated('Use goodsInfoDescriptor instead')
const GoodsInfo$json = {
  '1': 'GoodsInfo',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'user_name', '3': 2, '4': 1, '5': 9, '10': 'userName'},
    {'1': 'user_portrait', '3': 3, '4': 1, '5': 9, '10': 'userPortrait'},
    {'1': 'thread_title', '3': 4, '4': 1, '5': 9, '10': 'threadTitle'},
    {'1': 'thread_pic', '3': 5, '4': 1, '5': 9, '10': 'threadPic'},
    {'1': 'pop_window_text', '3': 6, '4': 1, '5': 9, '10': 'popWindowText'},
    {'1': 'goods_style', '3': 7, '4': 1, '5': 5, '10': 'goodsStyle'},
    {
      '1': 'thread_pic_list',
      '3': 8,
      '4': 3,
      '5': 11,
      '6': '.tieba.ThreadPicList',
      '10': 'threadPicList'
    },
    {'1': 'label_visible', '3': 9, '4': 1, '5': 5, '10': 'labelVisible'},
    {'1': 'label_text', '3': 10, '4': 1, '5': 9, '10': 'labelText'},
    {'1': 'rank_level', '3': 11, '4': 1, '5': 5, '10': 'rankLevel'},
    {'1': 'thread_type', '3': 12, '4': 1, '5': 9, '10': 'threadType'},
    {'1': 'button_text', '3': 13, '4': 1, '5': 9, '10': 'buttonText'},
    {'1': 'card_desc', '3': 14, '4': 1, '5': 9, '10': 'cardDesc'},
    {'1': 'card_tag', '3': 15, '4': 1, '5': 9, '10': 'cardTag'},
    {'1': 'width', '3': 16, '4': 1, '5': 5, '10': 'width'},
    {'1': 'height', '3': 17, '4': 1, '5': 5, '10': 'height'},
    {'1': 'label_measure', '3': 18, '4': 1, '5': 5, '10': 'labelMeasure'},
    {'1': 'thread_content', '3': 19, '4': 1, '5': 9, '10': 'threadContent'},
    {'1': 'lego_card', '3': 20, '4': 1, '5': 9, '10': 'legoCard'},
    {
      '1': 'video_info',
      '3': 21,
      '4': 1,
      '5': 11,
      '6': '.tieba.VideoInfo',
      '10': 'videoInfo'
    },
    {'1': 'tag_name', '3': 22, '4': 1, '5': 9, '10': 'tagName'},
    {'1': 'button_url', '3': 23, '4': 1, '5': 9, '10': 'buttonUrl'},
    {'1': 'ad_source', '3': 24, '4': 1, '5': 9, '10': 'adSource'},
    {'1': 'tag_name_url', '3': 25, '4': 1, '5': 9, '10': 'tagNameUrl'},
    {'1': 'tag_name_wh', '3': 26, '4': 1, '5': 9, '10': 'tagNameWh'},
    {'1': 'brand_icon', '3': 27, '4': 1, '5': 9, '10': 'brandIcon'},
    {'1': 'brand_icon_wh', '3': 28, '4': 1, '5': 9, '10': 'brandIconWh'},
    {
      '1': 'close_info',
      '3': 29,
      '4': 1,
      '5': 11,
      '6': '.tieba.AdCloseInfo',
      '10': 'closeInfo'
    },
  ],
};

/// Descriptor for `GoodsInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List goodsInfoDescriptor = $convert.base64Decode(
    'CglHb29kc0luZm8SDgoCaWQYASABKAVSAmlkEhsKCXVzZXJfbmFtZRgCIAEoCVIIdXNlck5hbW'
    'USIwoNdXNlcl9wb3J0cmFpdBgDIAEoCVIMdXNlclBvcnRyYWl0EiEKDHRocmVhZF90aXRsZRgE'
    'IAEoCVILdGhyZWFkVGl0bGUSHQoKdGhyZWFkX3BpYxgFIAEoCVIJdGhyZWFkUGljEiYKD3BvcF'
    '93aW5kb3dfdGV4dBgGIAEoCVINcG9wV2luZG93VGV4dBIfCgtnb29kc19zdHlsZRgHIAEoBVIK'
    'Z29vZHNTdHlsZRI8Cg90aHJlYWRfcGljX2xpc3QYCCADKAsyFC50aWViYS5UaHJlYWRQaWNMaX'
    'N0Ug10aHJlYWRQaWNMaXN0EiMKDWxhYmVsX3Zpc2libGUYCSABKAVSDGxhYmVsVmlzaWJsZRId'
    'CgpsYWJlbF90ZXh0GAogASgJUglsYWJlbFRleHQSHQoKcmFua19sZXZlbBgLIAEoBVIJcmFua0'
    'xldmVsEh8KC3RocmVhZF90eXBlGAwgASgJUgp0aHJlYWRUeXBlEh8KC2J1dHRvbl90ZXh0GA0g'
    'ASgJUgpidXR0b25UZXh0EhsKCWNhcmRfZGVzYxgOIAEoCVIIY2FyZERlc2MSGQoIY2FyZF90YW'
    'cYDyABKAlSB2NhcmRUYWcSFAoFd2lkdGgYECABKAVSBXdpZHRoEhYKBmhlaWdodBgRIAEoBVIG'
    'aGVpZ2h0EiMKDWxhYmVsX21lYXN1cmUYEiABKAVSDGxhYmVsTWVhc3VyZRIlCg50aHJlYWRfY2'
    '9udGVudBgTIAEoCVINdGhyZWFkQ29udGVudBIbCglsZWdvX2NhcmQYFCABKAlSCGxlZ29DYXJk'
    'Ei8KCnZpZGVvX2luZm8YFSABKAsyEC50aWViYS5WaWRlb0luZm9SCXZpZGVvSW5mbxIZCgh0YW'
    'dfbmFtZRgWIAEoCVIHdGFnTmFtZRIdCgpidXR0b25fdXJsGBcgASgJUglidXR0b25VcmwSGwoJ'
    'YWRfc291cmNlGBggASgJUghhZFNvdXJjZRIgCgx0YWdfbmFtZV91cmwYGSABKAlSCnRhZ05hbW'
    'VVcmwSHgoLdGFnX25hbWVfd2gYGiABKAlSCXRhZ05hbWVXaBIdCgpicmFuZF9pY29uGBsgASgJ'
    'UglicmFuZEljb24SIgoNYnJhbmRfaWNvbl93aBgcIAEoCVILYnJhbmRJY29uV2gSMQoKY2xvc2'
    'VfaW5mbxgdIAEoCzISLnRpZWJhLkFkQ2xvc2VJbmZvUgljbG9zZUluZm8=');
