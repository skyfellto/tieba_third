// This is a generated file - do not edit.
//
// Generated from GraffitiRankListInfo.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'GraffitiRankItem.pb.dart' as $0;
import 'User.pb.dart' as $1;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class GraffitiRankListInfo extends $pb.GeneratedMessage {
  factory GraffitiRankListInfo({
    $core.int? hasMore,
    $core.int? total,
    $core.Iterable<$0.GraffitiRankItem>? list,
    $core.int? showListCount,
    $core.int? quickListCount,
    $core.int? hasState,
    $fixnum.Int64? tid,
    $core.Iterable<$1.User>? consentList,
  }) {
    final result = create();
    if (hasMore != null) result.hasMore = hasMore;
    if (total != null) result.total = total;
    if (list != null) result.list.addAll(list);
    if (showListCount != null) result.showListCount = showListCount;
    if (quickListCount != null) result.quickListCount = quickListCount;
    if (hasState != null) result.hasState = hasState;
    if (tid != null) result.tid = tid;
    if (consentList != null) result.consentList.addAll(consentList);
    return result;
  }

  GraffitiRankListInfo._();

  factory GraffitiRankListInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GraffitiRankListInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GraffitiRankListInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'hasMore')
    ..aI(2, _omitFieldNames ? '' : 'total')
    ..pPM<$0.GraffitiRankItem>(3, _omitFieldNames ? '' : 'list',
        subBuilder: $0.GraffitiRankItem.create)
    ..aI(4, _omitFieldNames ? '' : 'showListCount')
    ..aI(5, _omitFieldNames ? '' : 'quickListCount')
    ..aI(6, _omitFieldNames ? '' : 'hasState')
    ..aInt64(7, _omitFieldNames ? '' : 'tid')
    ..pPM<$1.User>(8, _omitFieldNames ? '' : 'consentList',
        subBuilder: $1.User.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GraffitiRankListInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GraffitiRankListInfo copyWith(void Function(GraffitiRankListInfo) updates) =>
      super.copyWith((message) => updates(message as GraffitiRankListInfo))
          as GraffitiRankListInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GraffitiRankListInfo create() => GraffitiRankListInfo._();
  @$core.override
  GraffitiRankListInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GraffitiRankListInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GraffitiRankListInfo>(create);
  static GraffitiRankListInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get hasMore => $_getIZ(0);
  @$pb.TagNumber(1)
  set hasMore($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasHasMore() => $_has(0);
  @$pb.TagNumber(1)
  void clearHasMore() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get total => $_getIZ(1);
  @$pb.TagNumber(2)
  set total($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasTotal() => $_has(1);
  @$pb.TagNumber(2)
  void clearTotal() => $_clearField(2);

  @$pb.TagNumber(3)
  $pb.PbList<$0.GraffitiRankItem> get list => $_getList(2);

  @$pb.TagNumber(4)
  $core.int get showListCount => $_getIZ(3);
  @$pb.TagNumber(4)
  set showListCount($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasShowListCount() => $_has(3);
  @$pb.TagNumber(4)
  void clearShowListCount() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get quickListCount => $_getIZ(4);
  @$pb.TagNumber(5)
  set quickListCount($core.int value) => $_setSignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasQuickListCount() => $_has(4);
  @$pb.TagNumber(5)
  void clearQuickListCount() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get hasState => $_getIZ(5);
  @$pb.TagNumber(6)
  set hasState($core.int value) => $_setSignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasHasState() => $_has(5);
  @$pb.TagNumber(6)
  void clearHasState() => $_clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get tid => $_getI64(6);
  @$pb.TagNumber(7)
  set tid($fixnum.Int64 value) => $_setInt64(6, value);
  @$pb.TagNumber(7)
  $core.bool hasTid() => $_has(6);
  @$pb.TagNumber(7)
  void clearTid() => $_clearField(7);

  @$pb.TagNumber(8)
  $pb.PbList<$1.User> get consentList => $_getList(7);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
