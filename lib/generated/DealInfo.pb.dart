// This is a generated file - do not edit.
//
// Generated from DealInfo.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'DealAuthInfo.pb.dart' as $1;
import 'DealMedia.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class DealInfo extends $pb.GeneratedMessage {
  factory DealInfo({
    $core.String? title,
    $core.String? des,
    $fixnum.Int64? stock,
    $fixnum.Int64? sales,
    $core.int? expireTime,
    $fixnum.Int64? unitPrice,
    $fixnum.Int64? productId,
    $core.String? sellerAddress,
    $fixnum.Int64? recommendations,
    $core.bool? hasRecommend,
    $core.int? status,
    $core.Iterable<$0.DealMedia>? media,
    $core.Iterable<$1.DealAuthInfo>? authInfo,
    $fixnum.Int64? shipFee,
  }) {
    final result = create();
    if (title != null) result.title = title;
    if (des != null) result.des = des;
    if (stock != null) result.stock = stock;
    if (sales != null) result.sales = sales;
    if (expireTime != null) result.expireTime = expireTime;
    if (unitPrice != null) result.unitPrice = unitPrice;
    if (productId != null) result.productId = productId;
    if (sellerAddress != null) result.sellerAddress = sellerAddress;
    if (recommendations != null) result.recommendations = recommendations;
    if (hasRecommend != null) result.hasRecommend = hasRecommend;
    if (status != null) result.status = status;
    if (media != null) result.media.addAll(media);
    if (authInfo != null) result.authInfo.addAll(authInfo);
    if (shipFee != null) result.shipFee = shipFee;
    return result;
  }

  DealInfo._();

  factory DealInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DealInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DealInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'title')
    ..aOS(2, _omitFieldNames ? '' : 'des')
    ..a<$fixnum.Int64>(3, _omitFieldNames ? '' : 'stock', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(4, _omitFieldNames ? '' : 'sales', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aI(5, _omitFieldNames ? '' : 'expireTime', fieldType: $pb.PbFieldType.OU3)
    ..a<$fixnum.Int64>(
        6, _omitFieldNames ? '' : 'unitPrice', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(
        7, _omitFieldNames ? '' : 'productId', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(8, _omitFieldNames ? '' : 'sellerAddress')
    ..aInt64(9, _omitFieldNames ? '' : 'recommendations')
    ..aOB(10, _omitFieldNames ? '' : 'hasRecommend')
    ..aI(11, _omitFieldNames ? '' : 'status')
    ..pPM<$0.DealMedia>(12, _omitFieldNames ? '' : 'media',
        subBuilder: $0.DealMedia.create)
    ..pPM<$1.DealAuthInfo>(13, _omitFieldNames ? '' : 'authInfo',
        subBuilder: $1.DealAuthInfo.create)
    ..a<$fixnum.Int64>(
        14, _omitFieldNames ? '' : 'shipFee', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DealInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DealInfo copyWith(void Function(DealInfo) updates) =>
      super.copyWith((message) => updates(message as DealInfo)) as DealInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DealInfo create() => DealInfo._();
  @$core.override
  DealInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DealInfo getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DealInfo>(create);
  static DealInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get des => $_getSZ(1);
  @$pb.TagNumber(2)
  set des($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasDes() => $_has(1);
  @$pb.TagNumber(2)
  void clearDes() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get stock => $_getI64(2);
  @$pb.TagNumber(3)
  set stock($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasStock() => $_has(2);
  @$pb.TagNumber(3)
  void clearStock() => $_clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get sales => $_getI64(3);
  @$pb.TagNumber(4)
  set sales($fixnum.Int64 value) => $_setInt64(3, value);
  @$pb.TagNumber(4)
  $core.bool hasSales() => $_has(3);
  @$pb.TagNumber(4)
  void clearSales() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get expireTime => $_getIZ(4);
  @$pb.TagNumber(5)
  set expireTime($core.int value) => $_setUnsignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasExpireTime() => $_has(4);
  @$pb.TagNumber(5)
  void clearExpireTime() => $_clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get unitPrice => $_getI64(5);
  @$pb.TagNumber(6)
  set unitPrice($fixnum.Int64 value) => $_setInt64(5, value);
  @$pb.TagNumber(6)
  $core.bool hasUnitPrice() => $_has(5);
  @$pb.TagNumber(6)
  void clearUnitPrice() => $_clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get productId => $_getI64(6);
  @$pb.TagNumber(7)
  set productId($fixnum.Int64 value) => $_setInt64(6, value);
  @$pb.TagNumber(7)
  $core.bool hasProductId() => $_has(6);
  @$pb.TagNumber(7)
  void clearProductId() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.String get sellerAddress => $_getSZ(7);
  @$pb.TagNumber(8)
  set sellerAddress($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasSellerAddress() => $_has(7);
  @$pb.TagNumber(8)
  void clearSellerAddress() => $_clearField(8);

  @$pb.TagNumber(9)
  $fixnum.Int64 get recommendations => $_getI64(8);
  @$pb.TagNumber(9)
  set recommendations($fixnum.Int64 value) => $_setInt64(8, value);
  @$pb.TagNumber(9)
  $core.bool hasRecommendations() => $_has(8);
  @$pb.TagNumber(9)
  void clearRecommendations() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.bool get hasRecommend => $_getBF(9);
  @$pb.TagNumber(10)
  set hasRecommend($core.bool value) => $_setBool(9, value);
  @$pb.TagNumber(10)
  $core.bool hasHasRecommend() => $_has(9);
  @$pb.TagNumber(10)
  void clearHasRecommend() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.int get status => $_getIZ(10);
  @$pb.TagNumber(11)
  set status($core.int value) => $_setSignedInt32(10, value);
  @$pb.TagNumber(11)
  $core.bool hasStatus() => $_has(10);
  @$pb.TagNumber(11)
  void clearStatus() => $_clearField(11);

  @$pb.TagNumber(12)
  $pb.PbList<$0.DealMedia> get media => $_getList(11);

  @$pb.TagNumber(13)
  $pb.PbList<$1.DealAuthInfo> get authInfo => $_getList(12);

  @$pb.TagNumber(14)
  $fixnum.Int64 get shipFee => $_getI64(13);
  @$pb.TagNumber(14)
  set shipFee($fixnum.Int64 value) => $_setInt64(13, value);
  @$pb.TagNumber(14)
  $core.bool hasShipFee() => $_has(13);
  @$pb.TagNumber(14)
  void clearShipFee() => $_clearField(14);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
