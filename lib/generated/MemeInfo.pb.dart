// This is a generated file - do not edit.
//
// Generated from MemeInfo.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class MemeInfo extends $pb.GeneratedMessage {
  factory MemeInfo({
    $core.int? pckId,
    $fixnum.Int64? picId,
    $core.String? picUrl,
    $core.String? thumbnail,
    $core.int? width,
    $core.int? height,
    $core.String? detailLink,
  }) {
    final result = create();
    if (pckId != null) result.pckId = pckId;
    if (picId != null) result.picId = picId;
    if (picUrl != null) result.picUrl = picUrl;
    if (thumbnail != null) result.thumbnail = thumbnail;
    if (width != null) result.width = width;
    if (height != null) result.height = height;
    if (detailLink != null) result.detailLink = detailLink;
    return result;
  }

  MemeInfo._();

  factory MemeInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MemeInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MemeInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'pckId',
        protoName: 'pckId', fieldType: $pb.PbFieldType.OU3)
    ..a<$fixnum.Int64>(2, _omitFieldNames ? '' : 'picId', $pb.PbFieldType.OU6,
        protoName: 'picId', defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(3, _omitFieldNames ? '' : 'picUrl', protoName: 'picUrl')
    ..aOS(4, _omitFieldNames ? '' : 'thumbnail')
    ..aI(5, _omitFieldNames ? '' : 'width', fieldType: $pb.PbFieldType.OU3)
    ..aI(6, _omitFieldNames ? '' : 'height', fieldType: $pb.PbFieldType.OU3)
    ..aOS(7, _omitFieldNames ? '' : 'detailLink', protoName: 'detailLink')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MemeInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MemeInfo copyWith(void Function(MemeInfo) updates) =>
      super.copyWith((message) => updates(message as MemeInfo)) as MemeInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MemeInfo create() => MemeInfo._();
  @$core.override
  MemeInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MemeInfo getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MemeInfo>(create);
  static MemeInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get pckId => $_getIZ(0);
  @$pb.TagNumber(1)
  set pckId($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPckId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPckId() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get picId => $_getI64(1);
  @$pb.TagNumber(2)
  set picId($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPicId() => $_has(1);
  @$pb.TagNumber(2)
  void clearPicId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get picUrl => $_getSZ(2);
  @$pb.TagNumber(3)
  set picUrl($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasPicUrl() => $_has(2);
  @$pb.TagNumber(3)
  void clearPicUrl() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get thumbnail => $_getSZ(3);
  @$pb.TagNumber(4)
  set thumbnail($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasThumbnail() => $_has(3);
  @$pb.TagNumber(4)
  void clearThumbnail() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get width => $_getIZ(4);
  @$pb.TagNumber(5)
  set width($core.int value) => $_setUnsignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasWidth() => $_has(4);
  @$pb.TagNumber(5)
  void clearWidth() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get height => $_getIZ(5);
  @$pb.TagNumber(6)
  set height($core.int value) => $_setUnsignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasHeight() => $_has(5);
  @$pb.TagNumber(6)
  void clearHeight() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get detailLink => $_getSZ(6);
  @$pb.TagNumber(7)
  set detailLink($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasDetailLink() => $_has(6);
  @$pb.TagNumber(7)
  void clearDetailLink() => $_clearField(7);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
