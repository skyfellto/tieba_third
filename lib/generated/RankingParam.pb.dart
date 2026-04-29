// This is a generated file - do not edit.
//
// Generated from RankingParam.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class RankingParam extends $pb.GeneratedMessage {
  factory RankingParam({
    $core.int? rankType,
    $core.int? rankCode,
    $core.String? sortType,
    $core.int? tabId,
    $core.int? pn,
    $core.int? rn,
  }) {
    final result = create();
    if (rankType != null) result.rankType = rankType;
    if (rankCode != null) result.rankCode = rankCode;
    if (sortType != null) result.sortType = sortType;
    if (tabId != null) result.tabId = tabId;
    if (pn != null) result.pn = pn;
    if (rn != null) result.rn = rn;
    return result;
  }

  RankingParam._();

  factory RankingParam.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RankingParam.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RankingParam',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'rankType')
    ..aI(2, _omitFieldNames ? '' : 'rankCode')
    ..aOS(3, _omitFieldNames ? '' : 'sortType')
    ..aI(4, _omitFieldNames ? '' : 'tabId')
    ..aI(5, _omitFieldNames ? '' : 'pn')
    ..aI(6, _omitFieldNames ? '' : 'rn')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RankingParam clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RankingParam copyWith(void Function(RankingParam) updates) =>
      super.copyWith((message) => updates(message as RankingParam))
          as RankingParam;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RankingParam create() => RankingParam._();
  @$core.override
  RankingParam createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RankingParam getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RankingParam>(create);
  static RankingParam? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get rankType => $_getIZ(0);
  @$pb.TagNumber(1)
  set rankType($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasRankType() => $_has(0);
  @$pb.TagNumber(1)
  void clearRankType() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get rankCode => $_getIZ(1);
  @$pb.TagNumber(2)
  set rankCode($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasRankCode() => $_has(1);
  @$pb.TagNumber(2)
  void clearRankCode() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get sortType => $_getSZ(2);
  @$pb.TagNumber(3)
  set sortType($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasSortType() => $_has(2);
  @$pb.TagNumber(3)
  void clearSortType() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get tabId => $_getIZ(3);
  @$pb.TagNumber(4)
  set tabId($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasTabId() => $_has(3);
  @$pb.TagNumber(4)
  void clearTabId() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get pn => $_getIZ(4);
  @$pb.TagNumber(5)
  set pn($core.int value) => $_setSignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasPn() => $_has(4);
  @$pb.TagNumber(5)
  void clearPn() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get rn => $_getIZ(5);
  @$pb.TagNumber(6)
  set rn($core.int value) => $_setSignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasRn() => $_has(5);
  @$pb.TagNumber(6)
  void clearRn() => $_clearField(6);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
