// This is a generated file - do not edit.
//
// Generated from UserPost/UserPostRequestData.proto.

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

@$core.Deprecated('Use userPostRequestDataDescriptor instead')
const UserPostRequestData$json = {
  '1': 'UserPostRequestData',
  '2': [
    {'1': 'uid', '3': 1, '4': 1, '5': 3, '10': 'uid'},
    {'1': 'rn', '3': 2, '4': 1, '5': 13, '10': 'rn'},
    {'1': 'offset', '3': 3, '4': 1, '5': 13, '10': 'offset'},
    {
      '1': 'is_thread',
      '3': 4,
      '4': 1,
      '5': 13,
      '9': 0,
      '10': 'isThread',
      '17': true
    },
    {'1': 'need_content', '3': 5, '4': 1, '5': 13, '10': 'needContent'},
    {'1': 'forum_id', '3': 6, '4': 1, '5': 4, '10': 'forumId'},
    {'1': 'begin_time', '3': 7, '4': 1, '5': 13, '10': 'beginTime'},
    {'1': 'end_time', '3': 8, '4': 1, '5': 13, '10': 'endTime'},
    {
      '1': 'subtype',
      '3': 9,
      '4': 1,
      '5': 13,
      '9': 1,
      '10': 'subtype',
      '17': true
    },
    {'1': 'check_login', '3': 10, '4': 1, '5': 13, '10': 'checkLogin'},
    {'1': 'ip_str', '3': 11, '4': 1, '5': 9, '10': 'ipStr'},
    {'1': 'ip_int', '3': 12, '4': 1, '5': 13, '10': 'ipInt'},
    {'1': 'module_name', '3': 13, '4': 1, '5': 9, '10': 'moduleName'},
    {'1': 'st_type', '3': 14, '4': 1, '5': 13, '10': 'stType'},
    {'1': 'st_param', '3': 15, '4': 1, '5': 13, '10': 'stParam'},
    {'1': 'smile_grade', '3': 16, '4': 1, '5': 13, '10': 'smileGrade'},
    {'1': 'support_noun', '3': 17, '4': 1, '5': 13, '10': 'supportNoun'},
    {'1': 'login', '3': 18, '4': 1, '5': 13, '10': 'login'},
    {'1': 'user_id', '3': 19, '4': 1, '5': 3, '10': 'userId'},
    {'1': 'user_name', '3': 20, '4': 1, '5': 9, '10': 'userName'},
    {'1': 'no_un', '3': 21, '4': 1, '5': 13, '10': 'noUn'},
    {'1': 'portrait', '3': 22, '4': 1, '5': 9, '10': 'portrait'},
    {'1': 'mobile', '3': 23, '4': 1, '5': 9, '10': 'mobile'},
    {'1': 'email', '3': 24, '4': 1, '5': 9, '10': 'email'},
    {'1': 'cookie', '3': 25, '4': 1, '5': 9, '10': 'cookie'},
    {'1': 'pn', '3': 26, '4': 1, '5': 13, '10': 'pn'},
    {
      '1': 'common',
      '3': 27,
      '4': 1,
      '5': 11,
      '6': '.tieba.CommonRequest',
      '10': 'common'
    },
    {'1': 'is_twzhibo', '3': 28, '4': 1, '5': 13, '10': 'isTwzhibo'},
    {'1': 'scr_w', '3': 29, '4': 1, '5': 5, '10': 'scrW'},
    {'1': 'scr_h', '3': 30, '4': 1, '5': 5, '10': 'scrH'},
    {'1': 'scr_dip', '3': 31, '4': 1, '5': 1, '10': 'scrDip'},
    {'1': 'q_type', '3': 32, '4': 1, '5': 5, '10': 'qType'},
    {
      '1': 'is_view_card',
      '3': 33,
      '4': 1,
      '5': 5,
      '9': 2,
      '10': 'isViewCard',
      '17': true
    },
    {'1': 'last_thread_time', '3': 34, '4': 1, '5': 13, '10': 'lastThreadTime'},
    {'1': 'work_tab_id', '3': 35, '4': 1, '5': 13, '10': 'workTabId'},
    {'1': 'type', '3': 36, '4': 1, '5': 13, '10': 'type'},
    {'1': 'from_type', '3': 37, '4': 1, '5': 13, '10': 'fromType'},
    {'1': 'begin_thread_id', '3': 38, '4': 1, '5': 4, '10': 'beginThreadId'},
  ],
  '8': [
    {'1': '_is_thread'},
    {'1': '_subtype'},
    {'1': '_is_view_card'},
  ],
};

