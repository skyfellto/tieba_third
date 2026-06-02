// This is a generated file - do not edit.
//
// Generated from ThreadInfo.proto.

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

@$core.Deprecated('Use threadInfoDescriptor instead')
const ThreadInfo$json = {
  '1': 'ThreadInfo',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    {'1': 'threadId', '3': 2, '4': 1, '5': 3, '10': 'threadId'},
    {'1': 'title', '3': 3, '4': 1, '5': 9, '10': 'title'},
    {'1': 'replyNum', '3': 4, '4': 1, '5': 5, '10': 'replyNum'},
    {'1': 'viewNum', '3': 5, '4': 1, '5': 5, '10': 'viewNum'},
    {'1': 'lastTime', '3': 6, '4': 1, '5': 9, '10': 'lastTime'},
    {'1': 'lastTimeInt', '3': 7, '4': 1, '5': 5, '10': 'lastTimeInt'},
    {'1': 'threadTypes', '3': 8, '4': 1, '5': 5, '10': 'threadTypes'},
    {'1': 'isTop', '3': 9, '4': 1, '5': 5, '10': 'isTop'},
    {'1': 'isGood', '3': 10, '4': 1, '5': 5, '10': 'isGood'},
    {'1': 'is_vote', '3': 11, '4': 1, '5': 5, '10': 'isVote'},
    {'1': 'is_bakan', '3': 12, '4': 1, '5': 5, '10': 'isBakan'},
    {'1': 'is_protal', '3': 13, '4': 1, '5': 5, '10': 'isProtal'},
    {'1': 'is_meizhi', '3': 14, '4': 1, '5': 5, '10': 'isMeizhi'},
    {'1': 'is_voice_thread', '3': 15, '4': 1, '5': 5, '10': 'isVoiceThread'},
    {'1': 'is_activity', '3': 16, '4': 1, '5': 5, '10': 'isActivity'},
    {'1': 'is_notice', '3': 17, '4': 1, '5': 5, '10': 'isNotice'},
    {
      '1': 'author',
      '3': 18,
      '4': 1,
      '5': 11,
      '6': '.tieba.User',
      '10': 'author'
    },
    {
      '1': 'lastReplyer',
      '3': 19,
      '4': 1,
      '5': 11,
      '6': '.tieba.User',
      '10': 'lastReplyer'
    },
    {'1': 'commentNum', '3': 20, '4': 1, '5': 5, '10': 'commentNum'},
    {
      '1': '_abstract',
      '3': 21,
      '4': 3,
      '5': 11,
      '6': '.tieba.Abstract',
      '10': 'Abstract'
    },
    {
      '1': 'media',
      '3': 22,
      '4': 3,
      '5': 11,
      '6': '.tieba.Media',
      '10': 'media'
    },
    {
      '1': 'voice_info',
      '3': 23,
      '4': 3,
      '5': 11,
      '6': '.tieba.Voice',
      '10': 'voiceInfo'
    },
    {'1': 'meizhi_pic', '3': 24, '4': 1, '5': 9, '10': 'meizhiPic'},
    {'1': 'thread_type', '3': 26, '4': 1, '5': 5, '10': 'threadType'},
    {'1': 'forumId', '3': 27, '4': 1, '5': 3, '10': 'forumId'},
    {'1': 'forumName', '3': 28, '4': 1, '5': 9, '10': 'forumName'},
    {'1': 'live_post_type', '3': 29, '4': 1, '5': 9, '10': 'livePostType'},
    {'1': 'is_livepost', '3': 30, '4': 1, '5': 5, '10': 'isLivepost'},
    {'1': 'show_commented', '3': 31, '4': 1, '5': 5, '10': 'showCommented'},
    {'1': 'click_url', '3': 32, '4': 1, '5': 9, '10': 'clickUrl'},
    {'1': 'video', '3': 33, '4': 1, '5': 9, '10': 'video'},
    {'1': 'video_swf', '3': 34, '4': 1, '5': 9, '10': 'videoSwf'},
    {'1': 'video_cover', '3': 35, '4': 1, '5': 9, '10': 'videoCover'},
    {'1': 'video_id', '3': 36, '4': 1, '5': 9, '10': 'videoId'},
    {'1': 'video_mobile_url', '3': 37, '4': 1, '5': 9, '10': 'videoMobileUrl'},
    {'1': 'isNoTitle', '3': 38, '4': 1, '5': 5, '10': 'isNoTitle'},
    {'1': 'is_bub', '3': 39, '4': 1, '5': 5, '10': 'isBub'},
    {'1': 'firstPostId', '3': 40, '4': 1, '5': 3, '10': 'firstPostId'},
    {'1': 'zan', '3': 41, '4': 1, '5': 11, '6': '.tieba.Zan', '10': 'zan'},
    {'1': 'is_global_top', '3': 42, '4': 1, '5': 5, '10': 'isGlobalTop'},
    {'1': 'is_pic', '3': 43, '4': 1, '5': 5, '10': 'isPic'},
    {
      '1': 'post_list',
      '3': 44,
      '4': 3,
      '5': 11,
      '6': '.tieba.PostList',
      '10': 'postList'
    },
    {'1': 'createTime', '3': 45, '4': 1, '5': 5, '10': 'createTime'},
    {'1': 'repost_num', '3': 46, '4': 1, '5': 5, '10': 'repostNum'},
    {
      '1': 'topic',
      '3': 47,
      '4': 1,
      '5': 11,
      '6': '.tieba.Topic',
      '10': 'topic'
    },
    {'1': 'has_commented', '3': 48, '4': 1, '5': 5, '10': 'hasCommented'},
    {'1': 'from', '3': 49, '4': 1, '5': 9, '10': 'from'},
    {'1': 'collectStatus', '3': 50, '4': 1, '5': 5, '10': 'collectStatus'},
    {'1': 'collectMarkPid', '3': 51, '4': 1, '5': 9, '10': 'collectMarkPid'},
    {'1': 'post_id', '3': 52, '4': 1, '5': 3, '10': 'postId'},
    {'1': 'time', '3': 53, '4': 1, '5': 5, '10': 'time'},
    {'1': 'isMemberTop', '3': 54, '4': 1, '5': 5, '10': 'isMemberTop'},
    {'1': 'authorId', '3': 56, '4': 1, '5': 3, '10': 'authorId'},
    {'1': 'is_ad', '3': 59, '4': 1, '5': 13, '10': 'isAd'},
    {'1': 'ecom', '3': 60, '4': 1, '5': 9, '10': 'ecom'},
    {'1': 'pids', '3': 61, '4': 1, '5': 9, '10': 'pids'},
    {'1': 'hot_weight', '3': 66, '4': 1, '5': 5, '10': 'hotWeight'},
    {'1': 'livecover_src', '3': 67, '4': 1, '5': 9, '10': 'livecoverSrc'},
    {'1': 'storecount', '3': 68, '4': 1, '5': 5, '10': 'storecount'},
    {'1': 'post_num', '3': 69, '4': 1, '5': 5, '10': 'postNum'},
    {
      '1': 'hotTWInfo',
      '3': 71,
      '4': 1,
      '5': 11,
      '6': '.tieba.HotTWThreadInfo',
      '10': 'hotTWInfo'
    },
    {
      '1': 'twzhibo_info',
      '3': 72,
      '4': 1,
      '5': 11,
      '6': '.tieba.ZhiBoInfoTW',
      '10': 'twzhiboInfo'
    },
    {'1': 'category_name', '3': 73, '4': 1, '5': 9, '10': 'categoryName'},
    {
      '1': 'poll_info',
      '3': 74,
      '4': 1,
      '5': 11,
      '6': '.tieba.PollInfo',
      '10': 'pollInfo'
    },
    {'1': 'is_novel', '3': 76, '4': 1, '5': 5, '10': 'isNovel'},
    {'1': 'is_novel_thank', '3': 77, '4': 1, '5': 5, '10': 'isNovelThank'},
    {'1': 'is_novel_reward', '3': 78, '4': 1, '5': 5, '10': 'isNovelReward'},
    {
      '1': 'videoInfo',
      '3': 79,
      '4': 1,
      '5': 11,
      '6': '.tieba.VideoInfo',
      '9': 0,
      '10': 'videoInfo',
      '17': true
    },
    {'1': 'push_end_time', '3': 80, '4': 1, '5': 5, '10': 'pushEndTime'},
    {'1': 'is_copythread', '3': 81, '4': 1, '5': 13, '10': 'isCopythread'},
    {'1': 'operator_flag', '3': 82, '4': 1, '5': 13, '10': 'operatorFlag'},
    {'1': 'pic_num', '3': 84, '4': 1, '5': 13, '10': 'picNum'},
    {
      '1': 'is_godthread_recommend',
      '3': 85,
      '4': 1,
      '5': 5,
      '10': 'isGodthreadRecommend'
    },
    {
      '1': 'video_ad_info',
      '3': 110,
      '4': 1,
      '5': 11,
      '6': '.tieba.AdInfo',
      '10': 'videoAdInfo'
    },
    {
      '1': 'richTitle',
      '3': 111,
      '4': 3,
      '5': 11,
      '6': '.tieba.PbContent',
      '10': 'richTitle'
    },
    {
      '1': 'richAbstract',
      '3': 112,
      '4': 3,
      '5': 11,
      '6': '.tieba.PbContent',
      '10': 'richAbstract'
    },
    {
      '1': 'ala_info',
      '3': 113,
      '4': 1,
      '5': 11,
      '6': '.tieba.AlaLiveInfo',
      '9': 1,
      '10': 'alaInfo',
      '17': true
    },
    {
      '1': 'dislikeInfo',
      '3': 120,
      '4': 3,
      '5': 11,
      '6': '.tieba.DislikeInfo',
      '10': 'dislikeInfo'
    },
    {'1': 'agreeNum', '3': 124, '4': 1, '5': 5, '10': 'agreeNum'},
    {
      '1': 'agree',
      '3': 126,
      '4': 1,
      '5': 11,
      '6': '.tieba.Agree',
      '10': 'agree'
    },
    {'1': 'shareNum', '3': 135, '4': 1, '5': 3, '10': 'shareNum'},
    {
      '1': 'origin_thread_info',
      '3': 141,
      '4': 1,
      '5': 11,
      '6': '.tieba.OriginThreadInfo',
      '10': 'originThreadInfo'
    },
    {
      '1': 'firstPostContent',
      '3': 142,
      '4': 3,
      '5': 11,
      '6': '.tieba.PbContent',
      '10': 'firstPostContent'
    },
    {'1': 'is_share_thread', '3': 143, '4': 1, '5': 5, '10': 'isShareThread'},
    {'1': 'isTopic', '3': 148, '4': 1, '5': 5, '10': 'isTopic'},
    {'1': 'topicUserName', '3': 149, '4': 1, '5': 9, '10': 'topicUserName'},
    {'1': 'topicH5Url', '3': 150, '4': 1, '5': 9, '10': 'topicH5Url'},
    {
      '1': 'forumInfo',
      '3': 155,
      '4': 1,
      '5': 11,
      '6': '.tieba.SimpleForum',
      '10': 'forumInfo'
    },
    {'1': 'tShareImg', '3': 159, '4': 1, '5': 9, '10': 'tShareImg'},
    {'1': 'nid', '3': 164, '4': 1, '5': 9, '10': 'nid'},
    {'1': 'tabId', '3': 175, '4': 1, '5': 5, '10': 'tabId'},
    {'1': 'tabName', '3': 176, '4': 1, '5': 9, '10': 'tabName'},
    {'1': 'isDeleted', '3': 181, '4': 1, '5': 5, '10': 'isDeleted'},
    {'1': 'hotNum', '3': 182, '4': 1, '5': 5, '10': 'hotNum'},
    {
      '1': 'voice_room',
      '3': 199,
      '4': 1,
      '5': 11,
      '6': '.tieba.VoiceRoom',
      '10': 'voiceRoom'
    },
    {
      '1': 'tiebaplus_ad',
      '3': 201,
      '4': 1,
      '5': 11,
      '6': '.tieba.TiebaPlusAd',
      '10': 'tiebaplusAd'
    },
    {'1': 'poll_style', '3': 256, '4': 1, '5': 5, '10': 'pollStyle'},
  ],
  '8': [
    {'1': '_videoInfo'},
    {'1': '_ala_info'},
  ],
};

