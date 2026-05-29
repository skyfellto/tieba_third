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
    {'1': 'thread_type', '3': 26, '4': 1, '5': 5, '10': 'threadType'},
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
    'dGllYmEuTWVkaWFSBW1lZGlhEh8KC3RocmVhZF90eXBlGBogASgFUgp0aHJlYWRUeXBlEhgKB2'
    'ZvcnVtSWQYGyABKANSB2ZvcnVtSWQSHAoJZm9ydW1OYW1lGBwgASgJUglmb3J1bU5hbWUSHAoJ'
    'aXNOb1RpdGxlGCYgASgFUglpc05vVGl0bGUSIAoLZmlyc3RQb3N0SWQYKCABKANSC2ZpcnN0UG'
    '9zdElkEh4KCmNyZWF0ZVRpbWUYLSABKAVSCmNyZWF0ZVRpbWUSJAoNY29sbGVjdFN0YXR1cxgy'
    'IAEoBVINY29sbGVjdFN0YXR1cxImCg5jb2xsZWN0TWFya1BpZBgzIAEoCVIOY29sbGVjdE1hcm'
    'tQaWQSFwoHcG9zdF9pZBg0IAEoA1IGcG9zdElkEiAKC2lzTWVtYmVyVG9wGDYgASgFUgtpc01l'
    'bWJlclRvcBIaCghhdXRob3JJZBg4IAEoA1IIYXV0aG9ySWQSEgoEcGlkcxg9IAEoCVIEcGlkcx'
    'I1Cgx0d3poaWJvX2luZm8YSCABKAsyEi50aWViYS5aaGlCb0luZm9UV1ILdHd6aGlib0luZm8S'
    'MwoJdmlkZW9JbmZvGE8gASgLMhAudGllYmEuVmlkZW9JbmZvSABSCXZpZGVvSW5mb4gBARIuCg'
    'lyaWNoVGl0bGUYbyADKAsyEC50aWViYS5QYkNvbnRlbnRSCXJpY2hUaXRsZRI0CgxyaWNoQWJz'
    'dHJhY3QYcCADKAsyEC50aWViYS5QYkNvbnRlbnRSDHJpY2hBYnN0cmFjdBIyCghhbGFfaW5mbx'
    'hxIAEoCzISLnRpZWJhLkFsYUxpdmVJbmZvSAFSB2FsYUluZm+IAQESNAoLZGlzbGlrZUluZm8Y'
    'eCADKAsyEi50aWViYS5EaXNsaWtlSW5mb1ILZGlzbGlrZUluZm8SGgoIYWdyZWVOdW0YfCABKA'
    'VSCGFncmVlTnVtEiIKBWFncmVlGH4gASgLMgwudGllYmEuQWdyZWVSBWFncmVlEhsKCHNoYXJl'
    'TnVtGIcBIAEoA1IIc2hhcmVOdW0SRgoSb3JpZ2luX3RocmVhZF9pbmZvGI0BIAEoCzIXLnRpZW'
    'JhLk9yaWdpblRocmVhZEluZm9SEG9yaWdpblRocmVhZEluZm8SPQoQZmlyc3RQb3N0Q29udGVu'
    'dBiOASADKAsyEC50aWViYS5QYkNvbnRlbnRSEGZpcnN0UG9zdENvbnRlbnQSJwoPaXNfc2hhcm'
    'VfdGhyZWFkGI8BIAEoBVINaXNTaGFyZVRocmVhZBIZCgdpc1RvcGljGJQBIAEoBVIHaXNUb3Bp'
    'YxIlCg10b3BpY1VzZXJOYW1lGJUBIAEoCVINdG9waWNVc2VyTmFtZRIfCgp0b3BpY0g1VXJsGJ'
    'YBIAEoCVIKdG9waWNINVVybBIxCglmb3J1bUluZm8YmwEgASgLMhIudGllYmEuU2ltcGxlRm9y'
    'dW1SCWZvcnVtSW5mbxIdCgl0U2hhcmVJbWcYnwEgASgJUgl0U2hhcmVJbWcSEQoDbmlkGKQBIA'
    'EoCVIDbmlkEhUKBXRhYklkGK8BIAEoBVIFdGFiSWQSGQoHdGFiTmFtZRiwASABKAlSB3RhYk5h'
    'bWUSHQoJaXNEZWxldGVkGLUBIAEoBVIJaXNEZWxldGVkEhcKBmhvdE51bRi2ASABKAVSBmhvdE'
    '51bRIeCgpwb2xsX3N0eWxlGIACIAEoBVIJcG9sbFN0eWxlQgwKCl92aWRlb0luZm9CCwoJX2Fs'
    'YV9pbmZv');
