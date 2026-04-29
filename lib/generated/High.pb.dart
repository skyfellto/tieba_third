// This is a generated file - do not edit.
//
// Generated from High.proto.

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

class High extends $pb.GeneratedMessage {
  factory High({
    $fixnum.Int64? albumId,
    $fixnum.Int64? hid,
    $fixnum.Int64? uid,
    $core.String? picUrl,
    $core.int? createTime,
    $core.int? numZan,
    $core.int? numCai,
    $core.int? weight,
    $core.int? type,
    $core.String? portrait,
    $core.String? userName,
  }) {
    final result = create();
    if (albumId != null) result.albumId = albumId;
    if (hid != null) result.hid = hid;
    if (uid != null) result.uid = uid;
    if (picUrl != null) result.picUrl = picUrl;
    if (createTime != null) result.createTime = createTime;
    if (numZan != null) result.numZan = numZan;
    if (numCai != null) result.numCai = numCai;
    if (weight != null) result.weight = weight;
    if (type != null) result.type = type;
    if (portrait != null) result.portrait = portrait;
    if (userName != null) result.userName = userName;
    return result;
  }

  High._();

  factory High.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory High.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'High',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'albumId', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, _omitFieldNames ? '' : 'hid', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(3, _omitFieldNames ? '' : 'uid', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(4, _omitFieldNames ? '' : 'picUrl')
    ..aI(5, _omitFieldNames ? '' : 'createTime', fieldType: $pb.PbFieldType.OU3)
    ..aI(6, _omitFieldNames ? '' : 'numZan', fieldType: $pb.PbFieldType.OU3)
    ..aI(7, _omitFieldNames ? '' : 'numCai', fieldType: $pb.PbFieldType.OU3)
    ..aI(8, _omitFieldNames ? '' : 'weight', fieldType: $pb.PbFieldType.OU3)
    ..aI(9, _omitFieldNames ? '' : 'type', fieldType: $pb.PbFieldType.OU3)
    ..aOS(10, _omitFieldNames ? '' : 'portrait')
    ..aOS(11, _omitFieldNames ? '' : 'userName')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  High clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  High copyWith(void Function(High) updates) =>
      super.copyWith((message) => updates(message as High)) as High;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static High create() => High._();
  @$core.override
  High createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static High getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<High>(create);
  static High? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get albumId => $_getI64(0);
  @$pb.TagNumber(1)
  set albumId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasAlbumId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAlbumId() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get hid => $_getI64(1);
  @$pb.TagNumber(2)
  set hid($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasHid() => $_has(1);
  @$pb.TagNumber(2)
  void clearHid() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get uid => $_getI64(2);
  @$pb.TagNumber(3)
  set uid($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasUid() => $_has(2);
  @$pb.TagNumber(3)
  void clearUid() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get picUrl => $_getSZ(3);
  @$pb.TagNumber(4)
  set picUrl($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasPicUrl() => $_has(3);
  @$pb.TagNumber(4)
  void clearPicUrl() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get createTime => $_getIZ(4);
  @$pb.TagNumber(5)
  set createTime($core.int value) => $_setUnsignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasCreateTime() => $_has(4);
  @$pb.TagNumber(5)
  void clearCreateTime() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get numZan => $_getIZ(5);
  @$pb.TagNumber(6)
  set numZan($core.int value) => $_setUnsignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasNumZan() => $_has(5);
  @$pb.TagNumber(6)
  void clearNumZan() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.int get numCai => $_getIZ(6);
  @$pb.TagNumber(7)
  set numCai($core.int value) => $_setUnsignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasNumCai() => $_has(6);
  @$pb.TagNumber(7)
  void clearNumCai() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.int get weight => $_getIZ(7);
  @$pb.TagNumber(8)
  set weight($core.int value) => $_setUnsignedInt32(7, value);
  @$pb.TagNumber(8)
  $core.bool hasWeight() => $_has(7);
  @$pb.TagNumber(8)
  void clearWeight() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.int get type => $_getIZ(8);
  @$pb.TagNumber(9)
  set type($core.int value) => $_setUnsignedInt32(8, value);
  @$pb.TagNumber(9)
  $core.bool hasType() => $_has(8);
  @$pb.TagNumber(9)
  void clearType() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.String get portrait => $_getSZ(9);
  @$pb.TagNumber(10)
  set portrait($core.String value) => $_setString(9, value);
  @$pb.TagNumber(10)
  $core.bool hasPortrait() => $_has(9);
  @$pb.TagNumber(10)
  void clearPortrait() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.String get userName => $_getSZ(10);
  @$pb.TagNumber(11)
  set userName($core.String value) => $_setString(10, value);
  @$pb.TagNumber(11)
  $core.bool hasUserName() => $_has(10);
  @$pb.TagNumber(11)
  void clearUserName() => $_clearField(11);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
