// This is a generated file - do not edit.
//
// Generated from item.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'ApkDetail.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class Item extends $pb.GeneratedMessage {
  factory Item({
    $fixnum.Int64? itemId,
    $core.String? itemName,
    $core.double? iconSize,
    $core.String? iconUrl,
    $core.Iterable<$core.String>? tags,
    $core.double? score,
    $core.int? star,
    $core.String? buttonName,
    $core.String? buttonLink,
    $core.String? itemAppid,
    $core.int? categoryId,
    $core.int? buttonLinkType,
    $core.String? apkName,
    $core.String? forumName,
    $0.ApkDetail? apkDetail,
    $core.String? gameId,
    $core.String? errToast,
    $core.int? ableCancelSubscribe,
  }) {
    final result = create();
    if (itemId != null) result.itemId = itemId;
    if (itemName != null) result.itemName = itemName;
    if (iconSize != null) result.iconSize = iconSize;
    if (iconUrl != null) result.iconUrl = iconUrl;
    if (tags != null) result.tags.addAll(tags);
    if (score != null) result.score = score;
    if (star != null) result.star = star;
    if (buttonName != null) result.buttonName = buttonName;
    if (buttonLink != null) result.buttonLink = buttonLink;
    if (itemAppid != null) result.itemAppid = itemAppid;
    if (categoryId != null) result.categoryId = categoryId;
    if (buttonLinkType != null) result.buttonLinkType = buttonLinkType;
    if (apkName != null) result.apkName = apkName;
    if (forumName != null) result.forumName = forumName;
    if (apkDetail != null) result.apkDetail = apkDetail;
    if (gameId != null) result.gameId = gameId;
    if (errToast != null) result.errToast = errToast;
    if (ableCancelSubscribe != null)
      result.ableCancelSubscribe = ableCancelSubscribe;
    return result;
  }

  Item._();

  factory Item.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Item.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Item',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'itemId')
    ..aOS(2, _omitFieldNames ? '' : 'itemName')
    ..aD(3, _omitFieldNames ? '' : 'iconSize')
    ..aOS(4, _omitFieldNames ? '' : 'iconUrl')
    ..pPS(5, _omitFieldNames ? '' : 'tags')
    ..aD(6, _omitFieldNames ? '' : 'score')
    ..aI(7, _omitFieldNames ? '' : 'star')
    ..aOS(8, _omitFieldNames ? '' : 'buttonName')
    ..aOS(9, _omitFieldNames ? '' : 'buttonLink')
    ..aOS(10, _omitFieldNames ? '' : 'itemAppid')
    ..aI(11, _omitFieldNames ? '' : 'categoryId')
    ..aI(12, _omitFieldNames ? '' : 'buttonLinkType')
    ..aOS(13, _omitFieldNames ? '' : 'apkName')
    ..aOS(14, _omitFieldNames ? '' : 'forumName')
    ..aOM<$0.ApkDetail>(15, _omitFieldNames ? '' : 'apkDetail',
        subBuilder: $0.ApkDetail.create)
    ..aOS(16, _omitFieldNames ? '' : 'gameId')
    ..aOS(17, _omitFieldNames ? '' : 'errToast')
    ..aI(18, _omitFieldNames ? '' : 'ableCancelSubscribe')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Item clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Item copyWith(void Function(Item) updates) =>
      super.copyWith((message) => updates(message as Item)) as Item;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Item create() => Item._();
  @$core.override
  Item createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Item getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Item>(create);
  static Item? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get itemId => $_getI64(0);
  @$pb.TagNumber(1)
  set itemId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasItemId() => $_has(0);
  @$pb.TagNumber(1)
  void clearItemId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get itemName => $_getSZ(1);
  @$pb.TagNumber(2)
  set itemName($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasItemName() => $_has(1);
  @$pb.TagNumber(2)
  void clearItemName() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.double get iconSize => $_getN(2);
  @$pb.TagNumber(3)
  set iconSize($core.double value) => $_setDouble(2, value);
  @$pb.TagNumber(3)
  $core.bool hasIconSize() => $_has(2);
  @$pb.TagNumber(3)
  void clearIconSize() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get iconUrl => $_getSZ(3);
  @$pb.TagNumber(4)
  set iconUrl($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasIconUrl() => $_has(3);
  @$pb.TagNumber(4)
  void clearIconUrl() => $_clearField(4);

  @$pb.TagNumber(5)
  $pb.PbList<$core.String> get tags => $_getList(4);

  @$pb.TagNumber(6)
  $core.double get score => $_getN(5);
  @$pb.TagNumber(6)
  set score($core.double value) => $_setDouble(5, value);
  @$pb.TagNumber(6)
  $core.bool hasScore() => $_has(5);
  @$pb.TagNumber(6)
  void clearScore() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.int get star => $_getIZ(6);
  @$pb.TagNumber(7)
  set star($core.int value) => $_setSignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasStar() => $_has(6);
  @$pb.TagNumber(7)
  void clearStar() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.String get buttonName => $_getSZ(7);
  @$pb.TagNumber(8)
  set buttonName($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasButtonName() => $_has(7);
  @$pb.TagNumber(8)
  void clearButtonName() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.String get buttonLink => $_getSZ(8);
  @$pb.TagNumber(9)
  set buttonLink($core.String value) => $_setString(8, value);
  @$pb.TagNumber(9)
  $core.bool hasButtonLink() => $_has(8);
  @$pb.TagNumber(9)
  void clearButtonLink() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.String get itemAppid => $_getSZ(9);
  @$pb.TagNumber(10)
  set itemAppid($core.String value) => $_setString(9, value);
  @$pb.TagNumber(10)
  $core.bool hasItemAppid() => $_has(9);
  @$pb.TagNumber(10)
  void clearItemAppid() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.int get categoryId => $_getIZ(10);
  @$pb.TagNumber(11)
  set categoryId($core.int value) => $_setSignedInt32(10, value);
  @$pb.TagNumber(11)
  $core.bool hasCategoryId() => $_has(10);
  @$pb.TagNumber(11)
  void clearCategoryId() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.int get buttonLinkType => $_getIZ(11);
  @$pb.TagNumber(12)
  set buttonLinkType($core.int value) => $_setSignedInt32(11, value);
  @$pb.TagNumber(12)
  $core.bool hasButtonLinkType() => $_has(11);
  @$pb.TagNumber(12)
  void clearButtonLinkType() => $_clearField(12);

  @$pb.TagNumber(13)
  $core.String get apkName => $_getSZ(12);
  @$pb.TagNumber(13)
  set apkName($core.String value) => $_setString(12, value);
  @$pb.TagNumber(13)
  $core.bool hasApkName() => $_has(12);
  @$pb.TagNumber(13)
  void clearApkName() => $_clearField(13);

  @$pb.TagNumber(14)
  $core.String get forumName => $_getSZ(13);
  @$pb.TagNumber(14)
  set forumName($core.String value) => $_setString(13, value);
  @$pb.TagNumber(14)
  $core.bool hasForumName() => $_has(13);
  @$pb.TagNumber(14)
  void clearForumName() => $_clearField(14);

  @$pb.TagNumber(15)
  $0.ApkDetail get apkDetail => $_getN(14);
  @$pb.TagNumber(15)
  set apkDetail($0.ApkDetail value) => $_setField(15, value);
  @$pb.TagNumber(15)
  $core.bool hasApkDetail() => $_has(14);
  @$pb.TagNumber(15)
  void clearApkDetail() => $_clearField(15);
  @$pb.TagNumber(15)
  $0.ApkDetail ensureApkDetail() => $_ensure(14);

  @$pb.TagNumber(16)
  $core.String get gameId => $_getSZ(15);
  @$pb.TagNumber(16)
  set gameId($core.String value) => $_setString(15, value);
  @$pb.TagNumber(16)
  $core.bool hasGameId() => $_has(15);
  @$pb.TagNumber(16)
  void clearGameId() => $_clearField(16);

  @$pb.TagNumber(17)
  $core.String get errToast => $_getSZ(16);
  @$pb.TagNumber(17)
  set errToast($core.String value) => $_setString(16, value);
  @$pb.TagNumber(17)
  $core.bool hasErrToast() => $_has(16);
  @$pb.TagNumber(17)
  void clearErrToast() => $_clearField(17);

  @$pb.TagNumber(18)
  $core.int get ableCancelSubscribe => $_getIZ(17);
  @$pb.TagNumber(18)
  set ableCancelSubscribe($core.int value) => $_setSignedInt32(17, value);
  @$pb.TagNumber(18)
  $core.bool hasAbleCancelSubscribe() => $_has(17);
  @$pb.TagNumber(18)
  void clearAbleCancelSubscribe() => $_clearField(18);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
