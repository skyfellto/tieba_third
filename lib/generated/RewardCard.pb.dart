// This is a generated file - do not edit.
//
// Generated from RewardCard.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'RewardMaterial.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class RewardCard extends $pb.GeneratedMessage {
  factory RewardCard({
    $core.String? id,
    $core.String? icon,
    $core.String? title,
    $core.String? startText,
    $core.String? endText,
    $core.String? endTime,
    $core.String? buttonText,
    $core.String? jumpUrl,
    $core.String? joinNum,
    $core.Iterable<$0.RewardMaterial>? rewardMaterial,
    $core.String? totalNum,
    $core.Iterable<$core.String>? headImgs,
    $core.String? joinSuccText,
    $core.String? bannerJumpUrl,
    $core.int? type,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (icon != null) result.icon = icon;
    if (title != null) result.title = title;
    if (startText != null) result.startText = startText;
    if (endText != null) result.endText = endText;
    if (endTime != null) result.endTime = endTime;
    if (buttonText != null) result.buttonText = buttonText;
    if (jumpUrl != null) result.jumpUrl = jumpUrl;
    if (joinNum != null) result.joinNum = joinNum;
    if (rewardMaterial != null) result.rewardMaterial.addAll(rewardMaterial);
    if (totalNum != null) result.totalNum = totalNum;
    if (headImgs != null) result.headImgs.addAll(headImgs);
    if (joinSuccText != null) result.joinSuccText = joinSuccText;
    if (bannerJumpUrl != null) result.bannerJumpUrl = bannerJumpUrl;
    if (type != null) result.type = type;
    return result;
  }

  RewardCard._();

  factory RewardCard.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RewardCard.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RewardCard',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'icon')
    ..aOS(3, _omitFieldNames ? '' : 'title')
    ..aOS(4, _omitFieldNames ? '' : 'startText')
    ..aOS(5, _omitFieldNames ? '' : 'endText')
    ..aOS(6, _omitFieldNames ? '' : 'endTime')
    ..aOS(7, _omitFieldNames ? '' : 'buttonText')
    ..aOS(8, _omitFieldNames ? '' : 'jumpUrl')
    ..aOS(9, _omitFieldNames ? '' : 'joinNum')
    ..pPM<$0.RewardMaterial>(11, _omitFieldNames ? '' : 'rewardMaterial',
        subBuilder: $0.RewardMaterial.create)
    ..aOS(12, _omitFieldNames ? '' : 'totalNum')
    ..pPS(13, _omitFieldNames ? '' : 'headImgs')
    ..aOS(14, _omitFieldNames ? '' : 'joinSuccText')
    ..aOS(15, _omitFieldNames ? '' : 'bannerJumpUrl')
    ..aI(16, _omitFieldNames ? '' : 'type')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RewardCard clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RewardCard copyWith(void Function(RewardCard) updates) =>
      super.copyWith((message) => updates(message as RewardCard)) as RewardCard;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RewardCard create() => RewardCard._();
  @$core.override
  RewardCard createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RewardCard getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RewardCard>(create);
  static RewardCard? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get icon => $_getSZ(1);
  @$pb.TagNumber(2)
  set icon($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasIcon() => $_has(1);
  @$pb.TagNumber(2)
  void clearIcon() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get title => $_getSZ(2);
  @$pb.TagNumber(3)
  set title($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasTitle() => $_has(2);
  @$pb.TagNumber(3)
  void clearTitle() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get startText => $_getSZ(3);
  @$pb.TagNumber(4)
  set startText($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasStartText() => $_has(3);
  @$pb.TagNumber(4)
  void clearStartText() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get endText => $_getSZ(4);
  @$pb.TagNumber(5)
  set endText($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasEndText() => $_has(4);
  @$pb.TagNumber(5)
  void clearEndText() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get endTime => $_getSZ(5);
  @$pb.TagNumber(6)
  set endTime($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasEndTime() => $_has(5);
  @$pb.TagNumber(6)
  void clearEndTime() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get buttonText => $_getSZ(6);
  @$pb.TagNumber(7)
  set buttonText($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasButtonText() => $_has(6);
  @$pb.TagNumber(7)
  void clearButtonText() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.String get jumpUrl => $_getSZ(7);
  @$pb.TagNumber(8)
  set jumpUrl($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasJumpUrl() => $_has(7);
  @$pb.TagNumber(8)
  void clearJumpUrl() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.String get joinNum => $_getSZ(8);
  @$pb.TagNumber(9)
  set joinNum($core.String value) => $_setString(8, value);
  @$pb.TagNumber(9)
  $core.bool hasJoinNum() => $_has(8);
  @$pb.TagNumber(9)
  void clearJoinNum() => $_clearField(9);

  @$pb.TagNumber(11)
  $pb.PbList<$0.RewardMaterial> get rewardMaterial => $_getList(9);

  @$pb.TagNumber(12)
  $core.String get totalNum => $_getSZ(10);
  @$pb.TagNumber(12)
  set totalNum($core.String value) => $_setString(10, value);
  @$pb.TagNumber(12)
  $core.bool hasTotalNum() => $_has(10);
  @$pb.TagNumber(12)
  void clearTotalNum() => $_clearField(12);

  @$pb.TagNumber(13)
  $pb.PbList<$core.String> get headImgs => $_getList(11);

  @$pb.TagNumber(14)
  $core.String get joinSuccText => $_getSZ(12);
  @$pb.TagNumber(14)
  set joinSuccText($core.String value) => $_setString(12, value);
  @$pb.TagNumber(14)
  $core.bool hasJoinSuccText() => $_has(12);
  @$pb.TagNumber(14)
  void clearJoinSuccText() => $_clearField(14);

  @$pb.TagNumber(15)
  $core.String get bannerJumpUrl => $_getSZ(13);
  @$pb.TagNumber(15)
  set bannerJumpUrl($core.String value) => $_setString(13, value);
  @$pb.TagNumber(15)
  $core.bool hasBannerJumpUrl() => $_has(13);
  @$pb.TagNumber(15)
  void clearBannerJumpUrl() => $_clearField(15);

  @$pb.TagNumber(16)
  $core.int get type => $_getIZ(14);
  @$pb.TagNumber(16)
  set type($core.int value) => $_setSignedInt32(14, value);
  @$pb.TagNumber(16)
  $core.bool hasType() => $_has(14);
  @$pb.TagNumber(16)
  void clearType() => $_clearField(16);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
