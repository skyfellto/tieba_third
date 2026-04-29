// This is a generated file - do not edit.
//
// Generated from Anti.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'DelThreadText.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class Anti extends $pb.GeneratedMessage {
  factory Anti({
    $core.String? tbs,
    $core.int? ifpost,
    $core.int? ifposta,
    $core.int? forbidFlag,
    $core.String? forbidInfo,
    $core.int? blockStat,
    $core.int? hideStat,
    $core.int? vcodeStat,
    $core.int? daysTofree,
    $core.int? hasChance,
    $core.int? ifvoice,
    $core.Iterable<$0.DelThreadText>? delThreadText,
  }) {
    final result = create();
    if (tbs != null) result.tbs = tbs;
    if (ifpost != null) result.ifpost = ifpost;
    if (ifposta != null) result.ifposta = ifposta;
    if (forbidFlag != null) result.forbidFlag = forbidFlag;
    if (forbidInfo != null) result.forbidInfo = forbidInfo;
    if (blockStat != null) result.blockStat = blockStat;
    if (hideStat != null) result.hideStat = hideStat;
    if (vcodeStat != null) result.vcodeStat = vcodeStat;
    if (daysTofree != null) result.daysTofree = daysTofree;
    if (hasChance != null) result.hasChance = hasChance;
    if (ifvoice != null) result.ifvoice = ifvoice;
    if (delThreadText != null) result.delThreadText.addAll(delThreadText);
    return result;
  }

  Anti._();

  factory Anti.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Anti.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Anti',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'tbs')
    ..aI(2, _omitFieldNames ? '' : 'ifpost')
    ..aI(3, _omitFieldNames ? '' : 'ifposta')
    ..aI(4, _omitFieldNames ? '' : 'forbidFlag')
    ..aOS(5, _omitFieldNames ? '' : 'forbidInfo')
    ..aI(6, _omitFieldNames ? '' : 'blockStat')
    ..aI(7, _omitFieldNames ? '' : 'hideStat')
    ..aI(8, _omitFieldNames ? '' : 'vcodeStat')
    ..aI(9, _omitFieldNames ? '' : 'daysTofree')
    ..aI(10, _omitFieldNames ? '' : 'hasChance')
    ..aI(11, _omitFieldNames ? '' : 'ifvoice')
    ..pPM<$0.DelThreadText>(24, _omitFieldNames ? '' : 'delThreadText',
        subBuilder: $0.DelThreadText.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Anti clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Anti copyWith(void Function(Anti) updates) =>
      super.copyWith((message) => updates(message as Anti)) as Anti;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Anti create() => Anti._();
  @$core.override
  Anti createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Anti getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Anti>(create);
  static Anti? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get tbs => $_getSZ(0);
  @$pb.TagNumber(1)
  set tbs($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTbs() => $_has(0);
  @$pb.TagNumber(1)
  void clearTbs() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get ifpost => $_getIZ(1);
  @$pb.TagNumber(2)
  set ifpost($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasIfpost() => $_has(1);
  @$pb.TagNumber(2)
  void clearIfpost() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get ifposta => $_getIZ(2);
  @$pb.TagNumber(3)
  set ifposta($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasIfposta() => $_has(2);
  @$pb.TagNumber(3)
  void clearIfposta() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get forbidFlag => $_getIZ(3);
  @$pb.TagNumber(4)
  set forbidFlag($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasForbidFlag() => $_has(3);
  @$pb.TagNumber(4)
  void clearForbidFlag() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get forbidInfo => $_getSZ(4);
  @$pb.TagNumber(5)
  set forbidInfo($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasForbidInfo() => $_has(4);
  @$pb.TagNumber(5)
  void clearForbidInfo() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get blockStat => $_getIZ(5);
  @$pb.TagNumber(6)
  set blockStat($core.int value) => $_setSignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasBlockStat() => $_has(5);
  @$pb.TagNumber(6)
  void clearBlockStat() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.int get hideStat => $_getIZ(6);
  @$pb.TagNumber(7)
  set hideStat($core.int value) => $_setSignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasHideStat() => $_has(6);
  @$pb.TagNumber(7)
  void clearHideStat() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.int get vcodeStat => $_getIZ(7);
  @$pb.TagNumber(8)
  set vcodeStat($core.int value) => $_setSignedInt32(7, value);
  @$pb.TagNumber(8)
  $core.bool hasVcodeStat() => $_has(7);
  @$pb.TagNumber(8)
  void clearVcodeStat() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.int get daysTofree => $_getIZ(8);
  @$pb.TagNumber(9)
  set daysTofree($core.int value) => $_setSignedInt32(8, value);
  @$pb.TagNumber(9)
  $core.bool hasDaysTofree() => $_has(8);
  @$pb.TagNumber(9)
  void clearDaysTofree() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.int get hasChance => $_getIZ(9);
  @$pb.TagNumber(10)
  set hasChance($core.int value) => $_setSignedInt32(9, value);
  @$pb.TagNumber(10)
  $core.bool hasHasChance() => $_has(9);
  @$pb.TagNumber(10)
  void clearHasChance() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.int get ifvoice => $_getIZ(10);
  @$pb.TagNumber(11)
  set ifvoice($core.int value) => $_setSignedInt32(10, value);
  @$pb.TagNumber(11)
  $core.bool hasIfvoice() => $_has(10);
  @$pb.TagNumber(11)
  void clearIfvoice() => $_clearField(11);

  @$pb.TagNumber(24)
  $pb.PbList<$0.DelThreadText> get delThreadText => $_getList(11);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
