// This is a generated file - do not edit.
//
// Generated from GetForumDetail/GetForumDetailResponseData.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../BawuThrones.pb.dart' as $10;
import '../ForumMemberInfo.pb.dart' as $13;
import '../HotUserRankEntry.pb.dart' as $11;
import '../ManagerApplyInfo.pb.dart' as $2;
import '../PriManagerApplyInfo.pb.dart' as $3;
import '../RecommendForumInfo.pb.dart' as $0;
import '../ServiceArea.pb.dart' as $12;
import '../SimpleThreadInfo.pb.dart' as $1;
import 'ApplyStatus.pb.dart' as $7;
import 'BawuAction.pb.dart' as $6;
import 'BazhuGrade.pb.dart' as $9;
import 'BazhuUniversity.pb.dart' as $8;
import 'ForumDataCenter.pb.dart' as $5;
import 'ManagerElectionTab.pb.dart' as $4;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class GetForumDetailResponseData extends $pb.GeneratedMessage {
  factory GetForumDetailResponseData({
    $0.RecommendForumInfo? forumInfo,
    $core.Iterable<$1.SimpleThreadInfo>? threadList,
    $core.int? isBawuShow,
    $2.ManagerApplyInfo? bzApplyInfo,
    $core.int? isComplaintShow,
    $3.PriManagerApplyInfo? pribzApplyInfo,
    $4.ManagerElectionTab? electionTab,
    $core.int? isForumDataShow,
    $5.ForumDataCenter? forumData,
    $core.Iterable<$6.BawuAction>? bawuActions,
    $7.ApplyStatus? applyStatus,
    $8.BazhuUniversity? bazhuUniversity,
    $9.BazhuGrade? bazhuGrade,
    $core.int? isForumCardEnable,
    $10.BawuThrones? bawuThrones,
    $core.String? isBazhuShow,
    $11.HotUserRankEntry? hotUserEntry,
    $12.ServiceArea? smallApp,
    $13.ForumMemberInfo? forumMember,
  }) {
    final result = create();
    if (forumInfo != null) result.forumInfo = forumInfo;
    if (threadList != null) result.threadList.addAll(threadList);
    if (isBawuShow != null) result.isBawuShow = isBawuShow;
    if (bzApplyInfo != null) result.bzApplyInfo = bzApplyInfo;
    if (isComplaintShow != null) result.isComplaintShow = isComplaintShow;
    if (pribzApplyInfo != null) result.pribzApplyInfo = pribzApplyInfo;
    if (electionTab != null) result.electionTab = electionTab;
    if (isForumDataShow != null) result.isForumDataShow = isForumDataShow;
    if (forumData != null) result.forumData = forumData;
    if (bawuActions != null) result.bawuActions.addAll(bawuActions);
    if (applyStatus != null) result.applyStatus = applyStatus;
    if (bazhuUniversity != null) result.bazhuUniversity = bazhuUniversity;
    if (bazhuGrade != null) result.bazhuGrade = bazhuGrade;
    if (isForumCardEnable != null) result.isForumCardEnable = isForumCardEnable;
    if (bawuThrones != null) result.bawuThrones = bawuThrones;
    if (isBazhuShow != null) result.isBazhuShow = isBazhuShow;
    if (hotUserEntry != null) result.hotUserEntry = hotUserEntry;
    if (smallApp != null) result.smallApp = smallApp;
    if (forumMember != null) result.forumMember = forumMember;
    return result;
  }

  GetForumDetailResponseData._();

  factory GetForumDetailResponseData.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetForumDetailResponseData.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetForumDetailResponseData',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'tieba.getForumDetail'),
      createEmptyInstance: create)
    ..aOM<$0.RecommendForumInfo>(1, _omitFieldNames ? '' : 'forumInfo',
        subBuilder: $0.RecommendForumInfo.create)
    ..pPM<$1.SimpleThreadInfo>(2, _omitFieldNames ? '' : 'threadList',
        subBuilder: $1.SimpleThreadInfo.create)
    ..aI(4, _omitFieldNames ? '' : 'isBawuShow')
    ..aOM<$2.ManagerApplyInfo>(5, _omitFieldNames ? '' : 'bzApplyInfo',
        subBuilder: $2.ManagerApplyInfo.create)
    ..aI(6, _omitFieldNames ? '' : 'isComplaintShow')
    ..aOM<$3.PriManagerApplyInfo>(7, _omitFieldNames ? '' : 'pribzApplyInfo',
        subBuilder: $3.PriManagerApplyInfo.create)
    ..aOM<$4.ManagerElectionTab>(8, _omitFieldNames ? '' : 'electionTab',
        subBuilder: $4.ManagerElectionTab.create)
    ..aI(9, _omitFieldNames ? '' : 'isForumDataShow')
    ..aOM<$5.ForumDataCenter>(10, _omitFieldNames ? '' : 'forumData',
        subBuilder: $5.ForumDataCenter.create)
    ..pPM<$6.BawuAction>(11, _omitFieldNames ? '' : 'bawuActions',
        subBuilder: $6.BawuAction.create)
    ..aOM<$7.ApplyStatus>(12, _omitFieldNames ? '' : 'applyStatus',
        subBuilder: $7.ApplyStatus.create)
    ..aOM<$8.BazhuUniversity>(13, _omitFieldNames ? '' : 'bazhuUniversity',
        subBuilder: $8.BazhuUniversity.create)
    ..aOM<$9.BazhuGrade>(15, _omitFieldNames ? '' : 'bazhuGrade',
        subBuilder: $9.BazhuGrade.create)
    ..aI(16, _omitFieldNames ? '' : 'isForumCardEnable')
    ..aOM<$10.BawuThrones>(17, _omitFieldNames ? '' : 'bawuThrones',
        subBuilder: $10.BawuThrones.create)
    ..aOS(18, _omitFieldNames ? '' : 'isBazhuShow')
    ..aOM<$11.HotUserRankEntry>(19, _omitFieldNames ? '' : 'hotUserEntry',
        subBuilder: $11.HotUserRankEntry.create)
    ..aOM<$12.ServiceArea>(20, _omitFieldNames ? '' : 'smallApp',
        subBuilder: $12.ServiceArea.create)
    ..aOM<$13.ForumMemberInfo>(21, _omitFieldNames ? '' : 'forumMember',
        subBuilder: $13.ForumMemberInfo.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetForumDetailResponseData clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetForumDetailResponseData copyWith(
          void Function(GetForumDetailResponseData) updates) =>
      super.copyWith(
              (message) => updates(message as GetForumDetailResponseData))
          as GetForumDetailResponseData;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetForumDetailResponseData create() => GetForumDetailResponseData._();
  @$core.override
  GetForumDetailResponseData createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetForumDetailResponseData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetForumDetailResponseData>(create);
  static GetForumDetailResponseData? _defaultInstance;

  @$pb.TagNumber(1)
  $0.RecommendForumInfo get forumInfo => $_getN(0);
  @$pb.TagNumber(1)
  set forumInfo($0.RecommendForumInfo value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasForumInfo() => $_has(0);
  @$pb.TagNumber(1)
  void clearForumInfo() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.RecommendForumInfo ensureForumInfo() => $_ensure(0);

  @$pb.TagNumber(2)
  $pb.PbList<$1.SimpleThreadInfo> get threadList => $_getList(1);

  @$pb.TagNumber(4)
  $core.int get isBawuShow => $_getIZ(2);
  @$pb.TagNumber(4)
  set isBawuShow($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(4)
  $core.bool hasIsBawuShow() => $_has(2);
  @$pb.TagNumber(4)
  void clearIsBawuShow() => $_clearField(4);

  @$pb.TagNumber(5)
  $2.ManagerApplyInfo get bzApplyInfo => $_getN(3);
  @$pb.TagNumber(5)
  set bzApplyInfo($2.ManagerApplyInfo value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasBzApplyInfo() => $_has(3);
  @$pb.TagNumber(5)
  void clearBzApplyInfo() => $_clearField(5);
  @$pb.TagNumber(5)
  $2.ManagerApplyInfo ensureBzApplyInfo() => $_ensure(3);

  @$pb.TagNumber(6)
  $core.int get isComplaintShow => $_getIZ(4);
  @$pb.TagNumber(6)
  set isComplaintShow($core.int value) => $_setSignedInt32(4, value);
  @$pb.TagNumber(6)
  $core.bool hasIsComplaintShow() => $_has(4);
  @$pb.TagNumber(6)
  void clearIsComplaintShow() => $_clearField(6);

  @$pb.TagNumber(7)
  $3.PriManagerApplyInfo get pribzApplyInfo => $_getN(5);
  @$pb.TagNumber(7)
  set pribzApplyInfo($3.PriManagerApplyInfo value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasPribzApplyInfo() => $_has(5);
  @$pb.TagNumber(7)
  void clearPribzApplyInfo() => $_clearField(7);
  @$pb.TagNumber(7)
  $3.PriManagerApplyInfo ensurePribzApplyInfo() => $_ensure(5);

  @$pb.TagNumber(8)
  $4.ManagerElectionTab get electionTab => $_getN(6);
  @$pb.TagNumber(8)
  set electionTab($4.ManagerElectionTab value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasElectionTab() => $_has(6);
  @$pb.TagNumber(8)
  void clearElectionTab() => $_clearField(8);
  @$pb.TagNumber(8)
  $4.ManagerElectionTab ensureElectionTab() => $_ensure(6);

  @$pb.TagNumber(9)
  $core.int get isForumDataShow => $_getIZ(7);
  @$pb.TagNumber(9)
  set isForumDataShow($core.int value) => $_setSignedInt32(7, value);
  @$pb.TagNumber(9)
  $core.bool hasIsForumDataShow() => $_has(7);
  @$pb.TagNumber(9)
  void clearIsForumDataShow() => $_clearField(9);

  @$pb.TagNumber(10)
  $5.ForumDataCenter get forumData => $_getN(8);
  @$pb.TagNumber(10)
  set forumData($5.ForumDataCenter value) => $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasForumData() => $_has(8);
  @$pb.TagNumber(10)
  void clearForumData() => $_clearField(10);
  @$pb.TagNumber(10)
  $5.ForumDataCenter ensureForumData() => $_ensure(8);

  @$pb.TagNumber(11)
  $pb.PbList<$6.BawuAction> get bawuActions => $_getList(9);

  @$pb.TagNumber(12)
  $7.ApplyStatus get applyStatus => $_getN(10);
  @$pb.TagNumber(12)
  set applyStatus($7.ApplyStatus value) => $_setField(12, value);
  @$pb.TagNumber(12)
  $core.bool hasApplyStatus() => $_has(10);
  @$pb.TagNumber(12)
  void clearApplyStatus() => $_clearField(12);
  @$pb.TagNumber(12)
  $7.ApplyStatus ensureApplyStatus() => $_ensure(10);

  @$pb.TagNumber(13)
  $8.BazhuUniversity get bazhuUniversity => $_getN(11);
  @$pb.TagNumber(13)
  set bazhuUniversity($8.BazhuUniversity value) => $_setField(13, value);
  @$pb.TagNumber(13)
  $core.bool hasBazhuUniversity() => $_has(11);
  @$pb.TagNumber(13)
  void clearBazhuUniversity() => $_clearField(13);
  @$pb.TagNumber(13)
  $8.BazhuUniversity ensureBazhuUniversity() => $_ensure(11);

  @$pb.TagNumber(15)
  $9.BazhuGrade get bazhuGrade => $_getN(12);
  @$pb.TagNumber(15)
  set bazhuGrade($9.BazhuGrade value) => $_setField(15, value);
  @$pb.TagNumber(15)
  $core.bool hasBazhuGrade() => $_has(12);
  @$pb.TagNumber(15)
  void clearBazhuGrade() => $_clearField(15);
  @$pb.TagNumber(15)
  $9.BazhuGrade ensureBazhuGrade() => $_ensure(12);

  @$pb.TagNumber(16)
  $core.int get isForumCardEnable => $_getIZ(13);
  @$pb.TagNumber(16)
  set isForumCardEnable($core.int value) => $_setSignedInt32(13, value);
  @$pb.TagNumber(16)
  $core.bool hasIsForumCardEnable() => $_has(13);
  @$pb.TagNumber(16)
  void clearIsForumCardEnable() => $_clearField(16);

  @$pb.TagNumber(17)
  $10.BawuThrones get bawuThrones => $_getN(14);
  @$pb.TagNumber(17)
  set bawuThrones($10.BawuThrones value) => $_setField(17, value);
  @$pb.TagNumber(17)
  $core.bool hasBawuThrones() => $_has(14);
  @$pb.TagNumber(17)
  void clearBawuThrones() => $_clearField(17);
  @$pb.TagNumber(17)
  $10.BawuThrones ensureBawuThrones() => $_ensure(14);

  @$pb.TagNumber(18)
  $core.String get isBazhuShow => $_getSZ(15);
  @$pb.TagNumber(18)
  set isBazhuShow($core.String value) => $_setString(15, value);
  @$pb.TagNumber(18)
  $core.bool hasIsBazhuShow() => $_has(15);
  @$pb.TagNumber(18)
  void clearIsBazhuShow() => $_clearField(18);

  @$pb.TagNumber(19)
  $11.HotUserRankEntry get hotUserEntry => $_getN(16);
  @$pb.TagNumber(19)
  set hotUserEntry($11.HotUserRankEntry value) => $_setField(19, value);
  @$pb.TagNumber(19)
  $core.bool hasHotUserEntry() => $_has(16);
  @$pb.TagNumber(19)
  void clearHotUserEntry() => $_clearField(19);
  @$pb.TagNumber(19)
  $11.HotUserRankEntry ensureHotUserEntry() => $_ensure(16);

  @$pb.TagNumber(20)
  $12.ServiceArea get smallApp => $_getN(17);
  @$pb.TagNumber(20)
  set smallApp($12.ServiceArea value) => $_setField(20, value);
  @$pb.TagNumber(20)
  $core.bool hasSmallApp() => $_has(17);
  @$pb.TagNumber(20)
  void clearSmallApp() => $_clearField(20);
  @$pb.TagNumber(20)
  $12.ServiceArea ensureSmallApp() => $_ensure(17);

  @$pb.TagNumber(21)
  $13.ForumMemberInfo get forumMember => $_getN(18);
  @$pb.TagNumber(21)
  set forumMember($13.ForumMemberInfo value) => $_setField(21, value);
  @$pb.TagNumber(21)
  $core.bool hasForumMember() => $_has(18);
  @$pb.TagNumber(21)
  void clearForumMember() => $_clearField(21);
  @$pb.TagNumber(21)
  $13.ForumMemberInfo ensureForumMember() => $_ensure(18);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
