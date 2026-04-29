// This is a generated file - do not edit.
//
// Generated from GraffitiRankItem.proto.

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

class GraffitiRankItem extends $pb.GeneratedMessage {
  factory GraffitiRankItem({
    $fixnum.Int64? gid,
    $core.String? url,
    $fixnum.Int64? voteCount,
    $core.int? isVote,
    $fixnum.Int64? uid,
    $core.String? picId,
    $core.int? gType,
    $core.String? thumbUrl,
  }) {
    final result = create();
    if (gid != null) result.gid = gid;
    if (url != null) result.url = url;
    if (voteCount != null) result.voteCount = voteCount;
    if (isVote != null) result.isVote = isVote;
    if (uid != null) result.uid = uid;
    if (picId != null) result.picId = picId;
    if (gType != null) result.gType = gType;
    if (thumbUrl != null) result.thumbUrl = thumbUrl;
    return result;
  }

  GraffitiRankItem._();

  factory GraffitiRankItem.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GraffitiRankItem.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GraffitiRankItem',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'gid')
    ..aOS(2, _omitFieldNames ? '' : 'url')
    ..aInt64(3, _omitFieldNames ? '' : 'voteCount')
    ..aI(4, _omitFieldNames ? '' : 'isVote')
    ..aInt64(5, _omitFieldNames ? '' : 'uid')
    ..aOS(6, _omitFieldNames ? '' : 'picId')
    ..aI(7, _omitFieldNames ? '' : 'gType')
    ..aOS(8, _omitFieldNames ? '' : 'thumbUrl')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GraffitiRankItem clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GraffitiRankItem copyWith(void Function(GraffitiRankItem) updates) =>
      super.copyWith((message) => updates(message as GraffitiRankItem))
          as GraffitiRankItem;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GraffitiRankItem create() => GraffitiRankItem._();
  @$core.override
  GraffitiRankItem createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GraffitiRankItem getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GraffitiRankItem>(create);
  static GraffitiRankItem? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get gid => $_getI64(0);
  @$pb.TagNumber(1)
  set gid($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasGid() => $_has(0);
  @$pb.TagNumber(1)
  void clearGid() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get url => $_getSZ(1);
  @$pb.TagNumber(2)
  set url($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasUrl() => $_has(1);
  @$pb.TagNumber(2)
  void clearUrl() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get voteCount => $_getI64(2);
  @$pb.TagNumber(3)
  set voteCount($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasVoteCount() => $_has(2);
  @$pb.TagNumber(3)
  void clearVoteCount() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get isVote => $_getIZ(3);
  @$pb.TagNumber(4)
  set isVote($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasIsVote() => $_has(3);
  @$pb.TagNumber(4)
  void clearIsVote() => $_clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get uid => $_getI64(4);
  @$pb.TagNumber(5)
  set uid($fixnum.Int64 value) => $_setInt64(4, value);
  @$pb.TagNumber(5)
  $core.bool hasUid() => $_has(4);
  @$pb.TagNumber(5)
  void clearUid() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get picId => $_getSZ(5);
  @$pb.TagNumber(6)
  set picId($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasPicId() => $_has(5);
  @$pb.TagNumber(6)
  void clearPicId() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.int get gType => $_getIZ(6);
  @$pb.TagNumber(7)
  set gType($core.int value) => $_setSignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasGType() => $_has(6);
  @$pb.TagNumber(7)
  void clearGType() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.String get thumbUrl => $_getSZ(7);
  @$pb.TagNumber(8)
  set thumbUrl($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasThumbUrl() => $_has(7);
  @$pb.TagNumber(8)
  void clearThumbUrl() => $_clearField(8);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
