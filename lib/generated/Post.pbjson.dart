// This is a generated file - do not edit.
//
// Generated from post.proto.

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

@$core.Deprecated('Use postDescriptor instead')
const Post$json = {
  '1': 'Post',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    {'1': 'floor', '3': 3, '4': 1, '5': 13, '10': 'floor'},
    {'1': 'time', '3': 4, '4': 1, '5': 13, '10': 'time'},
    {
      '1': 'content',
      '3': 5,
      '4': 3,
      '5': 11,
      '6': '.tieba.PbContent',
      '10': 'content'
    },
    {'1': 'arr_video', '3': 6, '4': 3, '5': 9, '10': 'arrVideo'},
    {
      '1': 'lbs_info',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.tieba.Lbs',
      '10': 'lbsInfo'
    },
    {'1': 'is_vote', '3': 8, '4': 1, '5': 13, '10': 'isVote'},
    {'1': 'is_voice', '3': 9, '4': 1, '5': 13, '10': 'isVoice'},
    {'1': 'is_ntitle', '3': 10, '4': 1, '5': 13, '10': 'isNtitle'},
    {'1': 'is_bub', '3': 11, '4': 1, '5': 13, '10': 'isBub'},
    {'1': 'vote_crypt', '3': 12, '4': 1, '5': 9, '10': 'voteCrypt'},
    {'1': 'sub_post_number', '3': 13, '4': 1, '5': 13, '10': 'subPostNumber'},
    {'1': 'time_ex', '3': 14, '4': 1, '5': 9, '10': 'timeEx'},
    {
      '1': 'sub_post_list',
      '3': 15,
      '4': 1,
      '5': 11,
      '6': '.tieba.SubPost',
      '10': 'subPostList'
    },
    {
      '1': 'add_post_list',
      '3': 16,
      '4': 1,
      '5': 11,
      '6': '.tieba.AddPostList',
      '10': 'addPostList'
    },
    {'1': 'bimg_url', '3': 17, '4': 1, '5': 9, '10': 'bimgUrl'},
    {'1': 'ios_bimg_format', '3': 18, '4': 1, '5': 9, '10': 'iosBimgFormat'},
    {'1': 'author_id', '3': 19, '4': 1, '5': 3, '10': 'authorId'},
    {'1': 'add_post_number', '3': 20, '4': 1, '5': 13, '10': 'addPostNumber'},
    {
      '1': 'signature',
      '3': 21,
      '4': 1,
      '5': 11,
      '6': '.tieba.SignatureData',
      '10': 'signature'
    },
    {
      '1': 'tail_info',
      '3': 22,
      '4': 1,
      '5': 11,
      '6': '.tieba.TailInfo',
      '10': 'tailInfo'
    },
    {
      '1': 'author',
      '3': 23,
      '4': 1,
      '5': 11,
      '6': '.tieba.User',
      '10': 'author'
    },
    {'1': 'zan', '3': 24, '4': 1, '5': 11, '6': '.tieba.Zan', '10': 'zan'},
    {'1': 'storecount', '3': 25, '4': 1, '5': 5, '10': 'storecount'},
    {
      '1': 'tpoint_post',
      '3': 26,
      '4': 1,
      '5': 11,
      '6': '.tieba.TPointPost',
      '10': 'tpointPost'
    },
    {
      '1': 'act_post',
      '3': 27,
      '4': 1,
      '5': 11,
      '6': '.tieba.ActPost',
      '10': 'actPost'
    },
    {
      '1': 'present',
      '3': 28,
      '4': 1,
      '5': 11,
      '6': '.tieba.PbPresent',
      '10': 'present'
    },
    {
      '1': 'video_info',
      '3': 29,
      '4': 1,
      '5': 11,
      '6': '.tieba.VideoInfo',
      '10': 'videoInfo'
    },
    {
      '1': 'post_zan',
      '3': 30,
      '4': 1,
      '5': 11,
      '6': '.tieba.PbPostZan',
      '10': 'postZan'
    },
    {'1': 'is_hot_post', '3': 31, '4': 1, '5': 5, '10': 'isHotPost'},
    {
      '1': 'ext_tails',
      '3': 32,
      '4': 3,
      '5': 11,
      '6': '.tieba.TailInfo',
      '10': 'extTails'
    },
    {
      '1': 'high_together',
      '3': 33,
      '4': 1,
      '5': 11,
      '6': '.tieba.TogetherHi',
      '10': 'highTogether'
    },
    {
      '1': 'skin_info',
      '3': 34,
      '4': 1,
      '5': 11,
      '6': '.tieba.SkinInfo',
      '10': 'skinInfo'
    },
    {
      '1': 'pb_deal_info',
      '3': 35,
      '4': 1,
      '5': 11,
      '6': '.tieba.DealInfo',
      '10': 'pbDealInfo'
    },
    {'1': 'lego_card', '3': 36, '4': 1, '5': 9, '10': 'legoCard'},
    {
      '1': 'agree',
      '3': 37,
      '4': 1,
      '5': 11,
      '6': '.tieba.Agree',
      '10': 'agree'
    },
    {
      '1': 'from_forum',
      '3': 38,
      '4': 1,
      '5': 11,
      '6': '.tieba.SimpleForum',
      '10': 'fromForum'
    },
    {'1': 'is_post_visible', '3': 39, '4': 1, '5': 5, '10': 'isPostVisible'},
    {'1': 'need_log', '3': 40, '4': 1, '5': 5, '10': 'needLog'},
    {'1': 'img_num_abtest', '3': 41, '4': 1, '5': 5, '10': 'imgNumAbtest'},
    {
      '1': 'origin_thread_info',
      '3': 42,
      '4': 1,
      '5': 11,
      '6': '.tieba.OriginThreadInfo',
      '10': 'originThreadInfo'
    },
    {'1': 'is_fold', '3': 43, '4': 1, '5': 5, '10': 'isFold'},
    {'1': 'fold_tip', '3': 44, '4': 1, '5': 9, '10': 'foldTip'},
    {'1': 'is_top_agree_post', '3': 45, '4': 1, '5': 5, '10': 'isTopAgreePost'},
    {'1': 'tid', '3': 46, '4': 1, '5': 3, '10': 'tid'},
    {'1': 'show_squared', '3': 47, '4': 1, '5': 5, '10': 'showSquared'},
    {'1': 'is_bjh', '3': 48, '4': 1, '5': 5, '10': 'isBjh'},
    {'1': 'quote_id', '3': 50, '4': 1, '5': 9, '10': 'quoteId'},
    {
      '1': 'is_wonderful_post',
      '3': 51,
      '4': 1,
      '5': 5,
      '10': 'isWonderfulPost'
    },
    {
      '1': 'item_star',
      '3': 52,
      '4': 3,
      '5': 11,
      '6': '.tieba.HeadItem',
      '10': 'itemStar'
    },
    {'1': 'item', '3': 53, '4': 1, '5': 11, '6': '.tieba.Item', '10': 'item'},
    {
      '1': 'outer_item',
      '3': 54,
      '4': 1,
      '5': 11,
      '6': '.tieba.Item',
      '10': 'outerItem'
    },
    {
      '1': 'advertisement',
      '3': 55,
      '4': 1,
      '5': 11,
      '6': '.tieba.Advertisement',
      '10': 'advertisement'
    },
    {
      '1': 'fold_comment_status',
      '3': 56,
      '4': 1,
      '5': 5,
      '10': 'foldCommentStatus'
    },
    {
      '1': 'fold_comment_apply_url',
      '3': 57,
      '4': 1,
      '5': 9,
      '10': 'foldCommentApplyUrl'
    },
    {
      '1': 'novel_info',
      '3': 58,
      '4': 1,
      '5': 11,
      '6': '.tieba.NovelInfo',
      '10': 'novelInfo'
    },
    {'1': 'dynamic_url', '3': 63, '4': 1, '5': 9, '10': 'dynamicUrl'},
    {'1': 'rumor_source_img', '3': 65, '4': 1, '5': 9, '10': 'rumorSourceImg'},
    {'1': 'shield_icon', '3': 68, '4': 1, '5': 5, '10': 'shieldIcon'},
    {'1': 'icon_url', '3': 69, '4': 1, '5': 9, '10': 'iconUrl'},
    {'1': 'toutiao_card_tag', '3': 70, '4': 1, '5': 9, '10': 'toutiaoCardTag'},
    {
      '1': 'toutiao_card_tag_color',
      '3': 71,
      '4': 1,
      '5': 9,
      '10': 'toutiaoCardTagColor'
    },
    {'1': 'is_bot_reply', '3': 73, '4': 1, '5': 5, '10': 'isBotReply'},
    {
      '1': 'bot_reply_content',
      '3': 74,
      '4': 1,
      '5': 9,
      '10': 'botReplyContent'
    },
    {
      '1': 'pic_content',
      '3': 84,
      '4': 3,
      '5': 11,
      '6': '.tieba.PbContent',
      '10': 'picContent'
    },
    {
      '1': 'no_pic_content',
      '3': 85,
      '4': 3,
      '5': 11,
      '6': '.tieba.PbContent',
      '10': 'noPicContent'
    },
    {'1': 'ios_b_url', '3': 87, '4': 1, '5': 9, '10': 'iosBUrl'},
    {'1': 'footer', '3': 89, '4': 1, '5': 9, '10': 'footer'},
    {'1': 'bdt_user_adopt', '3': 91, '4': 1, '5': 5, '10': 'bdtUserAdopt'},
    {'1': 'tmoney', '3': 92, '4': 1, '5': 9, '10': 'tmoney'},
    {'1': 'adopt_status', '3': 93, '4': 1, '5': 5, '10': 'adoptStatus'},
    {'1': 'is_ad_thread_post', '3': 96, '4': 1, '5': 5, '10': 'isAdThreadPost'},
    {
      '1': 'content_statement',
      '3': 97,
      '4': 1,
      '5': 9,
      '10': 'contentStatement'
    },
  ],
};

