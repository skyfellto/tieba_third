// This is a generated file - do not edit.
//
// Generated from FeedContentCustom.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class FeedContentCustom extends $pb.GeneratedMessage {
  factory FeedContentCustom({
    $core.String? style,
    $core.String? data,
  }) {
    final result = create();
    if (style != null) result.style = style;
    if (data != null) result.data = data;
    return result;
  }

  FeedContentCustom._();

  factory FeedContentCustom.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FeedContentCustom.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FeedContentCustom',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'style')
    ..aOS(2, _omitFieldNames ? '' : 'data')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FeedContentCustom clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FeedContentCustom copyWith(void Function(FeedContentCustom) updates) =>
      super.copyWith((message) => updates(message as FeedContentCustom))
          as FeedContentCustom;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FeedContentCustom create() => FeedContentCustom._();
  @$core.override
  FeedContentCustom createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FeedContentCustom getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FeedContentCustom>(create);
  static FeedContentCustom? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get style => $_getSZ(0);
  @$pb.TagNumber(1)
  set style($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasStyle() => $_has(0);
  @$pb.TagNumber(1)
  void clearStyle() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get data => $_getSZ(1);
  @$pb.TagNumber(2)
  set data($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasData() => $_has(1);
  @$pb.TagNumber(2)
  void clearData() => $_clearField(2);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
