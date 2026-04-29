// This is a generated file - do not edit.
//
// Generated from UcCard.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'UcCardInfo.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class UcCard extends $pb.GeneratedMessage {
  factory UcCard({
    $core.String? name,
    $core.String? icon,
    $core.String? doc,
    $core.String? jmp,
    $core.Iterable<$0.UcCardInfo>? ucCards,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (icon != null) result.icon = icon;
    if (doc != null) result.doc = doc;
    if (jmp != null) result.jmp = jmp;
    if (ucCards != null) result.ucCards.addAll(ucCards);
    return result;
  }

  UcCard._();

  factory UcCard.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UcCard.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UcCard',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'icon')
    ..aOS(3, _omitFieldNames ? '' : 'doc')
    ..aOS(4, _omitFieldNames ? '' : 'jmp')
    ..pPM<$0.UcCardInfo>(5, _omitFieldNames ? '' : 'ucCards',
        subBuilder: $0.UcCardInfo.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UcCard clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UcCard copyWith(void Function(UcCard) updates) =>
      super.copyWith((message) => updates(message as UcCard)) as UcCard;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UcCard create() => UcCard._();
  @$core.override
  UcCard createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UcCard getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UcCard>(create);
  static UcCard? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get icon => $_getSZ(1);
  @$pb.TagNumber(2)
  set icon($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasIcon() => $_has(1);
  @$pb.TagNumber(2)
  void clearIcon() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get doc => $_getSZ(2);
  @$pb.TagNumber(3)
  set doc($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasDoc() => $_has(2);
  @$pb.TagNumber(3)
  void clearDoc() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get jmp => $_getSZ(3);
  @$pb.TagNumber(4)
  set jmp($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasJmp() => $_has(3);
  @$pb.TagNumber(4)
  void clearJmp() => $_clearField(4);

  @$pb.TagNumber(5)
  $pb.PbList<$0.UcCardInfo> get ucCards => $_getList(4);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
