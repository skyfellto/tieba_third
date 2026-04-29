// This is a generated file - do not edit.
//
// Generated from Abstract.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class Abstract extends $pb.GeneratedMessage {
  factory Abstract({
    $core.int? type,
    $core.String? text,
    $core.String? link,
    $core.String? src,
    $core.String? un,
    $core.String? duringTime,
    $core.String? voiceMD5,
  }) {
    final result = create();
    if (type != null) result.type = type;
    if (text != null) result.text = text;
    if (link != null) result.link = link;
    if (src != null) result.src = src;
    if (un != null) result.un = un;
    if (duringTime != null) result.duringTime = duringTime;
    if (voiceMD5 != null) result.voiceMD5 = voiceMD5;
    return result;
  }

  Abstract._();

  factory Abstract.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Abstract.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Abstract',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'type')
    ..aOS(2, _omitFieldNames ? '' : 'text')
    ..aOS(3, _omitFieldNames ? '' : 'link')
    ..aOS(4, _omitFieldNames ? '' : 'src')
    ..aOS(5, _omitFieldNames ? '' : 'un')
    ..aOS(6, _omitFieldNames ? '' : 'duringTime', protoName: 'duringTime')
    ..aOS(7, _omitFieldNames ? '' : 'voiceMD5', protoName: 'voiceMD5')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Abstract clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Abstract copyWith(void Function(Abstract) updates) =>
      super.copyWith((message) => updates(message as Abstract)) as Abstract;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Abstract create() => Abstract._();
  @$core.override
  Abstract createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Abstract getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Abstract>(create);
  static Abstract? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get type => $_getIZ(0);
  @$pb.TagNumber(1)
  set type($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get text => $_getSZ(1);
  @$pb.TagNumber(2)
  set text($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasText() => $_has(1);
  @$pb.TagNumber(2)
  void clearText() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get link => $_getSZ(2);
  @$pb.TagNumber(3)
  set link($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasLink() => $_has(2);
  @$pb.TagNumber(3)
  void clearLink() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get src => $_getSZ(3);
  @$pb.TagNumber(4)
  set src($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasSrc() => $_has(3);
  @$pb.TagNumber(4)
  void clearSrc() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get un => $_getSZ(4);
  @$pb.TagNumber(5)
  set un($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasUn() => $_has(4);
  @$pb.TagNumber(5)
  void clearUn() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get duringTime => $_getSZ(5);
  @$pb.TagNumber(6)
  set duringTime($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasDuringTime() => $_has(5);
  @$pb.TagNumber(6)
  void clearDuringTime() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get voiceMD5 => $_getSZ(6);
  @$pb.TagNumber(7)
  set voiceMD5($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasVoiceMD5() => $_has(6);
  @$pb.TagNumber(7)
  void clearVoiceMD5() => $_clearField(7);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
