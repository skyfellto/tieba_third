// This is a generated file - do not edit.
//
// Generated from DisplayWindowInfo.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'DealMedia.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class DisplayWindowInfo extends $pb.GeneratedMessage {
  factory DisplayWindowInfo({
    $fixnum.Int64? productId,
    $core.String? title,
    $core.String? intro,
    $0.DealMedia? img,
    $fixnum.Int64? unitPrice,
    $fixnum.Int64? stock,
    $fixnum.Int64? shipFee,
    $core.int? isDisplay,
    $fixnum.Int64? sales,
  }) {
    final result = create();
    if (productId != null) result.productId = productId;
    if (title != null) result.title = title;
    if (intro != null) result.intro = intro;
    if (img != null) result.img = img;
    if (unitPrice != null) result.unitPrice = unitPrice;
    if (stock != null) result.stock = stock;
    if (shipFee != null) result.shipFee = shipFee;
    if (isDisplay != null) result.isDisplay = isDisplay;
    if (sales != null) result.sales = sales;
    return result;
  }

  DisplayWindowInfo._();

  factory DisplayWindowInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DisplayWindowInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DisplayWindowInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'productId')
    ..aOS(2, _omitFieldNames ? '' : 'title')
    ..aOS(3, _omitFieldNames ? '' : 'intro')
    ..aOM<$0.DealMedia>(4, _omitFieldNames ? '' : 'img',
        subBuilder: $0.DealMedia.create)
    ..a<$fixnum.Int64>(
        5, _omitFieldNames ? '' : 'unitPrice', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(6, _omitFieldNames ? '' : 'stock', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(7, _omitFieldNames ? '' : 'shipFee', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aI(8, _omitFieldNames ? '' : 'isDisplay')
    ..a<$fixnum.Int64>(9, _omitFieldNames ? '' : 'sales', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DisplayWindowInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DisplayWindowInfo copyWith(void Function(DisplayWindowInfo) updates) =>
      super.copyWith((message) => updates(message as DisplayWindowInfo))
          as DisplayWindowInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DisplayWindowInfo create() => DisplayWindowInfo._();
  @$core.override
  DisplayWindowInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DisplayWindowInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DisplayWindowInfo>(create);
  static DisplayWindowInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get productId => $_getI64(0);
  @$pb.TagNumber(1)
  set productId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasProductId() => $_has(0);
  @$pb.TagNumber(1)
  void clearProductId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get intro => $_getSZ(2);
  @$pb.TagNumber(3)
  set intro($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasIntro() => $_has(2);
  @$pb.TagNumber(3)
  void clearIntro() => $_clearField(3);

  @$pb.TagNumber(4)
  $0.DealMedia get img => $_getN(3);
  @$pb.TagNumber(4)
  set img($0.DealMedia value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasImg() => $_has(3);
  @$pb.TagNumber(4)
  void clearImg() => $_clearField(4);
  @$pb.TagNumber(4)
  $0.DealMedia ensureImg() => $_ensure(3);

  @$pb.TagNumber(5)
  $fixnum.Int64 get unitPrice => $_getI64(4);
  @$pb.TagNumber(5)
  set unitPrice($fixnum.Int64 value) => $_setInt64(4, value);
  @$pb.TagNumber(5)
  $core.bool hasUnitPrice() => $_has(4);
  @$pb.TagNumber(5)
  void clearUnitPrice() => $_clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get stock => $_getI64(5);
  @$pb.TagNumber(6)
  set stock($fixnum.Int64 value) => $_setInt64(5, value);
  @$pb.TagNumber(6)
  $core.bool hasStock() => $_has(5);
  @$pb.TagNumber(6)
  void clearStock() => $_clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get shipFee => $_getI64(6);
  @$pb.TagNumber(7)
  set shipFee($fixnum.Int64 value) => $_setInt64(6, value);
  @$pb.TagNumber(7)
  $core.bool hasShipFee() => $_has(6);
  @$pb.TagNumber(7)
  void clearShipFee() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.int get isDisplay => $_getIZ(7);
  @$pb.TagNumber(8)
  set isDisplay($core.int value) => $_setSignedInt32(7, value);
  @$pb.TagNumber(8)
  $core.bool hasIsDisplay() => $_has(7);
  @$pb.TagNumber(8)
  void clearIsDisplay() => $_clearField(8);

  @$pb.TagNumber(9)
  $fixnum.Int64 get sales => $_getI64(8);
  @$pb.TagNumber(9)
  set sales($fixnum.Int64 value) => $_setInt64(8, value);
  @$pb.TagNumber(9)
  $core.bool hasSales() => $_has(8);
  @$pb.TagNumber(9)
  void clearSales() => $_clearField(9);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
