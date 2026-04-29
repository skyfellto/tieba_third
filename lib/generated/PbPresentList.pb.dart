// This is a generated file - do not edit.
//
// Generated from PbPresentList.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class PbPresentList extends $pb.GeneratedMessage {
  factory PbPresentList({
    $core.int? giftId,
    $core.String? giftName,
    $core.String? thumbnailUrl,
    $core.int? num,
  }) {
    final result = create();
    if (giftId != null) result.giftId = giftId;
    if (giftName != null) result.giftName = giftName;
    if (thumbnailUrl != null) result.thumbnailUrl = thumbnailUrl;
    if (num != null) result.num = num;
    return result;
  }

  PbPresentList._();

  factory PbPresentList.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PbPresentList.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PbPresentList',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'giftId', fieldType: $pb.PbFieldType.OU3)
    ..aOS(2, _omitFieldNames ? '' : 'giftName')
    ..aOS(3, _omitFieldNames ? '' : 'thumbnailUrl')
    ..aI(4, _omitFieldNames ? '' : 'num', fieldType: $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PbPresentList clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PbPresentList copyWith(void Function(PbPresentList) updates) =>
      super.copyWith((message) => updates(message as PbPresentList))
          as PbPresentList;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PbPresentList create() => PbPresentList._();
  @$core.override
  PbPresentList createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PbPresentList getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PbPresentList>(create);
  static PbPresentList? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get giftId => $_getIZ(0);
  @$pb.TagNumber(1)
  set giftId($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasGiftId() => $_has(0);
  @$pb.TagNumber(1)
  void clearGiftId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get giftName => $_getSZ(1);
  @$pb.TagNumber(2)
  set giftName($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasGiftName() => $_has(1);
  @$pb.TagNumber(2)
  void clearGiftName() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get thumbnailUrl => $_getSZ(2);
  @$pb.TagNumber(3)
  set thumbnailUrl($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasThumbnailUrl() => $_has(2);
  @$pb.TagNumber(3)
  void clearThumbnailUrl() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get num => $_getIZ(3);
  @$pb.TagNumber(4)
  set num($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasNum() => $_has(3);
  @$pb.TagNumber(4)
  void clearNum() => $_clearField(4);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
