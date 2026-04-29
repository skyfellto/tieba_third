// This is a generated file - do not edit.
//
// Generated from PbPage/PbPageResponseData.proto.

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

@$core.Deprecated('Use pbPageResponseDataDescriptor instead')
const PbPageResponseData$json = {
  '1': 'PbPageResponseData',
  '2': [
    {'1': 'user', '3': 1, '4': 1, '5': 11, '6': '.tieba.User', '10': 'user'},
    {
      '1': 'forum',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.tieba.SimpleForum',
      '10': 'forum'
    },
    {'1': 'page', '3': 3, '4': 1, '5': 11, '6': '.tieba.Page', '10': 'page'},
    {'1': 'anti', '3': 4, '4': 1, '5': 11, '6': '.tieba.Anti', '10': 'anti'},
    {
      '1': 'add_post',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.tieba.pbPage.AddPost',
      '10': 'addPost'
    },
    {
      '1': 'post_list',
      '3': 6,
      '4': 3,
      '5': 11,
      '6': '.tieba.Post',
      '10': 'postList'
    },
    {'1': 'has_floor', '3': 7, '4': 1, '5': 5, '10': 'hasFloor'},
    {
      '1': 'thread',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.tieba.ThreadInfo',
      '10': 'thread'
    },
    {
      '1': 'location',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.tieba.Lbs',
      '10': 'location'
    },
    {'1': 'is_new_url', '3': 10, '4': 1, '5': 5, '10': 'isNewUrl'},
    {
      '1': 'post_banner',
      '3': 11,
      '4': 3,
      '5': 11,
      '6': '.tieba.pbPage.PostBanner',
      '10': 'postBanner'
    },
    {
      '1': 'banner_list',
      '3': 12,
      '4': 1,
      '5': 11,
      '6': '.tieba.BannerList',
      '10': 'bannerList'
    },
    {
      '1': 'user_list',
      '3': 13,
      '4': 3,
      '5': 11,
      '6': '.tieba.User',
      '10': 'userList'
    },
    {'1': 'server_time', '3': 14, '4': 1, '5': 5, '10': 'serverTime'},
    {
      '1': 'news_info',
      '3': 15,
      '4': 1,
      '5': 11,
      '6': '.tieba.pbPage.NewsInfo',
      '10': 'newsInfo'
    },
    {
      '1': 'recommend_threads',
      '3': 16,
      '4': 3,
      '5': 11,
      '6': '.tieba.RecommendThread',
      '10': 'recommendThreads'
    },
    {
      '1': 'fine_banner',
      '3': 17,
      '4': 3,
      '5': 11,
      '6': '.tieba.FineBannerPb',
      '10': 'fineBanner'
    },
    {
      '1': 'twzhibo_anti',
      '3': 18,
      '4': 1,
      '5': 11,
      '6': '.tieba.TwZhiBoAnti',
      '10': 'twzhiboAnti'
    },
    {
      '1': 'sdk_topic_thread',
      '3': 19,
      '4': 1,
      '5': 11,
      '6': '.tieba.SdkTopicThread',
      '10': 'sdkTopicThread'
    },
    {
      '1': 'hot_post_list',
      '3': 20,
      '4': 1,
      '5': 11,
      '6': '.tieba.PbHotPost',
      '10': 'hotPostList'
    },
    {
      '1': 'graffiti_rank_list_info',
      '3': 21,
      '4': 1,
      '5': 11,
      '6': '.tieba.GraffitiRankListInfo',
      '10': 'graffitiRankListInfo'
    },
    {
      '1': 'appeal_info',
      '3': 22,
      '4': 1,
      '5': 11,
      '6': '.tieba.pbPage.AppealInfo',
      '10': 'appealInfo'
    },
    {
      '1': 'god_card',
      '3': 23,
      '4': 1,
      '5': 11,
      '6': '.tieba.pbPage.GodCard',
      '10': 'godCard'
    },
    {
      '1': 'play_rank_list',
      '3': 24,
      '4': 3,
      '5': 11,
      '6': '.tieba.PsRankListItem',
      '10': 'playRankList'
    },
    {
      '1': 'recommend_book',
      '3': 25,
      '4': 1,
      '5': 11,
      '6': '.tieba.pbPage.RecommendBook',
      '10': 'recommendBook'
    },
    {
      '1': 'ala_info',
      '3': 26,
      '4': 1,
      '5': 11,
      '6': '.tieba.AlaLiveInfo',
      '10': 'alaInfo'
    },
    {
      '1': 'forum_headline_img_info',
      '3': 27,
      '4': 1,
      '5': 11,
      '6': '.tieba.pbPage.ForumHeadlineImgInfo',
      '10': 'forumHeadlineImgInfo'
    },
    {'1': 'asp_shown_info', '3': 28, '4': 1, '5': 9, '10': 'aspShownInfo'},
    {
      '1': 'guess_like',
      '3': 29,
      '4': 1,
      '5': 11,
      '6': '.tieba.pbPage.GuessLikeStruct',
      '10': 'guessLike'
    },
    {
      '1': 'feed_thread_list',
      '3': 30,
      '4': 3,
      '5': 11,
      '6': '.tieba.ThreadInfo',
      '10': 'feedThreadList'
    },
    {
      '1': 'is_follow_current_channel',
      '3': 31,
      '4': 1,
      '5': 13,
      '10': 'isFollowCurrentChannel'
    },
    {'1': 'switch_read_open', '3': 32, '4': 1, '5': 5, '10': 'switchReadOpen'},
    {
      '1': 'feed_info',
      '3': 33,
      '4': 1,
      '5': 11,
      '6': '.tieba.pbPage.FeedExtInfo',
      '10': 'feedInfo'
    },
    {
      '1': 'top_agree_post_list',
      '3': 34,
      '4': 1,
      '5': 11,
      '6': '.tieba.PbTopAgreePost',
      '10': 'topAgreePostList'
    },
    {
      '1': 'repost_recommend_forum_list',
      '3': 35,
      '4': 3,
      '5': 11,
      '6': '.tieba.SimpleForum',
      '10': 'repostRecommendForumList'
    },
    {
      '1': 'from_forum_list',
      '3': 36,
      '4': 3,
      '5': 11,
      '6': '.tieba.SimpleForum',
      '10': 'fromForumList'
    },
    {'1': 'thread_freq_num', '3': 37, '4': 1, '5': 3, '10': 'threadFreqNum'},
    {
      '1': 'first_floor_post',
      '3': 38,
      '4': 1,
      '5': 11,
      '6': '.tieba.Post',
      '10': 'firstFloorPost'
    },
    {
      '1': 'display_forum',
      '3': 39,
      '4': 1,
      '5': 11,
      '6': '.tieba.SimpleForum',
      '10': 'displayForum'
    },
    {
      '1': 'new_agree_user',
      '3': 40,
      '4': 3,
      '5': 11,
      '6': '.tieba.SimpleUser',
      '10': 'newAgreeUser'
    },
    {
      '1': 'partial_visible_toast',
      '3': 41,
      '4': 1,
      '5': 9,
      '10': 'partialVisibleToast'
    },
    {
      '1': 'na_guide',
      '3': 42,
      '4': 1,
      '5': 11,
      '6': '.tieba.NaGuide',
      '10': 'naGuide'
    },
    {
      '1': 'follow_tip',
      '3': 43,
      '4': 1,
      '5': 11,
      '6': '.tieba.pbPage.PbFollowTip',
      '10': 'followTip'
    },
    {'1': 'fold_tip', '3': 44, '4': 1, '5': 9, '10': 'foldTip'},
    {'1': 'exp_news_today', '3': 45, '4': 1, '5': 5, '10': 'expNewsToday'},
    {'1': 'exp_guide_today', '3': 46, '4': 1, '5': 5, '10': 'expGuideToday'},
    {'1': 'multi_forum_text', '3': 47, '4': 1, '5': 9, '10': 'multiForumText'},
    {
      '1': 'thread_topic',
      '3': 48,
      '4': 3,
      '5': 11,
      '6': '.tieba.RecomTopicList',
      '10': 'threadTopic'
    },
    {
      '1': 'pb_sort_info',
      '3': 49,
      '4': 3,
      '5': 11,
      '6': '.tieba.pbPage.PbSortType',
      '10': 'pbSortInfo'
    },
    {'1': 'sort_type', '3': 50, '4': 1, '5': 5, '10': 'sortType'},
    {
      '1': 'manager_election',
      '3': 51,
      '4': 1,
      '5': 11,
      '6': '.tieba.ManagerElection',
      '10': 'managerElection'
    },
    {
      '1': 'bjh_recommend',
      '3': 52,
      '4': 3,
      '5': 11,
      '6': '.tieba.ThreadInfo',
      '10': 'bjhRecommend'
    },
    {
      '1': 'business_promot_info',
      '3': 53,
      '4': 1,
      '5': 11,
      '6': '.tieba.pbPage.BusinessPromotInfo',
      '10': 'businessPromotInfo'
    },
    {
      '1': 'promotion',
      '3': 54,
      '4': 1,
      '5': 11,
      '6': '.tieba.Promotion',
      '10': 'promotion'
    },
    {
      '1': 'recom_ala_info',
      '3': 55,
      '4': 1,
      '5': 11,
      '6': '.tieba.AlaLiveInfo',
      '10': 'recomAlaInfo'
    },
    {'1': 'jumptotab1', '3': 56, '4': 1, '5': 5, '10': 'jumptotab1'},
    {'1': 'jumptotab2', '3': 57, '4': 1, '5': 9, '10': 'jumptotab2'},
    {
      '1': 'business_account_info',
      '3': 58,
      '4': 1,
      '5': 11,
      '6': '.tieba.BusinessAccountInfo',
      '10': 'businessAccountInfo'
    },
    {
      '1': 'recom_thread_info',
      '3': 59,
      '4': 3,
      '5': 11,
      '6': '.tieba.ThreadInfo',
      '10': 'recomThreadInfo'
    },
    {
      '1': 'forum_rule',
      '3': 60,
      '4': 1,
      '5': 11,
      '6': '.tieba.ForumRuleStatus',
      '10': 'forumRule'
    },
    {'1': 'show_adsense', '3': 61, '4': 1, '5': 5, '10': 'showAdsense'},
    {'1': 'is_black_white', '3': 62, '4': 1, '5': 5, '10': 'isBlackWhite'},
    {
      '1': 'is_official_forum',
      '3': 63,
      '4': 1,
      '5': 5,
      '10': 'isOfficialForum'
    },
    {
      '1': 'floating_icon',
      '3': 64,
      '4': 1,
      '5': 11,
      '6': '.tieba.pbPage.FloatingIcon',
      '10': 'floatingIcon'
    },
    {'1': 'is_purchase', '3': 65, '4': 1, '5': 5, '10': 'isPurchase'},
    {'1': 'pb_notice_type', '3': 66, '4': 1, '5': 5, '10': 'pbNoticeType'},
    {'1': 'pb_notice', '3': 67, '4': 1, '5': 9, '10': 'pbNotice'},
    {'1': 'has_fold_comment', '3': 68, '4': 1, '5': 5, '10': 'hasFoldComment'},
    {'1': 'fold_comment_num', '3': 70, '4': 1, '5': 3, '10': 'foldCommentNum'},
  ],
};

