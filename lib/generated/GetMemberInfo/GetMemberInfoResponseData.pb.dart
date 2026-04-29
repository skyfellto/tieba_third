// This is a generated file - do not edit.
//
// Generated from GetMemberInfo/GetMemberInfoResponseData.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../ForumMember.pb.dart' as $1;
import '../MemberGroupInfo.pb.dart' as $0;
import '../PriManagerApplyInfo.pb.dart' as $4;
import 'ManagerApplyInfo.pb.dart' as $3;
import 'MemberGodInfo.pb.dart' as $2;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class GetMemberInfoResponseData extends $pb.GeneratedMessage {
  factory GetMemberInfoResponseData({
    $core.Iterable<$0.MemberGroupInfo>? memberGroupInfo,
    $1.ForumMember? forumMemberInfo,
    $2.MemberGodInfo? memberGodInfo,
    $3.ManagerApplyInfo? managerApplyInfo,
    $core.int? isPrivateForum,
    $core.int? isBawuapplyShow,
    $4.PriManagerApplyInfo? primanagerApplyInfo,
  }) {
    final result = create();
    if (memberGroupInfo != null) result.memberGroupInfo.addAll(memberGroupInfo);
    if (forumMemberInfo != null) result.forumMemberInfo = forumMemberInfo;
    if (memberGodInfo != null) result.memberGodInfo = memberGodInfo;
    if (managerApplyInfo != null) result.managerApplyInfo = managerApplyInfo;
    if (isPrivateForum != null) result.isPrivateForum = isPrivateForum;
    if (isBawuapplyShow != null) result.isBawuapplyShow = isBawuapplyShow;
    if (primanagerApplyInfo != null)
      result.primanagerApplyInfo = primanagerApplyInfo;
    return result;
  }

  GetMemberInfoResponseData._();

  factory GetMemberInfoResponseData.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetMemberInfoResponseData.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetMemberInfoResponseData',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'tieba.getMemberInfo'),
      createEmptyInstance: create)
    ..pPM<$0.MemberGroupInfo>(1, _omitFieldNames ? '' : 'memberGroupInfo',
        subBuilder: $0.MemberGroupInfo.create)
    ..aOM<$1.ForumMember>(2, _omitFieldNames ? '' : 'forumMemberInfo',
        subBuilder: $1.ForumMember.create)
    ..aOM<$2.MemberGodInfo>(3, _omitFieldNames ? '' : 'memberGodInfo',
        subBuilder: $2.MemberGodInfo.create)
    ..aOM<$3.ManagerApplyInfo>(4, _omitFieldNames ? '' : 'managerApplyInfo',
        subBuilder: $3.ManagerApplyInfo.create)
    ..aI(5, _omitFieldNames ? '' : 'isPrivateForum')
    ..aI(6, _omitFieldNames ? '' : 'isBawuapplyShow')
    ..aOM<$4.PriManagerApplyInfo>(
        7, _omitFieldNames ? '' : 'primanagerApplyInfo',
        subBuilder: $4.PriManagerApplyInfo.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetMemberInfoResponseData clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetMemberInfoResponseData copyWith(
          void Function(GetMemberInfoResponseData) updates) =>
      super.copyWith((message) => updates(message as GetMemberInfoResponseData))
          as GetMemberInfoResponseData;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetMemberInfoResponseData create() => GetMemberInfoResponseData._();
  @$core.override
  GetMemberInfoResponseData createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetMemberInfoResponseData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetMemberInfoResponseData>(create);
  static GetMemberInfoResponseData? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$0.MemberGroupInfo> get memberGroupInfo => $_getList(0);

  @$pb.TagNumber(2)
  $1.ForumMember get forumMemberInfo => $_getN(1);
  @$pb.TagNumber(2)
  set forumMemberInfo($1.ForumMember value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasForumMemberInfo() => $_has(1);
  @$pb.TagNumber(2)
  void clearForumMemberInfo() => $_clearField(2);
  @$pb.TagNumber(2)
  $1.ForumMember ensureForumMemberInfo() => $_ensure(1);

  @$pb.TagNumber(3)
  $2.MemberGodInfo get memberGodInfo => $_getN(2);
  @$pb.TagNumber(3)
  set memberGodInfo($2.MemberGodInfo value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasMemberGodInfo() => $_has(2);
  @$pb.TagNumber(3)
  void clearMemberGodInfo() => $_clearField(3);
  @$pb.TagNumber(3)
  $2.MemberGodInfo ensureMemberGodInfo() => $_ensure(2);

  @$pb.TagNumber(4)
  $3.ManagerApplyInfo get managerApplyInfo => $_getN(3);
  @$pb.TagNumber(4)
  set managerApplyInfo($3.ManagerApplyInfo value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasManagerApplyInfo() => $_has(3);
  @$pb.TagNumber(4)
  void clearManagerApplyInfo() => $_clearField(4);
  @$pb.TagNumber(4)
  $3.ManagerApplyInfo ensureManagerApplyInfo() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.int get isPrivateForum => $_getIZ(4);
  @$pb.TagNumber(5)
  set isPrivateForum($core.int value) => $_setSignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasIsPrivateForum() => $_has(4);
  @$pb.TagNumber(5)
  void clearIsPrivateForum() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get isBawuapplyShow => $_getIZ(5);
  @$pb.TagNumber(6)
  set isBawuapplyShow($core.int value) => $_setSignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasIsBawuapplyShow() => $_has(5);
  @$pb.TagNumber(6)
  void clearIsBawuapplyShow() => $_clearField(6);

  @$pb.TagNumber(7)
  $4.PriManagerApplyInfo get primanagerApplyInfo => $_getN(6);
  @$pb.TagNumber(7)
  set primanagerApplyInfo($4.PriManagerApplyInfo value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasPrimanagerApplyInfo() => $_has(6);
  @$pb.TagNumber(7)
  void clearPrimanagerApplyInfo() => $_clearField(7);
  @$pb.TagNumber(7)
  $4.PriManagerApplyInfo ensurePrimanagerApplyInfo() => $_ensure(6);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
