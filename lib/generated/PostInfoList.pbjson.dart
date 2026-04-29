// This is a generated file - do not edit.
//
// Generated from PostInfoList.proto.

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

@$core.Deprecated('Use postInfoListDescriptor instead')
const PostInfoList$json = {
  '1': 'PostInfoList',
  '2': [
    {'1': 'forum_id', '3': 1, '4': 1, '5': 4, '10': 'forumId'},
    {'1': 'thread_id', '3': 2, '4': 1, '5': 4, '10': 'threadId'},
    {'1': 'post_id', '3': 3, '4': 1, '5': 4, '10': 'postId'},
    {'1': 'is_thread', '3': 4, '4': 1, '5': 13, '10': 'isThread'},
    {'1': 'create_time', '3': 5, '4': 1, '5': 13, '10': 'createTime'},
    {'1': 'forum_name', '3': 6, '4': 1, '5': 9, '10': 'forumName'},
    {'1': 'title', '3': 7, '4': 1, '5': 9, '10': 'title'},
    {
      '1': 'content',
      '3': 8,
      '4': 3,
      '5': 11,
      '6': '.tieba.PostInfoContent',
      '10': 'content'
    },
    {'1': 'content_thread', '3': 9, '4': 1, '5': 9, '10': 'contentThread'},
    {'1': 'user_name', '3': 10, '4': 1, '5': 9, '10': 'userName'},
    {'1': 'ip', '3': 11, '4': 1, '5': 9, '10': 'ip'},
    {'1': 'is_post_deleted', '3': 12, '4': 1, '5': 13, '10': 'isPostDeleted'},
    {'1': 'ptype', '3': 13, '4': 1, '5': 9, '10': 'ptype'},
    {'1': '_abstract', '3': 14, '4': 1, '5': 9, '10': 'Abstract'},
    {
      '1': 'abstract_thread',
      '3': 15,
      '4': 3,
      '5': 11,
      '6': '.tieba.Abstract',
      '10': 'abstractThread'
    },
    {
      '1': 'media',
      '3': 16,
      '4': 3,
      '5': 11,
      '6': '.tieba.Media',
      '10': 'media'
    },
    {'1': 'reply_num', '3': 17, '4': 1, '5': 13, '10': 'replyNum'},
    {'1': 'user_id', '3': 18, '4': 1, '5': 3, '10': 'userId'},
    {'1': 'user_portrait', '3': 19, '4': 1, '5': 9, '10': 'userPortrait'},
    {'1': 'post_type', '3': 20, '4': 1, '5': 9, '10': 'postType'},
    {
      '1': 'lbs_info',
      '3': 21,
      '4': 1,
      '5': 11,
      '6': '.tieba.LbsInfo',
      '10': 'lbsInfo'
    },
    {
      '1': 'quote',
      '3': 22,
      '4': 1,
      '5': 11,
      '6': '.tieba.Quote',
      '10': 'quote'
    },
    {
      '1': 'voice_info',
      '3': 23,
      '4': 3,
      '5': 11,
      '6': '.tieba.Voice',
      '10': 'voiceInfo'
    },
    {
      '1': 'anchor_info',
      '3': 24,
      '4': 1,
      '5': 11,
      '6': '.tieba.AnchorInfo',
      '10': 'anchorInfo'
    },
    {'1': 'hide_post', '3': 25, '4': 1, '5': 5, '10': 'hidePost'},
    {'1': 'thread_type', '3': 26, '4': 1, '5': 4, '10': 'threadType'},
    {
      '1': 'twzhibo_info',
      '3': 27,
      '4': 1,
      '5': 11,
      '6': '.tieba.ZhiBoInfoTW',
      '10': 'twzhiboInfo'
    },
    {
      '1': 'poll_info',
      '3': 28,
      '4': 1,
      '5': 11,
      '6': '.tieba.PollInfo',
      '10': 'pollInfo'
    },
    {
      '1': 'video_info',
      '3': 29,
      '4': 1,
      '5': 11,
      '6': '.tieba.VideoInfo',
      '10': 'videoInfo'
    },
    {'1': 'is_deal', '3': 30, '4': 1, '5': 8, '10': 'isDeal'},
    {
      '1': 'deal_info',
      '3': 31,
      '4': 1,
      '5': 11,
      '6': '.tieba.DealInfo',
      '10': 'dealInfo'
    },
    {
      '1': 'multiple_forum_list',
      '3': 32,
      '4': 3,
      '5': 11,
      '6': '.tieba.MultipleForum',
      '10': 'multipleForumList'
    },
    {'1': 'freq_num', '3': 33, '4': 1, '5': 5, '10': 'freqNum'},
    {'1': 'v_forum_id', '3': 34, '4': 1, '5': 4, '10': 'vForumId'},
    {'1': 'name_show', '3': 35, '4': 1, '5': 9, '10': 'nameShow'},
    {
      '1': 'ala_info',
      '3': 36,
      '4': 1,
      '5': 11,
      '6': '.tieba.AlaLiveInfo',
      '10': 'alaInfo'
    },
    {'1': 'agree_num', '3': 37, '4': 1, '5': 5, '10': 'agreeNum'},
    {'1': 'view_num', '3': 38, '4': 1, '5': 5, '10': 'viewNum'},
    {'1': 'share_num', '3': 39, '4': 1, '5': 5, '10': 'shareNum'},
    {
      '1': 'agree',
      '3': 40,
      '4': 1,
      '5': 11,
      '6': '.tieba.Agree',
      '10': 'agree'
    },
    {'1': 'is_remain', '3': 41, '4': 1, '5': 5, '10': 'isRemain'},
    {
      '1': 'origin_thread_info',
      '3': 42,
      '4': 1,
      '5': 11,
      '6': '.tieba.OriginThreadInfo',
      '10': 'originThreadInfo'
    },
    {'1': 'is_view_year', '3': 43, '4': 1, '5': 5, '10': 'isViewYear'},
    {'1': 'is_share_thread', '3': 44, '4': 1, '5': 5, '10': 'isShareThread'},
    {
      '1': 'rich_title',
      '3': 45,
      '4': 3,
      '5': 11,
      '6': '.tieba.PbContent',
      '10': 'richTitle'
    },
    {
      '1': 'rich_abstract',
      '3': 46,
      '4': 3,
      '5': 11,
      '6': '.tieba.PbContent',
      '10': 'richAbstract'
    },
    {'1': 'is_ntitle', '3': 47, '4': 1, '5': 5, '10': 'isNtitle'},
    {'1': 'article_cover', '3': 48, '4': 1, '5': 9, '10': 'articleCover'},
    {
      '1': 'first_post_content',
      '3': 49,
      '4': 3,
      '5': 11,
      '6': '.tieba.PbContent',
      '10': 'firstPostContent'
    },
    {
      '1': 'baijiahao_info',
      '3': 50,
      '4': 1,
      '5': 11,
      '6': '.tieba.BaijiahaoInfo',
      '10': 'baijiahaoInfo'
    },
    {
      '1': 'wonderful_post_info',
      '3': 51,
      '4': 1,
      '5': 9,
      '10': 'wonderfulPostInfo'
    },
    {'1': 'item', '3': 52, '4': 1, '5': 11, '6': '.tieba.Item', '10': 'item'},
    {
      '1': 'item_star',
      '3': 53,
      '4': 3,
      '5': 11,
      '6': '.tieba.HeadItem',
      '10': 'itemStar'
    },
    {
      '1': 'pb_link_info',
      '3': 54,
      '4': 3,
      '5': 11,
      '6': '.tieba.PbLinkInfo',
      '10': 'pbLinkInfo'
    },
    {
      '1': 'priv_sets',
      '3': 56,
      '4': 3,
      '5': 11,
      '6': '.tieba.PrivSets',
      '10': 'privSets'
    },
    {'1': 'is_author_view', '3': 57, '4': 1, '5': 5, '10': 'isAuthorView'},
    {'1': 'is_manager', '3': 59, '4': 1, '5': 5, '10': 'isManager'},
    {
      '1': 'is_origin_manager',
      '3': 60,
      '4': 1,
      '5': 5,
      '10': 'isOriginManager'
    },
    {'1': 'good_types', '3': 61, '4': 1, '5': 5, '10': 'goodTypes'},
    {'1': 'top_types', '3': 62, '4': 1, '5': 5, '10': 'topTypes'},
    {
      '1': 'user_post_perm',
      '3': 63,
      '4': 1,
      '5': 11,
      '6': '.tieba.UserPostPerm',
      '10': 'userPostPerm'
    },
    {'1': 'target_scheme', '3': 66, '4': 1, '5': 9, '10': 'targetScheme'},
  ],
};

