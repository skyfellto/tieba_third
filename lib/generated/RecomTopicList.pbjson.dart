// This is a generated file - do not edit.
//
// Generated from RecomTopicList.proto.

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

@$core.Deprecated('Use recomTopicListDescriptor instead')
const RecomTopicList$json = {
  '1': 'RecomTopicList',
  '2': [
    {'1': 'topic_id', '3': 1, '4': 1, '5': 4, '10': 'topicId'},
    {'1': 'topic_name', '3': 2, '4': 1, '5': 9, '10': 'topicName'},
    {'1': 'type', '3': 3, '4': 1, '5': 13, '10': 'type'},
    {'1': 'discuss_num', '3': 4, '4': 1, '5': 4, '10': 'discussNum'},
    {'1': 'tag', '3': 5, '4': 1, '5': 13, '10': 'tag'},
    {'1': 'topic_desc', '3': 6, '4': 1, '5': 9, '10': 'topicDesc'},
    {'1': 'topic_pic', '3': 7, '4': 1, '5': 9, '10': 'topicPic'},
    {'1': 'update_time', '3': 8, '4': 1, '5': 3, '10': 'updateTime'},
    {'1': 'author', '3': 9, '4': 1, '5': 9, '10': 'author'},
    {
      '1': 'media',
      '3': 10,
      '4': 3,
      '5': 11,
      '6': '.tieba.Media',
      '10': 'media'
    },
    {'1': 'is_video_topic', '3': 11, '4': 1, '5': 5, '10': 'isVideoTopic'},
  ],
};

/// Descriptor for `RecomTopicList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List recomTopicListDescriptor = $convert.base64Decode(
    'Cg5SZWNvbVRvcGljTGlzdBIZCgh0b3BpY19pZBgBIAEoBFIHdG9waWNJZBIdCgp0b3BpY19uYW'
    '1lGAIgASgJUgl0b3BpY05hbWUSEgoEdHlwZRgDIAEoDVIEdHlwZRIfCgtkaXNjdXNzX251bRgE'
    'IAEoBFIKZGlzY3Vzc051bRIQCgN0YWcYBSABKA1SA3RhZxIdCgp0b3BpY19kZXNjGAYgASgJUg'
    'l0b3BpY0Rlc2MSGwoJdG9waWNfcGljGAcgASgJUgh0b3BpY1BpYxIfCgt1cGRhdGVfdGltZRgI'
    'IAEoA1IKdXBkYXRlVGltZRIWCgZhdXRob3IYCSABKAlSBmF1dGhvchIiCgVtZWRpYRgKIAMoCz'
    'IMLnRpZWJhLk1lZGlhUgVtZWRpYRIkCg5pc192aWRlb190b3BpYxgLIAEoBVIMaXNWaWRlb1Rv'
    'cGlj');
