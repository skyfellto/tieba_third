// This is a generated file - do not edit.
//
// Generated from HistoryForumInfo.proto.

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

@$core.Deprecated('Use historyForumInfoDescriptor instead')
const HistoryForumInfo$json = {
  '1': 'HistoryForumInfo',
  '2': [
    {'1': 'forum_id', '3': 1, '4': 1, '5': 3, '10': 'forumId'},
    {'1': 'forum_name', '3': 2, '4': 1, '5': 9, '10': 'forumName'},
    {'1': 'avatar', '3': 3, '4': 1, '5': 9, '10': 'avatar'},
    {'1': 'is_liveforum', '3': 4, '4': 1, '5': 5, '10': 'isLiveforum'},
    {'1': 'unread_num', '3': 5, '4': 1, '5': 5, '10': 'unreadNum'},
    {'1': 'visit_time', '3': 6, '4': 1, '5': 9, '10': 'visitTime'},
    {'1': 'follow_num', '3': 7, '4': 1, '5': 5, '10': 'followNum'},
    {
      '1': 'theme_color',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.tieba.ThemeColorInfo',
      '10': 'themeColor'
    },
    {'1': 'need_trans', '3': 10, '4': 1, '5': 8, '10': 'needTrans'},
    {
      '1': 'block_pop_info',
      '3': 14,
      '4': 1,
      '5': 11,
      '6': '.tieba.BlockPopInfo',
      '10': 'blockPopInfo'
    },
    {'1': 'hot_num', '3': 15, '4': 1, '5': 13, '10': 'hotNum'},
    {'1': 'level_id', '3': 16, '4': 1, '5': 5, '10': 'levelId'},
    {
      '1': 'tab_info',
      '3': 17,
      '4': 3,
      '5': 11,
      '6': '.tieba.FrsTabInfo',
      '10': 'tabInfo'
    },
    {'1': 'has_postpre', '3': 18, '4': 1, '5': 8, '10': 'hasPostpre'},
    {
      '1': 'post_prefix',
      '3': 19,
      '4': 1,
      '5': 11,
      '6': '.tieba.PostPrefix',
      '10': 'postPrefix'
    },
    {
      '1': 'is_forum_business_account',
      '3': 20,
      '4': 1,
      '5': 5,
      '10': 'isForumBusinessAccount'
    },
    {
      '1': 'tag_info',
      '3': 21,
      '4': 1,
      '5': 11,
      '6': '.tieba.RecomTagInfo',
      '10': 'tagInfo'
    },
    {'1': 'first_category', '3': 22, '4': 1, '5': 9, '10': 'firstCategory'},
  ],
};

/// Descriptor for `HistoryForumInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List historyForumInfoDescriptor = $convert.base64Decode(
    'ChBIaXN0b3J5Rm9ydW1JbmZvEhkKCGZvcnVtX2lkGAEgASgDUgdmb3J1bUlkEh0KCmZvcnVtX2'
    '5hbWUYAiABKAlSCWZvcnVtTmFtZRIWCgZhdmF0YXIYAyABKAlSBmF2YXRhchIhCgxpc19saXZl'
    'Zm9ydW0YBCABKAVSC2lzTGl2ZWZvcnVtEh0KCnVucmVhZF9udW0YBSABKAVSCXVucmVhZE51bR'
    'IdCgp2aXNpdF90aW1lGAYgASgJUgl2aXNpdFRpbWUSHQoKZm9sbG93X251bRgHIAEoBVIJZm9s'
    'bG93TnVtEjYKC3RoZW1lX2NvbG9yGAggASgLMhUudGllYmEuVGhlbWVDb2xvckluZm9SCnRoZW'
    '1lQ29sb3ISHQoKbmVlZF90cmFucxgKIAEoCFIJbmVlZFRyYW5zEjkKDmJsb2NrX3BvcF9pbmZv'
    'GA4gASgLMhMudGllYmEuQmxvY2tQb3BJbmZvUgxibG9ja1BvcEluZm8SFwoHaG90X251bRgPIA'
    'EoDVIGaG90TnVtEhkKCGxldmVsX2lkGBAgASgFUgdsZXZlbElkEiwKCHRhYl9pbmZvGBEgAygL'
    'MhEudGllYmEuRnJzVGFiSW5mb1IHdGFiSW5mbxIfCgtoYXNfcG9zdHByZRgSIAEoCFIKaGFzUG'
    '9zdHByZRIyCgtwb3N0X3ByZWZpeBgTIAEoCzIRLnRpZWJhLlBvc3RQcmVmaXhSCnBvc3RQcmVm'
    'aXgSOQoZaXNfZm9ydW1fYnVzaW5lc3NfYWNjb3VudBgUIAEoBVIWaXNGb3J1bUJ1c2luZXNzQW'
    'Njb3VudBIuCgh0YWdfaW5mbxgVIAEoCzITLnRpZWJhLlJlY29tVGFnSW5mb1IHdGFnSW5mbxIl'
    'Cg5maXJzdF9jYXRlZ29yeRgWIAEoCVINZmlyc3RDYXRlZ29yeQ==');
