// This is a generated file - do not edit.
//
// Generated from GetForumDetail/GetForumDetailResponseData.proto.

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

@$core.Deprecated('Use getForumDetailResponseDataDescriptor instead')
const GetForumDetailResponseData$json = {
  '1': 'GetForumDetailResponseData',
  '2': [
    {
      '1': 'forum_info',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.tieba.RecommendForumInfo',
      '10': 'forumInfo'
    },
    {
      '1': 'thread_list',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.tieba.SimpleThreadInfo',
      '10': 'threadList'
    },
    {'1': 'is_bawu_show', '3': 4, '4': 1, '5': 5, '10': 'isBawuShow'},
    {
      '1': 'bz_apply_info',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.tieba.ManagerApplyInfo',
      '10': 'bzApplyInfo'
    },
    {'1': 'is_complaint_show', '3': 6, '4': 1, '5': 5, '10': 'isComplaintShow'},
    {
      '1': 'pribz_apply_info',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.tieba.PriManagerApplyInfo',
      '10': 'pribzApplyInfo'
    },
    {
      '1': 'election_tab',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.tieba.getForumDetail.ManagerElectionTab',
      '10': 'electionTab'
    },
    {
      '1': 'is_forum_data_show',
      '3': 9,
      '4': 1,
      '5': 5,
      '10': 'isForumDataShow'
    },
    {
      '1': 'forum_data',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.tieba.getForumDetail.ForumDataCenter',
      '10': 'forumData'
    },
    {
      '1': 'bawu_actions',
      '3': 11,
      '4': 3,
      '5': 11,
      '6': '.tieba.getForumDetail.BawuAction',
      '10': 'bawuActions'
    },
    {
      '1': 'apply_status',
      '3': 12,
      '4': 1,
      '5': 11,
      '6': '.tieba.getForumDetail.ApplyStatus',
      '10': 'applyStatus'
    },
    {
      '1': 'bazhu_university',
      '3': 13,
      '4': 1,
      '5': 11,
      '6': '.tieba.getForumDetail.BazhuUniversity',
      '10': 'bazhuUniversity'
    },
    {
      '1': 'bazhu_grade',
      '3': 15,
      '4': 1,
      '5': 11,
      '6': '.tieba.getForumDetail.BazhuGrade',
      '10': 'bazhuGrade'
    },
    {
      '1': 'is_forum_card_enable',
      '3': 16,
      '4': 1,
      '5': 5,
      '10': 'isForumCardEnable'
    },
    {
      '1': 'bawu_thrones',
      '3': 17,
      '4': 1,
      '5': 11,
      '6': '.tieba.BawuThrones',
      '10': 'bawuThrones'
    },
    {'1': 'is_bazhu_show', '3': 18, '4': 1, '5': 9, '10': 'isBazhuShow'},
    {
      '1': 'hot_user_entry',
      '3': 19,
      '4': 1,
      '5': 11,
      '6': '.tieba.HotUserRankEntry',
      '10': 'hotUserEntry'
    },
    {
      '1': 'small_app',
      '3': 20,
      '4': 1,
      '5': 11,
      '6': '.tieba.ServiceArea',
      '10': 'smallApp'
    },
    {
      '1': 'forum_member',
      '3': 21,
      '4': 1,
      '5': 11,
      '6': '.tieba.ForumMemberInfo',
      '10': 'forumMember'
    },
  ],
};

/// Descriptor for `GetForumDetailResponseData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getForumDetailResponseDataDescriptor = $convert.base64Decode(
    'ChpHZXRGb3J1bURldGFpbFJlc3BvbnNlRGF0YRI4Cgpmb3J1bV9pbmZvGAEgASgLMhkudGllYm'
    'EuUmVjb21tZW5kRm9ydW1JbmZvUglmb3J1bUluZm8SOAoLdGhyZWFkX2xpc3QYAiADKAsyFy50'
    'aWViYS5TaW1wbGVUaHJlYWRJbmZvUgp0aHJlYWRMaXN0EiAKDGlzX2Jhd3Vfc2hvdxgEIAEoBV'
    'IKaXNCYXd1U2hvdxI7Cg1iel9hcHBseV9pbmZvGAUgASgLMhcudGllYmEuTWFuYWdlckFwcGx5'
    'SW5mb1ILYnpBcHBseUluZm8SKgoRaXNfY29tcGxhaW50X3Nob3cYBiABKAVSD2lzQ29tcGxhaW'
    '50U2hvdxJEChBwcmliel9hcHBseV9pbmZvGAcgASgLMhoudGllYmEuUHJpTWFuYWdlckFwcGx5'
    'SW5mb1IOcHJpYnpBcHBseUluZm8SSwoMZWxlY3Rpb25fdGFiGAggASgLMigudGllYmEuZ2V0Rm'
    '9ydW1EZXRhaWwuTWFuYWdlckVsZWN0aW9uVGFiUgtlbGVjdGlvblRhYhIrChJpc19mb3J1bV9k'
    'YXRhX3Nob3cYCSABKAVSD2lzRm9ydW1EYXRhU2hvdxJECgpmb3J1bV9kYXRhGAogASgLMiUudG'
    'llYmEuZ2V0Rm9ydW1EZXRhaWwuRm9ydW1EYXRhQ2VudGVyUglmb3J1bURhdGESQwoMYmF3dV9h'
    'Y3Rpb25zGAsgAygLMiAudGllYmEuZ2V0Rm9ydW1EZXRhaWwuQmF3dUFjdGlvblILYmF3dUFjdG'
    'lvbnMSRAoMYXBwbHlfc3RhdHVzGAwgASgLMiEudGllYmEuZ2V0Rm9ydW1EZXRhaWwuQXBwbHlT'
    'dGF0dXNSC2FwcGx5U3RhdHVzElAKEGJhemh1X3VuaXZlcnNpdHkYDSABKAsyJS50aWViYS5nZX'
    'RGb3J1bURldGFpbC5CYXpodVVuaXZlcnNpdHlSD2Jhemh1VW5pdmVyc2l0eRJBCgtiYXpodV9n'
    'cmFkZRgPIAEoCzIgLnRpZWJhLmdldEZvcnVtRGV0YWlsLkJhemh1R3JhZGVSCmJhemh1R3JhZG'
    'USLwoUaXNfZm9ydW1fY2FyZF9lbmFibGUYECABKAVSEWlzRm9ydW1DYXJkRW5hYmxlEjUKDGJh'
    'd3VfdGhyb25lcxgRIAEoCzISLnRpZWJhLkJhd3VUaHJvbmVzUgtiYXd1VGhyb25lcxIiCg1pc1'
    '9iYXpodV9zaG93GBIgASgJUgtpc0Jhemh1U2hvdxI9Cg5ob3RfdXNlcl9lbnRyeRgTIAEoCzIX'
    'LnRpZWJhLkhvdFVzZXJSYW5rRW50cnlSDGhvdFVzZXJFbnRyeRIvCglzbWFsbF9hcHAYFCABKA'
    'syEi50aWViYS5TZXJ2aWNlQXJlYVIIc21hbGxBcHASOQoMZm9ydW1fbWVtYmVyGBUgASgLMhYu'
    'dGllYmEuRm9ydW1NZW1iZXJJbmZvUgtmb3J1bU1lbWJlcg==');
