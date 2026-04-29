// This is a generated file - do not edit.
//
// Generated from ThreadEasterEgg.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'ShareInfo.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class ThreadEasterEgg extends $pb.GeneratedMessage {
  factory ThreadEasterEgg({
    $core.String? activityId,
    $core.String? videoUrl,
    $core.String? popText,
    $core.String? popImageurl,
    $0.ShareInfo? shareInfo,
  }) {
    final result = create();
    if (activityId != null) result.activityId = activityId;
    if (videoUrl != null) result.videoUrl = videoUrl;
    if (popText != null) result.popText = popText;
    if (popImageurl != null) result.popImageurl = popImageurl;
    if (shareInfo != null) result.shareInfo = shareInfo;
    return result;
  }

  ThreadEasterEgg._();

  factory ThreadEasterEgg.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ThreadEasterEgg.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ThreadEasterEgg',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'activityId')
    ..aOS(2, _omitFieldNames ? '' : 'videoUrl')
    ..aOS(3, _omitFieldNames ? '' : 'popText')
    ..aOS(4, _omitFieldNames ? '' : 'popImageurl')
    ..aOM<$0.ShareInfo>(5, _omitFieldNames ? '' : 'shareInfo',
        subBuilder: $0.ShareInfo.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ThreadEasterEgg clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ThreadEasterEgg copyWith(void Function(ThreadEasterEgg) updates) =>
      super.copyWith((message) => updates(message as ThreadEasterEgg))
          as ThreadEasterEgg;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ThreadEasterEgg create() => ThreadEasterEgg._();
  @$core.override
  ThreadEasterEgg createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ThreadEasterEgg getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ThreadEasterEgg>(create);
  static ThreadEasterEgg? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get activityId => $_getSZ(0);
  @$pb.TagNumber(1)
  set activityId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasActivityId() => $_has(0);
  @$pb.TagNumber(1)
  void clearActivityId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get videoUrl => $_getSZ(1);
  @$pb.TagNumber(2)
  set videoUrl($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasVideoUrl() => $_has(1);
  @$pb.TagNumber(2)
  void clearVideoUrl() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get popText => $_getSZ(2);
  @$pb.TagNumber(3)
  set popText($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasPopText() => $_has(2);
  @$pb.TagNumber(3)
  void clearPopText() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get popImageurl => $_getSZ(3);
  @$pb.TagNumber(4)
  set popImageurl($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasPopImageurl() => $_has(3);
  @$pb.TagNumber(4)
  void clearPopImageurl() => $_clearField(4);

  @$pb.TagNumber(5)
  $0.ShareInfo get shareInfo => $_getN(4);
  @$pb.TagNumber(5)
  set shareInfo($0.ShareInfo value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasShareInfo() => $_has(4);
  @$pb.TagNumber(5)
  void clearShareInfo() => $_clearField(5);
  @$pb.TagNumber(5)
  $0.ShareInfo ensureShareInfo() => $_ensure(4);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
