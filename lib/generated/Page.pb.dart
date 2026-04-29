// This is a generated file - do not edit.
//
// Generated from Page.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class Page extends $pb.GeneratedMessage {
  factory Page({
    $core.int? pageSize,
    $core.int? offset,
    $core.int? currentPage,
    $core.int? totalCount,
    $core.int? totalPage,
    $core.int? hasMore,
    $core.int? hasPrev,
    $core.int? curGoodId,
    $core.int? reqNum,
    $core.int? pnum,
    $core.int? tnum,
    $core.int? totalNum,
    $core.int? lzTotalFloor,
    $core.int? newTotalPage,
  }) {
    final result = create();
    if (pageSize != null) result.pageSize = pageSize;
    if (offset != null) result.offset = offset;
    if (currentPage != null) result.currentPage = currentPage;
    if (totalCount != null) result.totalCount = totalCount;
    if (totalPage != null) result.totalPage = totalPage;
    if (hasMore != null) result.hasMore = hasMore;
    if (hasPrev != null) result.hasPrev = hasPrev;
    if (curGoodId != null) result.curGoodId = curGoodId;
    if (reqNum != null) result.reqNum = reqNum;
    if (pnum != null) result.pnum = pnum;
    if (tnum != null) result.tnum = tnum;
    if (totalNum != null) result.totalNum = totalNum;
    if (lzTotalFloor != null) result.lzTotalFloor = lzTotalFloor;
    if (newTotalPage != null) result.newTotalPage = newTotalPage;
    return result;
  }

  Page._();

  factory Page.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Page.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Page',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'pageSize')
    ..aI(2, _omitFieldNames ? '' : 'offset')
    ..aI(3, _omitFieldNames ? '' : 'currentPage')
    ..aI(4, _omitFieldNames ? '' : 'totalCount')
    ..aI(5, _omitFieldNames ? '' : 'totalPage')
    ..aI(6, _omitFieldNames ? '' : 'hasMore')
    ..aI(7, _omitFieldNames ? '' : 'hasPrev')
    ..aI(8, _omitFieldNames ? '' : 'curGoodId')
    ..aI(9, _omitFieldNames ? '' : 'reqNum')
    ..aI(10, _omitFieldNames ? '' : 'pnum')
    ..aI(11, _omitFieldNames ? '' : 'tnum')
    ..aI(12, _omitFieldNames ? '' : 'totalNum')
    ..aI(13, _omitFieldNames ? '' : 'lzTotalFloor')
    ..aI(14, _omitFieldNames ? '' : 'newTotalPage')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Page clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Page copyWith(void Function(Page) updates) =>
      super.copyWith((message) => updates(message as Page)) as Page;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Page create() => Page._();
  @$core.override
  Page createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Page getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Page>(create);
  static Page? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get pageSize => $_getIZ(0);
  @$pb.TagNumber(1)
  set pageSize($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPageSize() => $_has(0);
  @$pb.TagNumber(1)
  void clearPageSize() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get offset => $_getIZ(1);
  @$pb.TagNumber(2)
  set offset($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasOffset() => $_has(1);
  @$pb.TagNumber(2)
  void clearOffset() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get currentPage => $_getIZ(2);
  @$pb.TagNumber(3)
  set currentPage($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasCurrentPage() => $_has(2);
  @$pb.TagNumber(3)
  void clearCurrentPage() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get totalCount => $_getIZ(3);
  @$pb.TagNumber(4)
  set totalCount($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasTotalCount() => $_has(3);
  @$pb.TagNumber(4)
  void clearTotalCount() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get totalPage => $_getIZ(4);
  @$pb.TagNumber(5)
  set totalPage($core.int value) => $_setSignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasTotalPage() => $_has(4);
  @$pb.TagNumber(5)
  void clearTotalPage() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get hasMore => $_getIZ(5);
  @$pb.TagNumber(6)
  set hasMore($core.int value) => $_setSignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasHasMore() => $_has(5);
  @$pb.TagNumber(6)
  void clearHasMore() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.int get hasPrev => $_getIZ(6);
  @$pb.TagNumber(7)
  set hasPrev($core.int value) => $_setSignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasHasPrev() => $_has(6);
  @$pb.TagNumber(7)
  void clearHasPrev() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.int get curGoodId => $_getIZ(7);
  @$pb.TagNumber(8)
  set curGoodId($core.int value) => $_setSignedInt32(7, value);
  @$pb.TagNumber(8)
  $core.bool hasCurGoodId() => $_has(7);
  @$pb.TagNumber(8)
  void clearCurGoodId() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.int get reqNum => $_getIZ(8);
  @$pb.TagNumber(9)
  set reqNum($core.int value) => $_setSignedInt32(8, value);
  @$pb.TagNumber(9)
  $core.bool hasReqNum() => $_has(8);
  @$pb.TagNumber(9)
  void clearReqNum() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.int get pnum => $_getIZ(9);
  @$pb.TagNumber(10)
  set pnum($core.int value) => $_setSignedInt32(9, value);
  @$pb.TagNumber(10)
  $core.bool hasPnum() => $_has(9);
  @$pb.TagNumber(10)
  void clearPnum() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.int get tnum => $_getIZ(10);
  @$pb.TagNumber(11)
  set tnum($core.int value) => $_setSignedInt32(10, value);
  @$pb.TagNumber(11)
  $core.bool hasTnum() => $_has(10);
  @$pb.TagNumber(11)
  void clearTnum() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.int get totalNum => $_getIZ(11);
  @$pb.TagNumber(12)
  set totalNum($core.int value) => $_setSignedInt32(11, value);
  @$pb.TagNumber(12)
  $core.bool hasTotalNum() => $_has(11);
  @$pb.TagNumber(12)
  void clearTotalNum() => $_clearField(12);

  @$pb.TagNumber(13)
  $core.int get lzTotalFloor => $_getIZ(12);
  @$pb.TagNumber(13)
  set lzTotalFloor($core.int value) => $_setSignedInt32(12, value);
  @$pb.TagNumber(13)
  $core.bool hasLzTotalFloor() => $_has(12);
  @$pb.TagNumber(13)
  void clearLzTotalFloor() => $_clearField(13);

  @$pb.TagNumber(14)
  $core.int get newTotalPage => $_getIZ(13);
  @$pb.TagNumber(14)
  set newTotalPage($core.int value) => $_setSignedInt32(13, value);
  @$pb.TagNumber(14)
  $core.bool hasNewTotalPage() => $_has(13);
  @$pb.TagNumber(14)
  void clearNewTotalPage() => $_clearField(14);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
