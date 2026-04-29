// This is a generated file - do not edit.
//
// Generated from ReplyExp.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class ReplyExp extends $pb.GeneratedMessage {
  factory ReplyExp({
    $core.String? preMsg,
    $core.String? colorMsg,
    $core.String? currentLevelMaxExp,
    $core.String? currentLevel,
    $core.String? old,
    $core.String? inc,
    $core.String? questionMsg,
    $core.String? questionExp,
  }) {
    final result = create();
    if (preMsg != null) result.preMsg = preMsg;
    if (colorMsg != null) result.colorMsg = colorMsg;
    if (currentLevelMaxExp != null)
      result.currentLevelMaxExp = currentLevelMaxExp;
    if (currentLevel != null) result.currentLevel = currentLevel;
    if (old != null) result.old = old;
    if (inc != null) result.inc = inc;
    if (questionMsg != null) result.questionMsg = questionMsg;
    if (questionExp != null) result.questionExp = questionExp;
    return result;
  }

  ReplyExp._();

  factory ReplyExp.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ReplyExp.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ReplyExp',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'preMsg')
    ..aOS(2, _omitFieldNames ? '' : 'colorMsg')
    ..aOS(3, _omitFieldNames ? '' : 'currentLevelMaxExp')
    ..aOS(4, _omitFieldNames ? '' : 'currentLevel')
    ..aOS(5, _omitFieldNames ? '' : 'old')
    ..aOS(6, _omitFieldNames ? '' : 'inc')
    ..aOS(7, _omitFieldNames ? '' : 'questionMsg')
    ..aOS(8, _omitFieldNames ? '' : 'questionExp')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReplyExp clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReplyExp copyWith(void Function(ReplyExp) updates) =>
      super.copyWith((message) => updates(message as ReplyExp)) as ReplyExp;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReplyExp create() => ReplyExp._();
  @$core.override
  ReplyExp createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ReplyExp getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReplyExp>(create);
  static ReplyExp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get preMsg => $_getSZ(0);
  @$pb.TagNumber(1)
  set preMsg($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPreMsg() => $_has(0);
  @$pb.TagNumber(1)
  void clearPreMsg() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get colorMsg => $_getSZ(1);
  @$pb.TagNumber(2)
  set colorMsg($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasColorMsg() => $_has(1);
  @$pb.TagNumber(2)
  void clearColorMsg() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get currentLevelMaxExp => $_getSZ(2);
  @$pb.TagNumber(3)
  set currentLevelMaxExp($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasCurrentLevelMaxExp() => $_has(2);
  @$pb.TagNumber(3)
  void clearCurrentLevelMaxExp() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get currentLevel => $_getSZ(3);
  @$pb.TagNumber(4)
  set currentLevel($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasCurrentLevel() => $_has(3);
  @$pb.TagNumber(4)
  void clearCurrentLevel() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get old => $_getSZ(4);
  @$pb.TagNumber(5)
  set old($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasOld() => $_has(4);
  @$pb.TagNumber(5)
  void clearOld() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get inc => $_getSZ(5);
  @$pb.TagNumber(6)
  set inc($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasInc() => $_has(5);
  @$pb.TagNumber(6)
  void clearInc() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get questionMsg => $_getSZ(6);
  @$pb.TagNumber(7)
  set questionMsg($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasQuestionMsg() => $_has(6);
  @$pb.TagNumber(7)
  void clearQuestionMsg() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.String get questionExp => $_getSZ(7);
  @$pb.TagNumber(8)
  set questionExp($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasQuestionExp() => $_has(7);
  @$pb.TagNumber(8)
  void clearQuestionExp() => $_clearField(8);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
