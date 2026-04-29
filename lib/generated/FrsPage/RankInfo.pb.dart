// This is a generated file - do not edit.
//
// Generated from FrsPage/RankInfo.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class RankInfo extends $pb.GeneratedMessage {
  factory RankInfo({
    $core.int? signCount,
    $core.int? signRank,
    $core.int? memberCount,
    $core.double? dirRate,
  }) {
    final result = create();
    if (signCount != null) result.signCount = signCount;
    if (signRank != null) result.signRank = signRank;
    if (memberCount != null) result.memberCount = memberCount;
    if (dirRate != null) result.dirRate = dirRate;
    return result;
  }

  RankInfo._();

  factory RankInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RankInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RankInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba.frsPage'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'signCount')
    ..aI(2, _omitFieldNames ? '' : 'signRank')
    ..aI(3, _omitFieldNames ? '' : 'memberCount')
    ..aD(4, _omitFieldNames ? '' : 'dirRate')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RankInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RankInfo copyWith(void Function(RankInfo) updates) =>
      super.copyWith((message) => updates(message as RankInfo)) as RankInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RankInfo create() => RankInfo._();
  @$core.override
  RankInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RankInfo getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RankInfo>(create);
  static RankInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get signCount => $_getIZ(0);
  @$pb.TagNumber(1)
  set signCount($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSignCount() => $_has(0);
  @$pb.TagNumber(1)
  void clearSignCount() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get signRank => $_getIZ(1);
  @$pb.TagNumber(2)
  set signRank($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSignRank() => $_has(1);
  @$pb.TagNumber(2)
  void clearSignRank() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get memberCount => $_getIZ(2);
  @$pb.TagNumber(3)
  set memberCount($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasMemberCount() => $_has(2);
  @$pb.TagNumber(3)
  void clearMemberCount() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.double get dirRate => $_getN(3);
  @$pb.TagNumber(4)
  set dirRate($core.double value) => $_setDouble(3, value);
  @$pb.TagNumber(4)
  $core.bool hasDirRate() => $_has(3);
  @$pb.TagNumber(4)
  void clearDirRate() => $_clearField(4);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
