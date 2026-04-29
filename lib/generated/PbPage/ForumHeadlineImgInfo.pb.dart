// This is a generated file - do not edit.
//
// Generated from PbPage/ForumHeadlineImgInfo.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class ForumHeadlineImgInfo extends $pb.GeneratedMessage {
  factory ForumHeadlineImgInfo({
    $core.String? imgUserName,
    $core.String? imgUrl,
    $core.int? rankNum,
    $fixnum.Int64? imgUserId,
    $core.String? rankUrl,
    $core.String? rankUpInfo,
  }) {
    final result = create();
    if (imgUserName != null) result.imgUserName = imgUserName;
    if (imgUrl != null) result.imgUrl = imgUrl;
    if (rankNum != null) result.rankNum = rankNum;
    if (imgUserId != null) result.imgUserId = imgUserId;
    if (rankUrl != null) result.rankUrl = rankUrl;
    if (rankUpInfo != null) result.rankUpInfo = rankUpInfo;
    return result;
  }

  ForumHeadlineImgInfo._();

  factory ForumHeadlineImgInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ForumHeadlineImgInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ForumHeadlineImgInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba.pbPage'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'imgUserName')
    ..aOS(2, _omitFieldNames ? '' : 'imgUrl')
    ..aI(3, _omitFieldNames ? '' : 'rankNum')
    ..aInt64(4, _omitFieldNames ? '' : 'imgUserId')
    ..aOS(5, _omitFieldNames ? '' : 'rankUrl')
    ..aOS(6, _omitFieldNames ? '' : 'rankUpInfo')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ForumHeadlineImgInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ForumHeadlineImgInfo copyWith(void Function(ForumHeadlineImgInfo) updates) =>
      super.copyWith((message) => updates(message as ForumHeadlineImgInfo))
          as ForumHeadlineImgInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ForumHeadlineImgInfo create() => ForumHeadlineImgInfo._();
  @$core.override
  ForumHeadlineImgInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ForumHeadlineImgInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ForumHeadlineImgInfo>(create);
  static ForumHeadlineImgInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get imgUserName => $_getSZ(0);
  @$pb.TagNumber(1)
  set imgUserName($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasImgUserName() => $_has(0);
  @$pb.TagNumber(1)
  void clearImgUserName() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get imgUrl => $_getSZ(1);
  @$pb.TagNumber(2)
  set imgUrl($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasImgUrl() => $_has(1);
  @$pb.TagNumber(2)
  void clearImgUrl() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get rankNum => $_getIZ(2);
  @$pb.TagNumber(3)
  set rankNum($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasRankNum() => $_has(2);
  @$pb.TagNumber(3)
  void clearRankNum() => $_clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get imgUserId => $_getI64(3);
  @$pb.TagNumber(4)
  set imgUserId($fixnum.Int64 value) => $_setInt64(3, value);
  @$pb.TagNumber(4)
  $core.bool hasImgUserId() => $_has(3);
  @$pb.TagNumber(4)
  void clearImgUserId() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get rankUrl => $_getSZ(4);
  @$pb.TagNumber(5)
  set rankUrl($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasRankUrl() => $_has(4);
  @$pb.TagNumber(5)
  void clearRankUrl() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get rankUpInfo => $_getSZ(5);
  @$pb.TagNumber(6)
  set rankUpInfo($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasRankUpInfo() => $_has(5);
  @$pb.TagNumber(6)
  void clearRankUpInfo() => $_clearField(6);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
