// This is a generated file - do not edit.
//
// Generated from PbPage/NewsInfo.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class NewsInfo extends $pb.GeneratedMessage {
  factory NewsInfo({
    $core.String? newsLink,
    $core.String? summary,
    $core.int? position,
    $core.int? newsType,
    $core.String? newsIcon,
    $core.String? subtitle,
    $core.String? buttonText,
  }) {
    final result = create();
    if (newsLink != null) result.newsLink = newsLink;
    if (summary != null) result.summary = summary;
    if (position != null) result.position = position;
    if (newsType != null) result.newsType = newsType;
    if (newsIcon != null) result.newsIcon = newsIcon;
    if (subtitle != null) result.subtitle = subtitle;
    if (buttonText != null) result.buttonText = buttonText;
    return result;
  }

  NewsInfo._();

  factory NewsInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory NewsInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'NewsInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba.pbPage'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'newsLink')
    ..aOS(2, _omitFieldNames ? '' : 'summary')
    ..aI(3, _omitFieldNames ? '' : 'position', fieldType: $pb.PbFieldType.OU3)
    ..aI(4, _omitFieldNames ? '' : 'newsType', fieldType: $pb.PbFieldType.OU3)
    ..aOS(5, _omitFieldNames ? '' : 'newsIcon')
    ..aOS(6, _omitFieldNames ? '' : 'subtitle')
    ..aOS(7, _omitFieldNames ? '' : 'buttonText')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NewsInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NewsInfo copyWith(void Function(NewsInfo) updates) =>
      super.copyWith((message) => updates(message as NewsInfo)) as NewsInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NewsInfo create() => NewsInfo._();
  @$core.override
  NewsInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static NewsInfo getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NewsInfo>(create);
  static NewsInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get newsLink => $_getSZ(0);
  @$pb.TagNumber(1)
  set newsLink($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasNewsLink() => $_has(0);
  @$pb.TagNumber(1)
  void clearNewsLink() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get summary => $_getSZ(1);
  @$pb.TagNumber(2)
  set summary($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSummary() => $_has(1);
  @$pb.TagNumber(2)
  void clearSummary() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get position => $_getIZ(2);
  @$pb.TagNumber(3)
  set position($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasPosition() => $_has(2);
  @$pb.TagNumber(3)
  void clearPosition() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get newsType => $_getIZ(3);
  @$pb.TagNumber(4)
  set newsType($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasNewsType() => $_has(3);
  @$pb.TagNumber(4)
  void clearNewsType() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get newsIcon => $_getSZ(4);
  @$pb.TagNumber(5)
  set newsIcon($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasNewsIcon() => $_has(4);
  @$pb.TagNumber(5)
  void clearNewsIcon() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get subtitle => $_getSZ(5);
  @$pb.TagNumber(6)
  set subtitle($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasSubtitle() => $_has(5);
  @$pb.TagNumber(6)
  void clearSubtitle() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get buttonText => $_getSZ(6);
  @$pb.TagNumber(7)
  set buttonText($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasButtonText() => $_has(6);
  @$pb.TagNumber(7)
  void clearButtonText() => $_clearField(7);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
