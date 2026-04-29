// This is a generated file - do not edit.
//
// Generated from TiebaPlusAd.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class TiebaPlusAd extends $pb.GeneratedMessage {
  factory TiebaPlusAd({
    $core.String? costUrl,
    $core.String? showUrl,
    $core.String? adSource,
  }) {
    final result = create();
    if (costUrl != null) result.costUrl = costUrl;
    if (showUrl != null) result.showUrl = showUrl;
    if (adSource != null) result.adSource = adSource;
    return result;
  }

  TiebaPlusAd._();

  factory TiebaPlusAd.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TiebaPlusAd.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TiebaPlusAd',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'costUrl')
    ..aOS(2, _omitFieldNames ? '' : 'showUrl')
    ..aOS(3, _omitFieldNames ? '' : 'adSource')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TiebaPlusAd clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TiebaPlusAd copyWith(void Function(TiebaPlusAd) updates) =>
      super.copyWith((message) => updates(message as TiebaPlusAd))
          as TiebaPlusAd;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TiebaPlusAd create() => TiebaPlusAd._();
  @$core.override
  TiebaPlusAd createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TiebaPlusAd getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TiebaPlusAd>(create);
  static TiebaPlusAd? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get costUrl => $_getSZ(0);
  @$pb.TagNumber(1)
  set costUrl($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCostUrl() => $_has(0);
  @$pb.TagNumber(1)
  void clearCostUrl() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get showUrl => $_getSZ(1);
  @$pb.TagNumber(2)
  set showUrl($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasShowUrl() => $_has(1);
  @$pb.TagNumber(2)
  void clearShowUrl() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get adSource => $_getSZ(2);
  @$pb.TagNumber(3)
  set adSource($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasAdSource() => $_has(2);
  @$pb.TagNumber(3)
  void clearAdSource() => $_clearField(3);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
