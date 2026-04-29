// This is a generated file - do not edit.
//
// Generated from VoiceRoom.proto.

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

@$core.Deprecated('Use voiceRoomDescriptor instead')
const VoiceRoom$json = {
  '1': 'VoiceRoom',
  '2': [
    {'1': 'room_id', '3': 2, '4': 1, '5': 3, '10': 'roomId'},
    {
      '1': 'author',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.tieba.User',
      '10': 'author'
    },
    {
      '1': 'talker',
      '3': 5,
      '4': 3,
      '5': 11,
      '6': '.tieba.User',
      '10': 'talker'
    },
    {'1': 'joined_num', '3': 6, '4': 1, '5': 3, '10': 'joinedNum'},
    {'1': 'talker_num', '3': 7, '4': 1, '5': 3, '10': 'talkerNum'},
    {'1': 'status', '3': 8, '4': 1, '5': 13, '10': 'status'},
    {'1': 'room_name', '3': 9, '4': 1, '5': 9, '10': 'roomName'},
  ],
};

/// Descriptor for `VoiceRoom`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List voiceRoomDescriptor = $convert.base64Decode(
    'CglWb2ljZVJvb20SFwoHcm9vbV9pZBgCIAEoA1IGcm9vbUlkEiMKBmF1dGhvchgEIAEoCzILLn'
    'RpZWJhLlVzZXJSBmF1dGhvchIjCgZ0YWxrZXIYBSADKAsyCy50aWViYS5Vc2VyUgZ0YWxrZXIS'
    'HQoKam9pbmVkX251bRgGIAEoA1IJam9pbmVkTnVtEh0KCnRhbGtlcl9udW0YByABKANSCXRhbG'
    'tlck51bRIWCgZzdGF0dXMYCCABKA1SBnN0YXR1cxIbCglyb29tX25hbWUYCSABKAlSCHJvb21O'
    'YW1l');
