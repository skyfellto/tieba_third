// This is a generated file - do not edit.
//
// Generated from TshowInfo.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class TshowInfo extends $pb.GeneratedMessage {
  factory TshowInfo({
    $core.String? icon,
    $core.String? name,
    $core.String? url,
  }) {
    final result = create();
    if (icon != null) result.icon = icon;
    if (name != null) result.name = name;
    if (url != null) result.url = url;
    return result;
  }

  TshowInfo._();

  factory TshowInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TshowInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TshowInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'icon')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'url')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TshowInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TshowInfo copyWith(void Function(TshowInfo) updates) =>
      super.copyWith((message) => updates(message as TshowInfo)) as TshowInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TshowInfo create() => TshowInfo._();
  @$core.override
  TshowInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TshowInfo getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TshowInfo>(create);
  static TshowInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get icon => $_getSZ(0);
  @$pb.TagNumber(1)
  set icon($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasIcon() => $_has(0);
  @$pb.TagNumber(1)
  void clearIcon() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get url => $_getSZ(2);
  @$pb.TagNumber(3)
  set url($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasUrl() => $_has(2);
  @$pb.TagNumber(3)
  void clearUrl() => $_clearField(3);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
