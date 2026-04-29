// This is a generated file - do not edit.
//
// Generated from VideoInfo.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class VideoInfo extends $pb.GeneratedMessage {
  factory VideoInfo({
    $core.String? videoMD5,
    $core.String? videoUrl,
    $core.int? videoDuration,
    $core.int? videoWidth,
    $core.int? videoHeight,
    $core.String? thumbnailUrl,
    $core.int? thumbnailWidth,
    $core.int? thumbnailHeight,
    $core.String? mediaSubtitle,
  }) {
    final result = create();
    if (videoMD5 != null) result.videoMD5 = videoMD5;
    if (videoUrl != null) result.videoUrl = videoUrl;
    if (videoDuration != null) result.videoDuration = videoDuration;
    if (videoWidth != null) result.videoWidth = videoWidth;
    if (videoHeight != null) result.videoHeight = videoHeight;
    if (thumbnailUrl != null) result.thumbnailUrl = thumbnailUrl;
    if (thumbnailWidth != null) result.thumbnailWidth = thumbnailWidth;
    if (thumbnailHeight != null) result.thumbnailHeight = thumbnailHeight;
    if (mediaSubtitle != null) result.mediaSubtitle = mediaSubtitle;
    return result;
  }

  VideoInfo._();

  factory VideoInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory VideoInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'VideoInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'videoMD5', protoName: 'videoMD5')
    ..aOS(2, _omitFieldNames ? '' : 'videoUrl', protoName: 'videoUrl')
    ..aI(3, _omitFieldNames ? '' : 'videoDuration',
        protoName: 'videoDuration', fieldType: $pb.PbFieldType.OU3)
    ..aI(4, _omitFieldNames ? '' : 'videoWidth',
        protoName: 'videoWidth', fieldType: $pb.PbFieldType.OU3)
    ..aI(5, _omitFieldNames ? '' : 'videoHeight',
        protoName: 'videoHeight', fieldType: $pb.PbFieldType.OU3)
    ..aOS(6, _omitFieldNames ? '' : 'thumbnailUrl', protoName: 'thumbnailUrl')
    ..aI(7, _omitFieldNames ? '' : 'thumbnailWidth',
        protoName: 'thumbnailWidth', fieldType: $pb.PbFieldType.OU3)
    ..aI(8, _omitFieldNames ? '' : 'thumbnailHeight',
        protoName: 'thumbnailHeight', fieldType: $pb.PbFieldType.OU3)
    ..aOS(11, _omitFieldNames ? '' : 'mediaSubtitle',
        protoName: 'mediaSubtitle')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VideoInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VideoInfo copyWith(void Function(VideoInfo) updates) =>
      super.copyWith((message) => updates(message as VideoInfo)) as VideoInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VideoInfo create() => VideoInfo._();
  @$core.override
  VideoInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static VideoInfo getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VideoInfo>(create);
  static VideoInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get videoMD5 => $_getSZ(0);
  @$pb.TagNumber(1)
  set videoMD5($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVideoMD5() => $_has(0);
  @$pb.TagNumber(1)
  void clearVideoMD5() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get videoUrl => $_getSZ(1);
  @$pb.TagNumber(2)
  set videoUrl($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasVideoUrl() => $_has(1);
  @$pb.TagNumber(2)
  void clearVideoUrl() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get videoDuration => $_getIZ(2);
  @$pb.TagNumber(3)
  set videoDuration($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasVideoDuration() => $_has(2);
  @$pb.TagNumber(3)
  void clearVideoDuration() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get videoWidth => $_getIZ(3);
  @$pb.TagNumber(4)
  set videoWidth($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasVideoWidth() => $_has(3);
  @$pb.TagNumber(4)
  void clearVideoWidth() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get videoHeight => $_getIZ(4);
  @$pb.TagNumber(5)
  set videoHeight($core.int value) => $_setUnsignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasVideoHeight() => $_has(4);
  @$pb.TagNumber(5)
  void clearVideoHeight() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get thumbnailUrl => $_getSZ(5);
  @$pb.TagNumber(6)
  set thumbnailUrl($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasThumbnailUrl() => $_has(5);
  @$pb.TagNumber(6)
  void clearThumbnailUrl() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.int get thumbnailWidth => $_getIZ(6);
  @$pb.TagNumber(7)
  set thumbnailWidth($core.int value) => $_setUnsignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasThumbnailWidth() => $_has(6);
  @$pb.TagNumber(7)
  void clearThumbnailWidth() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.int get thumbnailHeight => $_getIZ(7);
  @$pb.TagNumber(8)
  set thumbnailHeight($core.int value) => $_setUnsignedInt32(7, value);
  @$pb.TagNumber(8)
  $core.bool hasThumbnailHeight() => $_has(7);
  @$pb.TagNumber(8)
  void clearThumbnailHeight() => $_clearField(8);

  @$pb.TagNumber(11)
  $core.String get mediaSubtitle => $_getSZ(8);
  @$pb.TagNumber(11)
  set mediaSubtitle($core.String value) => $_setString(8, value);
  @$pb.TagNumber(11)
  $core.bool hasMediaSubtitle() => $_has(8);
  @$pb.TagNumber(11)
  void clearMediaSubtitle() => $_clearField(11);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
