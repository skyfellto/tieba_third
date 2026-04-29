// This is a generated file - do not edit.
//
// Generated from SignatureData.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'SignatureContent.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class SignatureData extends $pb.GeneratedMessage {
  factory SignatureData({
    $core.int? signatureId,
    $core.String? fontKeyName,
    $core.String? fontColor,
    $core.Iterable<$0.SignatureContent>? content,
  }) {
    final result = create();
    if (signatureId != null) result.signatureId = signatureId;
    if (fontKeyName != null) result.fontKeyName = fontKeyName;
    if (fontColor != null) result.fontColor = fontColor;
    if (content != null) result.content.addAll(content);
    return result;
  }

  SignatureData._();

  factory SignatureData.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SignatureData.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SignatureData',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'signatureId')
    ..aOS(2, _omitFieldNames ? '' : 'fontKeyName', protoName: 'fontKeyName')
    ..aOS(3, _omitFieldNames ? '' : 'fontColor', protoName: 'fontColor')
    ..pPM<$0.SignatureContent>(4, _omitFieldNames ? '' : 'content',
        subBuilder: $0.SignatureContent.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SignatureData clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SignatureData copyWith(void Function(SignatureData) updates) =>
      super.copyWith((message) => updates(message as SignatureData))
          as SignatureData;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SignatureData create() => SignatureData._();
  @$core.override
  SignatureData createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SignatureData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SignatureData>(create);
  static SignatureData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get signatureId => $_getIZ(0);
  @$pb.TagNumber(1)
  set signatureId($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSignatureId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSignatureId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get fontKeyName => $_getSZ(1);
  @$pb.TagNumber(2)
  set fontKeyName($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasFontKeyName() => $_has(1);
  @$pb.TagNumber(2)
  void clearFontKeyName() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get fontColor => $_getSZ(2);
  @$pb.TagNumber(3)
  set fontColor($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasFontColor() => $_has(2);
  @$pb.TagNumber(3)
  void clearFontColor() => $_clearField(3);

  @$pb.TagNumber(4)
  $pb.PbList<$0.SignatureContent> get content => $_getList(3);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
