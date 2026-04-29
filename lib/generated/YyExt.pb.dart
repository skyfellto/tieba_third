// This is a generated file - do not edit.
//
// Generated from YyExt.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class YyExt extends $pb.GeneratedMessage {
  factory YyExt({
    $core.String? sid,
    $core.String? ssid,
    $core.String? templateId,
    $core.String? yyUid,
    $core.int? isYyGame,
    $core.String? streamInfo,
    $core.String? rankShow,
    $core.String? iconUrl,
  }) {
    final result = create();
    if (sid != null) result.sid = sid;
    if (ssid != null) result.ssid = ssid;
    if (templateId != null) result.templateId = templateId;
    if (yyUid != null) result.yyUid = yyUid;
    if (isYyGame != null) result.isYyGame = isYyGame;
    if (streamInfo != null) result.streamInfo = streamInfo;
    if (rankShow != null) result.rankShow = rankShow;
    if (iconUrl != null) result.iconUrl = iconUrl;
    return result;
  }

  YyExt._();

  factory YyExt.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory YyExt.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'YyExt',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'sid')
    ..aOS(2, _omitFieldNames ? '' : 'ssid')
    ..aOS(3, _omitFieldNames ? '' : 'templateId')
    ..aOS(4, _omitFieldNames ? '' : 'yyUid')
    ..aI(5, _omitFieldNames ? '' : 'isYyGame')
    ..aOS(6, _omitFieldNames ? '' : 'streamInfo')
    ..aOS(7, _omitFieldNames ? '' : 'rankShow')
    ..aOS(8, _omitFieldNames ? '' : 'iconUrl')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  YyExt clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  YyExt copyWith(void Function(YyExt) updates) =>
      super.copyWith((message) => updates(message as YyExt)) as YyExt;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static YyExt create() => YyExt._();
  @$core.override
  YyExt createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static YyExt getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<YyExt>(create);
  static YyExt? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get sid => $_getSZ(0);
  @$pb.TagNumber(1)
  set sid($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSid() => $_has(0);
  @$pb.TagNumber(1)
  void clearSid() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get ssid => $_getSZ(1);
  @$pb.TagNumber(2)
  set ssid($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSsid() => $_has(1);
  @$pb.TagNumber(2)
  void clearSsid() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get templateId => $_getSZ(2);
  @$pb.TagNumber(3)
  set templateId($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasTemplateId() => $_has(2);
  @$pb.TagNumber(3)
  void clearTemplateId() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get yyUid => $_getSZ(3);
  @$pb.TagNumber(4)
  set yyUid($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasYyUid() => $_has(3);
  @$pb.TagNumber(4)
  void clearYyUid() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get isYyGame => $_getIZ(4);
  @$pb.TagNumber(5)
  set isYyGame($core.int value) => $_setSignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasIsYyGame() => $_has(4);
  @$pb.TagNumber(5)
  void clearIsYyGame() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get streamInfo => $_getSZ(5);
  @$pb.TagNumber(6)
  set streamInfo($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasStreamInfo() => $_has(5);
  @$pb.TagNumber(6)
  void clearStreamInfo() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get rankShow => $_getSZ(6);
  @$pb.TagNumber(7)
  set rankShow($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasRankShow() => $_has(6);
  @$pb.TagNumber(7)
  void clearRankShow() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.String get iconUrl => $_getSZ(7);
  @$pb.TagNumber(8)
  set iconUrl($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasIconUrl() => $_has(7);
  @$pb.TagNumber(8)
  void clearIconUrl() => $_clearField(8);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
