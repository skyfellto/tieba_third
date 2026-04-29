// This is a generated file - do not edit.
//
// Generated from IconStampInfo.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class IconStampInfo extends $pb.GeneratedMessage {
  factory IconStampInfo({
    $core.String? stampTitle,
    $core.String? stampText,
    $core.int? stampType,
  }) {
    final result = create();
    if (stampTitle != null) result.stampTitle = stampTitle;
    if (stampText != null) result.stampText = stampText;
    if (stampType != null) result.stampType = stampType;
    return result;
  }

  IconStampInfo._();

  factory IconStampInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory IconStampInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'IconStampInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'stampTitle')
    ..aOS(2, _omitFieldNames ? '' : 'stampText')
    ..aI(3, _omitFieldNames ? '' : 'stampType')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IconStampInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IconStampInfo copyWith(void Function(IconStampInfo) updates) =>
      super.copyWith((message) => updates(message as IconStampInfo))
          as IconStampInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IconStampInfo create() => IconStampInfo._();
  @$core.override
  IconStampInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static IconStampInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<IconStampInfo>(create);
  static IconStampInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get stampTitle => $_getSZ(0);
  @$pb.TagNumber(1)
  set stampTitle($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasStampTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearStampTitle() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get stampText => $_getSZ(1);
  @$pb.TagNumber(2)
  set stampText($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasStampText() => $_has(1);
  @$pb.TagNumber(2)
  void clearStampText() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get stampType => $_getIZ(2);
  @$pb.TagNumber(3)
  set stampType($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasStampType() => $_has(2);
  @$pb.TagNumber(3)
  void clearStampType() => $_clearField(3);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
