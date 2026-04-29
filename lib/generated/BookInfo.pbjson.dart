// This is a generated file - do not edit.
//
// Generated from BookInfo.proto.

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

@$core.Deprecated('Use bookInfoDescriptor instead')
const BookInfo$json = {
  '1': 'BookInfo',
  '2': [
    {'1': 'book_id', '3': 1, '4': 1, '5': 9, '10': 'bookId'},
    {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    {'1': 'cover', '3': 3, '4': 1, '5': 9, '10': 'cover'},
    {'1': 'book_type', '3': 4, '4': 1, '5': 13, '10': 'bookType'},
    {'1': 'class_id', '3': 5, '4': 1, '5': 13, '10': 'classId'},
    {'1': 'class_name', '3': 6, '4': 1, '5': 9, '10': 'className'},
    {'1': 'sub_class_id', '3': 7, '4': 1, '5': 13, '10': 'subClassId'},
    {'1': 'sub_class_name', '3': 8, '4': 1, '5': 9, '10': 'subClassName'},
    {'1': 'book_size', '3': 9, '4': 1, '5': 13, '10': 'bookSize'},
    {'1': 'intro', '3': 10, '4': 1, '5': 9, '10': 'intro'},
    {'1': 'author', '3': 11, '4': 1, '5': 9, '10': 'author'},
    {'1': 'author_intro', '3': 12, '4': 1, '5': 9, '10': 'authorIntro'},
    {
      '1': 'tags',
      '3': 13,
      '4': 3,
      '5': 11,
      '6': '.tieba.BookTag',
      '10': 'tags'
    },
    {'1': 'total_chapter', '3': 14, '4': 1, '5': 13, '10': 'totalChapter'},
    {'1': 'words', '3': 15, '4': 1, '5': 13, '10': 'words'},
    {'1': 'orignal_price', '3': 16, '4': 1, '5': 13, '10': 'orignalPrice'},
    {'1': 'price', '3': 17, '4': 1, '5': 13, '10': 'price'},
    {'1': 'discount_ratio', '3': 18, '4': 1, '5': 9, '10': 'discountRatio'},
    {'1': 'is_finish', '3': 19, '4': 1, '5': 13, '10': 'isFinish'},
    {'1': 'ad_code', '3': 20, '4': 1, '5': 9, '10': 'adCode'},
    {'1': 'is_buy', '3': 21, '4': 1, '5': 13, '10': 'isBuy'},
    {'1': 'free_info', '3': 22, '4': 1, '5': 9, '10': 'freeInfo'},
    {'1': 'publisher', '3': 23, '4': 1, '5': 9, '10': 'publisher'},
    {'1': 'isbn', '3': 24, '4': 1, '5': 9, '10': 'isbn'},
    {'1': 'copyright', '3': 25, '4': 1, '5': 9, '10': 'copyright'},
    {'1': 'publish_text', '3': 26, '4': 1, '5': 9, '10': 'publishText'},
    {'1': 'copyright_text', '3': 27, '4': 1, '5': 9, '10': 'copyrightText'},
    {'1': 'publish_time', '3': 28, '4': 1, '5': 9, '10': 'publishTime'},
    {'1': 'publish_type', '3': 29, '4': 1, '5': 9, '10': 'publishType'},
    {'1': 'update_time', '3': 30, '4': 1, '5': 13, '10': 'updateTime'},
    {'1': 'big_cover', '3': 31, '4': 1, '5': 9, '10': 'bigCover'},
    {'1': 'discount_type', '3': 32, '4': 1, '5': 13, '10': 'discountType'},
    {'1': 'discount_icon', '3': 33, '4': 1, '5': 9, '10': 'discountIcon'},
    {'1': 'read_count', '3': 34, '4': 1, '5': 13, '10': 'readCount'},
    {'1': 'total_page', '3': 35, '4': 1, '5': 13, '10': 'totalPage'},
    {'1': 'book_ver', '3': 36, '4': 1, '5': 9, '10': 'bookVer'},
    {'1': 'chapter_ver', '3': 37, '4': 1, '5': 9, '10': 'chapterVer'},
    {'1': 'forum_id', '3': 38, '4': 1, '5': 4, '10': 'forumId'},
    {'1': 'forum_name', '3': 39, '4': 1, '5': 9, '10': 'forumName'},
    {'1': 'discuss', '3': 40, '4': 1, '5': 9, '10': 'discuss'},
    {'1': 'cp_id', '3': 41, '4': 1, '5': 9, '10': 'cpId'},
    {'1': 'paper_price', '3': 42, '4': 1, '5': 9, '10': 'paperPrice'},
    {'1': 'first_chapter', '3': 43, '4': 1, '5': 13, '10': 'firstChapter'},
    {'1': 'charge_type', '3': 44, '4': 1, '5': 13, '10': 'chargeType'},
    {'1': 'member_show_type', '3': 45, '4': 1, '5': 13, '10': 'memberShowType'},
  ],
};

/// Descriptor for `BookInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bookInfoDescriptor = $convert.base64Decode(
    'CghCb29rSW5mbxIXCgdib29rX2lkGAEgASgJUgZib29rSWQSFAoFdGl0bGUYAiABKAlSBXRpdG'
    'xlEhQKBWNvdmVyGAMgASgJUgVjb3ZlchIbCglib29rX3R5cGUYBCABKA1SCGJvb2tUeXBlEhkK'
    'CGNsYXNzX2lkGAUgASgNUgdjbGFzc0lkEh0KCmNsYXNzX25hbWUYBiABKAlSCWNsYXNzTmFtZR'
    'IgCgxzdWJfY2xhc3NfaWQYByABKA1SCnN1YkNsYXNzSWQSJAoOc3ViX2NsYXNzX25hbWUYCCAB'
    'KAlSDHN1YkNsYXNzTmFtZRIbCglib29rX3NpemUYCSABKA1SCGJvb2tTaXplEhQKBWludHJvGA'
    'ogASgJUgVpbnRybxIWCgZhdXRob3IYCyABKAlSBmF1dGhvchIhCgxhdXRob3JfaW50cm8YDCAB'
    'KAlSC2F1dGhvckludHJvEiIKBHRhZ3MYDSADKAsyDi50aWViYS5Cb29rVGFnUgR0YWdzEiMKDX'
    'RvdGFsX2NoYXB0ZXIYDiABKA1SDHRvdGFsQ2hhcHRlchIUCgV3b3JkcxgPIAEoDVIFd29yZHMS'
    'IwoNb3JpZ25hbF9wcmljZRgQIAEoDVIMb3JpZ25hbFByaWNlEhQKBXByaWNlGBEgASgNUgVwcm'
    'ljZRIlCg5kaXNjb3VudF9yYXRpbxgSIAEoCVINZGlzY291bnRSYXRpbxIbCglpc19maW5pc2gY'
    'EyABKA1SCGlzRmluaXNoEhcKB2FkX2NvZGUYFCABKAlSBmFkQ29kZRIVCgZpc19idXkYFSABKA'
    '1SBWlzQnV5EhsKCWZyZWVfaW5mbxgWIAEoCVIIZnJlZUluZm8SHAoJcHVibGlzaGVyGBcgASgJ'
    'UglwdWJsaXNoZXISEgoEaXNibhgYIAEoCVIEaXNibhIcCgljb3B5cmlnaHQYGSABKAlSCWNvcH'
    'lyaWdodBIhCgxwdWJsaXNoX3RleHQYGiABKAlSC3B1Ymxpc2hUZXh0EiUKDmNvcHlyaWdodF90'
    'ZXh0GBsgASgJUg1jb3B5cmlnaHRUZXh0EiEKDHB1Ymxpc2hfdGltZRgcIAEoCVILcHVibGlzaF'
    'RpbWUSIQoMcHVibGlzaF90eXBlGB0gASgJUgtwdWJsaXNoVHlwZRIfCgt1cGRhdGVfdGltZRge'
    'IAEoDVIKdXBkYXRlVGltZRIbCgliaWdfY292ZXIYHyABKAlSCGJpZ0NvdmVyEiMKDWRpc2NvdW'
    '50X3R5cGUYICABKA1SDGRpc2NvdW50VHlwZRIjCg1kaXNjb3VudF9pY29uGCEgASgJUgxkaXNj'
    'b3VudEljb24SHQoKcmVhZF9jb3VudBgiIAEoDVIJcmVhZENvdW50Eh0KCnRvdGFsX3BhZ2UYIy'
    'ABKA1SCXRvdGFsUGFnZRIZCghib29rX3ZlchgkIAEoCVIHYm9va1ZlchIfCgtjaGFwdGVyX3Zl'
    'chglIAEoCVIKY2hhcHRlclZlchIZCghmb3J1bV9pZBgmIAEoBFIHZm9ydW1JZBIdCgpmb3J1bV'
    '9uYW1lGCcgASgJUglmb3J1bU5hbWUSGAoHZGlzY3VzcxgoIAEoCVIHZGlzY3VzcxITCgVjcF9p'
    'ZBgpIAEoCVIEY3BJZBIfCgtwYXBlcl9wcmljZRgqIAEoCVIKcGFwZXJQcmljZRIjCg1maXJzdF'
    '9jaGFwdGVyGCsgASgNUgxmaXJzdENoYXB0ZXISHwoLY2hhcmdlX3R5cGUYLCABKA1SCmNoYXJn'
    'ZVR5cGUSKAoQbWVtYmVyX3Nob3dfdHlwZRgtIAEoDVIObWVtYmVyU2hvd1R5cGU=');
