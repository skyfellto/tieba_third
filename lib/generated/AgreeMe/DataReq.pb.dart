// This is a generated file - do not edit.
//
// Generated from AgreeMe/DataReq.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../CommonReq.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class DataReq extends $pb.GeneratedMessage {
  factory DataReq({
    $0.CommonReq? common,
    $fixnum.Int64? id,
    $core.int? rn,
    $core.int? scrW,
    $core.int? scrH,
    $core.int? scrDip,
    $core.int? qType,
  }) {
    final result = create();
    if (common != null) result.common = common;
    if (id != null) result.id = id;
    if (rn != null) result.rn = rn;
    if (scrW != null) result.scrW = scrW;
    if (scrH != null) result.scrH = scrH;
    if (scrDip != null) result.scrDip = scrDip;
    if (qType != null) result.qType = qType;
    return result;
  }

  DataReq._();

  factory DataReq.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DataReq.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DataReq',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aOM<$0.CommonReq>(1, _omitFieldNames ? '' : 'common',
        subBuilder: $0.CommonReq.create)
    ..a<$fixnum.Int64>(2, _omitFieldNames ? '' : 'id', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aI(3, _omitFieldNames ? '' : 'rn')
    ..aI(4, _omitFieldNames ? '' : 'scrW')
    ..aI(5, _omitFieldNames ? '' : 'scrH')
    ..aI(6, _omitFieldNames ? '' : 'scrDip')
    ..aI(7, _omitFieldNames ? '' : 'qType')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DataReq clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DataReq copyWith(void Function(DataReq) updates) =>
      super.copyWith((message) => updates(message as DataReq)) as DataReq;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DataReq create() => DataReq._();
  @$core.override
  DataReq createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DataReq getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DataReq>(create);
  static DataReq? _defaultInstance;

  @$pb.TagNumber(1)
  $0.CommonReq get common => $_getN(0);
  @$pb.TagNumber(1)
  set common($0.CommonReq value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasCommon() => $_has(0);
  @$pb.TagNumber(1)
  void clearCommon() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.CommonReq ensureCommon() => $_ensure(0);

  @$pb.TagNumber(2)
  $fixnum.Int64 get id => $_getI64(1);
  @$pb.TagNumber(2)
  set id($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasId() => $_has(1);
  @$pb.TagNumber(2)
  void clearId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get rn => $_getIZ(2);
  @$pb.TagNumber(3)
  set rn($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasRn() => $_has(2);
  @$pb.TagNumber(3)
  void clearRn() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get scrW => $_getIZ(3);
  @$pb.TagNumber(4)
  set scrW($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasScrW() => $_has(3);
  @$pb.TagNumber(4)
  void clearScrW() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get scrH => $_getIZ(4);
  @$pb.TagNumber(5)
  set scrH($core.int value) => $_setSignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasScrH() => $_has(4);
  @$pb.TagNumber(5)
  void clearScrH() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get scrDip => $_getIZ(5);
  @$pb.TagNumber(6)
  set scrDip($core.int value) => $_setSignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasScrDip() => $_has(5);
  @$pb.TagNumber(6)
  void clearScrDip() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.int get qType => $_getIZ(6);
  @$pb.TagNumber(7)
  set qType($core.int value) => $_setSignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasQType() => $_has(6);
  @$pb.TagNumber(7)
  void clearQType() => $_clearField(7);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
