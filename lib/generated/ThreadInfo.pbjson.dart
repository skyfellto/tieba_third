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
    {'1': 'forumId', '3': 27, '4': 1, '5': 3, '10': 'forumId'},
    {'1': 'forumName', '3': 28, '4': 1, '5': 9, '10': 'forumName'},
    {'1': 'isNoTitle', '3': 38, '4': 1, '5': 5, '10': 'isNoTitle'},
    {'1': 'firstPostId', '3': 40, '4': 1, '5': 3, '10': 'firstPostId'},
    {'1': 'createTime', '3': 45, '4': 1, '5': 5, '10': 'createTime'},
    {'1': 'collectStatus', '3': 50, '4': 1, '5': 5, '10': 'collectStatus'},
    {'1': 'collectMarkPid', '3': 51, '4': 1, '5': 9, '10': 'collectMarkPid'},
    {'1': 'post_id', '3': 52, '4': 1, '5': 3, '10': 'postId'},
    {'1': 'isMemberTop', '3': 54, '4': 1, '5': 5, '10': 'isMemberTop'},
    {'1': 'authorId', '3': 56, '4': 1, '5': 3, '10': 'authorId'},
    {'1': 'pids', '3': 61, '4': 1, '5': 9, '10': 'pids'},
    {
      '1': 'twzhibo_info',
      '3': 72,
      '4': 1,
      '5': 11,
      '6': '.tieba.ZhiBoInfoTW',
      '10': 'twzhiboInfo'
    },
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
    'ZFR5cGVzEhQKBWlzVG9wGAkgASgFUgVpc1RvcBIWCgZpc0dvb2QYCiABKAVSBmlzR29vZBIjCg'
    'ZhdXRob3IYEiABKAsyCy50aWViYS5Vc2VyUgZhdXRob3ISLQoLbGFzdFJlcGx5ZXIYEyABKAsy'
    'Cy50aWViYS5Vc2VyUgtsYXN0UmVwbHllchIeCgpjb21tZW50TnVtGBQgASgFUgpjb21tZW50Tn'
    'VtEiwKCV9hYnN0cmFjdBgVIAMoCzIPLnRpZWJhLkFic3RyYWN0UghBYnN0cmFjdBIiCgVtZWRp'
    'YRgWIAMoCzIMLnRpZWJhLk1lZGlhUgVtZWRpYRIYCgdmb3J1bUlkGBsgASgDUgdmb3J1bUlkEh'
    'wKCWZvcnVtTmFtZRgcIAEoCVIJZm9ydW1OYW1lEhwKCWlzTm9UaXRsZRgmIAEoBVIJaXNOb1Rp'
    'dGxlEiAKC2ZpcnN0UG9zdElkGCggASgDUgtmaXJzdFBvc3RJZBIeCgpjcmVhdGVUaW1lGC0gAS'
    'gFUgpjcmVhdGVUaW1lEiQKDWNvbGxlY3RTdGF0dXMYMiABKAVSDWNvbGxlY3RTdGF0dXMSJgoO'
    'Y29sbGVjdE1hcmtQaWQYMyABKAlSDmNvbGxlY3RNYXJrUGlkEhcKB3Bvc3RfaWQYNCABKANSBn'
    'Bvc3RJZBIgCgtpc01lbWJlclRvcBg2IAEoBVILaXNNZW1iZXJUb3ASGgoIYXV0aG9ySWQYOCAB'
    'KANSCGF1dGhvcklkEhIKBHBpZHMYPSABKAlSBHBpZHMSNQoMdHd6aGlib19pbmZvGEggASgLMh'
    'IudGllYmEuWmhpQm9JbmZvVFdSC3R3emhpYm9JbmZvEjMKCXZpZGVvSW5mbxhPIAEoCzIQLnRp'
    'ZWJhLlZpZGVvSW5mb0gAUgl2aWRlb0luZm+IAQESLgoJcmljaFRpdGxlGG8gAygLMhAudGllYm'
    'EuUGJDb250ZW50UglyaWNoVGl0bGUSNAoMcmljaEFic3RyYWN0GHAgAygLMhAudGllYmEuUGJD'
    'b250ZW50UgxyaWNoQWJzdHJhY3QSMgoIYWxhX2luZm8YcSABKAsyEi50aWViYS5BbGFMaXZlSW'
    '5mb0gBUgdhbGFJbmZviAEBEjQKC2Rpc2xpa2VJbmZvGHggAygLMhIudGllYmEuRGlzbGlrZUlu'
    'Zm9SC2Rpc2xpa2VJbmZvEhoKCGFncmVlTnVtGHwgASgFUghhZ3JlZU51bRIiCgVhZ3JlZRh+IA'
    'EoCzIMLnRpZWJhLkFncmVlUgVhZ3JlZRIbCghzaGFyZU51bRiHASABKANSCHNoYXJlTnVtEkYK'
    'Em9yaWdpbl90aHJlYWRfaW5mbxiNASABKAsyFy50aWViYS5PcmlnaW5UaHJlYWRJbmZvUhBvcm'
    'lnaW5UaHJlYWRJbmZvEj0KEGZpcnN0UG9zdENvbnRlbnQYjgEgAygLMhAudGllYmEuUGJDb250'
    'ZW50UhBmaXJzdFBvc3RDb250ZW50EicKD2lzX3NoYXJlX3RocmVhZBiPASABKAVSDWlzU2hhcm'
    'VUaHJlYWQSGQoHaXNUb3BpYxiUASABKAVSB2lzVG9waWMSJQoNdG9waWNVc2VyTmFtZRiVASAB'
    'KAlSDXRvcGljVXNlck5hbWUSHwoKdG9waWNINVVybBiWASABKAlSCnRvcGljSDVVcmwSMQoJZm'
    '9ydW1JbmZvGJsBIAEoCzISLnRpZWJhLlNpbXBsZUZvcnVtUglmb3J1bUluZm8SHQoJdFNoYXJl'
    'SW1nGJ8BIAEoCVIJdFNoYXJlSW1nEhEKA25pZBikASABKAlSA25pZBIVCgV0YWJJZBivASABKA'
    'VSBXRhYklkEhkKB3RhYk5hbWUYsAEgASgJUgd0YWJOYW1lEh0KCWlzRGVsZXRlZBi1ASABKAVS'
    'CWlzRGVsZXRlZBIXCgZob3ROdW0YtgEgASgFUgZob3ROdW1CDAoKX3ZpZGVvSW5mb0ILCglfYW'
    'xhX2luZm8=');
