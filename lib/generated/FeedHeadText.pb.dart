// This is a generated file - do not edit.
//
// Generated from FeedHeadText.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'BaseTextColor.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class FeedHeadText extends $pb.GeneratedMessage {
  factory FeedHeadText({
    $core.String? text,
    $core.int? priority,
    $core.int? canDegrade,
    $core.int? degradeLen,
    $core.int? degradePriority,
    $core.String? suffix,
    $core.int? type,
    $0.BaseTextColor? color,
    $0.BaseTextColor? bgColor,
    $core.String? fontSize,
    $core.int? fontWeight,
  }) {
    final result = create();
    if (text != null) result.text = text;
    if (priority != null) result.priority = priority;
    if (canDegrade != null) result.canDegrade = canDegrade;
    if (degradeLen != null) result.degradeLen = degradeLen;
    if (degradePriority != null) result.degradePriority = degradePriority;
    if (suffix != null) result.suffix = suffix;
    if (type != null) result.type = type;
    if (color != null) result.color = color;
    if (bgColor != null) result.bgColor = bgColor;
    if (fontSize != null) result.fontSize = fontSize;
    if (fontWeight != null) result.fontWeight = fontWeight;
    return result;
  }

  FeedHeadText._();

  factory FeedHeadText.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FeedHeadText.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FeedHeadText',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'text')
    ..aI(2, _omitFieldNames ? '' : 'priority')
    ..aI(3, _omitFieldNames ? '' : 'canDegrade')
    ..aI(4, _omitFieldNames ? '' : 'degradeLen', fieldType: $pb.PbFieldType.OU3)
    ..aI(5, _omitFieldNames ? '' : 'degradePriority')
    ..aOS(6, _omitFieldNames ? '' : 'suffix')
    ..aI(7, _omitFieldNames ? '' : 'type')
    ..aOM<$0.BaseTextColor>(8, _omitFieldNames ? '' : 'color',
        subBuilder: $0.BaseTextColor.create)
    ..aOM<$0.BaseTextColor>(9, _omitFieldNames ? '' : 'bgColor',
        subBuilder: $0.BaseTextColor.create)
    ..aOS(10, _omitFieldNames ? '' : 'fontSize')
    ..aI(11, _omitFieldNames ? '' : 'fontWeight')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FeedHeadText clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FeedHeadText copyWith(void Function(FeedHeadText) updates) =>
      super.copyWith((message) => updates(message as FeedHeadText))
          as FeedHeadText;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FeedHeadText create() => FeedHeadText._();
  @$core.override
  FeedHeadText createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FeedHeadText getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FeedHeadText>(create);
  static FeedHeadText? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get text => $_getSZ(0);
  @$pb.TagNumber(1)
  set text($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasText() => $_has(0);
  @$pb.TagNumber(1)
  void clearText() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get priority => $_getIZ(1);
  @$pb.TagNumber(2)
  set priority($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPriority() => $_has(1);
  @$pb.TagNumber(2)
  void clearPriority() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get canDegrade => $_getIZ(2);
  @$pb.TagNumber(3)
  set canDegrade($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasCanDegrade() => $_has(2);
  @$pb.TagNumber(3)
  void clearCanDegrade() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get degradeLen => $_getIZ(3);
  @$pb.TagNumber(4)
  set degradeLen($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasDegradeLen() => $_has(3);
  @$pb.TagNumber(4)
  void clearDegradeLen() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get degradePriority => $_getIZ(4);
  @$pb.TagNumber(5)
  set degradePriority($core.int value) => $_setSignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasDegradePriority() => $_has(4);
  @$pb.TagNumber(5)
  void clearDegradePriority() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get suffix => $_getSZ(5);
  @$pb.TagNumber(6)
  set suffix($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasSuffix() => $_has(5);
  @$pb.TagNumber(6)
  void clearSuffix() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.int get type => $_getIZ(6);
  @$pb.TagNumber(7)
  set type($core.int value) => $_setSignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasType() => $_has(6);
  @$pb.TagNumber(7)
  void clearType() => $_clearField(7);

  @$pb.TagNumber(8)
  $0.BaseTextColor get color => $_getN(7);
  @$pb.TagNumber(8)
  set color($0.BaseTextColor value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasColor() => $_has(7);
  @$pb.TagNumber(8)
  void clearColor() => $_clearField(8);
  @$pb.TagNumber(8)
  $0.BaseTextColor ensureColor() => $_ensure(7);

  @$pb.TagNumber(9)
  $0.BaseTextColor get bgColor => $_getN(8);
  @$pb.TagNumber(9)
  set bgColor($0.BaseTextColor value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasBgColor() => $_has(8);
  @$pb.TagNumber(9)
  void clearBgColor() => $_clearField(9);
  @$pb.TagNumber(9)
  $0.BaseTextColor ensureBgColor() => $_ensure(8);

  @$pb.TagNumber(10)
  $core.String get fontSize => $_getSZ(9);
  @$pb.TagNumber(10)
  set fontSize($core.String value) => $_setString(9, value);
  @$pb.TagNumber(10)
  $core.bool hasFontSize() => $_has(9);
  @$pb.TagNumber(10)
  void clearFontSize() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.int get fontWeight => $_getIZ(10);
  @$pb.TagNumber(11)
  set fontWeight($core.int value) => $_setSignedInt32(10, value);
  @$pb.TagNumber(11)
  $core.bool hasFontWeight() => $_has(10);
  @$pb.TagNumber(11)
  void clearFontWeight() => $_clearField(11);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
