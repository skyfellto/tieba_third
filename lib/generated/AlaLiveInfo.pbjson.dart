// This is a generated file - do not edit.
//
// Generated from AlaLiveInfo.proto.

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

@$core.Deprecated('Use alaLiveInfoDescriptor instead')
const AlaLiveInfo$json = {
  '1': 'AlaLiveInfo',
  '2': [
    {'1': 'live_id', '3': 1, '4': 1, '5': 4, '10': 'liveId'},
    {'1': 'cover', '3': 2, '4': 1, '5': 9, '10': 'cover'},
    {'1': 'session_id', '3': 3, '4': 1, '5': 9, '10': 'sessionId'},
    {'1': 'rtmp_url', '3': 4, '4': 1, '5': 9, '10': 'rtmpUrl'},
    {'1': 'hls_url', '3': 5, '4': 1, '5': 9, '10': 'hlsUrl'},
    {'1': 'group_id', '3': 6, '4': 1, '5': 4, '10': 'groupId'},
    {'1': 'media_url', '3': 7, '4': 1, '5': 9, '10': 'mediaUrl'},
    {'1': 'media_pic', '3': 8, '4': 1, '5': 9, '10': 'mediaPic'},
    {'1': 'media_id', '3': 9, '4': 1, '5': 9, '10': 'mediaId'},
    {'1': 'media_subtitle', '3': 10, '4': 1, '5': 9, '10': 'mediaSubtitle'},
    {'1': 'description', '3': 11, '4': 1, '5': 9, '10': 'description'},
    {
      '1': 'user_info',
      '3': 12,
      '4': 1,
      '5': 11,
      '6': '.tieba.AlaUserInfo',
      '10': 'userInfo'
    },
    {'1': 'duration', '3': 13, '4': 1, '5': 13, '10': 'duration'},
    {'1': 'audience_count', '3': 14, '4': 1, '5': 13, '10': 'audienceCount'},
    {'1': 'live_type', '3': 15, '4': 1, '5': 13, '10': 'liveType'},
    {
      '1': 'screen_direction',
      '3': 16,
      '4': 1,
      '5': 13,
      '10': 'screenDirection'
    },
    {'1': 'label_name', '3': 17, '4': 1, '5': 9, '10': 'labelName'},
    {'1': 'live_status', '3': 18, '4': 1, '5': 5, '10': 'liveStatus'},
    {
      '1': 'share_info',
      '3': 19,
      '4': 1,
      '5': 11,
      '6': '.tieba.AlaShareInfo',
      '10': 'shareInfo'
    },
    {'1': 'distance', '3': 20, '4': 1, '5': 4, '10': 'distance'},
    {'1': 'third_app_id', '3': 21, '4': 1, '5': 9, '10': 'thirdAppId'},
    {'1': 'thread_id', '3': 22, '4': 1, '5': 4, '10': 'threadId'},
    {
      '1': 'stage_dislike_info',
      '3': 23,
      '4': 3,
      '5': 11,
      '6': '.tieba.AlaStageDislikeInfo',
      '10': 'stageDislikeInfo'
    },
    {
      '1': 'label',
      '3': 24,
      '4': 1,
      '5': 11,
      '6': '.tieba.AlaCoverLabel',
      '10': 'label'
    },
    {
      '1': 'challenge_info',
      '3': 25,
      '4': 1,
      '5': 11,
      '6': '.tieba.AlaChallengeInfo',
      '10': 'challengeInfo'
    },
    {'1': 'frs_toplive_type', '3': 26, '4': 1, '5': 5, '10': 'frsTopliveType'},
    {'1': 'frs_toplive_pic', '3': 27, '4': 1, '5': 9, '10': 'frsToplivePic'},
    {
      '1': 'frs_toplive_force',
      '3': 28,
      '4': 1,
      '5': 5,
      '10': 'frsTopliveForce'
    },
    {'1': 'live_from', '3': 29, '4': 1, '5': 5, '10': 'liveFrom'},
    {'1': 'third_room_id', '3': 31, '4': 1, '5': 9, '10': 'thirdRoomId'},
    {'1': 'router_type', '3': 32, '4': 1, '5': 9, '10': 'routerType'},
    {'1': 'third_live_type', '3': 33, '4': 1, '5': 9, '10': 'thirdLiveType'},
    {'1': 'first_headline', '3': 34, '4': 1, '5': 9, '10': 'firstHeadline'},
    {'1': 'second_headline', '3': 35, '4': 1, '5': 9, '10': 'secondHeadline'},
    {'1': 'pb_display_type', '3': 36, '4': 1, '5': 13, '10': 'pbDisplayType'},
    {'1': 'recom_reason', '3': 37, '4': 1, '5': 9, '10': 'recomReason'},
    {
      '1': 'open_recom_reason',
      '3': 38,
      '4': 1,
      '5': 13,
      '10': 'openRecomReason'
    },
    {
      '1': 'open_recom_location',
      '3': 39,
      '4': 1,
      '5': 13,
      '10': 'openRecomLocation'
    },
    {'1': 'open_recom_fans', '3': 40, '4': 1, '5': 13, '10': 'openRecomFans'},
    {
      '1': 'open_recom_duration',
      '3': 41,
      '4': 1,
      '5': 13,
      '10': 'openRecomDuration'
    },
    {
      '1': 'dislike_info',
      '3': 43,
      '4': 3,
      '5': 11,
      '6': '.tieba.DislikeInfo',
      '10': 'dislikeInfo'
    },
    {'1': 'room_id', '3': 44, '4': 1, '5': 4, '10': 'roomId'},
    {'1': 'room_status', '3': 45, '4': 1, '5': 5, '10': 'roomStatus'},
    {'1': 'room_name', '3': 46, '4': 1, '5': 9, '10': 'roomName'},
    {
      '1': 'forum_user_live_msg',
      '3': 47,
      '4': 1,
      '5': 9,
      '10': 'forumUserLiveMsg'
    },
    {'1': 'cover_wide', '3': 48, '4': 1, '5': 9, '10': 'coverWide'},
    {
      '1': 'yy_ext',
      '3': 49,
      '4': 1,
      '5': 11,
      '6': '.tieba.YyExt',
      '10': 'yyExt'
    },
  ],
};

