// This is a generated file - do not edit.
//
// Generated from PbPage/FloatingIconItem.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class FloatingIconItem extends $pb.GeneratedMessage {
  factory FloatingIconItem({
    $core.String? url,
    $core.String? iconUrl,
    $core.String? viewStatisticsUrl,
    $core.String? clickStatisticsUrl,
    $core.String? deeplink,
    $core.String? scheme,
    $core.String? packageName,
    $core.String? foldLottie,
    $core.String? unfoldLottie,
    $core.String? floatType,
    $core.String? foldName,
    $core.String? unfoldName,
    $core.String? displayAdIcon,
  }) {
    final result = create();
    if (url != null) result.url = url;
    if (iconUrl != null) result.iconUrl = iconUrl;
    if (viewStatisticsUrl != null) result.viewStatisticsUrl = viewStatisticsUrl;
    if (clickStatisticsUrl != null)
      result.clickStatisticsUrl = clickStatisticsUrl;
    if (deeplink != null) result.deeplink = deeplink;
    if (scheme != null) result.scheme = scheme;
    if (packageName != null) result.packageName = packageName;
    if (foldLottie != null) result.foldLottie = foldLottie;
    if (unfoldLottie != null) result.unfoldLottie = unfoldLottie;
    if (floatType != null) result.floatType = floatType;
    if (foldName != null) result.foldName = foldName;
    if (unfoldName != null) result.unfoldName = unfoldName;
    if (displayAdIcon != null) result.displayAdIcon = displayAdIcon;
    return result;
  }

  FloatingIconItem._();

  factory FloatingIconItem.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FloatingIconItem.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FloatingIconItem',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba.pbPage'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'url')
    ..aOS(2, _omitFieldNames ? '' : 'iconUrl')
    ..aOS(3, _omitFieldNames ? '' : 'viewStatisticsUrl')
    ..aOS(4, _omitFieldNames ? '' : 'clickStatisticsUrl')
    ..aOS(5, _omitFieldNames ? '' : 'deeplink')
    ..aOS(6, _omitFieldNames ? '' : 'scheme')
    ..aOS(7, _omitFieldNames ? '' : 'packageName')
    ..aOS(8, _omitFieldNames ? '' : 'foldLottie')
    ..aOS(9, _omitFieldNames ? '' : 'unfoldLottie')
    ..aOS(10, _omitFieldNames ? '' : 'floatType')
    ..aOS(11, _omitFieldNames ? '' : 'foldName')
    ..aOS(12, _omitFieldNames ? '' : 'unfoldName')
    ..aOS(13, _omitFieldNames ? '' : 'displayAdIcon')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FloatingIconItem clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FloatingIconItem copyWith(void Function(FloatingIconItem) updates) =>
      super.copyWith((message) => updates(message as FloatingIconItem))
          as FloatingIconItem;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FloatingIconItem create() => FloatingIconItem._();
  @$core.override
  FloatingIconItem createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FloatingIconItem getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FloatingIconItem>(create);
  static FloatingIconItem? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get url => $_getSZ(0);
  @$pb.TagNumber(1)
  set url($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasUrl() => $_has(0);
  @$pb.TagNumber(1)
  void clearUrl() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get iconUrl => $_getSZ(1);
  @$pb.TagNumber(2)
  set iconUrl($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasIconUrl() => $_has(1);
  @$pb.TagNumber(2)
  void clearIconUrl() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get viewStatisticsUrl => $_getSZ(2);
  @$pb.TagNumber(3)
  set viewStatisticsUrl($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasViewStatisticsUrl() => $_has(2);
  @$pb.TagNumber(3)
  void clearViewStatisticsUrl() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get clickStatisticsUrl => $_getSZ(3);
  @$pb.TagNumber(4)
  set clickStatisticsUrl($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasClickStatisticsUrl() => $_has(3);
  @$pb.TagNumber(4)
  void clearClickStatisticsUrl() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get deeplink => $_getSZ(4);
  @$pb.TagNumber(5)
  set deeplink($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasDeeplink() => $_has(4);
  @$pb.TagNumber(5)
  void clearDeeplink() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get scheme => $_getSZ(5);
  @$pb.TagNumber(6)
  set scheme($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasScheme() => $_has(5);
  @$pb.TagNumber(6)
  void clearScheme() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get packageName => $_getSZ(6);
  @$pb.TagNumber(7)
  set packageName($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasPackageName() => $_has(6);
  @$pb.TagNumber(7)
  void clearPackageName() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.String get foldLottie => $_getSZ(7);
  @$pb.TagNumber(8)
  set foldLottie($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasFoldLottie() => $_has(7);
  @$pb.TagNumber(8)
  void clearFoldLottie() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.String get unfoldLottie => $_getSZ(8);
  @$pb.TagNumber(9)
  set unfoldLottie($core.String value) => $_setString(8, value);
  @$pb.TagNumber(9)
  $core.bool hasUnfoldLottie() => $_has(8);
  @$pb.TagNumber(9)
  void clearUnfoldLottie() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.String get floatType => $_getSZ(9);
  @$pb.TagNumber(10)
  set floatType($core.String value) => $_setString(9, value);
  @$pb.TagNumber(10)
  $core.bool hasFloatType() => $_has(9);
  @$pb.TagNumber(10)
  void clearFloatType() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.String get foldName => $_getSZ(10);
  @$pb.TagNumber(11)
  set foldName($core.String value) => $_setString(10, value);
  @$pb.TagNumber(11)
  $core.bool hasFoldName() => $_has(10);
  @$pb.TagNumber(11)
  void clearFoldName() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.String get unfoldName => $_getSZ(11);
  @$pb.TagNumber(12)
  set unfoldName($core.String value) => $_setString(11, value);
  @$pb.TagNumber(12)
  $core.bool hasUnfoldName() => $_has(11);
  @$pb.TagNumber(12)
  void clearUnfoldName() => $_clearField(12);

  @$pb.TagNumber(13)
  $core.String get displayAdIcon => $_getSZ(12);
  @$pb.TagNumber(13)
  set displayAdIcon($core.String value) => $_setString(12, value);
  @$pb.TagNumber(13)
  $core.bool hasDisplayAdIcon() => $_has(12);
  @$pb.TagNumber(13)
  void clearDisplayAdIcon() => $_clearField(13);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