/// Descriptor for `Post`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List postDescriptor = $convert.base64Decode(
    'CgRQb3N0Eg4KAmlkGAEgASgEUgJpZBIUCgV0aXRsZRgCIAEoCVIFdGl0bGUSFAoFZmxvb3IYAy'
    'ABKA1SBWZsb29yEhIKBHRpbWUYBCABKA1SBHRpbWUSKgoHY29udGVudBgFIAMoCzIQLnRpZWJh'
    'LlBiQ29udGVudFIHY29udGVudBIbCglhcnJfdmlkZW8YBiADKAlSCGFyclZpZGVvEiUKCGxic1'
    '9pbmZvGAcgASgLMgoudGllYmEuTGJzUgdsYnNJbmZvEhcKB2lzX3ZvdGUYCCABKA1SBmlzVm90'
    'ZRIZCghpc192b2ljZRgJIAEoDVIHaXNWb2ljZRIbCglpc19udGl0bGUYCiABKA1SCGlzTnRpdG'
    'xlEhUKBmlzX2J1YhgLIAEoDVIFaXNCdWISHQoKdm90ZV9jcnlwdBgMIAEoCVIJdm90ZUNyeXB0'
    'EiYKD3N1Yl9wb3N0X251bWJlchgNIAEoDVINc3ViUG9zdE51bWJlchIXCgd0aW1lX2V4GA4gAS'
    'gJUgZ0aW1lRXgSMgoNc3ViX3Bvc3RfbGlzdBgPIAEoCzIOLnRpZWJhLlN1YlBvc3RSC3N1YlBv'
    'c3RMaXN0EjYKDWFkZF9wb3N0X2xpc3QYECABKAsyEi50aWViYS5BZGRQb3N0TGlzdFILYWRkUG'
    '9zdExpc3QSGQoIYmltZ191cmwYESABKAlSB2JpbWdVcmwSJgoPaW9zX2JpbWdfZm9ybWF0GBIg'
    'ASgJUg1pb3NCaW1nRm9ybWF0EhsKCWF1dGhvcl9pZBgTIAEoA1IIYXV0aG9ySWQSJgoPYWRkX3'
    'Bvc3RfbnVtYmVyGBQgASgNUg1hZGRQb3N0TnVtYmVyEjIKCXNpZ25hdHVyZRgVIAEoCzIULnRp'
    'ZWJhLlNpZ25hdHVyZURhdGFSCXNpZ25hdHVyZRIsCgl0YWlsX2luZm8YFiABKAsyDy50aWViYS'
    '5UYWlsSW5mb1IIdGFpbEluZm8SIwoGYXV0aG9yGBcgASgLMgsudGllYmEuVXNlclIGYXV0aG9y'
    'EhwKA3phbhgYIAEoCzIKLnRpZWJhLlphblIDemFuEh4KCnN0b3JlY291bnQYGSABKAVSCnN0b3'
    'JlY291bnQSMgoLdHBvaW50X3Bvc3QYGiABKAsyES50aWViYS5UUG9pbnRQb3N0Ugp0cG9pbnRQ'
    'b3N0EikKCGFjdF9wb3N0GBsgASgLMg4udGllYmEuQWN0UG9zdFIHYWN0UG9zdBIqCgdwcmVzZW'
    '50GBwgASgLMhAudGllYmEuUGJQcmVzZW50UgdwcmVzZW50Ei8KCnZpZGVvX2luZm8YHSABKAsy'
    'EC50aWViYS5WaWRlb0luZm9SCXZpZGVvSW5mbxIrCghwb3N0X3phbhgeIAEoCzIQLnRpZWJhLl'
    'BiUG9zdFphblIHcG9zdFphbhIeCgtpc19ob3RfcG9zdBgfIAEoBVIJaXNIb3RQb3N0EiwKCWV4'
    'dF90YWlscxggIAMoCzIPLnRpZWJhLlRhaWxJbmZvUghleHRUYWlscxI2Cg1oaWdoX3RvZ2V0aG'
    'VyGCEgASgLMhEudGllYmEuVG9nZXRoZXJIaVIMaGlnaFRvZ2V0aGVyEiwKCXNraW5faW5mbxgi'
    'IAEoCzIPLnRpZWJhLlNraW5JbmZvUghza2luSW5mbxIxCgxwYl9kZWFsX2luZm8YIyABKAsyDy'
    '50aWViYS5EZWFsSW5mb1IKcGJEZWFsSW5mbxIbCglsZWdvX2NhcmQYJCABKAlSCGxlZ29DYXJk'
    'EiIKBWFncmVlGCUgASgLMgwudGllYmEuQWdyZWVSBWFncmVlEjEKCmZyb21fZm9ydW0YJiABKA'
    'syEi50aWViYS5TaW1wbGVGb3J1bVIJZnJvbUZvcnVtEiYKD2lzX3Bvc3RfdmlzaWJsZRgnIAEo'
    'BVINaXNQb3N0VmlzaWJsZRIZCghuZWVkX2xvZxgoIAEoBVIHbmVlZExvZxIkCg5pbWdfbnVtX2'
    'FidGVzdBgpIAEoBVIMaW1nTnVtQWJ0ZXN0EkUKEm9yaWdpbl90aHJlYWRfaW5mbxgqIAEoCzIX'
    'LnRpZWJhLk9yaWdpblRocmVhZEluZm9SEG9yaWdpblRocmVhZEluZm8SFwoHaXNfZm9sZBgrIA'
    'EoBVIGaXNGb2xkEhkKCGZvbGRfdGlwGCwgASgJUgdmb2xkVGlwEikKEWlzX3RvcF9hZ3JlZV9w'
    'b3N0GC0gASgFUg5pc1RvcEFncmVlUG9zdBIQCgN0aWQYLiABKANSA3RpZBIhCgxzaG93X3NxdW'
    'FyZWQYLyABKAVSC3Nob3dTcXVhcmVkEhUKBmlzX2JqaBgwIAEoBVIFaXNCamgSGQoIcXVvdGVf'
    'aWQYMiABKAlSB3F1b3RlSWQSKgoRaXNfd29uZGVyZnVsX3Bvc3QYMyABKAVSD2lzV29uZGVyZn'
    'VsUG9zdBIsCglpdGVtX3N0YXIYNCADKAsyDy50aWViYS5IZWFkSXRlbVIIaXRlbVN0YXISHwoE'
    'aXRlbRg1IAEoCzILLnRpZWJhLkl0ZW1SBGl0ZW0SKgoKb3V0ZXJfaXRlbRg2IAEoCzILLnRpZW'
    'JhLkl0ZW1SCW91dGVySXRlbRI6Cg1hZHZlcnRpc2VtZW50GDcgASgLMhQudGllYmEuQWR2ZXJ0'
    'aXNlbWVudFINYWR2ZXJ0aXNlbWVudBIuChNmb2xkX2NvbW1lbnRfc3RhdHVzGDggASgFUhFmb2'
    'xkQ29tbWVudFN0YXR1cxIzChZmb2xkX2NvbW1lbnRfYXBwbHlfdXJsGDkgASgJUhNmb2xkQ29t'
    'bWVudEFwcGx5VXJsEi8KCm5vdmVsX2luZm8YOiABKAsyEC50aWViYS5Ob3ZlbEluZm9SCW5vdm'
    'VsSW5mbxIfCgtkeW5hbWljX3VybBg/IAEoCVIKZHluYW1pY1VybBIoChBydW1vcl9zb3VyY2Vf'
    'aW1nGEEgASgJUg5ydW1vclNvdXJjZUltZxIfCgtzaGllbGRfaWNvbhhEIAEoBVIKc2hpZWxkSW'
    'NvbhIZCghpY29uX3VybBhFIAEoCVIHaWNvblVybBIoChB0b3V0aWFvX2NhcmRfdGFnGEYgASgJ'
    'Ug50b3V0aWFvQ2FyZFRhZxIzChZ0b3V0aWFvX2NhcmRfdGFnX2NvbG9yGEcgASgJUhN0b3V0aW'
    'FvQ2FyZFRhZ0NvbG9yEiAKDGlzX2JvdF9yZXBseRhJIAEoBVIKaXNCb3RSZXBseRIqChFib3Rf'
    'cmVwbHlfY29udGVudBhKIAEoCVIPYm90UmVwbHlDb250ZW50EjEKC3BpY19jb250ZW50GFQgAy'
    'gLMhAudGllYmEuUGJDb250ZW50UgpwaWNDb250ZW50EjYKDm5vX3BpY19jb250ZW50GFUgAygL'
    'MhAudGllYmEuUGJDb250ZW50Ugxub1BpY0NvbnRlbnQSGgoJaW9zX2JfdXJsGFcgASgJUgdpb3'
    'NCVXJsEhYKBmZvb3RlchhZIAEoCVIGZm9vdGVyEiQKDmJkdF91c2VyX2Fkb3B0GFsgASgFUgxi'
    'ZHRVc2VyQWRvcHQSFgoGdG1vbmV5GFwgASgJUgZ0bW9uZXkSIQoMYWRvcHRfc3RhdHVzGF0gAS'
    'gFUgthZG9wdFN0YXR1cxIpChFpc19hZF90aHJlYWRfcG9zdBhgIAEoBVIOaXNBZFRocmVhZFBv'
    'c3QSKwoRY29udGVudF9zdGF0ZW1lbnQYYSABKAlSEGNvbnRlbnRTdGF0ZW1lbnQ=');
