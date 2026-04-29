// This is a generated file - do not edit.
//
// Generated from PbPage/PostBanner.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class PostBanner extends $pb.GeneratedMessage {
  factory PostBanner({
    $core.String? bannerPic,
    $core.String? bannerName,
    $core.int? bannerPosition,
    $core.int? linkType,
    $core.String? bannerUrl,
    $core.int? clientType,
  }) {
    final result = create();
    if (bannerPic != null) result.bannerPic = bannerPic;
    if (bannerName != null) result.bannerName = bannerName;
    if (bannerPosition != null) result.bannerPosition = bannerPosition;
    if (linkType != null) result.linkType = linkType;
    if (bannerUrl != null) result.bannerUrl = bannerUrl;
    if (clientType != null) result.clientType = clientType;
    return result;
  }

  PostBanner._();

  factory PostBanner.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PostBanner.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PostBanner',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba.pbPage'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'bannerPic')
    ..aOS(2, _omitFieldNames ? '' : 'bannerName')
    ..aI(3, _omitFieldNames ? '' : 'bannerPosition',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(4, _omitFieldNames ? '' : 'linkType', fieldType: $pb.PbFieldType.OU3)
    ..aOS(5, _omitFieldNames ? '' : 'bannerUrl')
    ..aI(6, _omitFieldNames ? '' : 'clientType', fieldType: $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PostBanner clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PostBanner copyWith(void Function(PostBanner) updates) =>
      super.copyWith((message) => updates(message as PostBanner)) as PostBanner;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PostBanner create() => PostBanner._();
  @$core.override
  PostBanner createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PostBanner getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PostBanner>(create);
  static PostBanner? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get bannerPic => $_getSZ(0);
  @$pb.TagNumber(1)
  set bannerPic($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasBannerPic() => $_has(0);
  @$pb.TagNumber(1)
  void clearBannerPic() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get bannerName => $_getSZ(1);
  @$pb.TagNumber(2)
  set bannerName($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasBannerName() => $_has(1);
  @$pb.TagNumber(2)
  void clearBannerName() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get bannerPosition => $_getIZ(2);
  @$pb.TagNumber(3)
  set bannerPosition($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasBannerPosition() => $_has(2);
  @$pb.TagNumber(3)
  void clearBannerPosition() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get linkType => $_getIZ(3);
  @$pb.TagNumber(4)
  set linkType($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasLinkType() => $_has(3);
  @$pb.TagNumber(4)
  void clearLinkType() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get bannerUrl => $_getSZ(4);
  @$pb.TagNumber(5)
  set bannerUrl($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasBannerUrl() => $_has(4);
  @$pb.TagNumber(5)
  void clearBannerUrl() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get clientType => $_getIZ(5);
  @$pb.TagNumber(6)
  set clientType($core.int value) => $_setUnsignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasClientType() => $_has(5);
  @$pb.TagNumber(6)
  void clearClientType() => $_clearField(6);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
