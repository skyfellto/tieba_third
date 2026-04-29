// This is a generated file - do not edit.
//
// Generated from Advertisement.proto.

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

class Advertisement extends $pb.GeneratedMessage {
  factory Advertisement({
    $fixnum.Int64? time,
    $core.String? pic,
    $core.String? picClick,
    $core.String? jumpLink,
    $core.String? advertisementId,
    $core.String? viewStatisticsUrl,
    $core.String? clickStatisticsUrl,
    $core.String? floatingText,
    $core.String? deeplink,
    $core.String? scheme,
    $core.String? packageName,
    $core.String? displayAdIcon,
  }) {
    final result = create();
    if (time != null) result.time = time;
    if (pic != null) result.pic = pic;
    if (picClick != null) result.picClick = picClick;
    if (jumpLink != null) result.jumpLink = jumpLink;
    if (advertisementId != null) result.advertisementId = advertisementId;
    if (viewStatisticsUrl != null) result.viewStatisticsUrl = viewStatisticsUrl;
    if (clickStatisticsUrl != null)
      result.clickStatisticsUrl = clickStatisticsUrl;
    if (floatingText != null) result.floatingText = floatingText;
    if (deeplink != null) result.deeplink = deeplink;
    if (scheme != null) result.scheme = scheme;
    if (packageName != null) result.packageName = packageName;
    if (displayAdIcon != null) result.displayAdIcon = displayAdIcon;
    return result;
  }

  Advertisement._();

  factory Advertisement.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Advertisement.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Advertisement',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'time')
    ..aOS(2, _omitFieldNames ? '' : 'pic')
    ..aOS(3, _omitFieldNames ? '' : 'picClick')
    ..aOS(4, _omitFieldNames ? '' : 'jumpLink')
    ..aOS(5, _omitFieldNames ? '' : 'advertisementId')
    ..aOS(6, _omitFieldNames ? '' : 'viewStatisticsUrl')
    ..aOS(7, _omitFieldNames ? '' : 'clickStatisticsUrl')
    ..aOS(8, _omitFieldNames ? '' : 'floatingText')
    ..aOS(9, _omitFieldNames ? '' : 'deeplink')
    ..aOS(10, _omitFieldNames ? '' : 'scheme')
    ..aOS(11, _omitFieldNames ? '' : 'packageName')
    ..aOS(12, _omitFieldNames ? '' : 'displayAdIcon')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Advertisement clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Advertisement copyWith(void Function(Advertisement) updates) =>
      super.copyWith((message) => updates(message as Advertisement))
          as Advertisement;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Advertisement create() => Advertisement._();
  @$core.override
  Advertisement createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Advertisement getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Advertisement>(create);
  static Advertisement? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get time => $_getI64(0);
  @$pb.TagNumber(1)
  set time($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTime() => $_has(0);
  @$pb.TagNumber(1)
  void clearTime() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get pic => $_getSZ(1);
  @$pb.TagNumber(2)
  set pic($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPic() => $_has(1);
  @$pb.TagNumber(2)
  void clearPic() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get picClick => $_getSZ(2);
  @$pb.TagNumber(3)
  set picClick($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasPicClick() => $_has(2);
  @$pb.TagNumber(3)
  void clearPicClick() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get jumpLink => $_getSZ(3);
  @$pb.TagNumber(4)
  set jumpLink($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasJumpLink() => $_has(3);
  @$pb.TagNumber(4)
  void clearJumpLink() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get advertisementId => $_getSZ(4);
  @$pb.TagNumber(5)
  set advertisementId($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasAdvertisementId() => $_has(4);
  @$pb.TagNumber(5)
  void clearAdvertisementId() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get viewStatisticsUrl => $_getSZ(5);
  @$pb.TagNumber(6)
  set viewStatisticsUrl($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasViewStatisticsUrl() => $_has(5);
  @$pb.TagNumber(6)
  void clearViewStatisticsUrl() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get clickStatisticsUrl => $_getSZ(6);
  @$pb.TagNumber(7)
  set clickStatisticsUrl($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasClickStatisticsUrl() => $_has(6);
  @$pb.TagNumber(7)
  void clearClickStatisticsUrl() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.String get floatingText => $_getSZ(7);
  @$pb.TagNumber(8)
  set floatingText($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasFloatingText() => $_has(7);
  @$pb.TagNumber(8)
  void clearFloatingText() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.String get deeplink => $_getSZ(8);
  @$pb.TagNumber(9)
  set deeplink($core.String value) => $_setString(8, value);
  @$pb.TagNumber(9)
  $core.bool hasDeeplink() => $_has(8);
  @$pb.TagNumber(9)
  void clearDeeplink() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.String get scheme => $_getSZ(9);
  @$pb.TagNumber(10)
  set scheme($core.String value) => $_setString(9, value);
  @$pb.TagNumber(10)
  $core.bool hasScheme() => $_has(9);
  @$pb.TagNumber(10)
  void clearScheme() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.String get packageName => $_getSZ(10);
  @$pb.TagNumber(11)
  set packageName($core.String value) => $_setString(10, value);
  @$pb.TagNumber(11)
  $core.bool hasPackageName() => $_has(10);
  @$pb.TagNumber(11)
  void clearPackageName() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.String get displayAdIcon => $_getSZ(11);
  @$pb.TagNumber(12)
  set displayAdIcon($core.String value) => $_setString(11, value);
  @$pb.TagNumber(12)
  $core.bool hasDisplayAdIcon() => $_has(11);
  @$pb.TagNumber(12)
  void clearDisplayAdIcon() => $_clearField(12);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
