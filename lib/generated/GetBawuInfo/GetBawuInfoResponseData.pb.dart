// This is a generated file - do not edit.
//
// Generated from GetBawuInfo/GetBawuInfoResponseData.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../BawuTeam.pb.dart' as $0;
import 'ManagerApplyInfo.pb.dart' as $1;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class GetBawuInfoResponseData extends $pb.GeneratedMessage {
  factory GetBawuInfoResponseData({
    $0.BawuTeam? bawuTeamInfo,
    $1.ManagerApplyInfo? managerApplyInfo,
    $core.int? isPrivateForum,
  }) {
    final result = create();
    if (bawuTeamInfo != null) result.bawuTeamInfo = bawuTeamInfo;
    if (managerApplyInfo != null) result.managerApplyInfo = managerApplyInfo;
    if (isPrivateForum != null) result.isPrivateForum = isPrivateForum;
    return result;
  }

  GetBawuInfoResponseData._();

  factory GetBawuInfoResponseData.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetBawuInfoResponseData.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetBawuInfoResponseData',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'tieba.getBawuInfo'),
      createEmptyInstance: create)
    ..aOM<$0.BawuTeam>(1, _omitFieldNames ? '' : 'bawuTeamInfo',
        subBuilder: $0.BawuTeam.create)
    ..aOM<$1.ManagerApplyInfo>(2, _omitFieldNames ? '' : 'managerApplyInfo',
        subBuilder: $1.ManagerApplyInfo.create)
    ..aI(3, _omitFieldNames ? '' : 'isPrivateForum')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetBawuInfoResponseData clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetBawuInfoResponseData copyWith(
          void Function(GetBawuInfoResponseData) updates) =>
      super.copyWith((message) => updates(message as GetBawuInfoResponseData))
          as GetBawuInfoResponseData;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetBawuInfoResponseData create() => GetBawuInfoResponseData._();
  @$core.override
  GetBawuInfoResponseData createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetBawuInfoResponseData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetBawuInfoResponseData>(create);
  static GetBawuInfoResponseData? _defaultInstance;

  @$pb.TagNumber(1)
  $0.BawuTeam get bawuTeamInfo => $_getN(0);
  @$pb.TagNumber(1)
  set bawuTeamInfo($0.BawuTeam value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasBawuTeamInfo() => $_has(0);
  @$pb.TagNumber(1)
  void clearBawuTeamInfo() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.BawuTeam ensureBawuTeamInfo() => $_ensure(0);

  @$pb.TagNumber(2)
  $1.ManagerApplyInfo get managerApplyInfo => $_getN(1);
  @$pb.TagNumber(2)
  set managerApplyInfo($1.ManagerApplyInfo value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasManagerApplyInfo() => $_has(1);
  @$pb.TagNumber(2)
  void clearManagerApplyInfo() => $_clearField(2);
  @$pb.TagNumber(2)
  $1.ManagerApplyInfo ensureManagerApplyInfo() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.int get isPrivateForum => $_getIZ(2);
  @$pb.TagNumber(3)
  set isPrivateForum($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasIsPrivateForum() => $_has(2);
  @$pb.TagNumber(3)
  void clearIsPrivateForum() => $_clearField(3);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
