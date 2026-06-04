// This is a generated file - do not edit.
//
// Generated from RewardCard.proto.

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

@$core.Deprecated('Use rewardCardDescriptor instead')
const RewardCard$json = {
  '1': 'RewardCard',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'icon', '3': 2, '4': 1, '5': 9, '10': 'icon'},
    {'1': 'title', '3': 3, '4': 1, '5': 9, '10': 'title'},
    {'1': 'start_text', '3': 4, '4': 1, '5': 9, '10': 'startText'},
    {'1': 'end_text', '3': 5, '4': 1, '5': 9, '10': 'endText'},
    {'1': 'end_time', '3': 6, '4': 1, '5': 9, '10': 'endTime'},
    {'1': 'button_text', '3': 7, '4': 1, '5': 9, '10': 'buttonText'},
    {'1': 'jump_url', '3': 8, '4': 1, '5': 9, '10': 'jumpUrl'},
    {'1': 'join_num', '3': 9, '4': 1, '5': 9, '10': 'joinNum'},
    {
      '1': 'reward_material',
      '3': 11,
      '4': 3,
      '5': 11,
      '6': '.tieba.RewardMaterial',
      '10': 'rewardMaterial'
    },
    {'1': 'total_num', '3': 12, '4': 1, '5': 9, '10': 'totalNum'},
    {'1': 'head_imgs', '3': 13, '4': 3, '5': 9, '10': 'headImgs'},
    {'1': 'join_succ_text', '3': 14, '4': 1, '5': 9, '10': 'joinSuccText'},
    {'1': 'banner_jump_url', '3': 15, '4': 1, '5': 9, '10': 'bannerJumpUrl'},
    {'1': 'type', '3': 16, '4': 1, '5': 5, '10': 'type'},
  ],
};

/// Descriptor for `RewardCard`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rewardCardDescriptor = $convert.base64Decode(
    'CgpSZXdhcmRDYXJkEg4KAmlkGAEgASgJUgJpZBISCgRpY29uGAIgASgJUgRpY29uEhQKBXRpdG'
    'xlGAMgASgJUgV0aXRsZRIdCgpzdGFydF90ZXh0GAQgASgJUglzdGFydFRleHQSGQoIZW5kX3Rl'
    'eHQYBSABKAlSB2VuZFRleHQSGQoIZW5kX3RpbWUYBiABKAlSB2VuZFRpbWUSHwoLYnV0dG9uX3'
    'RleHQYByABKAlSCmJ1dHRvblRleHQSGQoIanVtcF91cmwYCCABKAlSB2p1bXBVcmwSGQoIam9p'
    'bl9udW0YCSABKAlSB2pvaW5OdW0SPgoPcmV3YXJkX21hdGVyaWFsGAsgAygLMhUudGllYmEuUm'
    'V3YXJkTWF0ZXJpYWxSDnJld2FyZE1hdGVyaWFsEhsKCXRvdGFsX251bRgMIAEoCVIIdG90YWxO'
    'dW0SGwoJaGVhZF9pbWdzGA0gAygJUghoZWFkSW1ncxIkCg5qb2luX3N1Y2NfdGV4dBgOIAEoCV'
    'IMam9pblN1Y2NUZXh0EiYKD2Jhbm5lcl9qdW1wX3VybBgPIAEoCVINYmFubmVySnVtcFVybBIS'
    'CgR0eXBlGBAgASgFUgR0eXBl');
