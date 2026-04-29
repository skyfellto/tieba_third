// This is a generated file - do not edit.
//
// Generated from Profile/VipBanner.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class VipBanner extends $pb.GeneratedMessage {
  factory VipBanner({
    $core.String? title,
    $core.String? subTitle,
    $core.String? buttonLable,
    $core.String? bubble,
    $core.String? url,
    $core.String? buttonUrl,
  }) {
    final result = create();
    if (title != null) result.title = title;
    if (subTitle != null) result.subTitle = subTitle;
    if (buttonLable != null) result.buttonLable = buttonLable;
    if (bubble != null) result.bubble = bubble;
    if (url != null) result.url = url;
    if (buttonUrl != null) result.buttonUrl = buttonUrl;
    return result;
  }

  VipBanner._();

  factory VipBanner.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory VipBanner.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'VipBanner',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba.profile'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'title')
    ..aOS(2, _omitFieldNames ? '' : 'subTitle')
    ..aOS(3, _omitFieldNames ? '' : 'buttonLable')
    ..aOS(4, _omitFieldNames ? '' : 'bubble')
    ..aOS(5, _omitFieldNames ? '' : 'url')
    ..aOS(6, _omitFieldNames ? '' : 'buttonUrl')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VipBanner clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VipBanner copyWith(void Function(VipBanner) updates) =>
      super.copyWith((message) => updates(message as VipBanner)) as VipBanner;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VipBanner create() => VipBanner._();
  @$core.override
  VipBanner createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static VipBanner getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VipBanner>(create);
  static VipBanner? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get subTitle => $_getSZ(1);
  @$pb.TagNumber(2)
  set subTitle($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSubTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearSubTitle() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get buttonLable => $_getSZ(2);
  @$pb.TagNumber(3)
  set buttonLable($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasButtonLable() => $_has(2);
  @$pb.TagNumber(3)
  void clearButtonLable() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get bubble => $_getSZ(3);
  @$pb.TagNumber(4)
  set bubble($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasBubble() => $_has(3);
  @$pb.TagNumber(4)
  void clearBubble() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get url => $_getSZ(4);
  @$pb.TagNumber(5)
  set url($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasUrl() => $_has(4);
  @$pb.TagNumber(5)
  void clearUrl() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get buttonUrl => $_getSZ(5);
  @$pb.TagNumber(6)
  set buttonUrl($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasButtonUrl() => $_has(5);
  @$pb.TagNumber(6)
  void clearButtonUrl() => $_clearField(6);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
