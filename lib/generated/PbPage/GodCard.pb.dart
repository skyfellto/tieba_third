// This is a generated file - do not edit.
//
// Generated from PbPage/GodCard.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class GodCard extends $pb.GeneratedMessage {
  factory GodCard({
    $core.String? userName,
    $core.String? portrait,
    $core.String? timeEx,
    $core.String? text,
    $core.String? picUrl,
    $core.String? buttonText,
    $core.String? buttonUrl,
    $core.int? showFloor,
  }) {
    final result = create();
    if (userName != null) result.userName = userName;
    if (portrait != null) result.portrait = portrait;
    if (timeEx != null) result.timeEx = timeEx;
    if (text != null) result.text = text;
    if (picUrl != null) result.picUrl = picUrl;
    if (buttonText != null) result.buttonText = buttonText;
    if (buttonUrl != null) result.buttonUrl = buttonUrl;
    if (showFloor != null) result.showFloor = showFloor;
    return result;
  }

  GodCard._();

  factory GodCard.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GodCard.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GodCard',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba.pbPage'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'userName')
    ..aOS(2, _omitFieldNames ? '' : 'portrait')
    ..aOS(3, _omitFieldNames ? '' : 'timeEx')
    ..aOS(4, _omitFieldNames ? '' : 'text')
    ..aOS(5, _omitFieldNames ? '' : 'picUrl')
    ..aOS(6, _omitFieldNames ? '' : 'buttonText')
    ..aOS(7, _omitFieldNames ? '' : 'buttonUrl')
    ..aI(8, _omitFieldNames ? '' : 'showFloor', fieldType: $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GodCard clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GodCard copyWith(void Function(GodCard) updates) =>
      super.copyWith((message) => updates(message as GodCard)) as GodCard;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GodCard create() => GodCard._();
  @$core.override
  GodCard createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GodCard getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GodCard>(create);
  static GodCard? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get userName => $_getSZ(0);
  @$pb.TagNumber(1)
  set userName($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasUserName() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserName() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get portrait => $_getSZ(1);
  @$pb.TagNumber(2)
  set portrait($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPortrait() => $_has(1);
  @$pb.TagNumber(2)
  void clearPortrait() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get timeEx => $_getSZ(2);
  @$pb.TagNumber(3)
  set timeEx($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasTimeEx() => $_has(2);
  @$pb.TagNumber(3)
  void clearTimeEx() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get text => $_getSZ(3);
  @$pb.TagNumber(4)
  set text($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasText() => $_has(3);
  @$pb.TagNumber(4)
  void clearText() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get picUrl => $_getSZ(4);
  @$pb.TagNumber(5)
  set picUrl($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasPicUrl() => $_has(4);
  @$pb.TagNumber(5)
  void clearPicUrl() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get buttonText => $_getSZ(5);
  @$pb.TagNumber(6)
  set buttonText($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasButtonText() => $_has(5);
  @$pb.TagNumber(6)
  void clearButtonText() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get buttonUrl => $_getSZ(6);
  @$pb.TagNumber(7)
  set buttonUrl($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasButtonUrl() => $_has(6);
  @$pb.TagNumber(7)
  void clearButtonUrl() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.int get showFloor => $_getIZ(7);
  @$pb.TagNumber(8)
  set showFloor($core.int value) => $_setUnsignedInt32(7, value);
  @$pb.TagNumber(8)
  $core.bool hasShowFloor() => $_has(7);
  @$pb.TagNumber(8)
  void clearShowFloor() => $_clearField(8);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
