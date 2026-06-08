// This is a generated file - do not edit.
//
// Generated from FeedHeadImg.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'FeedKV.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class FeedHeadImg extends $pb.GeneratedMessage {
  factory FeedHeadImg({
    $core.String? imgUrl,
    $core.int? shapeType,
    $core.String? pendantUrl,
    $core.String? cornerUrl,
    $core.String? schema,
    $core.Iterable<$core.String>? masks,
    $core.Iterable<$0.FeedKV>? businessInfo,
  }) {
    final result = create();
    if (imgUrl != null) result.imgUrl = imgUrl;
    if (shapeType != null) result.shapeType = shapeType;
    if (pendantUrl != null) result.pendantUrl = pendantUrl;
    if (cornerUrl != null) result.cornerUrl = cornerUrl;
    if (schema != null) result.schema = schema;
    if (masks != null) result.masks.addAll(masks);
    if (businessInfo != null) result.businessInfo.addAll(businessInfo);
    return result;
  }

  FeedHeadImg._();

  factory FeedHeadImg.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FeedHeadImg.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FeedHeadImg',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'imgUrl')
    ..aI(2, _omitFieldNames ? '' : 'shapeType', fieldType: $pb.PbFieldType.OU3)
    ..aOS(3, _omitFieldNames ? '' : 'pendantUrl')
    ..aOS(4, _omitFieldNames ? '' : 'cornerUrl')
    ..aOS(5, _omitFieldNames ? '' : 'schema')
    ..pPS(6, _omitFieldNames ? '' : 'masks')
    ..pPM<$0.FeedKV>(7, _omitFieldNames ? '' : 'businessInfo',
        subBuilder: $0.FeedKV.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FeedHeadImg clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FeedHeadImg copyWith(void Function(FeedHeadImg) updates) =>
      super.copyWith((message) => updates(message as FeedHeadImg))
          as FeedHeadImg;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FeedHeadImg create() => FeedHeadImg._();
  @$core.override
  FeedHeadImg createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FeedHeadImg getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FeedHeadImg>(create);
  static FeedHeadImg? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get imgUrl => $_getSZ(0);
  @$pb.TagNumber(1)
  set imgUrl($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasImgUrl() => $_has(0);
  @$pb.TagNumber(1)
  void clearImgUrl() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get shapeType => $_getIZ(1);
  @$pb.TagNumber(2)
  set shapeType($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasShapeType() => $_has(1);
  @$pb.TagNumber(2)
  void clearShapeType() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get pendantUrl => $_getSZ(2);
  @$pb.TagNumber(3)
  set pendantUrl($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasPendantUrl() => $_has(2);
  @$pb.TagNumber(3)
  void clearPendantUrl() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get cornerUrl => $_getSZ(3);
  @$pb.TagNumber(4)
  set cornerUrl($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasCornerUrl() => $_has(3);
  @$pb.TagNumber(4)
  void clearCornerUrl() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get schema => $_getSZ(4);
  @$pb.TagNumber(5)
  set schema($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasSchema() => $_has(4);
  @$pb.TagNumber(5)
  void clearSchema() => $_clearField(5);

  @$pb.TagNumber(6)
  $pb.PbList<$core.String> get masks => $_getList(5);

  @$pb.TagNumber(7)
  $pb.PbList<$0.FeedKV> get businessInfo => $_getList(6);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
