// This is a generated file - do not edit.
//
// Generated from FrsTabInfo.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class FrsTabInfo extends $pb.GeneratedMessage {
  factory FrsTabInfo({
    $core.int? tabId,
    $core.int? tabType,
    $core.String? tabName,
    $core.String? tabUrl,
    $core.String? tabGid,
    $core.String? tabTitle,
    $core.int? isGeneralTab,
    $core.String? tabCode,
    $core.int? tabVersion,
    $core.int? isDefault,
  }) {
    final result = create();
    if (tabId != null) result.tabId = tabId;
    if (tabType != null) result.tabType = tabType;
    if (tabName != null) result.tabName = tabName;
    if (tabUrl != null) result.tabUrl = tabUrl;
    if (tabGid != null) result.tabGid = tabGid;
    if (tabTitle != null) result.tabTitle = tabTitle;
    if (isGeneralTab != null) result.isGeneralTab = isGeneralTab;
    if (tabCode != null) result.tabCode = tabCode;
    if (tabVersion != null) result.tabVersion = tabVersion;
    if (isDefault != null) result.isDefault = isDefault;
    return result;
  }

  FrsTabInfo._();

  factory FrsTabInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FrsTabInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FrsTabInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'tabId', protoName: 'tabId')
    ..aI(2, _omitFieldNames ? '' : 'tabType', protoName: 'tabType')
    ..aOS(3, _omitFieldNames ? '' : 'tabName', protoName: 'tabName')
    ..aOS(4, _omitFieldNames ? '' : 'tabUrl', protoName: 'tabUrl')
    ..aOS(5, _omitFieldNames ? '' : 'tabGid', protoName: 'tabGid')
    ..aOS(6, _omitFieldNames ? '' : 'tabTitle', protoName: 'tabTitle')
    ..aI(7, _omitFieldNames ? '' : 'isGeneralTab', protoName: 'isGeneralTab')
    ..aOS(8, _omitFieldNames ? '' : 'tabCode', protoName: 'tabCode')
    ..aI(9, _omitFieldNames ? '' : 'tabVersion',
        protoName: 'tabVersion', fieldType: $pb.PbFieldType.OU3)
    ..aI(10, _omitFieldNames ? '' : 'isDefault', protoName: 'isDefault')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FrsTabInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FrsTabInfo copyWith(void Function(FrsTabInfo) updates) =>
      super.copyWith((message) => updates(message as FrsTabInfo)) as FrsTabInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FrsTabInfo create() => FrsTabInfo._();
  @$core.override
  FrsTabInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FrsTabInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FrsTabInfo>(create);
  static FrsTabInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get tabId => $_getIZ(0);
  @$pb.TagNumber(1)
  set tabId($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTabId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTabId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get tabType => $_getIZ(1);
  @$pb.TagNumber(2)
  set tabType($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasTabType() => $_has(1);
  @$pb.TagNumber(2)
  void clearTabType() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get tabName => $_getSZ(2);
  @$pb.TagNumber(3)
  set tabName($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasTabName() => $_has(2);
  @$pb.TagNumber(3)
  void clearTabName() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get tabUrl => $_getSZ(3);
  @$pb.TagNumber(4)
  set tabUrl($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasTabUrl() => $_has(3);
  @$pb.TagNumber(4)
  void clearTabUrl() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get tabGid => $_getSZ(4);
  @$pb.TagNumber(5)
  set tabGid($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasTabGid() => $_has(4);
  @$pb.TagNumber(5)
  void clearTabGid() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get tabTitle => $_getSZ(5);
  @$pb.TagNumber(6)
  set tabTitle($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasTabTitle() => $_has(5);
  @$pb.TagNumber(6)
  void clearTabTitle() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.int get isGeneralTab => $_getIZ(6);
  @$pb.TagNumber(7)
  set isGeneralTab($core.int value) => $_setSignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasIsGeneralTab() => $_has(6);
  @$pb.TagNumber(7)
  void clearIsGeneralTab() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.String get tabCode => $_getSZ(7);
  @$pb.TagNumber(8)
  set tabCode($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasTabCode() => $_has(7);
  @$pb.TagNumber(8)
  void clearTabCode() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.int get tabVersion => $_getIZ(8);
  @$pb.TagNumber(9)
  set tabVersion($core.int value) => $_setUnsignedInt32(8, value);
  @$pb.TagNumber(9)
  $core.bool hasTabVersion() => $_has(8);
  @$pb.TagNumber(9)
  void clearTabVersion() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.int get isDefault => $_getIZ(9);
  @$pb.TagNumber(10)
  set isDefault($core.int value) => $_setSignedInt32(9, value);
  @$pb.TagNumber(10)
  $core.bool hasIsDefault() => $_has(9);
  @$pb.TagNumber(10)
  void clearIsDefault() => $_clearField(10);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