/// Descriptor for `UserPostRequestData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userPostRequestDataDescriptor = $convert.base64Decode(
    'ChNVc2VyUG9zdFJlcXVlc3REYXRhEhAKA3VpZBgBIAEoA1IDdWlkEg4KAnJuGAIgASgNUgJybh'
    'IWCgZvZmZzZXQYAyABKA1SBm9mZnNldBIgCglpc190aHJlYWQYBCABKA1IAFIIaXNUaHJlYWSI'
    'AQESIQoMbmVlZF9jb250ZW50GAUgASgNUgtuZWVkQ29udGVudBIZCghmb3J1bV9pZBgGIAEoBF'
    'IHZm9ydW1JZBIdCgpiZWdpbl90aW1lGAcgASgNUgliZWdpblRpbWUSGQoIZW5kX3RpbWUYCCAB'
    'KA1SB2VuZFRpbWUSHQoHc3VidHlwZRgJIAEoDUgBUgdzdWJ0eXBliAEBEh8KC2NoZWNrX2xvZ2'
    'luGAogASgNUgpjaGVja0xvZ2luEhUKBmlwX3N0chgLIAEoCVIFaXBTdHISFQoGaXBfaW50GAwg'
    'ASgNUgVpcEludBIfCgttb2R1bGVfbmFtZRgNIAEoCVIKbW9kdWxlTmFtZRIXCgdzdF90eXBlGA'
    '4gASgNUgZzdFR5cGUSGQoIc3RfcGFyYW0YDyABKA1SB3N0UGFyYW0SHwoLc21pbGVfZ3JhZGUY'
    'ECABKA1SCnNtaWxlR3JhZGUSIQoMc3VwcG9ydF9ub3VuGBEgASgNUgtzdXBwb3J0Tm91bhIUCg'
    'Vsb2dpbhgSIAEoDVIFbG9naW4SFwoHdXNlcl9pZBgTIAEoA1IGdXNlcklkEhsKCXVzZXJfbmFt'
    'ZRgUIAEoCVIIdXNlck5hbWUSEwoFbm9fdW4YFSABKA1SBG5vVW4SGgoIcG9ydHJhaXQYFiABKA'
    'lSCHBvcnRyYWl0EhYKBm1vYmlsZRgXIAEoCVIGbW9iaWxlEhQKBWVtYWlsGBggASgJUgVlbWFp'
    'bBIWCgZjb29raWUYGSABKAlSBmNvb2tpZRIOCgJwbhgaIAEoDVICcG4SLAoGY29tbW9uGBsgAS'
    'gLMhQudGllYmEuQ29tbW9uUmVxdWVzdFIGY29tbW9uEh0KCmlzX3R3emhpYm8YHCABKA1SCWlz'
    'VHd6aGlibxITCgVzY3JfdxgdIAEoBVIEc2NyVxITCgVzY3JfaBgeIAEoBVIEc2NySBIXCgdzY3'
    'JfZGlwGB8gASgBUgZzY3JEaXASFQoGcV90eXBlGCAgASgFUgVxVHlwZRIlCgxpc192aWV3X2Nh'
    'cmQYISABKAVIAlIKaXNWaWV3Q2FyZIgBARIoChBsYXN0X3RocmVhZF90aW1lGCIgASgNUg5sYX'
    'N0VGhyZWFkVGltZRIeCgt3b3JrX3RhYl9pZBgjIAEoDVIJd29ya1RhYklkEhIKBHR5cGUYJCAB'
    'KA1SBHR5cGUSGwoJZnJvbV90eXBlGCUgASgNUghmcm9tVHlwZRImCg9iZWdpbl90aHJlYWRfaW'
    'QYJiABKARSDWJlZ2luVGhyZWFkSWRCDAoKX2lzX3RocmVhZEIKCghfc3VidHlwZUIPCg1faXNf'
    'dmlld19jYXJk');