/// Descriptor for `PbPageResponseData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pbPageResponseDataDescriptor = $convert.base64Decode(
    'ChJQYlBhZ2VSZXNwb25zZURhdGESHwoEdXNlchgBIAEoCzILLnRpZWJhLlVzZXJSBHVzZXISKA'
    'oFZm9ydW0YAiABKAsyEi50aWViYS5TaW1wbGVGb3J1bVIFZm9ydW0SHwoEcGFnZRgDIAEoCzIL'
    'LnRpZWJhLlBhZ2VSBHBhZ2USHwoEYW50aRgEIAEoCzILLnRpZWJhLkFudGlSBGFudGkSMAoIYW'
    'RkX3Bvc3QYBSABKAsyFS50aWViYS5wYlBhZ2UuQWRkUG9zdFIHYWRkUG9zdBIoCglwb3N0X2xp'
    'c3QYBiADKAsyCy50aWViYS5Qb3N0Ughwb3N0TGlzdBIbCgloYXNfZmxvb3IYByABKAVSCGhhc0'
    'Zsb29yEikKBnRocmVhZBgIIAEoCzIRLnRpZWJhLlRocmVhZEluZm9SBnRocmVhZBImCghsb2Nh'
    'dGlvbhgJIAEoCzIKLnRpZWJhLkxic1IIbG9jYXRpb24SHAoKaXNfbmV3X3VybBgKIAEoBVIIaX'
    'NOZXdVcmwSOQoLcG9zdF9iYW5uZXIYCyADKAsyGC50aWViYS5wYlBhZ2UuUG9zdEJhbm5lclIK'
    'cG9zdEJhbm5lchIyCgtiYW5uZXJfbGlzdBgMIAEoCzIRLnRpZWJhLkJhbm5lckxpc3RSCmJhbm'
    '5lckxpc3QSKAoJdXNlcl9saXN0GA0gAygLMgsudGllYmEuVXNlclIIdXNlckxpc3QSHwoLc2Vy'
    'dmVyX3RpbWUYDiABKAVSCnNlcnZlclRpbWUSMwoJbmV3c19pbmZvGA8gASgLMhYudGllYmEucG'
    'JQYWdlLk5ld3NJbmZvUghuZXdzSW5mbxJDChFyZWNvbW1lbmRfdGhyZWFkcxgQIAMoCzIWLnRp'
    'ZWJhLlJlY29tbWVuZFRocmVhZFIQcmVjb21tZW5kVGhyZWFkcxI0CgtmaW5lX2Jhbm5lchgRIA'
    'MoCzITLnRpZWJhLkZpbmVCYW5uZXJQYlIKZmluZUJhbm5lchI1Cgx0d3poaWJvX2FudGkYEiAB'
    'KAsyEi50aWViYS5Ud1poaUJvQW50aVILdHd6aGlib0FudGkSPwoQc2RrX3RvcGljX3RocmVhZB'
    'gTIAEoCzIVLnRpZWJhLlNka1RvcGljVGhyZWFkUg5zZGtUb3BpY1RocmVhZBI0Cg1ob3RfcG9z'
    'dF9saXN0GBQgASgLMhAudGllYmEuUGJIb3RQb3N0Ugtob3RQb3N0TGlzdBJSChdncmFmZml0aV'
    '9yYW5rX2xpc3RfaW5mbxgVIAEoCzIbLnRpZWJhLkdyYWZmaXRpUmFua0xpc3RJbmZvUhRncmFm'
    'Zml0aVJhbmtMaXN0SW5mbxI5CgthcHBlYWxfaW5mbxgWIAEoCzIYLnRpZWJhLnBiUGFnZS5BcH'
    'BlYWxJbmZvUgphcHBlYWxJbmZvEjAKCGdvZF9jYXJkGBcgASgLMhUudGllYmEucGJQYWdlLkdv'
    'ZENhcmRSB2dvZENhcmQSOwoOcGxheV9yYW5rX2xpc3QYGCADKAsyFS50aWViYS5Qc1JhbmtMaX'
    'N0SXRlbVIMcGxheVJhbmtMaXN0EkIKDnJlY29tbWVuZF9ib29rGBkgASgLMhsudGllYmEucGJQ'
    'YWdlLlJlY29tbWVuZEJvb2tSDXJlY29tbWVuZEJvb2sSLQoIYWxhX2luZm8YGiABKAsyEi50aW'
    'ViYS5BbGFMaXZlSW5mb1IHYWxhSW5mbxJZChdmb3J1bV9oZWFkbGluZV9pbWdfaW5mbxgbIAEo'
    'CzIiLnRpZWJhLnBiUGFnZS5Gb3J1bUhlYWRsaW5lSW1nSW5mb1IUZm9ydW1IZWFkbGluZUltZ0'
    'luZm8SJAoOYXNwX3Nob3duX2luZm8YHCABKAlSDGFzcFNob3duSW5mbxI8CgpndWVzc19saWtl'
    'GB0gASgLMh0udGllYmEucGJQYWdlLkd1ZXNzTGlrZVN0cnVjdFIJZ3Vlc3NMaWtlEjsKEGZlZW'
    'RfdGhyZWFkX2xpc3QYHiADKAsyES50aWViYS5UaHJlYWRJbmZvUg5mZWVkVGhyZWFkTGlzdBI5'
    'Chlpc19mb2xsb3dfY3VycmVudF9jaGFubmVsGB8gASgNUhZpc0ZvbGxvd0N1cnJlbnRDaGFubm'
    'VsEigKEHN3aXRjaF9yZWFkX29wZW4YICABKAVSDnN3aXRjaFJlYWRPcGVuEjYKCWZlZWRfaW5m'
    'bxghIAEoCzIZLnRpZWJhLnBiUGFnZS5GZWVkRXh0SW5mb1IIZmVlZEluZm8SRAoTdG9wX2Fncm'
    'VlX3Bvc3RfbGlzdBgiIAEoCzIVLnRpZWJhLlBiVG9wQWdyZWVQb3N0UhB0b3BBZ3JlZVBvc3RM'
    'aXN0ElEKG3JlcG9zdF9yZWNvbW1lbmRfZm9ydW1fbGlzdBgjIAMoCzISLnRpZWJhLlNpbXBsZU'
    'ZvcnVtUhhyZXBvc3RSZWNvbW1lbmRGb3J1bUxpc3QSOgoPZnJvbV9mb3J1bV9saXN0GCQgAygL'
    'MhIudGllYmEuU2ltcGxlRm9ydW1SDWZyb21Gb3J1bUxpc3QSJgoPdGhyZWFkX2ZyZXFfbnVtGC'
    'UgASgDUg10aHJlYWRGcmVxTnVtEjUKEGZpcnN0X2Zsb29yX3Bvc3QYJiABKAsyCy50aWViYS5Q'
    'b3N0Ug5maXJzdEZsb29yUG9zdBI3Cg1kaXNwbGF5X2ZvcnVtGCcgASgLMhIudGllYmEuU2ltcG'
    'xlRm9ydW1SDGRpc3BsYXlGb3J1bRI3Cg5uZXdfYWdyZWVfdXNlchgoIAMoCzIRLnRpZWJhLlNp'
    'bXBsZVVzZXJSDG5ld0FncmVlVXNlchIyChVwYXJ0aWFsX3Zpc2libGVfdG9hc3QYKSABKAlSE3'
    'BhcnRpYWxWaXNpYmxlVG9hc3QSKQoIbmFfZ3VpZGUYKiABKAsyDi50aWViYS5OYUd1aWRlUgdu'
    'YUd1aWRlEjgKCmZvbGxvd190aXAYKyABKAsyGS50aWViYS5wYlBhZ2UuUGJGb2xsb3dUaXBSCW'
    'ZvbGxvd1RpcBIZCghmb2xkX3RpcBgsIAEoCVIHZm9sZFRpcBIkCg5leHBfbmV3c190b2RheRgt'
    'IAEoBVIMZXhwTmV3c1RvZGF5EiYKD2V4cF9ndWlkZV90b2RheRguIAEoBVINZXhwR3VpZGVUb2'
    'RheRIoChBtdWx0aV9mb3J1bV90ZXh0GC8gASgJUg5tdWx0aUZvcnVtVGV4dBI4Cgx0aHJlYWRf'
    'dG9waWMYMCADKAsyFS50aWViYS5SZWNvbVRvcGljTGlzdFILdGhyZWFkVG9waWMSOgoMcGJfc2'
    '9ydF9pbmZvGDEgAygLMhgudGllYmEucGJQYWdlLlBiU29ydFR5cGVSCnBiU29ydEluZm8SGwoJ'
    'c29ydF90eXBlGDIgASgFUghzb3J0VHlwZRJBChBtYW5hZ2VyX2VsZWN0aW9uGDMgASgLMhYudG'
    'llYmEuTWFuYWdlckVsZWN0aW9uUg9tYW5hZ2VyRWxlY3Rpb24SNgoNYmpoX3JlY29tbWVuZBg0'
    'IAMoCzIRLnRpZWJhLlRocmVhZEluZm9SDGJqaFJlY29tbWVuZBJSChRidXNpbmVzc19wcm9tb3'
    'RfaW5mbxg1IAEoCzIgLnRpZWJhLnBiUGFnZS5CdXNpbmVzc1Byb21vdEluZm9SEmJ1c2luZXNz'
    'UHJvbW90SW5mbxIuCglwcm9tb3Rpb24YNiABKAsyEC50aWViYS5Qcm9tb3Rpb25SCXByb21vdG'
    'lvbhI4Cg5yZWNvbV9hbGFfaW5mbxg3IAEoCzISLnRpZWJhLkFsYUxpdmVJbmZvUgxyZWNvbUFs'
    'YUluZm8SHgoKanVtcHRvdGFiMRg4IAEoBVIKanVtcHRvdGFiMRIeCgpqdW1wdG90YWIyGDkgAS'
    'gJUgpqdW1wdG90YWIyEk4KFWJ1c2luZXNzX2FjY291bnRfaW5mbxg6IAEoCzIaLnRpZWJhLkJ1'
    'c2luZXNzQWNjb3VudEluZm9SE2J1c2luZXNzQWNjb3VudEluZm8SPQoRcmVjb21fdGhyZWFkX2'
    'luZm8YOyADKAsyES50aWViYS5UaHJlYWRJbmZvUg9yZWNvbVRocmVhZEluZm8SNQoKZm9ydW1f'
    'cnVsZRg8IAEoCzIWLnRpZWJhLkZvcnVtUnVsZVN0YXR1c1IJZm9ydW1SdWxlEiEKDHNob3dfYW'
    'RzZW5zZRg9IAEoBVILc2hvd0Fkc2Vuc2USJAoOaXNfYmxhY2tfd2hpdGUYPiABKAVSDGlzQmxh'
    'Y2tXaGl0ZRIqChFpc19vZmZpY2lhbF9mb3J1bRg/IAEoBVIPaXNPZmZpY2lhbEZvcnVtEj8KDW'
    'Zsb2F0aW5nX2ljb24YQCABKAsyGi50aWViYS5wYlBhZ2UuRmxvYXRpbmdJY29uUgxmbG9hdGlu'
    'Z0ljb24SHwoLaXNfcHVyY2hhc2UYQSABKAVSCmlzUHVyY2hhc2USJAoOcGJfbm90aWNlX3R5cG'
    'UYQiABKAVSDHBiTm90aWNlVHlwZRIbCglwYl9ub3RpY2UYQyABKAlSCHBiTm90aWNlEigKEGhh'
    'c19mb2xkX2NvbW1lbnQYRCABKAVSDmhhc0ZvbGRDb21tZW50EigKEGZvbGRfY29tbWVudF9udW'
    '0YRiABKANSDmZvbGRDb21tZW50TnVt');
