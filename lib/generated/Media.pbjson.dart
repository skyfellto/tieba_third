// This is a generated file - do not edit.
//
// Generated from Media.proto.

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

@$core.Deprecated('Use mediaDescriptor instead')
const Media$json = {
  '1': 'Media',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 5, '10': 'type'},
    {'1': 'small_pic', '3': 2, '4': 1, '5': 9, '10': 'smallPic'},
    {'1': 'big_pic', '3': 3, '4': 1, '5': 9, '10': 'bigPic'},
    {'1': 'water_pic', '3': 4, '4': 1, '5': 9, '10': 'waterPic'},
    {'1': 'vpic', '3': 5, '4': 1, '5': 9, '10': 'vpic'},
    {'1': 'vsrc', '3': 6, '4': 1, '5': 9, '10': 'vsrc'},
    {'1': 'vhsrc', '3': 7, '4': 1, '5': 9, '10': 'vhsrc'},
    {'1': 'src_pic', '3': 8, '4': 1, '5': 9, '10': 'srcPic'},
    {'1': 'text', '3': 9, '4': 1, '5': 9, '10': 'text'},
    {'1': 'width', '3': 10, '4': 1, '5': 13, '10': 'width'},
    {'1': 'height', '3': 11, '4': 1, '5': 13, '10': 'height'},
    {'1': 'bsize', '3': 12, '4': 1, '5': 9, '10': 'bsize'},
    {'1': 'during_time', '3': 13, '4': 1, '5': 13, '10': 'duringTime'},
    {'1': 'e_type', '3': 14, '4': 1, '5': 13, '10': 'eType'},
    {'1': 'origin_pic', '3': 15, '4': 1, '5': 9, '10': 'originPic'},
    {'1': 'origin_size', '3': 16, '4': 1, '5': 13, '10': 'originSize'},
    {'1': 'post_id', '3': 17, '4': 1, '5': 3, '10': 'postId'},
    {'1': 'dynamic_pic', '3': 18, '4': 1, '5': 9, '10': 'dynamicPic'},
    {'1': 'is_long_pic', '3': 19, '4': 1, '5': 13, '10': 'isLongPic'},
    {
      '1': 'show_original_btn',
      '3': 20,
      '4': 1,
      '5': 13,
      '10': 'showOriginalBtn'
    },
    {'1': 'is_blocked_pic', '3': 21, '4': 1, '5': 13, '10': 'isBlockedPic'},
    {'1': 'wth_mid_loc', '3': 22, '4': 1, '5': 1, '10': 'wthMidLoc'},
    {'1': 'hth_mid_loc', '3': 23, '4': 1, '5': 1, '10': 'hthMidLoc'},
    {'1': 'jump_url', '3': 24, '4': 1, '5': 9, '10': 'jumpUrl'},
    {'1': 'guide_text', '3': 25, '4': 1, '5': 9, '10': 'guideText'},
    {'1': 'lottie_type', '3': 26, '4': 1, '5': 5, '10': 'lottieType'},
    {
      '1': 'mask_color',
      '3': 27,
      '4': 1,
      '5': 11,
      '6': '.tieba.MaskColor',
      '10': 'maskColor'
    },
    {'1': 'is_full', '3': 28, '4': 1, '5': 5, '10': 'isFull'},
    {'1': 'pic_id', '3': 29, '4': 1, '5': 4, '10': 'picId'},
    {'1': 'id', '3': 30, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `Media`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mediaDescriptor = $convert.base64Decode(
    'CgVNZWRpYRISCgR0eXBlGAEgASgFUgR0eXBlEhsKCXNtYWxsX3BpYxgCIAEoCVIIc21hbGxQaW'
    'MSFwoHYmlnX3BpYxgDIAEoCVIGYmlnUGljEhsKCXdhdGVyX3BpYxgEIAEoCVIId2F0ZXJQaWMS'
    'EgoEdnBpYxgFIAEoCVIEdnBpYxISCgR2c3JjGAYgASgJUgR2c3JjEhQKBXZoc3JjGAcgASgJUg'
    'V2aHNyYxIXCgdzcmNfcGljGAggASgJUgZzcmNQaWMSEgoEdGV4dBgJIAEoCVIEdGV4dBIUCgV3'
    'aWR0aBgKIAEoDVIFd2lkdGgSFgoGaGVpZ2h0GAsgASgNUgZoZWlnaHQSFAoFYnNpemUYDCABKA'
    'lSBWJzaXplEh8KC2R1cmluZ190aW1lGA0gASgNUgpkdXJpbmdUaW1lEhUKBmVfdHlwZRgOIAEo'
    'DVIFZVR5cGUSHQoKb3JpZ2luX3BpYxgPIAEoCVIJb3JpZ2luUGljEh8KC29yaWdpbl9zaXplGB'
    'AgASgNUgpvcmlnaW5TaXplEhcKB3Bvc3RfaWQYESABKANSBnBvc3RJZBIfCgtkeW5hbWljX3Bp'
    'YxgSIAEoCVIKZHluYW1pY1BpYxIeCgtpc19sb25nX3BpYxgTIAEoDVIJaXNMb25nUGljEioKEX'
    'Nob3dfb3JpZ2luYWxfYnRuGBQgASgNUg9zaG93T3JpZ2luYWxCdG4SJAoOaXNfYmxvY2tlZF9w'
    'aWMYFSABKA1SDGlzQmxvY2tlZFBpYxIeCgt3dGhfbWlkX2xvYxgWIAEoAVIJd3RoTWlkTG9jEh'
    '4KC2h0aF9taWRfbG9jGBcgASgBUglodGhNaWRMb2MSGQoIanVtcF91cmwYGCABKAlSB2p1bXBV'
    'cmwSHQoKZ3VpZGVfdGV4dBgZIAEoCVIJZ3VpZGVUZXh0Eh8KC2xvdHRpZV90eXBlGBogASgFUg'
    'psb3R0aWVUeXBlEi8KCm1hc2tfY29sb3IYGyABKAsyEC50aWViYS5NYXNrQ29sb3JSCW1hc2tD'
    'b2xvchIXCgdpc19mdWxsGBwgASgFUgZpc0Z1bGwSFQoGcGljX2lkGB0gASgEUgVwaWNJZBIOCg'
    'JpZBgeIAEoCVICaWQ=');
