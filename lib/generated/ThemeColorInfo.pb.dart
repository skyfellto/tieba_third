// This is a generated file - do not edit.
//
// Generated from ThemeColorInfo.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'ThemeElement.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class ThemeColorInfo extends $pb.GeneratedMessage {
  factory ThemeColorInfo({
    $0.ThemeElement? day,
    $0.ThemeElement? night,
    $0.ThemeElement? dark,
  }) {
    final result = create();
    if (day != null) result.day = day;
    if (night != null) result.night = night;
    if (dark != null) result.dark = dark;
    return result;
  }

  ThemeColorInfo._();

  factory ThemeColorInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ThemeColorInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ThemeColorInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aOM<$0.ThemeElement>(1, _omitFieldNames ? '' : 'day',
        subBuilder: $0.ThemeElement.create)
    ..aOM<$0.ThemeElement>(2, _omitFieldNames ? '' : 'night',
        subBuilder: $0.ThemeElement.create)
    ..aOM<$0.ThemeElement>(3, _omitFieldNames ? '' : 'dark',
        subBuilder: $0.ThemeElement.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ThemeColorInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ThemeColorInfo copyWith(void Function(ThemeColorInfo) updates) =>
      super.copyWith((message) => updates(message as ThemeColorInfo))
          as ThemeColorInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ThemeColorInfo create() => ThemeColorInfo._();
  @$core.override
  ThemeColorInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ThemeColorInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ThemeColorInfo>(create);
  static ThemeColorInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $0.ThemeElement get day => $_getN(0);
  @$pb.TagNumber(1)
  set day($0.ThemeElement value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasDay() => $_has(0);
  @$pb.TagNumber(1)
  void clearDay() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.ThemeElement ensureDay() => $_ensure(0);

  @$pb.TagNumber(2)
  $0.ThemeElement get night => $_getN(1);
  @$pb.TagNumber(2)
  set night($0.ThemeElement value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasNight() => $_has(1);
  @$pb.TagNumber(2)
  void clearNight() => $_clearField(2);
  @$pb.TagNumber(2)
  $0.ThemeElement ensureNight() => $_ensure(1);

  @$pb.TagNumber(3)
  $0.ThemeElement get dark => $_getN(2);
  @$pb.TagNumber(3)
  set dark($0.ThemeElement value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasDark() => $_has(2);
  @$pb.TagNumber(3)
  void clearDark() => $_clearField(3);
  @$pb.TagNumber(3)
  $0.ThemeElement ensureDark() => $_ensure(2);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
