// This is a generated file - do not edit.
//
// Generated from AddPost/AddPostRequestData.proto.

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

@$core.Deprecated('Use addPostRequestDataDescriptor instead')
const AddPostRequestData$json = {
  '1': 'AddPostRequestData',
  '2': [
    {
      '1': 'common',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.tieba.CommonRequest',
      '10': 'common'
    },
    {'1': 'authsid', '3': 2, '4': 1, '5': 9, '10': 'authsid'},
    {'1': 'sig', '3': 3, '4': 1, '5': 9, '10': 'sig'},
    {'1': 'tbs', '3': 4, '4': 1, '5': 9, '10': 'tbs'},
    {'1': 'video_other', '3': 5, '4': 1, '5': 9, '10': 'videoOther'},
    {'1': 'anonymous', '3': 6, '4': 1, '5': 9, '10': 'anonymous'},
    {'1': 'can_no_forum', '3': 7, '4': 1, '5': 9, '10': 'canNoForum'},
    {'1': 'is_feedback', '3': 8, '4': 1, '5': 9, '10': 'isFeedback'},
    {'1': 'takephoto_num', '3': 9, '4': 1, '5': 9, '10': 'takephotoNum'},
    {'1': 'entrance_type', '3': 10, '4': 1, '5': 9, '10': 'entranceType'},
    {'1': 'voice_md5', '3': 11, '4': 1, '5': 9, '10': 'voiceMd5'},
    {'1': 'during_time', '3': 12, '4': 1, '5': 9, '10': 'duringTime'},
    {'1': 'vcode', '3': 13, '4': 1, '5': 9, '10': 'vcode'},
    {'1': 'vcode_md5', '3': 14, '4': 1, '5': 9, '10': 'vcodeMd5'},
    {'1': 'vcode_type', '3': 15, '4': 1, '5': 9, '10': 'vcodeType'},
    {'1': 'vcode_tag', '3': 16, '4': 1, '5': 9, '10': 'vcodeTag'},
    {'1': 'topic_id', '3': 17, '4': 1, '5': 9, '10': 'topicId'},
    {'1': 'new_vcode', '3': 18, '4': 1, '5': 9, '10': 'newVcode'},
    {'1': 'content', '3': 19, '4': 1, '5': 9, '10': 'content'},
    {
      '1': 'reply_uid',
      '3': 20,
      '4': 1,
      '5': 9,
      '9': 0,
      '10': 'replyUid',
      '17': true
    },
    {'1': 'meme_text', '3': 21, '4': 1, '5': 9, '10': 'memeText'},
    {'1': 'meme_cont_sign', '3': 22, '4': 1, '5': 9, '10': 'memeContSign'},
    {'1': 'item_id', '3': 23, '4': 1, '5': 9, '10': 'itemId'},
    {'1': 'comment_head', '3': 24, '4': 1, '5': 9, '10': 'commentHead'},
    {'1': 'works_tag', '3': 25, '4': 1, '5': 9, '10': 'worksTag'},
    {'1': 'fid', '3': 26, '4': 1, '5': 9, '10': 'fid'},
    {'1': 'transform_forums', '3': 27, '4': 1, '5': 9, '10': 'transformForums'},
    {'1': 'v_fid', '3': 28, '4': 1, '5': 9, '9': 1, '10': 'vFid', '17': true},
    {
      '1': 'v_fname',
      '3': 29,
      '4': 1,
      '5': 9,
      '9': 2,
      '10': 'vFname',
      '17': true
    },
    {'1': 'kw', '3': 30, '4': 1, '5': 9, '10': 'kw'},
    {
      '1': 'is_barrage',
      '3': 31,
      '4': 1,
      '5': 9,
      '9': 3,
      '10': 'isBarrage',
      '17': true
    },
    {
      '1': 'barrage_time',
      '3': 32,
      '4': 1,
      '5': 9,
      '9': 4,
      '10': 'barrageTime',
      '17': true
    },
    {'1': 'st_param', '3': 33, '4': 1, '5': 9, '10': 'stParam'},
    {'1': 'ptype', '3': 34, '4': 1, '5': 9, '10': 'ptype'},
    {'1': 'ori_ugc_nid', '3': 35, '4': 1, '5': 9, '10': 'oriUgcNid'},
    {'1': 'ori_ugc_vid', '3': 36, '4': 1, '5': 9, '10': 'oriUgcVid'},
    {'1': 'ori_ugc_tid', '3': 37, '4': 1, '5': 9, '10': 'oriUgcTid'},
    {'1': 'ori_ugc_type', '3': 38, '4': 1, '5': 9, '10': 'oriUgcType'},
    {'1': 'is_location', '3': 39, '4': 1, '5': 9, '10': 'isLocation'},
    {'1': 'lat', '3': 40, '4': 1, '5': 9, '10': 'lat'},
    {'1': 'lng', '3': 41, '4': 1, '5': 9, '10': 'lng'},
    {'1': 'name', '3': 42, '4': 1, '5': 9, '10': 'name'},
    {'1': 'sn', '3': 43, '4': 1, '5': 9, '10': 'sn'},
    {'1': 'from_fourm_id', '3': 44, '4': 1, '5': 9, '10': 'fromFourmId'},
    {'1': 'tid', '3': 45, '4': 1, '5': 9, '10': 'tid'},
    {
      '1': 'quote_id',
      '3': 46,
      '4': 1,
      '5': 9,
      '9': 5,
      '10': 'quoteId',
      '17': true
    },
    {
      '1': 'is_twzhibo_thread',
      '3': 47,
      '4': 1,
      '5': 9,
      '9': 6,
      '10': 'isTwzhiboThread',
      '17': true
    },
    {
      '1': 'floor_num',
      '3': 48,
      '4': 1,
      '5': 9,
      '9': 7,
      '10': 'floorNum',
      '17': true
    },
    {
      '1': 'repostid',
      '3': 49,
      '4': 1,
      '5': 9,
      '9': 8,
      '10': 'repostid',
      '17': true
    },
    {
      '1': 'sub_post_id',
      '3': 50,
      '4': 1,
      '5': 9,
      '9': 9,
      '10': 'subPostId',
      '17': true
    },
    {'1': 'is_ad', '3': 51, '4': 1, '5': 9, '10': 'isAd'},
    {
      '1': 'is_addition',
      '3': 52,
      '4': 1,
      '5': 9,
      '9': 10,
      '10': 'isAddition',
      '17': true
    },
    {
      '1': 'is_giftpost',
      '3': 53,
      '4': 1,
      '5': 9,
      '9': 11,
      '10': 'isGiftpost',
      '17': true
    },
    {'1': 'st_type', '3': 54, '4': 1, '5': 9, '10': 'stType'},
    {
      '1': 'post_from',
      '3': 55,
      '4': 1,
      '5': 9,
      '9': 12,
      '10': 'postFrom',
      '17': true
    },
    {'1': 'real_lat', '3': 56, '4': 1, '5': 9, '10': 'realLat'},
    {'1': 'real_lng', '3': 57, '4': 1, '5': 9, '10': 'realLng'},
    {'1': 'name_show', '3': 58, '4': 1, '5': 9, '10': 'nameShow'},
    {'1': 'is_works', '3': 59, '4': 1, '5': 9, '10': 'isWorks'},
    {'1': 'is_pictxt', '3': 60, '4': 1, '5': 9, '10': 'isPictxt'},
    {'1': 'is_story', '3': 61, '4': 1, '5': 9, '10': 'isStory'},
    {'1': 'jid', '3': 62, '4': 1, '5': 9, '10': 'jid'},
    {'1': 'jfrom', '3': 63, '4': 1, '5': 9, '10': 'jfrom'},
    {
      '1': 'show_custom_figure',
      '3': 64,
      '4': 1,
      '5': 5,
      '9': 13,
      '10': 'showCustomFigure',
      '17': true
    },
    {'1': 'from_category_id', '3': 65, '4': 1, '5': 9, '10': 'fromCategoryId'},
    {'1': 'to_category_id', '3': 66, '4': 1, '5': 9, '10': 'toCategoryId'},
    {
      '1': 'is_show_bless',
      '3': 67,
      '4': 1,
      '5': 5,
      '9': 14,
      '10': 'isShowBless',
      '17': true
    },
  ],
  '8': [
    {'1': '_reply_uid'},
    {'1': '_v_fid'},
    {'1': '_v_fname'},
    {'1': '_is_barrage'},
    {'1': '_barrage_time'},
    {'1': '_quote_id'},
    {'1': '_is_twzhibo_thread'},
    {'1': '_floor_num'},
    {'1': '_repostid'},
    {'1': '_sub_post_id'},
    {'1': '_is_addition'},
    {'1': '_is_giftpost'},
    {'1': '_post_from'},
    {'1': '_show_custom_figure'},
    {'1': '_is_show_bless'},
  ],
};

