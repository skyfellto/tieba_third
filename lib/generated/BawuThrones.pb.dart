// This is a generated file - do not edit.
//
// Generated from BawuThrones.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class BawuThrones extends $pb.GeneratedMessage {
  factory BawuThrones({
    $core.int? totalRecommendNum,
    $core.int? usedRecommendNum,
    $core.String? bazhuLevel,
    $core.int? usedBcastCnt,
    $core.int? totalBcastCnt,
    $core.int? newestBcastPv,
    $core.int? hasSendBcast,
    $core.int? newestBcastPushuserCnt,
  }) {
    final result = create();
    if (totalRecommendNum != null) result.totalRecommendNum = totalRecommendNum;
    if (usedRecommendNum != null) result.usedRecommendNum = usedRecommendNum;
    if (bazhuLevel != null) result.bazhuLevel = bazhuLevel;
    if (usedBcastCnt != null) result.usedBcastCnt = usedBcastCnt;
    if (totalBcastCnt != null) result.totalBcastCnt = totalBcastCnt;
    if (newestBcastPv != null) result.newestBcastPv = newestBcastPv;
    if (hasSendBcast != null) result.hasSendBcast = hasSendBcast;
    if (newestBcastPushuserCnt != null)
      result.newestBcastPushuserCnt = newestBcastPushuserCnt;
    return result;
  }

  BawuThrones._();

  factory BawuThrones.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BawuThrones.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BawuThrones',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'totalRecommendNum')
    ..aI(2, _omitFieldNames ? '' : 'usedRecommendNum')
    ..aOS(3, _omitFieldNames ? '' : 'bazhuLevel')
    ..aI(4, _omitFieldNames ? '' : 'usedBcastCnt')
    ..aI(5, _omitFieldNames ? '' : 'totalBcastCnt')
    ..aI(6, _omitFieldNames ? '' : 'newestBcastPv')
    ..aI(7, _omitFieldNames ? '' : 'hasSendBcast')
    ..aI(8, _omitFieldNames ? '' : 'newestBcastPushuserCnt')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BawuThrones clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BawuThrones copyWith(void Function(BawuThrones) updates) =>
      super.copyWith((message) => updates(message as BawuThrones))
          as BawuThrones;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BawuThrones create() => BawuThrones._();
  @$core.override
  BawuThrones createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BawuThrones getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BawuThrones>(create);
  static BawuThrones? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get totalRecommendNum => $_getIZ(0);
  @$pb.TagNumber(1)
  set totalRecommendNum($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTotalRecommendNum() => $_has(0);
  @$pb.TagNumber(1)
  void clearTotalRecommendNum() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get usedRecommendNum => $_getIZ(1);
  @$pb.TagNumber(2)
  set usedRecommendNum($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasUsedRecommendNum() => $_has(1);
  @$pb.TagNumber(2)
  void clearUsedRecommendNum() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get bazhuLevel => $_getSZ(2);
  @$pb.TagNumber(3)
  set bazhuLevel($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasBazhuLevel() => $_has(2);
  @$pb.TagNumber(3)
  void clearBazhuLevel() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get usedBcastCnt => $_getIZ(3);
  @$pb.TagNumber(4)
  set usedBcastCnt($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasUsedBcastCnt() => $_has(3);
  @$pb.TagNumber(4)
  void clearUsedBcastCnt() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get totalBcastCnt => $_getIZ(4);
  @$pb.TagNumber(5)
  set totalBcastCnt($core.int value) => $_setSignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasTotalBcastCnt() => $_has(4);
  @$pb.TagNumber(5)
  void clearTotalBcastCnt() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get newestBcastPv => $_getIZ(5);
  @$pb.TagNumber(6)
  set newestBcastPv($core.int value) => $_setSignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasNewestBcastPv() => $_has(5);
  @$pb.TagNumber(6)
  void clearNewestBcastPv() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.int get hasSendBcast => $_getIZ(6);
  @$pb.TagNumber(7)
  set hasSendBcast($core.int value) => $_setSignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasHasSendBcast() => $_has(6);
  @$pb.TagNumber(7)
  void clearHasSendBcast() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.int get newestBcastPushuserCnt => $_getIZ(7);
  @$pb.TagNumber(8)
  set newestBcastPushuserCnt($core.int value) => $_setSignedInt32(7, value);
  @$pb.TagNumber(8)
  $core.bool hasNewestBcastPushuserCnt() => $_has(7);
  @$pb.TagNumber(8)
  void clearNewestBcastPushuserCnt() => $_clearField(8);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
