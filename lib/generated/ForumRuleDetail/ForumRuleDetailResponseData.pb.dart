// This is a generated file - do not edit.
//
// Generated from ForumRuleDetail/ForumRuleDetailResponseData.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../BawuRoleInfoPub.pb.dart' as $2;
import '../ForumInfo.pb.dart' as $0;
import '../ForumRule.pb.dart' as $1;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class ForumRuleDetailResponseData extends $pb.GeneratedMessage {
  factory ForumRuleDetailResponseData({
    $0.ForumInfo? forum,
    $core.String? title,
    $core.String? preface,
    $core.Iterable<$1.ForumRule>? rules,
    $core.int? auditStatus,
    $core.String? auditOpinion,
    $core.int? isManager,
    $fixnum.Int64? forumRuleId,
    $core.String? publishTime,
    $2.BawuRoleInfoPub? bazhu,
    $core.String? curTime,
  }) {
    final result = create();
    if (forum != null) result.forum = forum;
    if (title != null) result.title = title;
    if (preface != null) result.preface = preface;
    if (rules != null) result.rules.addAll(rules);
    if (auditStatus != null) result.auditStatus = auditStatus;
    if (auditOpinion != null) result.auditOpinion = auditOpinion;
    if (isManager != null) result.isManager = isManager;
    if (forumRuleId != null) result.forumRuleId = forumRuleId;
    if (publishTime != null) result.publishTime = publishTime;
    if (bazhu != null) result.bazhu = bazhu;
    if (curTime != null) result.curTime = curTime;
    return result;
  }

  ForumRuleDetailResponseData._();

  factory ForumRuleDetailResponseData.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ForumRuleDetailResponseData.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ForumRuleDetailResponseData',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'tieba.forumRuleDetail'),
      createEmptyInstance: create)
    ..aOM<$0.ForumInfo>(2, _omitFieldNames ? '' : 'forum',
        subBuilder: $0.ForumInfo.create)
    ..aOS(3, _omitFieldNames ? '' : 'title')
    ..aOS(4, _omitFieldNames ? '' : 'preface')
    ..pPM<$1.ForumRule>(5, _omitFieldNames ? '' : 'rules',
        subBuilder: $1.ForumRule.create)
    ..aI(6, _omitFieldNames ? '' : 'auditStatus')
    ..aOS(7, _omitFieldNames ? '' : 'auditOpinion')
    ..aI(8, _omitFieldNames ? '' : 'isManager')
    ..aInt64(9, _omitFieldNames ? '' : 'forumRuleId')
    ..aOS(10, _omitFieldNames ? '' : 'publishTime')
    ..aOM<$2.BawuRoleInfoPub>(11, _omitFieldNames ? '' : 'bazhu',
        subBuilder: $2.BawuRoleInfoPub.create)
    ..aOS(12, _omitFieldNames ? '' : 'curTime')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ForumRuleDetailResponseData clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ForumRuleDetailResponseData copyWith(
          void Function(ForumRuleDetailResponseData) updates) =>
      super.copyWith(
              (message) => updates(message as ForumRuleDetailResponseData))
          as ForumRuleDetailResponseData;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ForumRuleDetailResponseData create() =>
      ForumRuleDetailResponseData._();
  @$core.override
  ForumRuleDetailResponseData createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ForumRuleDetailResponseData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ForumRuleDetailResponseData>(create);
  static ForumRuleDetailResponseData? _defaultInstance;

  @$pb.TagNumber(2)
  $0.ForumInfo get forum => $_getN(0);
  @$pb.TagNumber(2)
  set forum($0.ForumInfo value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasForum() => $_has(0);
  @$pb.TagNumber(2)
  void clearForum() => $_clearField(2);
  @$pb.TagNumber(2)
  $0.ForumInfo ensureForum() => $_ensure(0);

  @$pb.TagNumber(3)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(3)
  set title($core.String value) => $_setString(1, value);
  @$pb.TagNumber(3)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(3)
  void clearTitle() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get preface => $_getSZ(2);
  @$pb.TagNumber(4)
  set preface($core.String value) => $_setString(2, value);
  @$pb.TagNumber(4)
  $core.bool hasPreface() => $_has(2);
  @$pb.TagNumber(4)
  void clearPreface() => $_clearField(4);

  @$pb.TagNumber(5)
  $pb.PbList<$1.ForumRule> get rules => $_getList(3);

  @$pb.TagNumber(6)
  $core.int get auditStatus => $_getIZ(4);
  @$pb.TagNumber(6)
  set auditStatus($core.int value) => $_setSignedInt32(4, value);
  @$pb.TagNumber(6)
  $core.bool hasAuditStatus() => $_has(4);
  @$pb.TagNumber(6)
  void clearAuditStatus() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get auditOpinion => $_getSZ(5);
  @$pb.TagNumber(7)
  set auditOpinion($core.String value) => $_setString(5, value);
  @$pb.TagNumber(7)
  $core.bool hasAuditOpinion() => $_has(5);
  @$pb.TagNumber(7)
  void clearAuditOpinion() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.int get isManager => $_getIZ(6);
  @$pb.TagNumber(8)
  set isManager($core.int value) => $_setSignedInt32(6, value);
  @$pb.TagNumber(8)
  $core.bool hasIsManager() => $_has(6);
  @$pb.TagNumber(8)
  void clearIsManager() => $_clearField(8);

  @$pb.TagNumber(9)
  $fixnum.Int64 get forumRuleId => $_getI64(7);
  @$pb.TagNumber(9)
  set forumRuleId($fixnum.Int64 value) => $_setInt64(7, value);
  @$pb.TagNumber(9)
  $core.bool hasForumRuleId() => $_has(7);
  @$pb.TagNumber(9)
  void clearForumRuleId() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.String get publishTime => $_getSZ(8);
  @$pb.TagNumber(10)
  set publishTime($core.String value) => $_setString(8, value);
  @$pb.TagNumber(10)
  $core.bool hasPublishTime() => $_has(8);
  @$pb.TagNumber(10)
  void clearPublishTime() => $_clearField(10);

  @$pb.TagNumber(11)
  $2.BawuRoleInfoPub get bazhu => $_getN(9);
  @$pb.TagNumber(11)
  set bazhu($2.BawuRoleInfoPub value) => $_setField(11, value);
  @$pb.TagNumber(11)
  $core.bool hasBazhu() => $_has(9);
  @$pb.TagNumber(11)
  void clearBazhu() => $_clearField(11);
  @$pb.TagNumber(11)
  $2.BawuRoleInfoPub ensureBazhu() => $_ensure(9);

  @$pb.TagNumber(12)
  $core.String get curTime => $_getSZ(10);
  @$pb.TagNumber(12)
  set curTime($core.String value) => $_setString(10, value);
  @$pb.TagNumber(12)
  $core.bool hasCurTime() => $_has(10);
  @$pb.TagNumber(12)
  void clearCurTime() => $_clearField(12);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
