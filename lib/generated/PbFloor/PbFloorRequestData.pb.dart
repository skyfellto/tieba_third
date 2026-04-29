// This is a generated file - do not edit.
//
// Generated from PbFloor/PbFloorRequestData.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../CommonRequest.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class PbFloorRequestData extends $pb.GeneratedMessage {
  factory PbFloorRequestData({
    $fixnum.Int64? kz,
    $fixnum.Int64? pid,
    $fixnum.Int64? spid,
    $core.int? pn,
    $core.int? scrW,
    $core.int? scrH,
    $core.double? scrDip,
    $core.String? stType,
    $0.CommonRequest? common,
    $core.int? isCommReverse,
    $fixnum.Int64? forumId,
    $core.String? oriUgcNid,
    $core.String? oriUgcTid,
    $core.int? oriUgcType,
    $core.String? oriUgcVid,
    $core.String? topUgcPid,
  }) {
    final result = create();
    if (kz != null) result.kz = kz;
    if (pid != null) result.pid = pid;
    if (spid != null) result.spid = spid;
    if (pn != null) result.pn = pn;
    if (scrW != null) result.scrW = scrW;
    if (scrH != null) result.scrH = scrH;
    if (scrDip != null) result.scrDip = scrDip;
    if (stType != null) result.stType = stType;
    if (common != null) result.common = common;
    if (isCommReverse != null) result.isCommReverse = isCommReverse;
    if (forumId != null) result.forumId = forumId;
    if (oriUgcNid != null) result.oriUgcNid = oriUgcNid;
    if (oriUgcTid != null) result.oriUgcTid = oriUgcTid;
    if (oriUgcType != null) result.oriUgcType = oriUgcType;
    if (oriUgcVid != null) result.oriUgcVid = oriUgcVid;
    if (topUgcPid != null) result.topUgcPid = topUgcPid;
    return result;
  }

  PbFloorRequestData._();

  factory PbFloorRequestData.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PbFloorRequestData.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PbFloorRequestData',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba.pbFloor'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'kz')
    ..aInt64(2, _omitFieldNames ? '' : 'pid')
    ..aInt64(3, _omitFieldNames ? '' : 'spid')
    ..aI(4, _omitFieldNames ? '' : 'pn')
    ..aI(5, _omitFieldNames ? '' : 'scrW')
    ..aI(6, _omitFieldNames ? '' : 'scrH')
    ..aD(7, _omitFieldNames ? '' : 'scrDip')
    ..aOS(8, _omitFieldNames ? '' : 'stType')
    ..aOM<$0.CommonRequest>(9, _omitFieldNames ? '' : 'common',
        subBuilder: $0.CommonRequest.create)
    ..aI(10, _omitFieldNames ? '' : 'isCommReverse')
    ..aInt64(11, _omitFieldNames ? '' : 'forumId')
    ..aOS(12, _omitFieldNames ? '' : 'oriUgcNid')
    ..aOS(13, _omitFieldNames ? '' : 'oriUgcTid')
    ..aI(15, _omitFieldNames ? '' : 'oriUgcType')
    ..aOS(16, _omitFieldNames ? '' : 'oriUgcVid')
    ..aOS(17, _omitFieldNames ? '' : 'topUgcPid')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PbFloorRequestData clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PbFloorRequestData copyWith(void Function(PbFloorRequestData) updates) =>
      super.copyWith((message) => updates(message as PbFloorRequestData))
          as PbFloorRequestData;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PbFloorRequestData create() => PbFloorRequestData._();
  @$core.override
  PbFloorRequestData createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PbFloorRequestData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PbFloorRequestData>(create);
  static PbFloorRequestData? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get kz => $_getI64(0);
  @$pb.TagNumber(1)
  set kz($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasKz() => $_has(0);
  @$pb.TagNumber(1)
  void clearKz() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get pid => $_getI64(1);
  @$pb.TagNumber(2)
  set pid($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPid() => $_has(1);
  @$pb.TagNumber(2)
  void clearPid() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get spid => $_getI64(2);
  @$pb.TagNumber(3)
  set spid($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasSpid() => $_has(2);
  @$pb.TagNumber(3)
  void clearSpid() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get pn => $_getIZ(3);
  @$pb.TagNumber(4)
  set pn($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasPn() => $_has(3);
  @$pb.TagNumber(4)
  void clearPn() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get scrW => $_getIZ(4);
  @$pb.TagNumber(5)
  set scrW($core.int value) => $_setSignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasScrW() => $_has(4);
  @$pb.TagNumber(5)
  void clearScrW() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get scrH => $_getIZ(5);
  @$pb.TagNumber(6)
  set scrH($core.int value) => $_setSignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasScrH() => $_has(5);
  @$pb.TagNumber(6)
  void clearScrH() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.double get scrDip => $_getN(6);
  @$pb.TagNumber(7)
  set scrDip($core.double value) => $_setDouble(6, value);
  @$pb.TagNumber(7)
  $core.bool hasScrDip() => $_has(6);
  @$pb.TagNumber(7)
  void clearScrDip() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.String get stType => $_getSZ(7);
  @$pb.TagNumber(8)
  set stType($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasStType() => $_has(7);
  @$pb.TagNumber(8)
  void clearStType() => $_clearField(8);

  @$pb.TagNumber(9)
  $0.CommonRequest get common => $_getN(8);
  @$pb.TagNumber(9)
  set common($0.CommonRequest value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasCommon() => $_has(8);
  @$pb.TagNumber(9)
  void clearCommon() => $_clearField(9);
  @$pb.TagNumber(9)
  $0.CommonRequest ensureCommon() => $_ensure(8);

  @$pb.TagNumber(10)
  $core.int get isCommReverse => $_getIZ(9);
  @$pb.TagNumber(10)
  set isCommReverse($core.int value) => $_setSignedInt32(9, value);
  @$pb.TagNumber(10)
  $core.bool hasIsCommReverse() => $_has(9);
  @$pb.TagNumber(10)
  void clearIsCommReverse() => $_clearField(10);

  @$pb.TagNumber(11)
  $fixnum.Int64 get forumId => $_getI64(10);
  @$pb.TagNumber(11)
  set forumId($fixnum.Int64 value) => $_setInt64(10, value);
  @$pb.TagNumber(11)
  $core.bool hasForumId() => $_has(10);
  @$pb.TagNumber(11)
  void clearForumId() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.String get oriUgcNid => $_getSZ(11);
  @$pb.TagNumber(12)
  set oriUgcNid($core.String value) => $_setString(11, value);
  @$pb.TagNumber(12)
  $core.bool hasOriUgcNid() => $_has(11);
  @$pb.TagNumber(12)
  void clearOriUgcNid() => $_clearField(12);

  @$pb.TagNumber(13)
  $core.String get oriUgcTid => $_getSZ(12);
  @$pb.TagNumber(13)
  set oriUgcTid($core.String value) => $_setString(12, value);
  @$pb.TagNumber(13)
  $core.bool hasOriUgcTid() => $_has(12);
  @$pb.TagNumber(13)
  void clearOriUgcTid() => $_clearField(13);

  @$pb.TagNumber(15)
  $core.int get oriUgcType => $_getIZ(13);
  @$pb.TagNumber(15)
  set oriUgcType($core.int value) => $_setSignedInt32(13, value);
  @$pb.TagNumber(15)
  $core.bool hasOriUgcType() => $_has(13);
  @$pb.TagNumber(15)
  void clearOriUgcType() => $_clearField(15);

  @$pb.TagNumber(16)
  $core.String get oriUgcVid => $_getSZ(14);
  @$pb.TagNumber(16)
  set oriUgcVid($core.String value) => $_setString(14, value);
  @$pb.TagNumber(16)
  $core.bool hasOriUgcVid() => $_has(14);
  @$pb.TagNumber(16)
  void clearOriUgcVid() => $_clearField(16);

  @$pb.TagNumber(17)
  $core.String get topUgcPid => $_getSZ(15);
  @$pb.TagNumber(17)
  set topUgcPid($core.String value) => $_setString(15, value);
  @$pb.TagNumber(17)
  $core.bool hasTopUgcPid() => $_has(15);
  @$pb.TagNumber(17)
  void clearTopUgcPid() => $_clearField(17);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