/// Descriptor for `AddPostRequestData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addPostRequestDataDescriptor = $convert.base64Decode(
    'ChJBZGRQb3N0UmVxdWVzdERhdGESLAoGY29tbW9uGAEgASgLMhQudGllYmEuQ29tbW9uUmVxdW'
    'VzdFIGY29tbW9uEhgKB2F1dGhzaWQYAiABKAlSB2F1dGhzaWQSEAoDc2lnGAMgASgJUgNzaWcS'
    'EAoDdGJzGAQgASgJUgN0YnMSHwoLdmlkZW9fb3RoZXIYBSABKAlSCnZpZGVvT3RoZXISHAoJYW'
    '5vbnltb3VzGAYgASgJUglhbm9ueW1vdXMSIAoMY2FuX25vX2ZvcnVtGAcgASgJUgpjYW5Ob0Zv'
    'cnVtEh8KC2lzX2ZlZWRiYWNrGAggASgJUgppc0ZlZWRiYWNrEiMKDXRha2VwaG90b19udW0YCS'
    'ABKAlSDHRha2VwaG90b051bRIjCg1lbnRyYW5jZV90eXBlGAogASgJUgxlbnRyYW5jZVR5cGUS'
    'GwoJdm9pY2VfbWQ1GAsgASgJUgh2b2ljZU1kNRIfCgtkdXJpbmdfdGltZRgMIAEoCVIKZHVyaW'
    '5nVGltZRIUCgV2Y29kZRgNIAEoCVIFdmNvZGUSGwoJdmNvZGVfbWQ1GA4gASgJUgh2Y29kZU1k'
    'NRIdCgp2Y29kZV90eXBlGA8gASgJUgl2Y29kZVR5cGUSGwoJdmNvZGVfdGFnGBAgASgJUgh2Y2'
    '9kZVRhZxIZCgh0b3BpY19pZBgRIAEoCVIHdG9waWNJZBIbCgluZXdfdmNvZGUYEiABKAlSCG5l'
    'd1Zjb2RlEhgKB2NvbnRlbnQYEyABKAlSB2NvbnRlbnQSIAoJcmVwbHlfdWlkGBQgASgJSABSCH'
    'JlcGx5VWlkiAEBEhsKCW1lbWVfdGV4dBgVIAEoCVIIbWVtZVRleHQSJAoObWVtZV9jb250X3Np'
    'Z24YFiABKAlSDG1lbWVDb250U2lnbhIXCgdpdGVtX2lkGBcgASgJUgZpdGVtSWQSIQoMY29tbW'
    'VudF9oZWFkGBggASgJUgtjb21tZW50SGVhZBIbCgl3b3Jrc190YWcYGSABKAlSCHdvcmtzVGFn'
    'EhAKA2ZpZBgaIAEoCVIDZmlkEikKEHRyYW5zZm9ybV9mb3J1bXMYGyABKAlSD3RyYW5zZm9ybU'
    'ZvcnVtcxIYCgV2X2ZpZBgcIAEoCUgBUgR2RmlkiAEBEhwKB3ZfZm5hbWUYHSABKAlIAlIGdkZu'
    'YW1liAEBEg4KAmt3GB4gASgJUgJrdxIiCgppc19iYXJyYWdlGB8gASgJSANSCWlzQmFycmFnZY'
    'gBARImCgxiYXJyYWdlX3RpbWUYICABKAlIBFILYmFycmFnZVRpbWWIAQESGQoIc3RfcGFyYW0Y'
    'ISABKAlSB3N0UGFyYW0SFAoFcHR5cGUYIiABKAlSBXB0eXBlEh4KC29yaV91Z2NfbmlkGCMgAS'
    'gJUglvcmlVZ2NOaWQSHgoLb3JpX3VnY192aWQYJCABKAlSCW9yaVVnY1ZpZBIeCgtvcmlfdWdj'
    'X3RpZBglIAEoCVIJb3JpVWdjVGlkEiAKDG9yaV91Z2NfdHlwZRgmIAEoCVIKb3JpVWdjVHlwZR'
    'IfCgtpc19sb2NhdGlvbhgnIAEoCVIKaXNMb2NhdGlvbhIQCgNsYXQYKCABKAlSA2xhdBIQCgNs'
    'bmcYKSABKAlSA2xuZxISCgRuYW1lGCogASgJUgRuYW1lEg4KAnNuGCsgASgJUgJzbhIiCg1mcm'
    '9tX2ZvdXJtX2lkGCwgASgJUgtmcm9tRm91cm1JZBIQCgN0aWQYLSABKAlSA3RpZBIeCghxdW90'
    'ZV9pZBguIAEoCUgFUgdxdW90ZUlkiAEBEi8KEWlzX3R3emhpYm9fdGhyZWFkGC8gASgJSAZSD2'
    'lzVHd6aGlib1RocmVhZIgBARIgCglmbG9vcl9udW0YMCABKAlIB1IIZmxvb3JOdW2IAQESHwoI'
    'cmVwb3N0aWQYMSABKAlICFIIcmVwb3N0aWSIAQESIwoLc3ViX3Bvc3RfaWQYMiABKAlICVIJc3'
    'ViUG9zdElkiAEBEhMKBWlzX2FkGDMgASgJUgRpc0FkEiQKC2lzX2FkZGl0aW9uGDQgASgJSApS'
    'CmlzQWRkaXRpb26IAQESJAoLaXNfZ2lmdHBvc3QYNSABKAlIC1IKaXNHaWZ0cG9zdIgBARIXCg'
    'dzdF90eXBlGDYgASgJUgZzdFR5cGUSIAoJcG9zdF9mcm9tGDcgASgJSAxSCHBvc3RGcm9tiAEB'
    'EhkKCHJlYWxfbGF0GDggASgJUgdyZWFsTGF0EhkKCHJlYWxfbG5nGDkgASgJUgdyZWFsTG5nEh'
    'sKCW5hbWVfc2hvdxg6IAEoCVIIbmFtZVNob3cSGQoIaXNfd29ya3MYOyABKAlSB2lzV29ya3MS'
    'GwoJaXNfcGljdHh0GDwgASgJUghpc1BpY3R4dBIZCghpc19zdG9yeRg9IAEoCVIHaXNTdG9yeR'
    'IQCgNqaWQYPiABKAlSA2ppZBIUCgVqZnJvbRg/IAEoCVIFamZyb20SMQoSc2hvd19jdXN0b21f'
    'ZmlndXJlGEAgASgFSA1SEHNob3dDdXN0b21GaWd1cmWIAQESKAoQZnJvbV9jYXRlZ29yeV9pZB'
    'hBIAEoCVIOZnJvbUNhdGVnb3J5SWQSJAoOdG9fY2F0ZWdvcnlfaWQYQiABKAlSDHRvQ2F0ZWdv'
    'cnlJZBInCg1pc19zaG93X2JsZXNzGEMgASgFSA5SC2lzU2hvd0JsZXNziAEBQgwKCl9yZXBseV'
    '91aWRCCAoGX3ZfZmlkQgoKCF92X2ZuYW1lQg0KC19pc19iYXJyYWdlQg8KDV9iYXJyYWdlX3Rp'
    'bWVCCwoJX3F1b3RlX2lkQhQKEl9pc190d3poaWJvX3RocmVhZEIMCgpfZmxvb3JfbnVtQgsKCV'
    '9yZXBvc3RpZEIOCgxfc3ViX3Bvc3RfaWRCDgoMX2lzX2FkZGl0aW9uQg4KDF9pc19naWZ0cG9z'
    'dEIMCgpfcG9zdF9mcm9tQhUKE19zaG93X2N1c3RvbV9maWd1cmVCEAoOX2lzX3Nob3dfYmxlc3'
    'M=');
