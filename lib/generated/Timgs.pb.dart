// This is a generated file - do not edit.
//
// Generated from Timgs.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class Timgs extends $pb.GeneratedMessage {
  factory Timgs({
    $core.String? imgUrl,
    $core.String? url,
    $core.int? flag,
    $core.String? desMain,
    $core.String? desSub,
    $core.String? bsize,
    $core.String? bigCdnUrl,
  }) {
    final result = create();
    if (imgUrl != null) result.imgUrl = imgUrl;
    if (url != null) result.url = url;
    if (flag != null) result.flag = flag;
    if (desMain != null) result.desMain = desMain;
    if (desSub != null) result.desSub = desSub;
    if (bsize != null) result.bsize = bsize;
    if (bigCdnUrl != null) result.bigCdnUrl = bigCdnUrl;
    return result;
  }

  Timgs._();

  factory Timgs.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Timgs.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Timgs',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'imgUrl')
    ..aOS(2, _omitFieldNames ? '' : 'url')
    ..aI(3, _omitFieldNames ? '' : 'flag', fieldType: $pb.PbFieldType.OU3)
    ..aOS(4, _omitFieldNames ? '' : 'desMain')
    ..aOS(5, _omitFieldNames ? '' : 'desSub')
    ..aOS(6, _omitFieldNames ? '' : 'bsize')
    ..aOS(7, _omitFieldNames ? '' : 'bigCdnUrl')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Timgs clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Timgs copyWith(void Function(Timgs) updates) =>
      super.copyWith((message) => updates(message as Timgs)) as Timgs;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Timgs create() => Timgs._();
  @$core.override
  Timgs createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Timgs getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Timgs>(create);
  static Timgs? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get imgUrl => $_getSZ(0);
  @$pb.TagNumber(1)
  set imgUrl($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasImgUrl() => $_has(0);
  @$pb.TagNumber(1)
  void clearImgUrl() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get url => $_getSZ(1);
  @$pb.TagNumber(2)
  set url($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasUrl() => $_has(1);
  @$pb.TagNumber(2)
  void clearUrl() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get flag => $_getIZ(2);
  @$pb.TagNumber(3)
  set flag($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasFlag() => $_has(2);
  @$pb.TagNumber(3)
  void clearFlag() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get desMain => $_getSZ(3);
  @$pb.TagNumber(4)
  set desMain($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasDesMain() => $_has(3);
  @$pb.TagNumber(4)
  void clearDesMain() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get desSub => $_getSZ(4);
  @$pb.TagNumber(5)
  set desSub($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasDesSub() => $_has(4);
  @$pb.TagNumber(5)
  void clearDesSub() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get bsize => $_getSZ(5);
  @$pb.TagNumber(6)
  set bsize($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasBsize() => $_has(5);
  @$pb.TagNumber(6)
  void clearBsize() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get bigCdnUrl => $_getSZ(6);
  @$pb.TagNumber(7)
  set bigCdnUrl($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasBigCdnUrl() => $_has(6);
  @$pb.TagNumber(7)
  void clearBigCdnUrl() => $_clearField(7);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
