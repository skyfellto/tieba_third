// This is a generated file - do not edit.
//
// Generated from DealAuthInfo.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class DealAuthInfo extends $pb.GeneratedMessage {
  factory DealAuthInfo({
    $core.String? itemName,
    $core.String? itemContent,
    $core.String? itemUrl,
  }) {
    final result = create();
    if (itemName != null) result.itemName = itemName;
    if (itemContent != null) result.itemContent = itemContent;
    if (itemUrl != null) result.itemUrl = itemUrl;
    return result;
  }

  DealAuthInfo._();

  factory DealAuthInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DealAuthInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DealAuthInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'itemName')
    ..aOS(2, _omitFieldNames ? '' : 'itemContent')
    ..aOS(3, _omitFieldNames ? '' : 'itemUrl')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DealAuthInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DealAuthInfo copyWith(void Function(DealAuthInfo) updates) =>
      super.copyWith((message) => updates(message as DealAuthInfo))
          as DealAuthInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DealAuthInfo create() => DealAuthInfo._();
  @$core.override
  DealAuthInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DealAuthInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DealAuthInfo>(create);
  static DealAuthInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get itemName => $_getSZ(0);
  @$pb.TagNumber(1)
  set itemName($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasItemName() => $_has(0);
  @$pb.TagNumber(1)
  void clearItemName() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get itemContent => $_getSZ(1);
  @$pb.TagNumber(2)
  set itemContent($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasItemContent() => $_has(1);
  @$pb.TagNumber(2)
  void clearItemContent() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get itemUrl => $_getSZ(2);
  @$pb.TagNumber(3)
  set itemUrl($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasItemUrl() => $_has(2);
  @$pb.TagNumber(3)
  void clearItemUrl() => $_clearField(3);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
