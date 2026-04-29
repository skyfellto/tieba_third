// This is a generated file - do not edit.
//
// Generated from NovelInfo.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class NovelInfo extends $pb.GeneratedMessage {
  factory NovelInfo({
    $fixnum.Int64? novelId,
    $core.String? img,
    $core.String? name,
    $core.String? author,
    $core.String? desc,
    $core.String? discountPrice,
    $fixnum.Int64? percent,
    $core.String? h5Url,
    $core.String? isPay,
    $fixnum.Int64? chapters,
    $core.String? memberText,
    $core.String? memberImg,
    $core.String? buyUrl,
  }) {
    final result = create();
    if (novelId != null) result.novelId = novelId;
    if (img != null) result.img = img;
    if (name != null) result.name = name;
    if (author != null) result.author = author;
    if (desc != null) result.desc = desc;
    if (discountPrice != null) result.discountPrice = discountPrice;
    if (percent != null) result.percent = percent;
    if (h5Url != null) result.h5Url = h5Url;
    if (isPay != null) result.isPay = isPay;
    if (chapters != null) result.chapters = chapters;
    if (memberText != null) result.memberText = memberText;
    if (memberImg != null) result.memberImg = memberImg;
    if (buyUrl != null) result.buyUrl = buyUrl;
    return result;
  }

  NovelInfo._();

  factory NovelInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory NovelInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'NovelInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'novelId')
    ..aOS(2, _omitFieldNames ? '' : 'img')
    ..aOS(3, _omitFieldNames ? '' : 'name')
    ..aOS(4, _omitFieldNames ? '' : 'author')
    ..aOS(5, _omitFieldNames ? '' : 'desc')
    ..aOS(6, _omitFieldNames ? '' : 'discountPrice')
    ..aInt64(7, _omitFieldNames ? '' : 'percent')
    ..aOS(8, _omitFieldNames ? '' : 'h5Url')
    ..aOS(9, _omitFieldNames ? '' : 'isPay')
    ..aInt64(10, _omitFieldNames ? '' : 'chapters')
    ..aOS(11, _omitFieldNames ? '' : 'memberText')
    ..aOS(12, _omitFieldNames ? '' : 'memberImg')
    ..aOS(13, _omitFieldNames ? '' : 'buyUrl')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NovelInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NovelInfo copyWith(void Function(NovelInfo) updates) =>
      super.copyWith((message) => updates(message as NovelInfo)) as NovelInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NovelInfo create() => NovelInfo._();
  @$core.override
  NovelInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static NovelInfo getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NovelInfo>(create);
  static NovelInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get novelId => $_getI64(0);
  @$pb.TagNumber(1)
  set novelId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasNovelId() => $_has(0);
  @$pb.TagNumber(1)
  void clearNovelId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get img => $_getSZ(1);
  @$pb.TagNumber(2)
  set img($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasImg() => $_has(1);
  @$pb.TagNumber(2)
  void clearImg() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get author => $_getSZ(3);
  @$pb.TagNumber(4)
  set author($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasAuthor() => $_has(3);
  @$pb.TagNumber(4)
  void clearAuthor() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get desc => $_getSZ(4);
  @$pb.TagNumber(5)
  set desc($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasDesc() => $_has(4);
  @$pb.TagNumber(5)
  void clearDesc() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get discountPrice => $_getSZ(5);
  @$pb.TagNumber(6)
  set discountPrice($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasDiscountPrice() => $_has(5);
  @$pb.TagNumber(6)
  void clearDiscountPrice() => $_clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get percent => $_getI64(6);
  @$pb.TagNumber(7)
  set percent($fixnum.Int64 value) => $_setInt64(6, value);
  @$pb.TagNumber(7)
  $core.bool hasPercent() => $_has(6);
  @$pb.TagNumber(7)
  void clearPercent() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.String get h5Url => $_getSZ(7);
  @$pb.TagNumber(8)
  set h5Url($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasH5Url() => $_has(7);
  @$pb.TagNumber(8)
  void clearH5Url() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.String get isPay => $_getSZ(8);
  @$pb.TagNumber(9)
  set isPay($core.String value) => $_setString(8, value);
  @$pb.TagNumber(9)
  $core.bool hasIsPay() => $_has(8);
  @$pb.TagNumber(9)
  void clearIsPay() => $_clearField(9);

  @$pb.TagNumber(10)
  $fixnum.Int64 get chapters => $_getI64(9);
  @$pb.TagNumber(10)
  set chapters($fixnum.Int64 value) => $_setInt64(9, value);
  @$pb.TagNumber(10)
  $core.bool hasChapters() => $_has(9);
  @$pb.TagNumber(10)
  void clearChapters() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.String get memberText => $_getSZ(10);
  @$pb.TagNumber(11)
  set memberText($core.String value) => $_setString(10, value);
  @$pb.TagNumber(11)
  $core.bool hasMemberText() => $_has(10);
  @$pb.TagNumber(11)
  void clearMemberText() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.String get memberImg => $_getSZ(11);
  @$pb.TagNumber(12)
  set memberImg($core.String value) => $_setString(11, value);
  @$pb.TagNumber(12)
  $core.bool hasMemberImg() => $_has(11);
  @$pb.TagNumber(12)
  void clearMemberImg() => $_clearField(12);

  @$pb.TagNumber(13)
  $core.String get buyUrl => $_getSZ(12);
  @$pb.TagNumber(13)
  set buyUrl($core.String value) => $_setString(12, value);
  @$pb.TagNumber(13)
  $core.bool hasBuyUrl() => $_has(12);
  @$pb.TagNumber(13)
  void clearBuyUrl() => $_clearField(13);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
