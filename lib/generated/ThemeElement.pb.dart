// This is a generated file - do not edit.
//
// Generated from ThemeElement.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class ThemeElement extends $pb.GeneratedMessage {
  factory ThemeElement({
    $core.String? commonColor,
    $core.String? darkColor,
    $core.String? lightColor,
    $core.String? patternImage,
    $core.String? fontColor,
  }) {
    final result = create();
    if (commonColor != null) result.commonColor = commonColor;
    if (darkColor != null) result.darkColor = darkColor;
    if (lightColor != null) result.lightColor = lightColor;
    if (patternImage != null) result.patternImage = patternImage;
    if (fontColor != null) result.fontColor = fontColor;
    return result;
  }

  ThemeElement._();

  factory ThemeElement.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ThemeElement.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ThemeElement',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'commonColor')
    ..aOS(2, _omitFieldNames ? '' : 'darkColor')
    ..aOS(3, _omitFieldNames ? '' : 'lightColor')
    ..aOS(4, _omitFieldNames ? '' : 'patternImage')
    ..aOS(5, _omitFieldNames ? '' : 'fontColor')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ThemeElement clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ThemeElement copyWith(void Function(ThemeElement) updates) =>
      super.copyWith((message) => updates(message as ThemeElement))
          as ThemeElement;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ThemeElement create() => ThemeElement._();
  @$core.override
  ThemeElement createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ThemeElement getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ThemeElement>(create);
  static ThemeElement? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get commonColor => $_getSZ(0);
  @$pb.TagNumber(1)
  set commonColor($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCommonColor() => $_has(0);
  @$pb.TagNumber(1)
  void clearCommonColor() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get darkColor => $_getSZ(1);
  @$pb.TagNumber(2)
  set darkColor($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasDarkColor() => $_has(1);
  @$pb.TagNumber(2)
  void clearDarkColor() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get lightColor => $_getSZ(2);
  @$pb.TagNumber(3)
  set lightColor($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasLightColor() => $_has(2);
  @$pb.TagNumber(3)
  void clearLightColor() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get patternImage => $_getSZ(3);
  @$pb.TagNumber(4)
  set patternImage($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasPatternImage() => $_has(3);
  @$pb.TagNumber(4)
  void clearPatternImage() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get fontColor => $_getSZ(4);
  @$pb.TagNumber(5)
  set fontColor($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasFontColor() => $_has(4);
  @$pb.TagNumber(5)
  void clearFontColor() => $_clearField(5);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
