// This is a generated file - do not edit.
//
// Generated from DelThreadText.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class DelThreadText extends $pb.GeneratedMessage {
  factory DelThreadText({
    $core.int? textId,
    $core.String? textInfo,
  }) {
    final result = create();
    if (textId != null) result.textId = textId;
    if (textInfo != null) result.textInfo = textInfo;
    return result;
  }

  DelThreadText._();

  factory DelThreadText.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DelThreadText.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DelThreadText',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'textId')
    ..aOS(2, _omitFieldNames ? '' : 'textInfo')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DelThreadText clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DelThreadText copyWith(void Function(DelThreadText) updates) =>
      super.copyWith((message) => updates(message as DelThreadText))
          as DelThreadText;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DelThreadText create() => DelThreadText._();
  @$core.override
  DelThreadText createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DelThreadText getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DelThreadText>(create);
  static DelThreadText? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get textId => $_getIZ(0);
  @$pb.TagNumber(1)
  set textId($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTextId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTextId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get textInfo => $_getSZ(1);
  @$pb.TagNumber(2)
  set textInfo($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasTextInfo() => $_has(1);
  @$pb.TagNumber(2)
  void clearTextInfo() => $_clearField(2);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
