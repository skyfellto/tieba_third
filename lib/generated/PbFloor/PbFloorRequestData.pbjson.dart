// This is a generated file - do not edit.
//
// Generated from PbFloor/PbFloorRequestData.proto.

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

@$core.Deprecated('Use pbFloorRequestDataDescriptor instead')
const PbFloorRequestData$json = {
  '1': 'PbFloorRequestData',
  '2': [
    {'1': 'kz', '3': 1, '4': 1, '5': 3, '10': 'kz'},
    {'1': 'pid', '3': 2, '4': 1, '5': 3, '9': 0, '10': 'pid', '17': true},
    {'1': 'spid', '3': 3, '4': 1, '5': 3, '9': 1, '10': 'spid', '17': true},
    {'1': 'pn', '3': 4, '4': 1, '5': 5, '10': 'pn'},
    {'1': 'scr_w', '3': 5, '4': 1, '5': 5, '10': 'scrW'},
    {'1': 'scr_h', '3': 6, '4': 1, '5': 5, '10': 'scrH'},
    {'1': 'scr_dip', '3': 7, '4': 1, '5': 1, '10': 'scrDip'},
    {'1': 'st_type', '3': 8, '4': 1, '5': 9, '10': 'stType'},
    {
      '1': 'common',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.tieba.CommonReq',
      '10': 'common'
    },
    {
      '1': 'is_comm_reverse',
      '3': 10,
      '4': 1,
      '5': 5,
      '9': 2,
      '10': 'isCommReverse',
      '17': true
    },
    {'1': 'forum_id', '3': 11, '4': 1, '5': 3, '10': 'forumId'},
    {'1': 'ori_ugc_nid', '3': 12, '4': 1, '5': 9, '10': 'oriUgcNid'},
    {'1': 'ori_ugc_tid', '3': 13, '4': 1, '5': 9, '10': 'oriUgcTid'},
    {
      '1': 'ori_ugc_type',
      '3': 15,
      '4': 1,
      '5': 5,
      '9': 3,
      '10': 'oriUgcType',
      '17': true
    },
    {'1': 'ori_ugc_vid', '3': 16, '4': 1, '5': 9, '10': 'oriUgcVid'},
    {'1': 'top_ugc_pid', '3': 17, '4': 1, '5': 9, '10': 'topUgcPid'},
    {'1': 'request_times', '3': 18, '4': 1, '5': 5, '10': 'requestTimes'},
  ],
  '8': [
    {'1': '_pid'},
    {'1': '_spid'},
    {'1': '_is_comm_reverse'},
    {'1': '_ori_ugc_type'},
  ],
};

/// Descriptor for `PbFloorRequestData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pbFloorRequestDataDescriptor = $convert.base64Decode(
    'ChJQYkZsb29yUmVxdWVzdERhdGESDgoCa3oYASABKANSAmt6EhUKA3BpZBgCIAEoA0gAUgNwaW'
    'SIAQESFwoEc3BpZBgDIAEoA0gBUgRzcGlkiAEBEg4KAnBuGAQgASgFUgJwbhITCgVzY3JfdxgF'
    'IAEoBVIEc2NyVxITCgVzY3JfaBgGIAEoBVIEc2NySBIXCgdzY3JfZGlwGAcgASgBUgZzY3JEaX'
    'ASFwoHc3RfdHlwZRgIIAEoCVIGc3RUeXBlEigKBmNvbW1vbhgJIAEoCzIQLnRpZWJhLkNvbW1v'
    'blJlcVIGY29tbW9uEisKD2lzX2NvbW1fcmV2ZXJzZRgKIAEoBUgCUg1pc0NvbW1SZXZlcnNliA'
    'EBEhkKCGZvcnVtX2lkGAsgASgDUgdmb3J1bUlkEh4KC29yaV91Z2NfbmlkGAwgASgJUglvcmlV'
    'Z2NOaWQSHgoLb3JpX3VnY190aWQYDSABKAlSCW9yaVVnY1RpZBIlCgxvcmlfdWdjX3R5cGUYDy'
    'ABKAVIA1IKb3JpVWdjVHlwZYgBARIeCgtvcmlfdWdjX3ZpZBgQIAEoCVIJb3JpVWdjVmlkEh4K'
    'C3RvcF91Z2NfcGlkGBEgASgJUgl0b3BVZ2NQaWQSIwoNcmVxdWVzdF90aW1lcxgSIAEoBVIMcm'
    'VxdWVzdFRpbWVzQgYKBF9waWRCBwoFX3NwaWRCEgoQX2lzX2NvbW1fcmV2ZXJzZUIPCg1fb3Jp'
    'X3VnY190eXBl');
