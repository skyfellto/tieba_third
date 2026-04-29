// This is a generated file - do not edit.
//
// Generated from PbContent.proto.

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

@$core.Deprecated('Use pbContentDescriptor instead')
const PbContent$json = {
  '1': 'PbContent',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 5, '10': 'type'},
    {'1': 'text', '3': 2, '4': 1, '5': 9, '10': 'text'},
    {'1': 'link', '3': 3, '4': 1, '5': 9, '10': 'link'},
    {'1': 'src', '3': 4, '4': 1, '5': 9, '10': 'src'},
    {'1': 'bsize', '3': 5, '4': 1, '5': 9, '10': 'bsize'},
    {'1': 'bigSrc', '3': 6, '4': 1, '5': 9, '10': 'bigSrc'},
    {'1': 'bigSize', '3': 7, '4': 1, '5': 9, '10': 'bigSize'},
    {'1': 'cdnSrc', '3': 8, '4': 1, '5': 9, '10': 'cdnSrc'},
    {'1': 'bigCdnSrc', '3': 9, '4': 1, '5': 9, '10': 'bigCdnSrc'},
    {'1': 'imgType', '3': 10, '4': 1, '5': 9, '10': 'imgType'},
    {'1': 'c', '3': 11, '4': 1, '5': 9, '10': 'c'},
    {'1': 'voiceMD5', '3': 12, '4': 1, '5': 9, '10': 'voiceMD5'},
    {'1': 'duringTime', '3': 13, '4': 1, '5': 13, '10': 'duringTime'},
    {'1': 'uid', '3': 15, '4': 1, '5': 3, '10': 'uid'},
    {'1': 'dynamic', '3': 16, '4': 1, '5': 9, '10': 'dynamic'},
    {'1': '_static', '3': 17, '4': 1, '5': 9, '10': 'Static'},
    {'1': 'width', '3': 18, '4': 1, '5': 13, '10': 'width'},
    {'1': 'height', '3': 19, '4': 1, '5': 13, '10': 'height'},
    {'1': 'originSrc', '3': 25, '4': 1, '5': 9, '10': 'originSrc'},
    {'1': 'originSize', '3': 27, '4': 1, '5': 13, '10': 'originSize'},
    {'1': 'mediaSubtitle', '3': 31, '4': 1, '5': 9, '10': 'mediaSubtitle'},
    {'1': 'urlType', '3': 32, '4': 1, '5': 5, '10': 'urlType'},
    {
      '1': 'memeInfo',
      '3': 33,
      '4': 1,
      '5': 11,
      '6': '.tieba.MemeInfo',
      '10': 'memeInfo'
    },
    {'1': 'isLongPic', '3': 34, '4': 1, '5': 13, '10': 'isLongPic'},
    {'1': 'showOriginalBtn', '3': 35, '4': 1, '5': 13, '10': 'showOriginalBtn'},
    {'1': 'cdnSrcActive', '3': 36, '4': 1, '5': 9, '10': 'cdnSrcActive'},
  ],
};

/// Descriptor for `PbContent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pbContentDescriptor = $convert.base64Decode(
    'CglQYkNvbnRlbnQSEgoEdHlwZRgBIAEoBVIEdHlwZRISCgR0ZXh0GAIgASgJUgR0ZXh0EhIKBG'
    'xpbmsYAyABKAlSBGxpbmsSEAoDc3JjGAQgASgJUgNzcmMSFAoFYnNpemUYBSABKAlSBWJzaXpl'
    'EhYKBmJpZ1NyYxgGIAEoCVIGYmlnU3JjEhgKB2JpZ1NpemUYByABKAlSB2JpZ1NpemUSFgoGY2'
    'RuU3JjGAggASgJUgZjZG5TcmMSHAoJYmlnQ2RuU3JjGAkgASgJUgliaWdDZG5TcmMSGAoHaW1n'
    'VHlwZRgKIAEoCVIHaW1nVHlwZRIMCgFjGAsgASgJUgFjEhoKCHZvaWNlTUQ1GAwgASgJUgh2b2'
    'ljZU1ENRIeCgpkdXJpbmdUaW1lGA0gASgNUgpkdXJpbmdUaW1lEhAKA3VpZBgPIAEoA1IDdWlk'
    'EhgKB2R5bmFtaWMYECABKAlSB2R5bmFtaWMSFwoHX3N0YXRpYxgRIAEoCVIGU3RhdGljEhQKBX'
    'dpZHRoGBIgASgNUgV3aWR0aBIWCgZoZWlnaHQYEyABKA1SBmhlaWdodBIcCglvcmlnaW5TcmMY'
    'GSABKAlSCW9yaWdpblNyYxIeCgpvcmlnaW5TaXplGBsgASgNUgpvcmlnaW5TaXplEiQKDW1lZG'
    'lhU3VidGl0bGUYHyABKAlSDW1lZGlhU3VidGl0bGUSGAoHdXJsVHlwZRggIAEoBVIHdXJsVHlw'
    'ZRIrCghtZW1lSW5mbxghIAEoCzIPLnRpZWJhLk1lbWVJbmZvUghtZW1lSW5mbxIcCglpc0xvbm'
    'dQaWMYIiABKA1SCWlzTG9uZ1BpYxIoCg9zaG93T3JpZ2luYWxCdG4YIyABKA1SD3Nob3dPcmln'
    'aW5hbEJ0bhIiCgxjZG5TcmNBY3RpdmUYJCABKAlSDGNkblNyY0FjdGl2ZQ==');
