// This is a generated file - do not edit.
//
// Generated from MemberGroupInfo.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'BawuRoleInfoPub.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class MemberGroupInfo extends $pb.GeneratedMessage {
  factory MemberGroupInfo({
    $core.String? memberGroupType,
    $core.int? memberGroupNum,
    $core.Iterable<$0.BawuRoleInfoPub>? memberGroupList,
  }) {
    final result = create();
    if (memberGroupType != null) result.memberGroupType = memberGroupType;
    if (memberGroupNum != null) result.memberGroupNum = memberGroupNum;
    if (memberGroupList != null) result.memberGroupList.addAll(memberGroupList);
    return result;
  }

  MemberGroupInfo._();

  factory MemberGroupInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MemberGroupInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MemberGroupInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'memberGroupType')
    ..aI(2, _omitFieldNames ? '' : 'memberGroupNum')
    ..pPM<$0.BawuRoleInfoPub>(3, _omitFieldNames ? '' : 'memberGroupList',
        subBuilder: $0.BawuRoleInfoPub.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MemberGroupInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MemberGroupInfo copyWith(void Function(MemberGroupInfo) updates) =>
      super.copyWith((message) => updates(message as MemberGroupInfo))
          as MemberGroupInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MemberGroupInfo create() => MemberGroupInfo._();
  @$core.override
  MemberGroupInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MemberGroupInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MemberGroupInfo>(create);
  static MemberGroupInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get memberGroupType => $_getSZ(0);
  @$pb.TagNumber(1)
  set memberGroupType($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasMemberGroupType() => $_has(0);
  @$pb.TagNumber(1)
  void clearMemberGroupType() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get memberGroupNum => $_getIZ(1);
  @$pb.TagNumber(2)
  set memberGroupNum($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMemberGroupNum() => $_has(1);
  @$pb.TagNumber(2)
  void clearMemberGroupNum() => $_clearField(2);

  @$pb.TagNumber(3)
  $pb.PbList<$0.BawuRoleInfoPub> get memberGroupList => $_getList(2);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
