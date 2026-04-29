// This is a generated file - do not edit.
//
// Generated from BannerImage.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class BannerImage extends $pb.GeneratedMessage {
  factory BannerImage({
    $core.String? imgUrl,
    $core.String? aheadUrl,
    $core.String? title,
  }) {
    final result = create();
    if (imgUrl != null) result.imgUrl = imgUrl;
    if (aheadUrl != null) result.aheadUrl = aheadUrl;
    if (title != null) result.title = title;
    return result;
  }

  BannerImage._();

  factory BannerImage.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BannerImage.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BannerImage',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'imgUrl')
    ..aOS(2, _omitFieldNames ? '' : 'aheadUrl')
    ..aOS(3, _omitFieldNames ? '' : 'title')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BannerImage clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BannerImage copyWith(void Function(BannerImage) updates) =>
      super.copyWith((message) => updates(message as BannerImage))
          as BannerImage;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BannerImage create() => BannerImage._();
  @$core.override
  BannerImage createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BannerImage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BannerImage>(create);
  static BannerImage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get imgUrl => $_getSZ(0);
  @$pb.TagNumber(1)
  set imgUrl($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasImgUrl() => $_has(0);
  @$pb.TagNumber(1)
  void clearImgUrl() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get aheadUrl => $_getSZ(1);
  @$pb.TagNumber(2)
  set aheadUrl($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasAheadUrl() => $_has(1);
  @$pb.TagNumber(2)
  void clearAheadUrl() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get title => $_getSZ(2);
  @$pb.TagNumber(3)
  set title($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasTitle() => $_has(2);
  @$pb.TagNumber(3)
  void clearTitle() => $_clearField(3);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
