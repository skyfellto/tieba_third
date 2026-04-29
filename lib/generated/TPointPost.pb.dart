// This is a generated file - do not edit.
//
// Generated from TPointPost.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'ActBtn.pb.dart' as $0;
import 'DetailInfo.pb.dart' as $2;
import 'Timgs.pb.dart' as $1;
import 'VideoInfo.pb.dart' as $3;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class TPointPost extends $pb.GeneratedMessage {
  factory TPointPost({
    $core.int? isTuiguang,
    $core.String? position,
    $fixnum.Int64? templateId,
    $core.int? templateType,
    $core.Iterable<$0.ActBtn>? actBtn,
    $core.Iterable<$1.Timgs>? tImgs,
    $2.DetailInfo? detailInfo,
    $core.String? monitorId,
    $core.int? hiddenDay,
    $3.VideoInfo? tVideo,
    $core.String? tagName,
    $core.String? tagNameUrl,
    $core.String? tagNameWh,
  }) {
    final result = create();
    if (isTuiguang != null) result.isTuiguang = isTuiguang;
    if (position != null) result.position = position;
    if (templateId != null) result.templateId = templateId;
    if (templateType != null) result.templateType = templateType;
    if (actBtn != null) result.actBtn.addAll(actBtn);
    if (tImgs != null) result.tImgs.addAll(tImgs);
    if (detailInfo != null) result.detailInfo = detailInfo;
    if (monitorId != null) result.monitorId = monitorId;
    if (hiddenDay != null) result.hiddenDay = hiddenDay;
    if (tVideo != null) result.tVideo = tVideo;
    if (tagName != null) result.tagName = tagName;
    if (tagNameUrl != null) result.tagNameUrl = tagNameUrl;
    if (tagNameWh != null) result.tagNameWh = tagNameWh;
    return result;
  }

  TPointPost._();

  factory TPointPost.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TPointPost.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TPointPost',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'isTuiguang', fieldType: $pb.PbFieldType.OU3)
    ..aOS(2, _omitFieldNames ? '' : 'position')
    ..aInt64(3, _omitFieldNames ? '' : 'templateId')
    ..aI(4, _omitFieldNames ? '' : 'templateType')
    ..pPM<$0.ActBtn>(5, _omitFieldNames ? '' : 'actBtn',
        subBuilder: $0.ActBtn.create)
    ..pPM<$1.Timgs>(6, _omitFieldNames ? '' : 'tImgs',
        subBuilder: $1.Timgs.create)
    ..aOM<$2.DetailInfo>(7, _omitFieldNames ? '' : 'detailInfo',
        subBuilder: $2.DetailInfo.create)
    ..aOS(8, _omitFieldNames ? '' : 'monitorId')
    ..aI(9, _omitFieldNames ? '' : 'hiddenDay')
    ..aOM<$3.VideoInfo>(10, _omitFieldNames ? '' : 'tVideo',
        subBuilder: $3.VideoInfo.create)
    ..aOS(11, _omitFieldNames ? '' : 'tagName')
    ..aOS(12, _omitFieldNames ? '' : 'tagNameUrl')
    ..aOS(13, _omitFieldNames ? '' : 'tagNameWh')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TPointPost clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TPointPost copyWith(void Function(TPointPost) updates) =>
      super.copyWith((message) => updates(message as TPointPost)) as TPointPost;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TPointPost create() => TPointPost._();
  @$core.override
  TPointPost createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TPointPost getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TPointPost>(create);
  static TPointPost? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get isTuiguang => $_getIZ(0);
  @$pb.TagNumber(1)
  set isTuiguang($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasIsTuiguang() => $_has(0);
  @$pb.TagNumber(1)
  void clearIsTuiguang() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get position => $_getSZ(1);
  @$pb.TagNumber(2)
  set position($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPosition() => $_has(1);
  @$pb.TagNumber(2)
  void clearPosition() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get templateId => $_getI64(2);
  @$pb.TagNumber(3)
  set templateId($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasTemplateId() => $_has(2);
  @$pb.TagNumber(3)
  void clearTemplateId() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get templateType => $_getIZ(3);
  @$pb.TagNumber(4)
  set templateType($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasTemplateType() => $_has(3);
  @$pb.TagNumber(4)
  void clearTemplateType() => $_clearField(4);

  @$pb.TagNumber(5)
  $pb.PbList<$0.ActBtn> get actBtn => $_getList(4);

  @$pb.TagNumber(6)
  $pb.PbList<$1.Timgs> get tImgs => $_getList(5);

  @$pb.TagNumber(7)
  $2.DetailInfo get detailInfo => $_getN(6);
  @$pb.TagNumber(7)
  set detailInfo($2.DetailInfo value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasDetailInfo() => $_has(6);
  @$pb.TagNumber(7)
  void clearDetailInfo() => $_clearField(7);
  @$pb.TagNumber(7)
  $2.DetailInfo ensureDetailInfo() => $_ensure(6);

  @$pb.TagNumber(8)
  $core.String get monitorId => $_getSZ(7);
  @$pb.TagNumber(8)
  set monitorId($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasMonitorId() => $_has(7);
  @$pb.TagNumber(8)
  void clearMonitorId() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.int get hiddenDay => $_getIZ(8);
  @$pb.TagNumber(9)
  set hiddenDay($core.int value) => $_setSignedInt32(8, value);
  @$pb.TagNumber(9)
  $core.bool hasHiddenDay() => $_has(8);
  @$pb.TagNumber(9)
  void clearHiddenDay() => $_clearField(9);

  @$pb.TagNumber(10)
  $3.VideoInfo get tVideo => $_getN(9);
  @$pb.TagNumber(10)
  set tVideo($3.VideoInfo value) => $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasTVideo() => $_has(9);
  @$pb.TagNumber(10)
  void clearTVideo() => $_clearField(10);
  @$pb.TagNumber(10)
  $3.VideoInfo ensureTVideo() => $_ensure(9);

  @$pb.TagNumber(11)
  $core.String get tagName => $_getSZ(10);
  @$pb.TagNumber(11)
  set tagName($core.String value) => $_setString(10, value);
  @$pb.TagNumber(11)
  $core.bool hasTagName() => $_has(10);
  @$pb.TagNumber(11)
  void clearTagName() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.String get tagNameUrl => $_getSZ(11);
  @$pb.TagNumber(12)
  set tagNameUrl($core.String value) => $_setString(11, value);
  @$pb.TagNumber(12)
  $core.bool hasTagNameUrl() => $_has(11);
  @$pb.TagNumber(12)
  void clearTagNameUrl() => $_clearField(12);

  @$pb.TagNumber(13)
  $core.String get tagNameWh => $_getSZ(12);
  @$pb.TagNumber(13)
  set tagNameWh($core.String value) => $_setString(12, value);
  @$pb.TagNumber(13)
  $core.bool hasTagNameWh() => $_has(12);
  @$pb.TagNumber(13)
  void clearTagNameWh() => $_clearField(13);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
