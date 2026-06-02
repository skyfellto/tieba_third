// This is a generated file - do not edit.
//
// Generated from MaskColor.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'ThemeColorInfo.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class MaskColor extends $pb.GeneratedMessage {
  factory MaskColor({
    $0.ThemeColorInfo? beginColor,
    $0.ThemeColorInfo? endColor,
  }) {
    final result = create();
    if (beginColor != null) result.beginColor = beginColor;
    if (endColor != null) result.endColor = endColor;
    return result;
  }

  MaskColor._();

  factory MaskColor.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MaskColor.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MaskColor',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aOM<$0.ThemeColorInfo>(1, _omitFieldNames ? '' : 'beginColor',
        subBuilder: $0.ThemeColorInfo.create)
    ..aOM<$0.ThemeColorInfo>(2, _omitFieldNames ? '' : 'endColor',
        subBuilder: $0.ThemeColorInfo.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MaskColor clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MaskColor copyWith(void Function(MaskColor) updates) =>
      super.copyWith((message) => updates(message as MaskColor)) as MaskColor;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MaskColor create() => MaskColor._();
  @$core.override
  MaskColor createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MaskColor getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MaskColor>(create);
  static MaskColor? _defaultInstance;

  @$pb.TagNumber(1)
  $0.ThemeColorInfo get beginColor => $_getN(0);
  @$pb.TagNumber(1)
  set beginColor($0.ThemeColorInfo value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasBeginColor() => $_has(0);
  @$pb.TagNumber(1)
  void clearBeginColor() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.ThemeColorInfo ensureBeginColor() => $_ensure(0);

  @$pb.TagNumber(2)
  $0.ThemeColorInfo get endColor => $_getN(1);
  @$pb.TagNumber(2)
  set endColor($0.ThemeColorInfo value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasEndColor() => $_has(1);
  @$pb.TagNumber(2)
  void clearEndColor() => $_clearField(2);
  @$pb.TagNumber(2)
  $0.ThemeColorInfo ensureEndColor() => $_ensure(1);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
