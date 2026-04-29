// This is a generated file - do not edit.
//
// Generated from BlockPopInfo.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class BlockPopInfo extends $pb.GeneratedMessage {
  factory BlockPopInfo({
    $core.int? canPost,
    $core.String? blockInfo,
    $core.String? aheadInfo,
    $core.String? aheadUrl,
    $core.String? okInfo,
    $core.int? aheadType,
    $core.int? appealStatus,
    $core.String? appealMsg,
    $core.String? subBlockInfo,
  }) {
    final result = create();
    if (canPost != null) result.canPost = canPost;
    if (blockInfo != null) result.blockInfo = blockInfo;
    if (aheadInfo != null) result.aheadInfo = aheadInfo;
    if (aheadUrl != null) result.aheadUrl = aheadUrl;
    if (okInfo != null) result.okInfo = okInfo;
    if (aheadType != null) result.aheadType = aheadType;
    if (appealStatus != null) result.appealStatus = appealStatus;
    if (appealMsg != null) result.appealMsg = appealMsg;
    if (subBlockInfo != null) result.subBlockInfo = subBlockInfo;
    return result;
  }

  BlockPopInfo._();

  factory BlockPopInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BlockPopInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BlockPopInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'canPost')
    ..aOS(2, _omitFieldNames ? '' : 'blockInfo')
    ..aOS(3, _omitFieldNames ? '' : 'aheadInfo')
    ..aOS(4, _omitFieldNames ? '' : 'aheadUrl')
    ..aOS(5, _omitFieldNames ? '' : 'okInfo')
    ..aI(6, _omitFieldNames ? '' : 'aheadType')
    ..aI(7, _omitFieldNames ? '' : 'appealStatus')
    ..aOS(8, _omitFieldNames ? '' : 'appealMsg')
    ..aOS(11, _omitFieldNames ? '' : 'subBlockInfo')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BlockPopInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BlockPopInfo copyWith(void Function(BlockPopInfo) updates) =>
      super.copyWith((message) => updates(message as BlockPopInfo))
          as BlockPopInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BlockPopInfo create() => BlockPopInfo._();
  @$core.override
  BlockPopInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BlockPopInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BlockPopInfo>(create);
  static BlockPopInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get canPost => $_getIZ(0);
  @$pb.TagNumber(1)
  set canPost($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCanPost() => $_has(0);
  @$pb.TagNumber(1)
  void clearCanPost() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get blockInfo => $_getSZ(1);
  @$pb.TagNumber(2)
  set blockInfo($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasBlockInfo() => $_has(1);
  @$pb.TagNumber(2)
  void clearBlockInfo() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get aheadInfo => $_getSZ(2);
  @$pb.TagNumber(3)
  set aheadInfo($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasAheadInfo() => $_has(2);
  @$pb.TagNumber(3)
  void clearAheadInfo() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get aheadUrl => $_getSZ(3);
  @$pb.TagNumber(4)
  set aheadUrl($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasAheadUrl() => $_has(3);
  @$pb.TagNumber(4)
  void clearAheadUrl() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get okInfo => $_getSZ(4);
  @$pb.TagNumber(5)
  set okInfo($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasOkInfo() => $_has(4);
  @$pb.TagNumber(5)
  void clearOkInfo() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get aheadType => $_getIZ(5);
  @$pb.TagNumber(6)
  set aheadType($core.int value) => $_setSignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasAheadType() => $_has(5);
  @$pb.TagNumber(6)
  void clearAheadType() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.int get appealStatus => $_getIZ(6);
  @$pb.TagNumber(7)
  set appealStatus($core.int value) => $_setSignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasAppealStatus() => $_has(6);
  @$pb.TagNumber(7)
  void clearAppealStatus() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.String get appealMsg => $_getSZ(7);
  @$pb.TagNumber(8)
  set appealMsg($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasAppealMsg() => $_has(7);
  @$pb.TagNumber(8)
  void clearAppealMsg() => $_clearField(8);

  @$pb.TagNumber(11)
  $core.String get subBlockInfo => $_getSZ(8);
  @$pb.TagNumber(11)
  set subBlockInfo($core.String value) => $_setString(8, value);
  @$pb.TagNumber(11)
  $core.bool hasSubBlockInfo() => $_has(8);
  @$pb.TagNumber(11)
  void clearSubBlockInfo() => $_clearField(11);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
