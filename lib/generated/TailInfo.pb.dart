// This is a generated file - do not edit.
//
// Generated from TailInfo.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class TailInfo extends $pb.GeneratedMessage {
  factory TailInfo({
    $core.int? tailType,
    $core.String? iconUrl,
    $core.String? iconLink,
    $core.String? content,
  }) {
    final result = create();
    if (tailType != null) result.tailType = tailType;
    if (iconUrl != null) result.iconUrl = iconUrl;
    if (iconLink != null) result.iconLink = iconLink;
    if (content != null) result.content = content;
    return result;
  }

  TailInfo._();

  factory TailInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TailInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TailInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'tailType')
    ..aOS(2, _omitFieldNames ? '' : 'iconUrl')
    ..aOS(3, _omitFieldNames ? '' : 'iconLink')
    ..aOS(4, _omitFieldNames ? '' : 'content')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TailInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TailInfo copyWith(void Function(TailInfo) updates) =>
      super.copyWith((message) => updates(message as TailInfo)) as TailInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TailInfo create() => TailInfo._();
  @$core.override
  TailInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TailInfo getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TailInfo>(create);
  static TailInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get tailType => $_getIZ(0);
  @$pb.TagNumber(1)
  set tailType($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTailType() => $_has(0);
  @$pb.TagNumber(1)
  void clearTailType() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get iconUrl => $_getSZ(1);
  @$pb.TagNumber(2)
  set iconUrl($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasIconUrl() => $_has(1);
  @$pb.TagNumber(2)
  void clearIconUrl() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get iconLink => $_getSZ(2);
  @$pb.TagNumber(3)
  set iconLink($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasIconLink() => $_has(2);
  @$pb.TagNumber(3)
  void clearIconLink() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get content => $_getSZ(3);
  @$pb.TagNumber(4)
  set content($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasContent() => $_has(3);
  @$pb.TagNumber(4)
  void clearContent() => $_clearField(4);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
