// This is a generated file - do not edit.
//
// Generated from SmartApp.proto.

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

class SmartApp extends $pb.GeneratedMessage {
  factory SmartApp({
    $core.String? avatar,
    $core.String? name,
    $core.String? abstract,
    $core.String? pic,
    $core.String? h5Url,
    $core.String? id,
    $core.String? link,
    $fixnum.Int64? nawsAppId,
    $core.int? isRecom,
    $core.int? isGame,
  }) {
    final result = create();
    if (avatar != null) result.avatar = avatar;
    if (name != null) result.name = name;
    if (abstract != null) result.abstract = abstract;
    if (pic != null) result.pic = pic;
    if (h5Url != null) result.h5Url = h5Url;
    if (id != null) result.id = id;
    if (link != null) result.link = link;
    if (nawsAppId != null) result.nawsAppId = nawsAppId;
    if (isRecom != null) result.isRecom = isRecom;
    if (isGame != null) result.isGame = isGame;
    return result;
  }

  SmartApp._();

  factory SmartApp.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SmartApp.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SmartApp',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'avatar')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'Abstract')
    ..aOS(4, _omitFieldNames ? '' : 'pic')
    ..aOS(5, _omitFieldNames ? '' : 'h5Url')
    ..aOS(6, _omitFieldNames ? '' : 'id')
    ..aOS(7, _omitFieldNames ? '' : 'link')
    ..a<$fixnum.Int64>(
        8, _omitFieldNames ? '' : 'nawsAppId', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aI(9, _omitFieldNames ? '' : 'isRecom')
    ..aI(10, _omitFieldNames ? '' : 'isGame')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SmartApp clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SmartApp copyWith(void Function(SmartApp) updates) =>
      super.copyWith((message) => updates(message as SmartApp)) as SmartApp;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SmartApp create() => SmartApp._();
  @$core.override
  SmartApp createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SmartApp getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SmartApp>(create);
  static SmartApp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get avatar => $_getSZ(0);
  @$pb.TagNumber(1)
  set avatar($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasAvatar() => $_has(0);
  @$pb.TagNumber(1)
  void clearAvatar() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get abstract => $_getSZ(2);
  @$pb.TagNumber(3)
  set abstract($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasAbstract() => $_has(2);
  @$pb.TagNumber(3)
  void clearAbstract() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get pic => $_getSZ(3);
  @$pb.TagNumber(4)
  set pic($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasPic() => $_has(3);
  @$pb.TagNumber(4)
  void clearPic() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get h5Url => $_getSZ(4);
  @$pb.TagNumber(5)
  set h5Url($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasH5Url() => $_has(4);
  @$pb.TagNumber(5)
  void clearH5Url() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get id => $_getSZ(5);
  @$pb.TagNumber(6)
  set id($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasId() => $_has(5);
  @$pb.TagNumber(6)
  void clearId() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get link => $_getSZ(6);
  @$pb.TagNumber(7)
  set link($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasLink() => $_has(6);
  @$pb.TagNumber(7)
  void clearLink() => $_clearField(7);

  @$pb.TagNumber(8)
  $fixnum.Int64 get nawsAppId => $_getI64(7);
  @$pb.TagNumber(8)
  set nawsAppId($fixnum.Int64 value) => $_setInt64(7, value);
  @$pb.TagNumber(8)
  $core.bool hasNawsAppId() => $_has(7);
  @$pb.TagNumber(8)
  void clearNawsAppId() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.int get isRecom => $_getIZ(8);
  @$pb.TagNumber(9)
  set isRecom($core.int value) => $_setSignedInt32(8, value);
  @$pb.TagNumber(9)
  $core.bool hasIsRecom() => $_has(8);
  @$pb.TagNumber(9)
  void clearIsRecom() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.int get isGame => $_getIZ(9);
  @$pb.TagNumber(10)
  set isGame($core.int value) => $_setSignedInt32(9, value);
  @$pb.TagNumber(10)
  $core.bool hasIsGame() => $_has(9);
  @$pb.TagNumber(10)
  void clearIsGame() => $_clearField(10);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
