// This is a generated file - do not edit.
//
// Generated from GoodsWin.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class GoodsWin extends $pb.GeneratedMessage {
  factory GoodsWin({
    $core.int? show,
    $core.String? goodsUrl,
  }) {
    final result = create();
    if (show != null) result.show = show;
    if (goodsUrl != null) result.goodsUrl = goodsUrl;
    return result;
  }

  GoodsWin._();

  factory GoodsWin.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GoodsWin.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GoodsWin',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'show')
    ..aOS(2, _omitFieldNames ? '' : 'goodsUrl')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GoodsWin clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GoodsWin copyWith(void Function(GoodsWin) updates) =>
      super.copyWith((message) => updates(message as GoodsWin)) as GoodsWin;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GoodsWin create() => GoodsWin._();
  @$core.override
  GoodsWin createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GoodsWin getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GoodsWin>(create);
  static GoodsWin? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get show => $_getIZ(0);
  @$pb.TagNumber(1)
  set show($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasShow() => $_has(0);
  @$pb.TagNumber(1)
  void clearShow() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get goodsUrl => $_getSZ(1);
  @$pb.TagNumber(2)
  set goodsUrl($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasGoodsUrl() => $_has(1);
  @$pb.TagNumber(2)
  void clearGoodsUrl() => $_clearField(2);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