/// Descriptor for `AlaLiveInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List alaLiveInfoDescriptor = $convert.base64Decode(
    'CgtBbGFMaXZlSW5mbxIXCgdsaXZlX2lkGAEgASgEUgZsaXZlSWQSFAoFY292ZXIYAiABKAlSBW'
    'NvdmVyEh0KCnNlc3Npb25faWQYAyABKAlSCXNlc3Npb25JZBIZCghydG1wX3VybBgEIAEoCVIH'
    'cnRtcFVybBIXCgdobHNfdXJsGAUgASgJUgZobHNVcmwSGQoIZ3JvdXBfaWQYBiABKARSB2dyb3'
    'VwSWQSGwoJbWVkaWFfdXJsGAcgASgJUghtZWRpYVVybBIbCgltZWRpYV9waWMYCCABKAlSCG1l'
    'ZGlhUGljEhkKCG1lZGlhX2lkGAkgASgJUgdtZWRpYUlkEiUKDm1lZGlhX3N1YnRpdGxlGAogAS'
    'gJUg1tZWRpYVN1YnRpdGxlEiAKC2Rlc2NyaXB0aW9uGAsgASgJUgtkZXNjcmlwdGlvbhIvCgl1'
    'c2VyX2luZm8YDCABKAsyEi50aWViYS5BbGFVc2VySW5mb1IIdXNlckluZm8SGgoIZHVyYXRpb2'
    '4YDSABKA1SCGR1cmF0aW9uEiUKDmF1ZGllbmNlX2NvdW50GA4gASgNUg1hdWRpZW5jZUNvdW50'
    'EhsKCWxpdmVfdHlwZRgPIAEoDVIIbGl2ZVR5cGUSKQoQc2NyZWVuX2RpcmVjdGlvbhgQIAEoDV'
    'IPc2NyZWVuRGlyZWN0aW9uEh0KCmxhYmVsX25hbWUYESABKAlSCWxhYmVsTmFtZRIfCgtsaXZl'
    'X3N0YXR1cxgSIAEoBVIKbGl2ZVN0YXR1cxIyCgpzaGFyZV9pbmZvGBMgASgLMhMudGllYmEuQW'
    'xhU2hhcmVJbmZvUglzaGFyZUluZm8SGgoIZGlzdGFuY2UYFCABKARSCGRpc3RhbmNlEiAKDHRo'
    'aXJkX2FwcF9pZBgVIAEoCVIKdGhpcmRBcHBJZBIbCgl0aHJlYWRfaWQYFiABKARSCHRocmVhZE'
    'lkEkgKEnN0YWdlX2Rpc2xpa2VfaW5mbxgXIAMoCzIaLnRpZWJhLkFsYVN0YWdlRGlzbGlrZUlu'
    'Zm9SEHN0YWdlRGlzbGlrZUluZm8SKgoFbGFiZWwYGCABKAsyFC50aWViYS5BbGFDb3ZlckxhYm'
    'VsUgVsYWJlbBI+Cg5jaGFsbGVuZ2VfaW5mbxgZIAEoCzIXLnRpZWJhLkFsYUNoYWxsZW5nZUlu'
    'Zm9SDWNoYWxsZW5nZUluZm8SKAoQZnJzX3RvcGxpdmVfdHlwZRgaIAEoBVIOZnJzVG9wbGl2ZV'
    'R5cGUSJgoPZnJzX3RvcGxpdmVfcGljGBsgASgJUg1mcnNUb3BsaXZlUGljEioKEWZyc190b3Bs'
    'aXZlX2ZvcmNlGBwgASgFUg9mcnNUb3BsaXZlRm9yY2USGwoJbGl2ZV9mcm9tGB0gASgFUghsaX'
    'ZlRnJvbRIiCg10aGlyZF9yb29tX2lkGB8gASgJUgt0aGlyZFJvb21JZBIfCgtyb3V0ZXJfdHlw'
    'ZRggIAEoCVIKcm91dGVyVHlwZRImCg90aGlyZF9saXZlX3R5cGUYISABKAlSDXRoaXJkTGl2ZV'
    'R5cGUSJQoOZmlyc3RfaGVhZGxpbmUYIiABKAlSDWZpcnN0SGVhZGxpbmUSJwoPc2Vjb25kX2hl'
    'YWRsaW5lGCMgASgJUg5zZWNvbmRIZWFkbGluZRImCg9wYl9kaXNwbGF5X3R5cGUYJCABKA1SDX'
    'BiRGlzcGxheVR5cGUSIQoMcmVjb21fcmVhc29uGCUgASgJUgtyZWNvbVJlYXNvbhIqChFvcGVu'
    'X3JlY29tX3JlYXNvbhgmIAEoDVIPb3BlblJlY29tUmVhc29uEi4KE29wZW5fcmVjb21fbG9jYX'
    'Rpb24YJyABKA1SEW9wZW5SZWNvbUxvY2F0aW9uEiYKD29wZW5fcmVjb21fZmFucxgoIAEoDVIN'
    'b3BlblJlY29tRmFucxIuChNvcGVuX3JlY29tX2R1cmF0aW9uGCkgASgNUhFvcGVuUmVjb21EdX'
    'JhdGlvbhI1CgxkaXNsaWtlX2luZm8YKyADKAsyEi50aWViYS5EaXNsaWtlSW5mb1ILZGlzbGlr'
    'ZUluZm8SFwoHcm9vbV9pZBgsIAEoBFIGcm9vbUlkEh8KC3Jvb21fc3RhdHVzGC0gASgFUgpyb2'
    '9tU3RhdHVzEhsKCXJvb21fbmFtZRguIAEoCVIIcm9vbU5hbWUSLQoTZm9ydW1fdXNlcl9saXZl'
    'X21zZxgvIAEoCVIQZm9ydW1Vc2VyTGl2ZU1zZxIdCgpjb3Zlcl93aWRlGDAgASgJUgljb3Zlcl'
    'dpZGUSIwoGeXlfZXh0GDEgASgLMgwudGllYmEuWXlFeHRSBXl5RXh0');
