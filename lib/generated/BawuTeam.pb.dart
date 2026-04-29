// This is a generated file - do not edit.
//
// Generated from BawuTeam.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'BawuRoleDes.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class BawuTeam extends $pb.GeneratedMessage {
  factory BawuTeam({
    $core.int? totalNum,
    $core.Iterable<$0.BawuRoleDes>? bawuTeamList,
  }) {
    final result = create();
    if (totalNum != null) result.totalNum = totalNum;
    if (bawuTeamList != null) result.bawuTeamList.addAll(bawuTeamList);
    return result;
  }

  BawuTeam._();

  factory BawuTeam.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BawuTeam.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BawuTeam',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'totalNum')
    ..pPM<$0.BawuRoleDes>(2, _omitFieldNames ? '' : 'bawuTeamList',
        subBuilder: $0.BawuRoleDes.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BawuTeam clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BawuTeam copyWith(void Function(BawuTeam) updates) =>
      super.copyWith((message) => updates(message as BawuTeam)) as BawuTeam;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BawuTeam create() => BawuTeam._();
  @$core.override
  BawuTeam createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BawuTeam getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BawuTeam>(create);
  static BawuTeam? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get totalNum => $_getIZ(0);
  @$pb.TagNumber(1)
  set totalNum($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTotalNum() => $_has(0);
  @$pb.TagNumber(1)
  void clearTotalNum() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<$0.BawuRoleDes> get bawuTeamList => $_getList(1);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
