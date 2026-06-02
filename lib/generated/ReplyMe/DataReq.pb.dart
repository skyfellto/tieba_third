// This is a generated file - do not edit.
//
// Generated from ReplyMe/DataReq.proto.

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
    $core.int? pn,
    $core.String? ids,
    $0.CommonReq? common,
    $core.int? scrW,
    $core.int? scrH,
    $core.double? scrDip,
    $core.int? qType,
    $core.int? isFirst,
    $core.String? callFrom,
    $fixnum.Int64? time,
    $fixnum.Int64? tid,
  }) {
    final result = create();
    if (pn != null) result.pn = pn;
    if (ids != null) result.ids = ids;
    if (common != null) result.common = common;
    if (scrW != null) result.scrW = scrW;
    if (scrH != null) result.scrH = scrH;
    if (scrDip != null) result.scrDip = scrDip;
    if (qType != null) result.qType = qType;
    if (isFirst != null) result.isFirst = isFirst;
    if (callFrom != null) result.callFrom = callFrom;
    if (time != null) result.time = time;
    if (tid != null) result.tid = tid;
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
    ..aI(1, _omitFieldNames ? '' : 'pn')
    ..aOS(2, _omitFieldNames ? '' : 'ids')
    ..aOM<$0.CommonReq>(3, _omitFieldNames ? '' : 'common',
        subBuilder: $0.CommonReq.create)
    ..aI(4, _omitFieldNames ? '' : 'scrW')
    ..aI(5, _omitFieldNames ? '' : 'scrH')
    ..aD(6, _omitFieldNames ? '' : 'scrDip')
    ..aI(7, _omitFieldNames ? '' : 'qType')
    ..aI(8, _omitFieldNames ? '' : 'isFirst')
    ..aOS(9, _omitFieldNames ? '' : 'callFrom')
    ..aInt64(10, _omitFieldNames ? '' : 'time')
    ..aInt64(11, _omitFieldNames ? '' : 'tid')
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
  $core.int get pn => $_getIZ(0);
  @$pb.TagNumber(1)
  set pn($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPn() => $_has(0);
  @$pb.TagNumber(1)
  void clearPn() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get ids => $_getSZ(1);
  @$pb.TagNumber(2)
  set ids($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasIds() => $_has(1);
  @$pb.TagNumber(2)
  void clearIds() => $_clearField(2);

  @$pb.TagNumber(3)
  $0.CommonReq get common => $_getN(2);
  @$pb.TagNumber(3)
  set common($0.CommonReq value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasCommon() => $_has(2);
  @$pb.TagNumber(3)
  void clearCommon() => $_clearField(3);
  @$pb.TagNumber(3)
  $0.CommonReq ensureCommon() => $_ensure(2);

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
  $core.double get scrDip => $_getN(5);
  @$pb.TagNumber(6)
  set scrDip($core.double value) => $_setDouble(5, value);
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

  @$pb.TagNumber(8)
  $core.int get isFirst => $_getIZ(7);
  @$pb.TagNumber(8)
  set isFirst($core.int value) => $_setSignedInt32(7, value);
  @$pb.TagNumber(8)
  $core.bool hasIsFirst() => $_has(7);
  @$pb.TagNumber(8)
  void clearIsFirst() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.String get callFrom => $_getSZ(8);
  @$pb.TagNumber(9)
  set callFrom($core.String value) => $_setString(8, value);
  @$pb.TagNumber(9)
  $core.bool hasCallFrom() => $_has(8);
  @$pb.TagNumber(9)
  void clearCallFrom() => $_clearField(9);

  @$pb.TagNumber(10)
  $fixnum.Int64 get time => $_getI64(9);
  @$pb.TagNumber(10)
  set time($fixnum.Int64 value) => $_setInt64(9, value);
  @$pb.TagNumber(10)
  $core.bool hasTime() => $_has(9);
  @$pb.TagNumber(10)
  void clearTime() => $_clearField(10);

  @$pb.TagNumber(11)
  $fixnum.Int64 get tid => $_getI64(10);
  @$pb.TagNumber(11)
  set tid($fixnum.Int64 value) => $_setInt64(10, value);
  @$pb.TagNumber(11)
  $core.bool hasTid() => $_has(10);
  @$pb.TagNumber(11)
  void clearTid() => $_clearField(11);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
