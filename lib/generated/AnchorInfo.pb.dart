// This is a generated file - do not edit.
//
// Generated from AnchorInfo.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'ZhiBoInfoTW.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class AnchorInfo extends $pb.GeneratedMessage {
  factory AnchorInfo({
    $core.String? portrait,
    $core.String? name,
    $core.int? startTime,
    $core.int? status,
    $fixnum.Int64? authorId,
    $core.String? authorName,
    $core.int? listeners,
    $core.int? likers,
    $fixnum.Int64? groupId,
    $core.String? intro,
    $core.String? publisherPortrait,
    $core.String? publisherName,
    $fixnum.Int64? publisherId,
    $core.String? forumName,
    $core.int? fromType,
    $core.int? isVip,
    $core.int? labelId,
    $core.String? labelName,
    $core.int? type,
    $0.ZhiBoInfoTW? twzhiboInfo,
  }) {
    final result = create();
    if (portrait != null) result.portrait = portrait;
    if (name != null) result.name = name;
    if (startTime != null) result.startTime = startTime;
    if (status != null) result.status = status;
    if (authorId != null) result.authorId = authorId;
    if (authorName != null) result.authorName = authorName;
    if (listeners != null) result.listeners = listeners;
    if (likers != null) result.likers = likers;
    if (groupId != null) result.groupId = groupId;
    if (intro != null) result.intro = intro;
    if (publisherPortrait != null) result.publisherPortrait = publisherPortrait;
    if (publisherName != null) result.publisherName = publisherName;
    if (publisherId != null) result.publisherId = publisherId;
    if (forumName != null) result.forumName = forumName;
    if (fromType != null) result.fromType = fromType;
    if (isVip != null) result.isVip = isVip;
    if (labelId != null) result.labelId = labelId;
    if (labelName != null) result.labelName = labelName;
    if (type != null) result.type = type;
    if (twzhiboInfo != null) result.twzhiboInfo = twzhiboInfo;
    return result;
  }

  AnchorInfo._();

  factory AnchorInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AnchorInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AnchorInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'portrait')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aI(3, _omitFieldNames ? '' : 'startTime')
    ..aI(4, _omitFieldNames ? '' : 'status')
    ..aInt64(5, _omitFieldNames ? '' : 'authorId')
    ..aOS(6, _omitFieldNames ? '' : 'authorName')
    ..aI(7, _omitFieldNames ? '' : 'listeners')
    ..aI(8, _omitFieldNames ? '' : 'likers')
    ..aInt64(9, _omitFieldNames ? '' : 'groupId')
    ..aOS(10, _omitFieldNames ? '' : 'intro')
    ..aOS(11, _omitFieldNames ? '' : 'publisherPortrait',
        protoName: 'publisherPortrait')
    ..aOS(12, _omitFieldNames ? '' : 'publisherName',
        protoName: 'publisherName')
    ..aInt64(13, _omitFieldNames ? '' : 'publisherId', protoName: 'publisherId')
    ..aOS(14, _omitFieldNames ? '' : 'forumName', protoName: 'forumName')
    ..aI(15, _omitFieldNames ? '' : 'fromType')
    ..aI(16, _omitFieldNames ? '' : 'isVip')
    ..aI(17, _omitFieldNames ? '' : 'labelId')
    ..aOS(18, _omitFieldNames ? '' : 'labelName')
    ..aI(19, _omitFieldNames ? '' : 'type')
    ..aOM<$0.ZhiBoInfoTW>(20, _omitFieldNames ? '' : 'twzhiboInfo',
        subBuilder: $0.ZhiBoInfoTW.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AnchorInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AnchorInfo copyWith(void Function(AnchorInfo) updates) =>
      super.copyWith((message) => updates(message as AnchorInfo)) as AnchorInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AnchorInfo create() => AnchorInfo._();
  @$core.override
  AnchorInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AnchorInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AnchorInfo>(create);
  static AnchorInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get portrait => $_getSZ(0);
  @$pb.TagNumber(1)
  set portrait($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPortrait() => $_has(0);
  @$pb.TagNumber(1)
  void clearPortrait() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get startTime => $_getIZ(2);
  @$pb.TagNumber(3)
  set startTime($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasStartTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearStartTime() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get status => $_getIZ(3);
  @$pb.TagNumber(4)
  set status($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasStatus() => $_has(3);
  @$pb.TagNumber(4)
  void clearStatus() => $_clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get authorId => $_getI64(4);
  @$pb.TagNumber(5)
  set authorId($fixnum.Int64 value) => $_setInt64(4, value);
  @$pb.TagNumber(5)
  $core.bool hasAuthorId() => $_has(4);
  @$pb.TagNumber(5)
  void clearAuthorId() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get authorName => $_getSZ(5);
  @$pb.TagNumber(6)
  set authorName($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasAuthorName() => $_has(5);
  @$pb.TagNumber(6)
  void clearAuthorName() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.int get listeners => $_getIZ(6);
  @$pb.TagNumber(7)
  set listeners($core.int value) => $_setSignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasListeners() => $_has(6);
  @$pb.TagNumber(7)
  void clearListeners() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.int get likers => $_getIZ(7);
  @$pb.TagNumber(8)
  set likers($core.int value) => $_setSignedInt32(7, value);
  @$pb.TagNumber(8)
  $core.bool hasLikers() => $_has(7);
  @$pb.TagNumber(8)
  void clearLikers() => $_clearField(8);

  @$pb.TagNumber(9)
  $fixnum.Int64 get groupId => $_getI64(8);
  @$pb.TagNumber(9)
  set groupId($fixnum.Int64 value) => $_setInt64(8, value);
  @$pb.TagNumber(9)
  $core.bool hasGroupId() => $_has(8);
  @$pb.TagNumber(9)
  void clearGroupId() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.String get intro => $_getSZ(9);
  @$pb.TagNumber(10)
  set intro($core.String value) => $_setString(9, value);
  @$pb.TagNumber(10)
  $core.bool hasIntro() => $_has(9);
  @$pb.TagNumber(10)
  void clearIntro() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.String get publisherPortrait => $_getSZ(10);
  @$pb.TagNumber(11)
  set publisherPortrait($core.String value) => $_setString(10, value);
  @$pb.TagNumber(11)
  $core.bool hasPublisherPortrait() => $_has(10);
  @$pb.TagNumber(11)
  void clearPublisherPortrait() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.String get publisherName => $_getSZ(11);
  @$pb.TagNumber(12)
  set publisherName($core.String value) => $_setString(11, value);
  @$pb.TagNumber(12)
  $core.bool hasPublisherName() => $_has(11);
  @$pb.TagNumber(12)
  void clearPublisherName() => $_clearField(12);

  @$pb.TagNumber(13)
  $fixnum.Int64 get publisherId => $_getI64(12);
  @$pb.TagNumber(13)
  set publisherId($fixnum.Int64 value) => $_setInt64(12, value);
  @$pb.TagNumber(13)
  $core.bool hasPublisherId() => $_has(12);
  @$pb.TagNumber(13)
  void clearPublisherId() => $_clearField(13);

  @$pb.TagNumber(14)
  $core.String get forumName => $_getSZ(13);
  @$pb.TagNumber(14)
  set forumName($core.String value) => $_setString(13, value);
  @$pb.TagNumber(14)
  $core.bool hasForumName() => $_has(13);
  @$pb.TagNumber(14)
  void clearForumName() => $_clearField(14);

  @$pb.TagNumber(15)
  $core.int get fromType => $_getIZ(14);
  @$pb.TagNumber(15)
  set fromType($core.int value) => $_setSignedInt32(14, value);
  @$pb.TagNumber(15)
  $core.bool hasFromType() => $_has(14);
  @$pb.TagNumber(15)
  void clearFromType() => $_clearField(15);

  @$pb.TagNumber(16)
  $core.int get isVip => $_getIZ(15);
  @$pb.TagNumber(16)
  set isVip($core.int value) => $_setSignedInt32(15, value);
  @$pb.TagNumber(16)
  $core.bool hasIsVip() => $_has(15);
  @$pb.TagNumber(16)
  void clearIsVip() => $_clearField(16);

  @$pb.TagNumber(17)
  $core.int get labelId => $_getIZ(16);
  @$pb.TagNumber(17)
  set labelId($core.int value) => $_setSignedInt32(16, value);
  @$pb.TagNumber(17)
  $core.bool hasLabelId() => $_has(16);
  @$pb.TagNumber(17)
  void clearLabelId() => $_clearField(17);

  @$pb.TagNumber(18)
  $core.String get labelName => $_getSZ(17);
  @$pb.TagNumber(18)
  set labelName($core.String value) => $_setString(17, value);
  @$pb.TagNumber(18)
  $core.bool hasLabelName() => $_has(17);
  @$pb.TagNumber(18)
  void clearLabelName() => $_clearField(18);

  @$pb.TagNumber(19)
  $core.int get type => $_getIZ(18);
  @$pb.TagNumber(19)
  set type($core.int value) => $_setSignedInt32(18, value);
  @$pb.TagNumber(19)
  $core.bool hasType() => $_has(18);
  @$pb.TagNumber(19)
  void clearType() => $_clearField(19);

  @$pb.TagNumber(20)
  $0.ZhiBoInfoTW get twzhiboInfo => $_getN(19);
  @$pb.TagNumber(20)
  set twzhiboInfo($0.ZhiBoInfoTW value) => $_setField(20, value);
  @$pb.TagNumber(20)
  $core.bool hasTwzhiboInfo() => $_has(19);
  @$pb.TagNumber(20)
  void clearTwzhiboInfo() => $_clearField(20);
  @$pb.TagNumber(20)
  $0.ZhiBoInfoTW ensureTwzhiboInfo() => $_ensure(19);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
