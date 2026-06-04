// This is a generated file - do not edit.
//
// Generated from RewardMaterial.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class RewardMaterial extends $pb.GeneratedMessage {
  factory RewardMaterial({
    $core.String? icon,
    $core.String? unlockLevel,
    $core.int? isMatched,
    $core.int? isNewestMatchedLevel,
  }) {
    final result = create();
    if (icon != null) result.icon = icon;
    if (unlockLevel != null) result.unlockLevel = unlockLevel;
    if (isMatched != null) result.isMatched = isMatched;
    if (isNewestMatchedLevel != null)
      result.isNewestMatchedLevel = isNewestMatchedLevel;
    return result;
  }

  RewardMaterial._();

  factory RewardMaterial.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RewardMaterial.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RewardMaterial',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'icon')
    ..aOS(2, _omitFieldNames ? '' : 'unlockLevel')
    ..aI(3, _omitFieldNames ? '' : 'isMatched')
    ..aI(4, _omitFieldNames ? '' : 'isNewestMatchedLevel')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RewardMaterial clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RewardMaterial copyWith(void Function(RewardMaterial) updates) =>
      super.copyWith((message) => updates(message as RewardMaterial))
          as RewardMaterial;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RewardMaterial create() => RewardMaterial._();
  @$core.override
  RewardMaterial createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RewardMaterial getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RewardMaterial>(create);
  static RewardMaterial? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get icon => $_getSZ(0);
  @$pb.TagNumber(1)
  set icon($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasIcon() => $_has(0);
  @$pb.TagNumber(1)
  void clearIcon() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get unlockLevel => $_getSZ(1);
  @$pb.TagNumber(2)
  set unlockLevel($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasUnlockLevel() => $_has(1);
  @$pb.TagNumber(2)
  void clearUnlockLevel() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get isMatched => $_getIZ(2);
  @$pb.TagNumber(3)
  set isMatched($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasIsMatched() => $_has(2);
  @$pb.TagNumber(3)
  void clearIsMatched() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get isNewestMatchedLevel => $_getIZ(3);
  @$pb.TagNumber(4)
  set isNewestMatchedLevel($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasIsNewestMatchedLevel() => $_has(3);
  @$pb.TagNumber(4)
  void clearIsNewestMatchedLevel() => $_clearField(4);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