/// Descriptor for `ThreadInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List threadInfoDescriptor = $convert.base64Decode(
    'CgpUaHJlYWRJbmZvEg4KAmlkGAEgASgDUgJpZBIaCgh0aHJlYWRJZBgCIAEoA1IIdGhyZWFkSW'
    'QSFAoFdGl0bGUYAyABKAlSBXRpdGxlEhoKCHJlcGx5TnVtGAQgASgFUghyZXBseU51bRIYCgd2'
    'aWV3TnVtGAUgASgFUgd2aWV3TnVtEhoKCGxhc3RUaW1lGAYgASgJUghsYXN0VGltZRIgCgtsYX'
    'N0VGltZUludBgHIAEoBVILbGFzdFRpbWVJbnQSIAoLdGhyZWFkVHlwZXMYCCABKAVSC3RocmVh'
    'ZFR5cGVzEhQKBWlzVG9wGAkgASgFUgVpc1RvcBIWCgZpc0dvb2QYCiABKAVSBmlzR29vZBIXCg'
    'dpc192b3RlGAsgASgFUgZpc1ZvdGUSGQoIaXNfYmFrYW4YDCABKAVSB2lzQmFrYW4SGwoJaXNf'
    'cHJvdGFsGA0gASgFUghpc1Byb3RhbBIbCglpc19tZWl6aGkYDiABKAVSCGlzTWVpemhpEiYKD2'
    'lzX3ZvaWNlX3RocmVhZBgPIAEoBVINaXNWb2ljZVRocmVhZBIfCgtpc19hY3Rpdml0eRgQIAEo'
    'BVIKaXNBY3Rpdml0eRIbCglpc19ub3RpY2UYESABKAVSCGlzTm90aWNlEiMKBmF1dGhvchgSIA'
    'EoCzILLnRpZWJhLlVzZXJSBmF1dGhvchItCgtsYXN0UmVwbHllchgTIAEoCzILLnRpZWJhLlVz'
    'ZXJSC2xhc3RSZXBseWVyEh4KCmNvbW1lbnROdW0YFCABKAVSCmNvbW1lbnROdW0SLAoJX2Fic3'
    'RyYWN0GBUgAygLMg8udGllYmEuQWJzdHJhY3RSCEFic3RyYWN0EiIKBW1lZGlhGBYgAygLMgwu'
    'dGllYmEuTWVkaWFSBW1lZGlhEisKCnZvaWNlX2luZm8YFyADKAsyDC50aWViYS5Wb2ljZVIJdm'
    '9pY2VJbmZvEh0KCm1laXpoaV9waWMYGCABKAlSCW1laXpoaVBpYxIfCgt0aHJlYWRfdHlwZRga'
    'IAEoBVIKdGhyZWFkVHlwZRIYCgdmb3J1bUlkGBsgASgDUgdmb3J1bUlkEhwKCWZvcnVtTmFtZR'
    'gcIAEoCVIJZm9ydW1OYW1lEiQKDmxpdmVfcG9zdF90eXBlGB0gASgJUgxsaXZlUG9zdFR5cGUS'
    'HwoLaXNfbGl2ZXBvc3QYHiABKAVSCmlzTGl2ZXBvc3QSJQoOc2hvd19jb21tZW50ZWQYHyABKA'
    'VSDXNob3dDb21tZW50ZWQSGwoJY2xpY2tfdXJsGCAgASgJUghjbGlja1VybBIUCgV2aWRlbxgh'
    'IAEoCVIFdmlkZW8SGwoJdmlkZW9fc3dmGCIgASgJUgh2aWRlb1N3ZhIfCgt2aWRlb19jb3Zlch'
    'gjIAEoCVIKdmlkZW9Db3ZlchIZCgh2aWRlb19pZBgkIAEoCVIHdmlkZW9JZBIoChB2aWRlb19t'
    'b2JpbGVfdXJsGCUgASgJUg52aWRlb01vYmlsZVVybBIcCglpc05vVGl0bGUYJiABKAVSCWlzTm'
    '9UaXRsZRIVCgZpc19idWIYJyABKAVSBWlzQnViEiAKC2ZpcnN0UG9zdElkGCggASgDUgtmaXJz'
    'dFBvc3RJZBIcCgN6YW4YKSABKAsyCi50aWViYS5aYW5SA3phbhIiCg1pc19nbG9iYWxfdG9wGC'
    'ogASgFUgtpc0dsb2JhbFRvcBIVCgZpc19waWMYKyABKAVSBWlzUGljEiwKCXBvc3RfbGlzdBgs'
    'IAMoCzIPLnRpZWJhLlBvc3RMaXN0Ughwb3N0TGlzdBIeCgpjcmVhdGVUaW1lGC0gASgFUgpjcm'
    'VhdGVUaW1lEh0KCnJlcG9zdF9udW0YLiABKAVSCXJlcG9zdE51bRIiCgV0b3BpYxgvIAEoCzIM'
    'LnRpZWJhLlRvcGljUgV0b3BpYxIjCg1oYXNfY29tbWVudGVkGDAgASgFUgxoYXNDb21tZW50ZW'
    'QSEgoEZnJvbRgxIAEoCVIEZnJvbRIkCg1jb2xsZWN0U3RhdHVzGDIgASgFUg1jb2xsZWN0U3Rh'
    'dHVzEiYKDmNvbGxlY3RNYXJrUGlkGDMgASgJUg5jb2xsZWN0TWFya1BpZBIXCgdwb3N0X2lkGD'
    'QgASgDUgZwb3N0SWQSEgoEdGltZRg1IAEoBVIEdGltZRIgCgtpc01lbWJlclRvcBg2IAEoBVIL'
    'aXNNZW1iZXJUb3ASGgoIYXV0aG9ySWQYOCABKANSCGF1dGhvcklkEhMKBWlzX2FkGDsgASgNUg'
    'Rpc0FkEhIKBGVjb20YPCABKAlSBGVjb20SEgoEcGlkcxg9IAEoCVIEcGlkcxIdCgpob3Rfd2Vp'
    'Z2h0GEIgASgFUglob3RXZWlnaHQSIwoNbGl2ZWNvdmVyX3NyYxhDIAEoCVIMbGl2ZWNvdmVyU3'
    'JjEh4KCnN0b3JlY291bnQYRCABKAVSCnN0b3JlY291bnQSGQoIcG9zdF9udW0YRSABKAVSB3Bv'
    'c3ROdW0SNAoJaG90VFdJbmZvGEcgASgLMhYudGllYmEuSG90VFdUaHJlYWRJbmZvUglob3RUV0'
    'luZm8SNQoMdHd6aGlib19pbmZvGEggASgLMhIudGllYmEuWmhpQm9JbmZvVFdSC3R3emhpYm9J'
    'bmZvEiMKDWNhdGVnb3J5X25hbWUYSSABKAlSDGNhdGVnb3J5TmFtZRIsCglwb2xsX2luZm8YSi'
    'ABKAsyDy50aWViYS5Qb2xsSW5mb1IIcG9sbEluZm8SGQoIaXNfbm92ZWwYTCABKAVSB2lzTm92'
    'ZWwSJAoOaXNfbm92ZWxfdGhhbmsYTSABKAVSDGlzTm92ZWxUaGFuaxImCg9pc19ub3ZlbF9yZX'
    'dhcmQYTiABKAVSDWlzTm92ZWxSZXdhcmQSMwoJdmlkZW9JbmZvGE8gASgLMhAudGllYmEuVmlk'
    'ZW9JbmZvSABSCXZpZGVvSW5mb4gBARIiCg1wdXNoX2VuZF90aW1lGFAgASgFUgtwdXNoRW5kVG'
    'ltZRIjCg1pc19jb3B5dGhyZWFkGFEgASgNUgxpc0NvcHl0aHJlYWQSIwoNb3BlcmF0b3JfZmxh'
    'ZxhSIAEoDVIMb3BlcmF0b3JGbGFnEhcKB3BpY19udW0YVCABKA1SBnBpY051bRI0ChZpc19nb2'
    'R0aHJlYWRfcmVjb21tZW5kGFUgASgFUhRpc0dvZHRocmVhZFJlY29tbWVuZBIxCg12aWRlb19h'
    'ZF9pbmZvGG4gASgLMg0udGllYmEuQWRJbmZvUgt2aWRlb0FkSW5mbxIuCglyaWNoVGl0bGUYby'
    'ADKAsyEC50aWViYS5QYkNvbnRlbnRSCXJpY2hUaXRsZRI0CgxyaWNoQWJzdHJhY3QYcCADKAsy'
    'EC50aWViYS5QYkNvbnRlbnRSDHJpY2hBYnN0cmFjdBIyCghhbGFfaW5mbxhxIAEoCzISLnRpZW'
    'JhLkFsYUxpdmVJbmZvSAFSB2FsYUluZm+IAQESNAoLZGlzbGlrZUluZm8YeCADKAsyEi50aWVi'
    'YS5EaXNsaWtlSW5mb1ILZGlzbGlrZUluZm8SGgoIYWdyZWVOdW0YfCABKAVSCGFncmVlTnVtEi'
    'IKBWFncmVlGH4gASgLMgwudGllYmEuQWdyZWVSBWFncmVlEhsKCHNoYXJlTnVtGIcBIAEoA1II'
    'c2hhcmVOdW0SRgoSb3JpZ2luX3RocmVhZF9pbmZvGI0BIAEoCzIXLnRpZWJhLk9yaWdpblRocm'
    'VhZEluZm9SEG9yaWdpblRocmVhZEluZm8SPQoQZmlyc3RQb3N0Q29udGVudBiOASADKAsyEC50'
    'aWViYS5QYkNvbnRlbnRSEGZpcnN0UG9zdENvbnRlbnQSJwoPaXNfc2hhcmVfdGhyZWFkGI8BIA'
    'EoBVINaXNTaGFyZVRocmVhZBIZCgdpc1RvcGljGJQBIAEoBVIHaXNUb3BpYxIlCg10b3BpY1Vz'
    'ZXJOYW1lGJUBIAEoCVINdG9waWNVc2VyTmFtZRIfCgp0b3BpY0g1VXJsGJYBIAEoCVIKdG9waW'
    'NINVVybBIxCglmb3J1bUluZm8YmwEgASgLMhIudGllYmEuU2ltcGxlRm9ydW1SCWZvcnVtSW5m'
    'bxIdCgl0U2hhcmVJbWcYnwEgASgJUgl0U2hhcmVJbWcSEQoDbmlkGKQBIAEoCVIDbmlkEhUKBX'
    'RhYklkGK8BIAEoBVIFdGFiSWQSGQoHdGFiTmFtZRiwASABKAlSB3RhYk5hbWUSHQoJaXNEZWxl'
    'dGVkGLUBIAEoBVIJaXNEZWxldGVkEhcKBmhvdE51bRi2ASABKAVSBmhvdE51bRIwCgp2b2ljZV'
    '9yb29tGMcBIAEoCzIQLnRpZWJhLlZvaWNlUm9vbVIJdm9pY2VSb29tEjYKDHRpZWJhcGx1c19h'
    'ZBjJASABKAsyEi50aWViYS5UaWViYVBsdXNBZFILdGllYmFwbHVzQWQSHgoKcG9sbF9zdHlsZR'
    'iAAiABKAVSCXBvbGxTdHlsZUIMCgpfdmlkZW9JbmZvQgsKCV9hbGFfaW5mbw==');
