// This is a generated file - do not edit.
//
// Generated from TogetherHi.proto.

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

class TogetherHi extends $pb.GeneratedMessage {
  factory TogetherHi({
    $core.String? albumName,
    $fixnum.Int64? albumId,
    $core.int? startTime,
    $core.int? endTime,
    $core.String? location,
    $core.int? numSignup,
    $core.Iterable<$core.String>? potraits,
    $core.int? numJoin,
    $core.Iterable<$core.String>? picUrls,
  }) {
    final result = create();
    if (albumName != null) result.albumName = albumName;
    if (albumId != null) result.albumId = albumId;
    if (startTime != null) result.startTime = startTime;
    if (endTime != null) result.endTime = endTime;
    if (location != null) result.location = location;
    if (numSignup != null) result.numSignup = numSignup;
    if (potraits != null) result.potraits.addAll(potraits);
    if (numJoin != null) result.numJoin = numJoin;
    if (picUrls != null) result.picUrls.addAll(picUrls);
    return result;
  }

  TogetherHi._();

  factory TogetherHi.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TogetherHi.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TogetherHi',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'albumName')
    ..a<$fixnum.Int64>(2, _omitFieldNames ? '' : 'albumId', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aI(3, _omitFieldNames ? '' : 'startTime', fieldType: $pb.PbFieldType.OU3)
    ..aI(4, _omitFieldNames ? '' : 'endTime', fieldType: $pb.PbFieldType.OU3)
    ..aOS(5, _omitFieldNames ? '' : 'location')
    ..aI(6, _omitFieldNames ? '' : 'numSignup', fieldType: $pb.PbFieldType.OU3)
    ..pPS(7, _omitFieldNames ? '' : 'potraits')
    ..aI(8, _omitFieldNames ? '' : 'numJoin', fieldType: $pb.PbFieldType.OU3)
    ..pPS(9, _omitFieldNames ? '' : 'picUrls')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TogetherHi clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TogetherHi copyWith(void Function(TogetherHi) updates) =>
      super.copyWith((message) => updates(message as TogetherHi)) as TogetherHi;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TogetherHi create() => TogetherHi._();
  @$core.override
  TogetherHi createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TogetherHi getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TogetherHi>(create);
  static TogetherHi? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get albumName => $_getSZ(0);
  @$pb.TagNumber(1)
  set albumName($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasAlbumName() => $_has(0);
  @$pb.TagNumber(1)
  void clearAlbumName() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get albumId => $_getI64(1);
  @$pb.TagNumber(2)
  set albumId($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasAlbumId() => $_has(1);
  @$pb.TagNumber(2)
  void clearAlbumId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get startTime => $_getIZ(2);
  @$pb.TagNumber(3)
  set startTime($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasStartTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearStartTime() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get endTime => $_getIZ(3);
  @$pb.TagNumber(4)
  set endTime($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasEndTime() => $_has(3);
  @$pb.TagNumber(4)
  void clearEndTime() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get location => $_getSZ(4);
  @$pb.TagNumber(5)
  set location($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasLocation() => $_has(4);
  @$pb.TagNumber(5)
  void clearLocation() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get numSignup => $_getIZ(5);
  @$pb.TagNumber(6)
  set numSignup($core.int value) => $_setUnsignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasNumSignup() => $_has(5);
  @$pb.TagNumber(6)
  void clearNumSignup() => $_clearField(6);

  @$pb.TagNumber(7)
  $pb.PbList<$core.String> get potraits => $_getList(6);

  @$pb.TagNumber(8)
  $core.int get numJoin => $_getIZ(7);
  @$pb.TagNumber(8)
  set numJoin($core.int value) => $_setUnsignedInt32(7, value);
  @$pb.TagNumber(8)
  $core.bool hasNumJoin() => $_has(7);
  @$pb.TagNumber(8)
  void clearNumJoin() => $_clearField(8);

  @$pb.TagNumber(9)
  $pb.PbList<$core.String> get picUrls => $_getList(8);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