/// Descriptor for `PostInfoList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List postInfoListDescriptor = $convert.base64Decode(
    'CgxQb3N0SW5mb0xpc3QSGQoIZm9ydW1faWQYASABKARSB2ZvcnVtSWQSGwoJdGhyZWFkX2lkGA'
    'IgASgEUgh0aHJlYWRJZBIXCgdwb3N0X2lkGAMgASgEUgZwb3N0SWQSGwoJaXNfdGhyZWFkGAQg'
    'ASgNUghpc1RocmVhZBIfCgtjcmVhdGVfdGltZRgFIAEoDVIKY3JlYXRlVGltZRIdCgpmb3J1bV'
    '9uYW1lGAYgASgJUglmb3J1bU5hbWUSFAoFdGl0bGUYByABKAlSBXRpdGxlEjAKB2NvbnRlbnQY'
    'CCADKAsyFi50aWViYS5Qb3N0SW5mb0NvbnRlbnRSB2NvbnRlbnQSJQoOY29udGVudF90aHJlYW'
    'QYCSABKAlSDWNvbnRlbnRUaHJlYWQSGwoJdXNlcl9uYW1lGAogASgJUgh1c2VyTmFtZRIOCgJp'
    'cBgLIAEoCVICaXASJgoPaXNfcG9zdF9kZWxldGVkGAwgASgNUg1pc1Bvc3REZWxldGVkEhQKBX'
    'B0eXBlGA0gASgJUgVwdHlwZRIbCglfYWJzdHJhY3QYDiABKAlSCEFic3RyYWN0EjgKD2Fic3Ry'
    'YWN0X3RocmVhZBgPIAMoCzIPLnRpZWJhLkFic3RyYWN0Ug5hYnN0cmFjdFRocmVhZBIiCgVtZW'
    'RpYRgQIAMoCzIMLnRpZWJhLk1lZGlhUgVtZWRpYRIbCglyZXBseV9udW0YESABKA1SCHJlcGx5'
    'TnVtEhcKB3VzZXJfaWQYEiABKANSBnVzZXJJZBIjCg11c2VyX3BvcnRyYWl0GBMgASgJUgx1c2'
    'VyUG9ydHJhaXQSGwoJcG9zdF90eXBlGBQgASgJUghwb3N0VHlwZRIpCghsYnNfaW5mbxgVIAEo'
    'CzIOLnRpZWJhLkxic0luZm9SB2xic0luZm8SIgoFcXVvdGUYFiABKAsyDC50aWViYS5RdW90ZV'
    'IFcXVvdGUSKwoKdm9pY2VfaW5mbxgXIAMoCzIMLnRpZWJhLlZvaWNlUgl2b2ljZUluZm8SMgoL'
    'YW5jaG9yX2luZm8YGCABKAsyES50aWViYS5BbmNob3JJbmZvUgphbmNob3JJbmZvEhsKCWhpZG'
    'VfcG9zdBgZIAEoBVIIaGlkZVBvc3QSHwoLdGhyZWFkX3R5cGUYGiABKARSCnRocmVhZFR5cGUS'
    'NQoMdHd6aGlib19pbmZvGBsgASgLMhIudGllYmEuWmhpQm9JbmZvVFdSC3R3emhpYm9JbmZvEi'
    'wKCXBvbGxfaW5mbxgcIAEoCzIPLnRpZWJhLlBvbGxJbmZvUghwb2xsSW5mbxIvCgp2aWRlb19p'
    'bmZvGB0gASgLMhAudGllYmEuVmlkZW9JbmZvUgl2aWRlb0luZm8SFwoHaXNfZGVhbBgeIAEoCF'
    'IGaXNEZWFsEiwKCWRlYWxfaW5mbxgfIAEoCzIPLnRpZWJhLkRlYWxJbmZvUghkZWFsSW5mbxJE'
    'ChNtdWx0aXBsZV9mb3J1bV9saXN0GCAgAygLMhQudGllYmEuTXVsdGlwbGVGb3J1bVIRbXVsdG'
    'lwbGVGb3J1bUxpc3QSGQoIZnJlcV9udW0YISABKAVSB2ZyZXFOdW0SHAoKdl9mb3J1bV9pZBgi'
    'IAEoBFIIdkZvcnVtSWQSGwoJbmFtZV9zaG93GCMgASgJUghuYW1lU2hvdxItCghhbGFfaW5mbx'
    'gkIAEoCzISLnRpZWJhLkFsYUxpdmVJbmZvUgdhbGFJbmZvEhsKCWFncmVlX251bRglIAEoBVII'
    'YWdyZWVOdW0SGQoIdmlld19udW0YJiABKAVSB3ZpZXdOdW0SGwoJc2hhcmVfbnVtGCcgASgFUg'
    'hzaGFyZU51bRIiCgVhZ3JlZRgoIAEoCzIMLnRpZWJhLkFncmVlUgVhZ3JlZRIbCglpc19yZW1h'
    'aW4YKSABKAVSCGlzUmVtYWluEkUKEm9yaWdpbl90aHJlYWRfaW5mbxgqIAEoCzIXLnRpZWJhLk'
    '9yaWdpblRocmVhZEluZm9SEG9yaWdpblRocmVhZEluZm8SIAoMaXNfdmlld195ZWFyGCsgASgF'
    'Ugppc1ZpZXdZZWFyEiYKD2lzX3NoYXJlX3RocmVhZBgsIAEoBVINaXNTaGFyZVRocmVhZBIvCg'
    'pyaWNoX3RpdGxlGC0gAygLMhAudGllYmEuUGJDb250ZW50UglyaWNoVGl0bGUSNQoNcmljaF9h'
    'YnN0cmFjdBguIAMoCzIQLnRpZWJhLlBiQ29udGVudFIMcmljaEFic3RyYWN0EhsKCWlzX250aX'
    'RsZRgvIAEoBVIIaXNOdGl0bGUSIwoNYXJ0aWNsZV9jb3ZlchgwIAEoCVIMYXJ0aWNsZUNvdmVy'
    'Ej4KEmZpcnN0X3Bvc3RfY29udGVudBgxIAMoCzIQLnRpZWJhLlBiQ29udGVudFIQZmlyc3RQb3'
    'N0Q29udGVudBI7Cg5iYWlqaWFoYW9faW5mbxgyIAEoCzIULnRpZWJhLkJhaWppYWhhb0luZm9S'
    'DWJhaWppYWhhb0luZm8SLgoTd29uZGVyZnVsX3Bvc3RfaW5mbxgzIAEoCVIRd29uZGVyZnVsUG'
    '9zdEluZm8SHwoEaXRlbRg0IAEoCzILLnRpZWJhLkl0ZW1SBGl0ZW0SLAoJaXRlbV9zdGFyGDUg'
    'AygLMg8udGllYmEuSGVhZEl0ZW1SCGl0ZW1TdGFyEjMKDHBiX2xpbmtfaW5mbxg2IAMoCzIRLn'
    'RpZWJhLlBiTGlua0luZm9SCnBiTGlua0luZm8SLAoJcHJpdl9zZXRzGDggAygLMg8udGllYmEu'
    'UHJpdlNldHNSCHByaXZTZXRzEiQKDmlzX2F1dGhvcl92aWV3GDkgASgFUgxpc0F1dGhvclZpZX'
    'cSHQoKaXNfbWFuYWdlchg7IAEoBVIJaXNNYW5hZ2VyEioKEWlzX29yaWdpbl9tYW5hZ2VyGDwg'
    'ASgFUg9pc09yaWdpbk1hbmFnZXISHQoKZ29vZF90eXBlcxg9IAEoBVIJZ29vZFR5cGVzEhsKCX'
    'RvcF90eXBlcxg+IAEoBVIIdG9wVHlwZXMSOQoOdXNlcl9wb3N0X3Blcm0YPyABKAsyEy50aWVi'
    'YS5Vc2VyUG9zdFBlcm1SDHVzZXJQb3N0UGVybRIjCg10YXJnZXRfc2NoZW1lGEIgASgJUgx0YX'
    'JnZXRTY2hlbWU=');
