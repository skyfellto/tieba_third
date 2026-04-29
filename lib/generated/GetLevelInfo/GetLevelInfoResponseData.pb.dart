// This is a generated file - do not edit.
//
// Generated from GetLevelInfo/GetLevelInfoResponseData.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../LevelInfo.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class GetLevelInfoResponseData extends $pb.GeneratedMessage {
  factory GetLevelInfoResponseData({
    $core.Iterable<$0.LevelInfo>? levelInfo,
    $core.int? isLike,
    $core.int? userLevel,
    $core.String? levelName,
  }) {
    final result = create();
    if (levelInfo != null) result.levelInfo.addAll(levelInfo);
    if (isLike != null) result.isLike = isLike;
    if (userLevel != null) result.userLevel = userLevel;
    if (levelName != null) result.levelName = levelName;
    return result;
  }

  GetLevelInfoResponseData._();

  factory GetLevelInfoResponseData.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetLevelInfoResponseData.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetLevelInfoResponseData',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'tieba.getLevelInfo'),
      createEmptyInstance: create)
    ..pPM<$0.LevelInfo>(1, _omitFieldNames ? '' : 'levelInfo',
        subBuilder: $0.LevelInfo.create)
    ..aI(2, _omitFieldNames ? '' : 'isLike')
    ..aI(3, _omitFieldNames ? '' : 'userLevel')
    ..aOS(4, _omitFieldNames ? '' : 'levelName')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetLevelInfoResponseData clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetLevelInfoResponseData copyWith(
          void Function(GetLevelInfoResponseData) updates) =>
      super.copyWith((message) => updates(message as GetLevelInfoResponseData))
          as GetLevelInfoResponseData;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetLevelInfoResponseData create() => GetLevelInfoResponseData._();
  @$core.override
  GetLevelInfoResponseData createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetLevelInfoResponseData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetLevelInfoResponseData>(create);
  static GetLevelInfoResponseData? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$0.LevelInfo> get levelInfo => $_getList(0);

  @$pb.TagNumber(2)
  $core.int get isLike => $_getIZ(1);
  @$pb.TagNumber(2)
  set isLike($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasIsLike() => $_has(1);
  @$pb.TagNumber(2)
  void clearIsLike() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get userLevel => $_getIZ(2);
  @$pb.TagNumber(3)
  set userLevel($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasUserLevel() => $_has(2);
  @$pb.TagNumber(3)
  void clearUserLevel() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get levelName => $_getSZ(3);
  @$pb.TagNumber(4)
  set levelName($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasLevelName() => $_has(3);
  @$pb.TagNumber(4)
  void clearLevelName() => $_clearField(4);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
