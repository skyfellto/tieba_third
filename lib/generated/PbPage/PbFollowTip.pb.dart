// This is a generated file - do not edit.
//
// Generated from PbPage/PbFollowTip.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class PbFollowTip extends $pb.GeneratedMessage {
  factory PbFollowTip({
    $core.int? isToastTip,
    $core.String? tipText,
  }) {
    final result = create();
    if (isToastTip != null) result.isToastTip = isToastTip;
    if (tipText != null) result.tipText = tipText;
    return result;
  }

  PbFollowTip._();

  factory PbFollowTip.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PbFollowTip.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PbFollowTip',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba.pbPage'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'isToastTip', fieldType: $pb.PbFieldType.OU3)
    ..aOS(2, _omitFieldNames ? '' : 'tipText')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PbFollowTip clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PbFollowTip copyWith(void Function(PbFollowTip) updates) =>
      super.copyWith((message) => updates(message as PbFollowTip))
          as PbFollowTip;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PbFollowTip create() => PbFollowTip._();
  @$core.override
  PbFollowTip createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PbFollowTip getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PbFollowTip>(create);
  static PbFollowTip? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get isToastTip => $_getIZ(0);
  @$pb.TagNumber(1)
  set isToastTip($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasIsToastTip() => $_has(0);
  @$pb.TagNumber(1)
  void clearIsToastTip() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get tipText => $_getSZ(1);
  @$pb.TagNumber(2)
  set tipText($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasTipText() => $_has(1);
  @$pb.TagNumber(2)
  void clearTipText() => $_clearField(2);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
