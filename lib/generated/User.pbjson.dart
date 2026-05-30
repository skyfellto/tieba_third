// This is a generated file - do not edit.
//
// Generated from User.proto.

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

@$core.Deprecated('Use userDescriptor instead')
const User$json = {
  '1': 'User',
  '2': [
    {'1': 'is_login', '3': 1, '4': 1, '5': 5, '10': 'isLogin'},
    {'1': 'id', '3': 2, '4': 1, '5': 3, '10': 'id'},
    {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    {'1': 'nameShow', '3': 4, '4': 1, '5': 9, '10': 'nameShow'},
    {'1': 'portrait', '3': 5, '4': 1, '5': 9, '10': 'portrait'},
    {'1': 'no_un', '3': 6, '4': 1, '5': 5, '10': 'noUn'},
    {'1': 'type', '3': 7, '4': 1, '5': 5, '10': 'type'},
    {'1': 'userhide', '3': 9, '4': 1, '5': 5, '10': 'userhide'},
    {'1': 'is_manager', '3': 11, '4': 1, '5': 5, '10': 'isManager'},
    {'1': 'rank', '3': 12, '4': 1, '5': 9, '10': 'rank'},
    {'1': 'bimg_url', '3': 13, '4': 1, '5': 9, '10': 'bimgUrl'},
    {'1': 'meizhi_level', '3': 14, '4': 1, '5': 5, '10': 'meizhiLevel'},
    {'1': 'is_verify', '3': 15, '4': 1, '5': 5, '10': 'isVerify'},
    {'1': 'is_interestman', '3': 16, '4': 1, '5': 5, '10': 'isInterestman'},
    {
      '1': 'iconinfo',
      '3': 17,
      '4': 3,
      '5': 11,
      '6': '.tieba.Icon',
      '10': 'iconinfo'
    },
    {'1': 'user_type', '3': 19, '4': 1, '5': 5, '10': 'userType'},
    {'1': 'is_coreuser', '3': 20, '4': 1, '5': 5, '10': 'isCoreuser'},
    {'1': 'is_huinibuke', '3': 21, '4': 1, '5': 5, '10': 'isHuinibuke'},
    {'1': 'ios_bimg_format', '3': 22, '4': 1, '5': 9, '10': 'iosBimgFormat'},
    {'1': 'level_id', '3': 23, '4': 1, '5': 5, '10': 'levelId'},
    {'1': 'is_like', '3': 24, '4': 1, '5': 5, '10': 'isLike'},
    {'1': 'is_bawu', '3': 25, '4': 1, '5': 5, '10': 'isBawu'},
    {'1': 'bawu_type', '3': 26, '4': 1, '5': 9, '10': 'bawuType'},
    {'1': 'portraith', '3': 27, '4': 1, '5': 9, '10': 'portraith'},
    {'1': 'ip', '3': 28, '4': 1, '5': 9, '10': 'ip'},
    {'1': 'BDUSS', '3': 29, '4': 1, '5': 9, '10': 'BDUSS'},
    {'1': 'fans_num', '3': 30, '4': 1, '5': 5, '10': 'fansNum'},
    {'1': 'concern_num', '3': 31, '4': 1, '5': 5, '10': 'concernNum'},
    {'1': 'sex', '3': 32, '4': 1, '5': 5, '10': 'sex'},
    {'1': 'my_like_num', '3': 33, '4': 1, '5': 5, '10': 'myLikeNum'},
    {'1': 'intro', '3': 34, '4': 1, '5': 9, '10': 'intro'},
    {'1': 'has_concerned', '3': 35, '4': 1, '5': 5, '10': 'hasConcerned'},
    {'1': 'passwd', '3': 36, '4': 1, '5': 9, '10': 'passwd'},
    {'1': 'post_num', '3': 37, '4': 1, '5': 5, '10': 'postNum'},
    {'1': 'tb_age', '3': 38, '4': 1, '5': 9, '10': 'tbAge'},
    {'1': 'is_mem', '3': 39, '4': 1, '5': 5, '10': 'isMem'},
    {'1': 'bimg_end_time', '3': 40, '4': 1, '5': 5, '10': 'bimgEndTime'},
    {'1': 'gender', '3': 42, '4': 1, '5': 5, '10': 'gender'},
    {'1': 'is_mask', '3': 43, '4': 1, '5': 5, '10': 'isMask'},
    {
      '1': 'user_pics',
      '3': 44,
      '4': 3,
      '5': 11,
      '6': '.tieba.UserPics',
      '10': 'userPics'
    },
    {
      '1': 'privSets',
      '3': 45,
      '4': 1,
      '5': 11,
      '6': '.tieba.PrivSets',
      '10': 'privSets'
    },
    {'1': 'is_friend', '3': 46, '4': 1, '5': 5, '10': 'isFriend'},
    {
      '1': 'likeForum',
      '3': 47,
      '4': 3,
      '5': 11,
      '6': '.tieba.LikeForumInfo',
      '10': 'likeForum'
    },
    {'1': 'gift_num', '3': 49, '4': 1, '5': 5, '10': 'giftNum'},
    {'1': 'is_select_tail', '3': 51, '4': 1, '5': 5, '10': 'isSelectTail'},
    {'1': 'is_guanfang', '3': 52, '4': 1, '5': 5, '10': 'isGuanfang'},
    {'1': 'bookmark_count', '3': 53, '4': 1, '5': 5, '10': 'bookmarkCount'},
    {
      '1': 'bookmark_new_count',
      '3': 54,
      '4': 1,
      '5': 5,
      '10': 'bookmarkNewCount'
    },
    {
      '1': 'mute_user',
      '3': 55,
      '4': 3,
      '5': 11,
      '6': '.tieba.SimpleUser',
      '10': 'muteUser'
    },
    {'1': 'friend_num', '3': 56, '4': 1, '5': 3, '10': 'friendNum'},
    {'1': 'fansNickname', '3': 57, '4': 1, '5': 9, '10': 'fansNickname'},
    {'1': 'bg_pic', '3': 58, '4': 1, '5': 9, '10': 'bgPic'},
    {
      '1': 'god_data',
      '3': 62,
      '4': 1,
      '5': 11,
      '6': '.tieba.GodInfo',
      '10': 'godData'
    },
    {'1': 'heavy_user', '3': 63, '4': 1, '5': 5, '10': 'heavyUser'},
    {'1': 'visitor_num', '3': 75, '4': 1, '5': 5, '10': 'visitorNum'},
    {
      '1': 'total_visitor_num',
      '3': 76,
      '4': 1,
      '5': 5,
      '10': 'totalVisitorNum'
    },
    {
      '1': 'nickname_update_time',
      '3': 86,
      '4': 1,
      '5': 5,
      '10': 'nicknameUpdateTime'
    },
    {'1': 'thread_num', '3': 87, '4': 1, '5': 5, '10': 'threadNum'},
    {'1': 'agree_num', '3': 88, '4': 1, '5': 5, '10': 'agreeNum'},
    {'1': 'left_call_num', '3': 89, '4': 1, '5': 5, '10': 'leftCallNum'},
    {'1': 'is_invited', '3': 90, '4': 1, '5': 5, '10': 'isInvited'},
    {'1': 'is_fans', '3': 91, '4': 1, '5': 5, '10': 'isFans'},
    {'1': 'priv_thread', '3': 92, '4': 1, '5': 5, '10': 'privThread'},
    {'1': 'is_videobiggie', '3': 93, '4': 1, '5': 5, '10': 'isVideobiggie'},
    {
      '1': 'is_show_redpacket',
      '3': 94,
      '4': 1,
      '5': 5,
      '10': 'isShowRedpacket'
    },
    {
      '1': 'birthday_info',
      '3': 96,
      '4': 1,
      '5': 11,
      '6': '.tieba.BirthdayInfo',
      '10': 'birthdayInfo'
    },
    {
      '1': 'can_modify_avatar',
      '3': 97,
      '4': 1,
      '5': 5,
      '10': 'canModifyAvatar'
    },
    {
      '1': 'modify_avatar_desc',
      '3': 98,
      '4': 1,
      '5': 9,
      '10': 'modifyAvatarDesc'
    },
    {'1': 'influence', '3': 99, '4': 1, '5': 5, '10': 'influence'},
    {'1': 'level_influence', '3': 100, '4': 1, '5': 9, '10': 'levelInfluence'},
    {
      '1': 'new_god_data',
      '3': 101,
      '4': 1,
      '5': 11,
      '6': '.tieba.NewGodInfo',
      '9': 0,
      '10': 'newGodData',
      '17': true
    },
    {
      '1': 'bawu_thrones',
      '3': 103,
      '4': 1,
      '5': 11,
      '6': '.tieba.BawuThrones',
      '10': 'bawuThrones'
    },
    {
      '1': 'bazhu_grade',
      '3': 105,
      '4': 1,
      '5': 11,
      '6': '.tieba.BazhuSign',
      '10': 'bazhuGrade'
    },
    {'1': 'isDefaultAvatar', '3': 106, '4': 1, '5': 5, '10': 'isDefaultAvatar'},
    {'1': 'favorite_num', '3': 109, '4': 1, '5': 5, '10': 'favoriteNum'},
    {'1': 'total_agree_num', '3': 118, '4': 1, '5': 13, '10': 'totalAgreeNum'},
    {'1': 'tieba_uid', '3': 120, '4': 1, '5': 9, '10': 'tiebaUid'},
    {'1': 'level_name', '3': 125, '4': 1, '5': 9, '10': 'levelName'},
    {'1': 'ip_address', '3': 127, '4': 1, '5': 9, '10': 'ipAddress'},
    {
      '1': 'is_nickname_editing',
      '3': 128,
      '4': 1,
      '5': 5,
      '10': 'isNicknameEditing'
    },
    {
      '1': 'editing_nickname',
      '3': 129,
      '4': 1,
      '5': 9,
      '10': 'editingNickname'
    },
    {
      '1': 'user_growth',
      '3': 137,
      '4': 1,
      '5': 11,
      '6': '.UserGrowth',
      '10': 'userGrowth'
    },
    {'1': 'display_intro', '3': 138, '4': 1, '5': 9, '10': 'displayIntro'},
    {'1': 'new_icon_url', '3': 139, '4': 3, '5': 9, '10': 'newIconUrl'},
    {'1': 'dynamic_url', '3': 140, '4': 1, '5': 9, '10': 'dynamicUrl'},
  ],
  '8': [
    {'1': '_new_god_data'},
  ],
};

/// Descriptor for `User`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userDescriptor = $convert.base64Decode(
    'CgRVc2VyEhkKCGlzX2xvZ2luGAEgASgFUgdpc0xvZ2luEg4KAmlkGAIgASgDUgJpZBISCgRuYW'
    '1lGAMgASgJUgRuYW1lEhoKCG5hbWVTaG93GAQgASgJUghuYW1lU2hvdxIaCghwb3J0cmFpdBgF'
    'IAEoCVIIcG9ydHJhaXQSEwoFbm9fdW4YBiABKAVSBG5vVW4SEgoEdHlwZRgHIAEoBVIEdHlwZR'
    'IaCgh1c2VyaGlkZRgJIAEoBVIIdXNlcmhpZGUSHQoKaXNfbWFuYWdlchgLIAEoBVIJaXNNYW5h'
    'Z2VyEhIKBHJhbmsYDCABKAlSBHJhbmsSGQoIYmltZ191cmwYDSABKAlSB2JpbWdVcmwSIQoMbW'
    'VpemhpX2xldmVsGA4gASgFUgttZWl6aGlMZXZlbBIbCglpc192ZXJpZnkYDyABKAVSCGlzVmVy'
    'aWZ5EiUKDmlzX2ludGVyZXN0bWFuGBAgASgFUg1pc0ludGVyZXN0bWFuEicKCGljb25pbmZvGB'
    'EgAygLMgsudGllYmEuSWNvblIIaWNvbmluZm8SGwoJdXNlcl90eXBlGBMgASgFUgh1c2VyVHlw'
    'ZRIfCgtpc19jb3JldXNlchgUIAEoBVIKaXNDb3JldXNlchIhCgxpc19odWluaWJ1a2UYFSABKA'
    'VSC2lzSHVpbmlidWtlEiYKD2lvc19iaW1nX2Zvcm1hdBgWIAEoCVINaW9zQmltZ0Zvcm1hdBIZ'
    'CghsZXZlbF9pZBgXIAEoBVIHbGV2ZWxJZBIXCgdpc19saWtlGBggASgFUgZpc0xpa2USFwoHaX'
    'NfYmF3dRgZIAEoBVIGaXNCYXd1EhsKCWJhd3VfdHlwZRgaIAEoCVIIYmF3dVR5cGUSHAoJcG9y'
    'dHJhaXRoGBsgASgJUglwb3J0cmFpdGgSDgoCaXAYHCABKAlSAmlwEhQKBUJEVVNTGB0gASgJUg'
    'VCRFVTUxIZCghmYW5zX251bRgeIAEoBVIHZmFuc051bRIfCgtjb25jZXJuX251bRgfIAEoBVIK'
    'Y29uY2Vybk51bRIQCgNzZXgYICABKAVSA3NleBIeCgtteV9saWtlX251bRghIAEoBVIJbXlMaW'
    'tlTnVtEhQKBWludHJvGCIgASgJUgVpbnRybxIjCg1oYXNfY29uY2VybmVkGCMgASgFUgxoYXND'
    'b25jZXJuZWQSFgoGcGFzc3dkGCQgASgJUgZwYXNzd2QSGQoIcG9zdF9udW0YJSABKAVSB3Bvc3'
    'ROdW0SFQoGdGJfYWdlGCYgASgJUgV0YkFnZRIVCgZpc19tZW0YJyABKAVSBWlzTWVtEiIKDWJp'
    'bWdfZW5kX3RpbWUYKCABKAVSC2JpbWdFbmRUaW1lEhYKBmdlbmRlchgqIAEoBVIGZ2VuZGVyEh'
    'cKB2lzX21hc2sYKyABKAVSBmlzTWFzaxIsCgl1c2VyX3BpY3MYLCADKAsyDy50aWViYS5Vc2Vy'
    'UGljc1IIdXNlclBpY3MSKwoIcHJpdlNldHMYLSABKAsyDy50aWViYS5Qcml2U2V0c1IIcHJpdl'
    'NldHMSGwoJaXNfZnJpZW5kGC4gASgFUghpc0ZyaWVuZBIyCglsaWtlRm9ydW0YLyADKAsyFC50'
    'aWViYS5MaWtlRm9ydW1JbmZvUglsaWtlRm9ydW0SGQoIZ2lmdF9udW0YMSABKAVSB2dpZnROdW'
    '0SJAoOaXNfc2VsZWN0X3RhaWwYMyABKAVSDGlzU2VsZWN0VGFpbBIfCgtpc19ndWFuZmFuZxg0'
    'IAEoBVIKaXNHdWFuZmFuZxIlCg5ib29rbWFya19jb3VudBg1IAEoBVINYm9va21hcmtDb3VudB'
    'IsChJib29rbWFya19uZXdfY291bnQYNiABKAVSEGJvb2ttYXJrTmV3Q291bnQSLgoJbXV0ZV91'
    'c2VyGDcgAygLMhEudGllYmEuU2ltcGxlVXNlclIIbXV0ZVVzZXISHQoKZnJpZW5kX251bRg4IA'
    'EoA1IJZnJpZW5kTnVtEiIKDGZhbnNOaWNrbmFtZRg5IAEoCVIMZmFuc05pY2tuYW1lEhUKBmJn'
    'X3BpYxg6IAEoCVIFYmdQaWMSKQoIZ29kX2RhdGEYPiABKAsyDi50aWViYS5Hb2RJbmZvUgdnb2'
    'REYXRhEh0KCmhlYXZ5X3VzZXIYPyABKAVSCWhlYXZ5VXNlchIfCgt2aXNpdG9yX251bRhLIAEo'
    'BVIKdmlzaXRvck51bRIqChF0b3RhbF92aXNpdG9yX251bRhMIAEoBVIPdG90YWxWaXNpdG9yTn'
    'VtEjAKFG5pY2tuYW1lX3VwZGF0ZV90aW1lGFYgASgFUhJuaWNrbmFtZVVwZGF0ZVRpbWUSHQoK'
    'dGhyZWFkX251bRhXIAEoBVIJdGhyZWFkTnVtEhsKCWFncmVlX251bRhYIAEoBVIIYWdyZWVOdW'
    '0SIgoNbGVmdF9jYWxsX251bRhZIAEoBVILbGVmdENhbGxOdW0SHQoKaXNfaW52aXRlZBhaIAEo'
    'BVIJaXNJbnZpdGVkEhcKB2lzX2ZhbnMYWyABKAVSBmlzRmFucxIfCgtwcml2X3RocmVhZBhcIA'
    'EoBVIKcHJpdlRocmVhZBIlCg5pc192aWRlb2JpZ2dpZRhdIAEoBVINaXNWaWRlb2JpZ2dpZRIq'
    'ChFpc19zaG93X3JlZHBhY2tldBheIAEoBVIPaXNTaG93UmVkcGFja2V0EjgKDWJpcnRoZGF5X2'
    'luZm8YYCABKAsyEy50aWViYS5CaXJ0aGRheUluZm9SDGJpcnRoZGF5SW5mbxIqChFjYW5fbW9k'
    'aWZ5X2F2YXRhchhhIAEoBVIPY2FuTW9kaWZ5QXZhdGFyEiwKEm1vZGlmeV9hdmF0YXJfZGVzYx'
    'hiIAEoCVIQbW9kaWZ5QXZhdGFyRGVzYxIcCglpbmZsdWVuY2UYYyABKAVSCWluZmx1ZW5jZRIn'
    'Cg9sZXZlbF9pbmZsdWVuY2UYZCABKAlSDmxldmVsSW5mbHVlbmNlEjgKDG5ld19nb2RfZGF0YR'
    'hlIAEoCzIRLnRpZWJhLk5ld0dvZEluZm9IAFIKbmV3R29kRGF0YYgBARI1CgxiYXd1X3Rocm9u'
    'ZXMYZyABKAsyEi50aWViYS5CYXd1VGhyb25lc1ILYmF3dVRocm9uZXMSMQoLYmF6aHVfZ3JhZG'
    'UYaSABKAsyEC50aWViYS5CYXpodVNpZ25SCmJhemh1R3JhZGUSKAoPaXNEZWZhdWx0QXZhdGFy'
    'GGogASgFUg9pc0RlZmF1bHRBdmF0YXISIQoMZmF2b3JpdGVfbnVtGG0gASgFUgtmYXZvcml0ZU'
    '51bRImCg90b3RhbF9hZ3JlZV9udW0YdiABKA1SDXRvdGFsQWdyZWVOdW0SGwoJdGllYmFfdWlk'
    'GHggASgJUgh0aWViYVVpZBIdCgpsZXZlbF9uYW1lGH0gASgJUglsZXZlbE5hbWUSHQoKaXBfYW'
    'RkcmVzcxh/IAEoCVIJaXBBZGRyZXNzEi8KE2lzX25pY2tuYW1lX2VkaXRpbmcYgAEgASgFUhFp'
    'c05pY2tuYW1lRWRpdGluZxIqChBlZGl0aW5nX25pY2tuYW1lGIEBIAEoCVIPZWRpdGluZ05pY2'
    'tuYW1lEi0KC3VzZXJfZ3Jvd3RoGIkBIAEoCzILLlVzZXJHcm93dGhSCnVzZXJHcm93dGgSJAoN'
    'ZGlzcGxheV9pbnRybxiKASABKAlSDGRpc3BsYXlJbnRybxIhCgxuZXdfaWNvbl91cmwYiwEgAy'
    'gJUgpuZXdJY29uVXJsEiAKC2R5bmFtaWNfdXJsGIwBIAEoCVIKZHluYW1pY1VybEIPCg1fbmV3'
    'X2dvZF9kYXRh');
