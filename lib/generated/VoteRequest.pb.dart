// This is a generated file - do not edit.
//
// Generated from VoteRequest.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'CommonReq.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class VoteRequest extends $pb.GeneratedMessage {
  factory VoteRequest({
    Data? data,
  }) {
    final result = create();
    if (data != null) result.data = data;
    return result;
  }

  VoteRequest._();

  factory VoteRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory VoteRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'VoteRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aOM<Data>(1, _omitFieldNames ? '' : 'data', subBuilder: Data.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VoteRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VoteRequest copyWith(void Function(VoteRequest) updates) =>
      super.copyWith((message) => updates(message as VoteRequest))
          as VoteRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VoteRequest create() => VoteRequest._();
  @$core.override
  VoteRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static VoteRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<VoteRequest>(create);
  static VoteRequest? _defaultInstance;

  @$pb.TagNumber(1)
  Data get data => $_getN(0);
  @$pb.TagNumber(1)
  set data(Data value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasData() => $_has(0);
  @$pb.TagNumber(1)
  void clearData() => $_clearField(1);
  @$pb.TagNumber(1)
  Data ensureData() => $_ensure(0);
}

class Data extends $pb.GeneratedMessage {
  factory Data({
    $fixnum.Int64? tid,
    $core.String? optionIds,
    $0.CommonReq? common,
    $fixnum.Int64? fid,
  }) {
    final result = create();
    if (tid != null) result.tid = tid;
    if (optionIds != null) result.optionIds = optionIds;
    if (common != null) result.common = common;
    if (fid != null) result.fid = fid;
    return result;
  }

  Data._();

  factory Data.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Data.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Data',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'tid')
    ..aOS(2, _omitFieldNames ? '' : 'optionIds')
    ..aOM<$0.CommonReq>(3, _omitFieldNames ? '' : 'common',
        subBuilder: $0.CommonReq.create)
    ..aInt64(4, _omitFieldNames ? '' : 'fid')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Data clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Data copyWith(void Function(Data) updates) =>
      super.copyWith((message) => updates(message as Data)) as Data;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Data create() => Data._();
  @$core.override
  Data createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Data getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Data>(create);
  static Data? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get tid => $_getI64(0);
  @$pb.TagNumber(1)
  set tid($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTid() => $_has(0);
  @$pb.TagNumber(1)
  void clearTid() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get optionIds => $_getSZ(1);
  @$pb.TagNumber(2)
  set optionIds($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasOptionIds() => $_has(1);
  @$pb.TagNumber(2)
  void clearOptionIds() => $_clearField(2);

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
  $fixnum.Int64 get fid => $_getI64(3);
  @$pb.TagNumber(4)
  set fid($fixnum.Int64 value) => $_setInt64(3, value);
  @$pb.TagNumber(4)
  $core.bool hasFid() => $_has(3);
  @$pb.TagNumber(4)
  void clearFid() => $_clearField(4);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
