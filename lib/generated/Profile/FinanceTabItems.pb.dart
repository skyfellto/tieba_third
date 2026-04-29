// This is a generated file - do not edit.
//
// Generated from Profile/FinanceTabItems.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class FinanceTabItems extends $pb.GeneratedMessage {
  factory FinanceTabItems({
    $core.String? tabName,
    $core.String? tabUrl,
    $core.String? iconUrl,
    $core.String? descText,
    $core.String? tabBubble,
    $core.String? tabType,
    $core.String? statistic,
  }) {
    final result = create();
    if (tabName != null) result.tabName = tabName;
    if (tabUrl != null) result.tabUrl = tabUrl;
    if (iconUrl != null) result.iconUrl = iconUrl;
    if (descText != null) result.descText = descText;
    if (tabBubble != null) result.tabBubble = tabBubble;
    if (tabType != null) result.tabType = tabType;
    if (statistic != null) result.statistic = statistic;
    return result;
  }

  FinanceTabItems._();

  factory FinanceTabItems.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FinanceTabItems.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FinanceTabItems',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba.profile'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'tabName')
    ..aOS(2, _omitFieldNames ? '' : 'tabUrl')
    ..aOS(3, _omitFieldNames ? '' : 'iconUrl')
    ..aOS(4, _omitFieldNames ? '' : 'descText')
    ..aOS(5, _omitFieldNames ? '' : 'tabBubble')
    ..aOS(6, _omitFieldNames ? '' : 'tabType')
    ..aOS(7, _omitFieldNames ? '' : 'statistic')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FinanceTabItems clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FinanceTabItems copyWith(void Function(FinanceTabItems) updates) =>
      super.copyWith((message) => updates(message as FinanceTabItems))
          as FinanceTabItems;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FinanceTabItems create() => FinanceTabItems._();
  @$core.override
  FinanceTabItems createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FinanceTabItems getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FinanceTabItems>(create);
  static FinanceTabItems? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get tabName => $_getSZ(0);
  @$pb.TagNumber(1)
  set tabName($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTabName() => $_has(0);
  @$pb.TagNumber(1)
  void clearTabName() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get tabUrl => $_getSZ(1);
  @$pb.TagNumber(2)
  set tabUrl($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasTabUrl() => $_has(1);
  @$pb.TagNumber(2)
  void clearTabUrl() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get iconUrl => $_getSZ(2);
  @$pb.TagNumber(3)
  set iconUrl($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasIconUrl() => $_has(2);
  @$pb.TagNumber(3)
  void clearIconUrl() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get descText => $_getSZ(3);
  @$pb.TagNumber(4)
  set descText($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasDescText() => $_has(3);
  @$pb.TagNumber(4)
  void clearDescText() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get tabBubble => $_getSZ(4);
  @$pb.TagNumber(5)
  set tabBubble($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasTabBubble() => $_has(4);
  @$pb.TagNumber(5)
  void clearTabBubble() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get tabType => $_getSZ(5);
  @$pb.TagNumber(6)
  set tabType($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasTabType() => $_has(5);
  @$pb.TagNumber(6)
  void clearTabType() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get statistic => $_getSZ(6);
  @$pb.TagNumber(7)
  set statistic($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasStatistic() => $_has(6);
  @$pb.TagNumber(7)
  void clearStatistic() => $_clearField(7);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
