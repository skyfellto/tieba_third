// This is a generated file - do not edit.
//
// Generated from FrsPage/ForumInfo.proto.

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

@$core.Deprecated('Use forumInfoDescriptor instead')
const ForumInfo$json = {
  '1': 'ForumInfo',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'first_class', '3': 3, '4': 1, '5': 9, '10': 'firstClass'},
    {'1': 'second_class', '3': 4, '4': 1, '5': 9, '10': 'secondClass'},
    {'1': 'is_exists', '3': 5, '4': 1, '5': 5, '10': 'isExists'},
    {'1': 'is_like', '3': 6, '4': 1, '5': 5, '10': 'isLike'},
    {'1': 'user_level', '3': 7, '4': 1, '5': 5, '10': 'userLevel'},
    {'1': 'level_name', '3': 8, '4': 1, '5': 9, '10': 'levelName'},
    {'1': 'member_num', '3': 9, '4': 1, '5': 5, '10': 'memberNum'},
    {'1': 'thread_num', '3': 10, '4': 1, '5': 5, '10': 'threadNum'},
    {'1': 'post_num', '3': 11, '4': 1, '5': 5, '10': 'postNum'},
    {'1': 'has_frs_star', '3': 12, '4': 1, '5': 5, '10': 'hasFrsStar'},
    {'1': 'cur_score', '3': 13, '4': 1, '5': 5, '10': 'curScore'},
    {'1': 'levelup_score', '3': 14, '4': 1, '5': 5, '10': 'levelupScore'},
    {
      '1': 'sign_in_info',
      '3': 15,
      '4': 1,
      '5': 11,
      '6': '.tieba.frsPage.SignInfo',
      '10': 'signInInfo'
    },
    {
      '1': 'managers',
      '3': 17,
      '4': 3,
      '5': 11,
      '6': '.tieba.frsPage.Manager',
      '10': 'managers'
    },
    {'1': 'tids', '3': 20, '4': 1, '5': 9, '10': 'tids'},
    {
      '1': 'good_classify',
      '3': 21,
      '4': 3,
      '5': 11,
      '6': '.tieba.frsPage.Classify',
      '10': 'goodClassify'
    },
    {'1': 'avatar', '3': 24, '4': 1, '5': 9, '10': 'avatar'},
    {'1': 'slogan', '3': 25, '4': 1, '5': 9, '10': 'slogan'},
    {'1': 'f_share_img', '3': 78, '4': 1, '5': 9, '10': 'fShareImg'},
    {'1': 'forum_share_link', '3': 79, '4': 1, '5': 9, '10': 'forumShareLink'},
  ],
};

/// Descriptor for `ForumInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List forumInfoDescriptor = $convert.base64Decode(
    'CglGb3J1bUluZm8SDgoCaWQYASABKANSAmlkEhIKBG5hbWUYAiABKAlSBG5hbWUSHwoLZmlyc3'
    'RfY2xhc3MYAyABKAlSCmZpcnN0Q2xhc3MSIQoMc2Vjb25kX2NsYXNzGAQgASgJUgtzZWNvbmRD'
    'bGFzcxIbCglpc19leGlzdHMYBSABKAVSCGlzRXhpc3RzEhcKB2lzX2xpa2UYBiABKAVSBmlzTG'
    'lrZRIdCgp1c2VyX2xldmVsGAcgASgFUgl1c2VyTGV2ZWwSHQoKbGV2ZWxfbmFtZRgIIAEoCVIJ'
    'bGV2ZWxOYW1lEh0KCm1lbWJlcl9udW0YCSABKAVSCW1lbWJlck51bRIdCgp0aHJlYWRfbnVtGA'
    'ogASgFUgl0aHJlYWROdW0SGQoIcG9zdF9udW0YCyABKAVSB3Bvc3ROdW0SIAoMaGFzX2Zyc19z'
    'dGFyGAwgASgFUgpoYXNGcnNTdGFyEhsKCWN1cl9zY29yZRgNIAEoBVIIY3VyU2NvcmUSIwoNbG'
    'V2ZWx1cF9zY29yZRgOIAEoBVIMbGV2ZWx1cFNjb3JlEjkKDHNpZ25faW5faW5mbxgPIAEoCzIX'
    'LnRpZWJhLmZyc1BhZ2UuU2lnbkluZm9SCnNpZ25JbkluZm8SMgoIbWFuYWdlcnMYESADKAsyFi'
    '50aWViYS5mcnNQYWdlLk1hbmFnZXJSCG1hbmFnZXJzEhIKBHRpZHMYFCABKAlSBHRpZHMSPAoN'
    'Z29vZF9jbGFzc2lmeRgVIAMoCzIXLnRpZWJhLmZyc1BhZ2UuQ2xhc3NpZnlSDGdvb2RDbGFzc2'
    'lmeRIWCgZhdmF0YXIYGCABKAlSBmF2YXRhchIWCgZzbG9nYW4YGSABKAlSBnNsb2dhbhIeCgtm'
    'X3NoYXJlX2ltZxhOIAEoCVIJZlNoYXJlSW1nEigKEGZvcnVtX3NoYXJlX2xpbmsYTyABKAlSDm'
    'ZvcnVtU2hhcmVMaW5r');
