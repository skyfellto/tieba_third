// This is a generated file - do not edit.
//
// Generated from NamoaixudEntry.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class NamoaixudEntry extends $pb.GeneratedMessage {
  factory NamoaixudEntry({
    $core.String? tip,
    $core.String? amount,
    $core.String? amountMsg,
    $core.String? encourageIcon,
    $core.String? encourageDesc,
    $core.String? gotoButtonName,
    $core.String? gotoButtonUrl,
    $core.String? activityTimestamp,
    $core.String? activityDesc,
    $core.String? activityLinkType,
    $core.String? activityLinkAddr,
    $core.String? layoutType,
    $core.String? encourageIconDark,
  }) {
    final result = create();
    if (tip != null) result.tip = tip;
    if (amount != null) result.amount = amount;
    if (amountMsg != null) result.amountMsg = amountMsg;
    if (encourageIcon != null) result.encourageIcon = encourageIcon;
    if (encourageDesc != null) result.encourageDesc = encourageDesc;
    if (gotoButtonName != null) result.gotoButtonName = gotoButtonName;
    if (gotoButtonUrl != null) result.gotoButtonUrl = gotoButtonUrl;
    if (activityTimestamp != null) result.activityTimestamp = activityTimestamp;
    if (activityDesc != null) result.activityDesc = activityDesc;
    if (activityLinkType != null) result.activityLinkType = activityLinkType;
    if (activityLinkAddr != null) result.activityLinkAddr = activityLinkAddr;
    if (layoutType != null) result.layoutType = layoutType;
    if (encourageIconDark != null) result.encourageIconDark = encourageIconDark;
    return result;
  }

  NamoaixudEntry._();

  factory NamoaixudEntry.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory NamoaixudEntry.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'NamoaixudEntry',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'tip')
    ..aOS(2, _omitFieldNames ? '' : 'amount')
    ..aOS(3, _omitFieldNames ? '' : 'amountMsg')
    ..aOS(4, _omitFieldNames ? '' : 'encourageIcon')
    ..aOS(5, _omitFieldNames ? '' : 'encourageDesc')
    ..aOS(6, _omitFieldNames ? '' : 'gotoButtonName')
    ..aOS(7, _omitFieldNames ? '' : 'gotoButtonUrl')
    ..aOS(8, _omitFieldNames ? '' : 'activityTimestamp')
    ..aOS(9, _omitFieldNames ? '' : 'activityDesc')
    ..aOS(10, _omitFieldNames ? '' : 'activityLinkType')
    ..aOS(11, _omitFieldNames ? '' : 'activityLinkAddr')
    ..aOS(12, _omitFieldNames ? '' : 'layoutType')
    ..aOS(13, _omitFieldNames ? '' : 'encourageIconDark')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NamoaixudEntry clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NamoaixudEntry copyWith(void Function(NamoaixudEntry) updates) =>
      super.copyWith((message) => updates(message as NamoaixudEntry))
          as NamoaixudEntry;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NamoaixudEntry create() => NamoaixudEntry._();
  @$core.override
  NamoaixudEntry createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static NamoaixudEntry getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<NamoaixudEntry>(create);
  static NamoaixudEntry? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get tip => $_getSZ(0);
  @$pb.TagNumber(1)
  set tip($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTip() => $_has(0);
  @$pb.TagNumber(1)
  void clearTip() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get amount => $_getSZ(1);
  @$pb.TagNumber(2)
  set amount($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasAmount() => $_has(1);
  @$pb.TagNumber(2)
  void clearAmount() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get amountMsg => $_getSZ(2);
  @$pb.TagNumber(3)
  set amountMsg($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasAmountMsg() => $_has(2);
  @$pb.TagNumber(3)
  void clearAmountMsg() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get encourageIcon => $_getSZ(3);
  @$pb.TagNumber(4)
  set encourageIcon($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasEncourageIcon() => $_has(3);
  @$pb.TagNumber(4)
  void clearEncourageIcon() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get encourageDesc => $_getSZ(4);
  @$pb.TagNumber(5)
  set encourageDesc($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasEncourageDesc() => $_has(4);
  @$pb.TagNumber(5)
  void clearEncourageDesc() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get gotoButtonName => $_getSZ(5);
  @$pb.TagNumber(6)
  set gotoButtonName($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasGotoButtonName() => $_has(5);
  @$pb.TagNumber(6)
  void clearGotoButtonName() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get gotoButtonUrl => $_getSZ(6);
  @$pb.TagNumber(7)
  set gotoButtonUrl($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasGotoButtonUrl() => $_has(6);
  @$pb.TagNumber(7)
  void clearGotoButtonUrl() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.String get activityTimestamp => $_getSZ(7);
  @$pb.TagNumber(8)
  set activityTimestamp($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasActivityTimestamp() => $_has(7);
  @$pb.TagNumber(8)
  void clearActivityTimestamp() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.String get activityDesc => $_getSZ(8);
  @$pb.TagNumber(9)
  set activityDesc($core.String value) => $_setString(8, value);
  @$pb.TagNumber(9)
  $core.bool hasActivityDesc() => $_has(8);
  @$pb.TagNumber(9)
  void clearActivityDesc() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.String get activityLinkType => $_getSZ(9);
  @$pb.TagNumber(10)
  set activityLinkType($core.String value) => $_setString(9, value);
  @$pb.TagNumber(10)
  $core.bool hasActivityLinkType() => $_has(9);
  @$pb.TagNumber(10)
  void clearActivityLinkType() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.String get activityLinkAddr => $_getSZ(10);
  @$pb.TagNumber(11)
  set activityLinkAddr($core.String value) => $_setString(10, value);
  @$pb.TagNumber(11)
  $core.bool hasActivityLinkAddr() => $_has(10);
  @$pb.TagNumber(11)
  void clearActivityLinkAddr() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.String get layoutType => $_getSZ(11);
  @$pb.TagNumber(12)
  set layoutType($core.String value) => $_setString(11, value);
  @$pb.TagNumber(12)
  $core.bool hasLayoutType() => $_has(11);
  @$pb.TagNumber(12)
  void clearLayoutType() => $_clearField(12);

  @$pb.TagNumber(13)
  $core.String get encourageIconDark => $_getSZ(12);
  @$pb.TagNumber(13)
  set encourageIconDark($core.String value) => $_setString(12, value);
  @$pb.TagNumber(13)
  $core.bool hasEncourageIconDark() => $_has(12);
  @$pb.TagNumber(13)
  void clearEncourageIconDark() => $_clearField(13);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
