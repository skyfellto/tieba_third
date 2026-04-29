// This is a generated file - do not edit.
//
// Generated from RecommendForumInfo.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'PbContent.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class RecommendForumInfo extends $pb.GeneratedMessage {
  factory RecommendForumInfo({
    $core.String? avatar,
    $fixnum.Int64? forumId,
    $core.String? forumName,
    $core.int? isLike,
    $core.int? memberCount,
    $core.int? threadCount,
    $core.String? slogan,
    $core.Iterable<$0.PbContent>? content,
    $core.int? forumType,
    $core.String? authen,
    $core.String? recomReason,
    $core.int? isBrandForum,
    $core.String? hotText,
    $core.String? abtestTag,
    $core.String? source,
    $core.String? extra,
    $core.int? isPrivateForum,
    $core.String? lv1Name,
    $core.String? lv2Name,
    $core.String? avatarOrigin,
    $fixnum.Int64? hotThreadId,
    $core.int? isRecommendForum,
  }) {
    final result = create();
    if (avatar != null) result.avatar = avatar;
    if (forumId != null) result.forumId = forumId;
    if (forumName != null) result.forumName = forumName;
    if (isLike != null) result.isLike = isLike;
    if (memberCount != null) result.memberCount = memberCount;
    if (threadCount != null) result.threadCount = threadCount;
    if (slogan != null) result.slogan = slogan;
    if (content != null) result.content.addAll(content);
    if (forumType != null) result.forumType = forumType;
    if (authen != null) result.authen = authen;
    if (recomReason != null) result.recomReason = recomReason;
    if (isBrandForum != null) result.isBrandForum = isBrandForum;
    if (hotText != null) result.hotText = hotText;
    if (abtestTag != null) result.abtestTag = abtestTag;
    if (source != null) result.source = source;
    if (extra != null) result.extra = extra;
    if (isPrivateForum != null) result.isPrivateForum = isPrivateForum;
    if (lv1Name != null) result.lv1Name = lv1Name;
    if (lv2Name != null) result.lv2Name = lv2Name;
    if (avatarOrigin != null) result.avatarOrigin = avatarOrigin;
    if (hotThreadId != null) result.hotThreadId = hotThreadId;
    if (isRecommendForum != null) result.isRecommendForum = isRecommendForum;
    return result;
  }

  RecommendForumInfo._();

  factory RecommendForumInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RecommendForumInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RecommendForumInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'avatar')
    ..a<$fixnum.Int64>(2, _omitFieldNames ? '' : 'forumId', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(3, _omitFieldNames ? '' : 'forumName')
    ..aI(4, _omitFieldNames ? '' : 'isLike', fieldType: $pb.PbFieldType.OU3)
    ..aI(5, _omitFieldNames ? '' : 'memberCount',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(6, _omitFieldNames ? '' : 'threadCount',
        fieldType: $pb.PbFieldType.OU3)
    ..aOS(7, _omitFieldNames ? '' : 'slogan')
    ..pPM<$0.PbContent>(8, _omitFieldNames ? '' : 'content',
        subBuilder: $0.PbContent.create)
    ..aI(9, _omitFieldNames ? '' : 'forumType', fieldType: $pb.PbFieldType.OU3)
    ..aOS(10, _omitFieldNames ? '' : 'authen')
    ..aOS(11, _omitFieldNames ? '' : 'recomReason')
    ..aI(12, _omitFieldNames ? '' : 'isBrandForum',
        fieldType: $pb.PbFieldType.OU3)
    ..aOS(13, _omitFieldNames ? '' : 'hotText')
    ..aOS(14, _omitFieldNames ? '' : 'abtestTag')
    ..aOS(15, _omitFieldNames ? '' : 'source')
    ..aOS(16, _omitFieldNames ? '' : 'extra')
    ..aI(17, _omitFieldNames ? '' : 'isPrivateForum',
        fieldType: $pb.PbFieldType.OU3)
    ..aOS(18, _omitFieldNames ? '' : 'lv1Name')
    ..aOS(19, _omitFieldNames ? '' : 'lv2Name')
    ..aOS(20, _omitFieldNames ? '' : 'avatarOrigin')
    ..a<$fixnum.Int64>(
        22, _omitFieldNames ? '' : 'hotThreadId', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aI(23, _omitFieldNames ? '' : 'isRecommendForum')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RecommendForumInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RecommendForumInfo copyWith(void Function(RecommendForumInfo) updates) =>
      super.copyWith((message) => updates(message as RecommendForumInfo))
          as RecommendForumInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RecommendForumInfo create() => RecommendForumInfo._();
  @$core.override
  RecommendForumInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RecommendForumInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RecommendForumInfo>(create);
  static RecommendForumInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get avatar => $_getSZ(0);
  @$pb.TagNumber(1)
  set avatar($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasAvatar() => $_has(0);
  @$pb.TagNumber(1)
  void clearAvatar() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get forumId => $_getI64(1);
  @$pb.TagNumber(2)
  set forumId($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasForumId() => $_has(1);
  @$pb.TagNumber(2)
  void clearForumId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get forumName => $_getSZ(2);
  @$pb.TagNumber(3)
  set forumName($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasForumName() => $_has(2);
  @$pb.TagNumber(3)
  void clearForumName() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get isLike => $_getIZ(3);
  @$pb.TagNumber(4)
  set isLike($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasIsLike() => $_has(3);
  @$pb.TagNumber(4)
  void clearIsLike() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get memberCount => $_getIZ(4);
  @$pb.TagNumber(5)
  set memberCount($core.int value) => $_setUnsignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasMemberCount() => $_has(4);
  @$pb.TagNumber(5)
  void clearMemberCount() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get threadCount => $_getIZ(5);
  @$pb.TagNumber(6)
  set threadCount($core.int value) => $_setUnsignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasThreadCount() => $_has(5);
  @$pb.TagNumber(6)
  void clearThreadCount() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get slogan => $_getSZ(6);
  @$pb.TagNumber(7)
  set slogan($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasSlogan() => $_has(6);
  @$pb.TagNumber(7)
  void clearSlogan() => $_clearField(7);

  @$pb.TagNumber(8)
  $pb.PbList<$0.PbContent> get content => $_getList(7);

  @$pb.TagNumber(9)
  $core.int get forumType => $_getIZ(8);
  @$pb.TagNumber(9)
  set forumType($core.int value) => $_setUnsignedInt32(8, value);
  @$pb.TagNumber(9)
  $core.bool hasForumType() => $_has(8);
  @$pb.TagNumber(9)
  void clearForumType() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.String get authen => $_getSZ(9);
  @$pb.TagNumber(10)
  set authen($core.String value) => $_setString(9, value);
  @$pb.TagNumber(10)
  $core.bool hasAuthen() => $_has(9);
  @$pb.TagNumber(10)
  void clearAuthen() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.String get recomReason => $_getSZ(10);
  @$pb.TagNumber(11)
  set recomReason($core.String value) => $_setString(10, value);
  @$pb.TagNumber(11)
  $core.bool hasRecomReason() => $_has(10);
  @$pb.TagNumber(11)
  void clearRecomReason() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.int get isBrandForum => $_getIZ(11);
  @$pb.TagNumber(12)
  set isBrandForum($core.int value) => $_setUnsignedInt32(11, value);
  @$pb.TagNumber(12)
  $core.bool hasIsBrandForum() => $_has(11);
  @$pb.TagNumber(12)
  void clearIsBrandForum() => $_clearField(12);

  @$pb.TagNumber(13)
  $core.String get hotText => $_getSZ(12);
  @$pb.TagNumber(13)
  set hotText($core.String value) => $_setString(12, value);
  @$pb.TagNumber(13)
  $core.bool hasHotText() => $_has(12);
  @$pb.TagNumber(13)
  void clearHotText() => $_clearField(13);

  @$pb.TagNumber(14)
  $core.String get abtestTag => $_getSZ(13);
  @$pb.TagNumber(14)
  set abtestTag($core.String value) => $_setString(13, value);
  @$pb.TagNumber(14)
  $core.bool hasAbtestTag() => $_has(13);
  @$pb.TagNumber(14)
  void clearAbtestTag() => $_clearField(14);

  @$pb.TagNumber(15)
  $core.String get source => $_getSZ(14);
  @$pb.TagNumber(15)
  set source($core.String value) => $_setString(14, value);
  @$pb.TagNumber(15)
  $core.bool hasSource() => $_has(14);
  @$pb.TagNumber(15)
  void clearSource() => $_clearField(15);

  @$pb.TagNumber(16)
  $core.String get extra => $_getSZ(15);
  @$pb.TagNumber(16)
  set extra($core.String value) => $_setString(15, value);
  @$pb.TagNumber(16)
  $core.bool hasExtra() => $_has(15);
  @$pb.TagNumber(16)
  void clearExtra() => $_clearField(16);

  @$pb.TagNumber(17)
  $core.int get isPrivateForum => $_getIZ(16);
  @$pb.TagNumber(17)
  set isPrivateForum($core.int value) => $_setUnsignedInt32(16, value);
  @$pb.TagNumber(17)
  $core.bool hasIsPrivateForum() => $_has(16);
  @$pb.TagNumber(17)
  void clearIsPrivateForum() => $_clearField(17);

  @$pb.TagNumber(18)
  $core.String get lv1Name => $_getSZ(17);
  @$pb.TagNumber(18)
  set lv1Name($core.String value) => $_setString(17, value);
  @$pb.TagNumber(18)
  $core.bool hasLv1Name() => $_has(17);
  @$pb.TagNumber(18)
  void clearLv1Name() => $_clearField(18);

  @$pb.TagNumber(19)
  $core.String get lv2Name => $_getSZ(18);
  @$pb.TagNumber(19)
  set lv2Name($core.String value) => $_setString(18, value);
  @$pb.TagNumber(19)
  $core.bool hasLv2Name() => $_has(18);
  @$pb.TagNumber(19)
  void clearLv2Name() => $_clearField(19);

  @$pb.TagNumber(20)
  $core.String get avatarOrigin => $_getSZ(19);
  @$pb.TagNumber(20)
  set avatarOrigin($core.String value) => $_setString(19, value);
  @$pb.TagNumber(20)
  $core.bool hasAvatarOrigin() => $_has(19);
  @$pb.TagNumber(20)
  void clearAvatarOrigin() => $_clearField(20);

  @$pb.TagNumber(22)
  $fixnum.Int64 get hotThreadId => $_getI64(20);
  @$pb.TagNumber(22)
  set hotThreadId($fixnum.Int64 value) => $_setInt64(20, value);
  @$pb.TagNumber(22)
  $core.bool hasHotThreadId() => $_has(20);
  @$pb.TagNumber(22)
  void clearHotThreadId() => $_clearField(22);

  @$pb.TagNumber(23)
  $core.int get isRecommendForum => $_getIZ(21);
  @$pb.TagNumber(23)
  set isRecommendForum($core.int value) => $_setSignedInt32(21, value);
  @$pb.TagNumber(23)
  $core.bool hasIsRecommendForum() => $_has(21);
  @$pb.TagNumber(23)
  void clearIsRecommendForum() => $_clearField(23);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
