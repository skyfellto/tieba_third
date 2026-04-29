// This is a generated file - do not edit.
//
// Generated from PostAntiInfo.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'AccessState.pb.dart' as $0;
import 'VcodeExtra.pb.dart' as $1;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class PostAntiInfo extends $pb.GeneratedMessage {
  factory PostAntiInfo({
    $0.AccessState? accessState,
    $core.Iterable<$core.String>? confilterHitwords,
    $core.String? needVcode,
    $core.String? vcodeMd5,
    $core.String? vcodePrevType,
    $core.String? vcodeType,
    $core.String? passToken,
    $core.String? blockContent,
    $core.String? blockCancel,
    $core.String? blockConfirm,
    $core.String? vcodePicUrl,
    $1.VcodeExtra? vcodeExtra,
  }) {
    final result = create();
    if (accessState != null) result.accessState = accessState;
    if (confilterHitwords != null)
      result.confilterHitwords.addAll(confilterHitwords);
    if (needVcode != null) result.needVcode = needVcode;
    if (vcodeMd5 != null) result.vcodeMd5 = vcodeMd5;
    if (vcodePrevType != null) result.vcodePrevType = vcodePrevType;
    if (vcodeType != null) result.vcodeType = vcodeType;
    if (passToken != null) result.passToken = passToken;
    if (blockContent != null) result.blockContent = blockContent;
    if (blockCancel != null) result.blockCancel = blockCancel;
    if (blockConfirm != null) result.blockConfirm = blockConfirm;
    if (vcodePicUrl != null) result.vcodePicUrl = vcodePicUrl;
    if (vcodeExtra != null) result.vcodeExtra = vcodeExtra;
    return result;
  }

  PostAntiInfo._();

  factory PostAntiInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PostAntiInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PostAntiInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aOM<$0.AccessState>(1, _omitFieldNames ? '' : 'accessState',
        subBuilder: $0.AccessState.create)
    ..pPS(2, _omitFieldNames ? '' : 'confilterHitwords')
    ..aOS(3, _omitFieldNames ? '' : 'needVcode')
    ..aOS(4, _omitFieldNames ? '' : 'vcodeMd5')
    ..aOS(5, _omitFieldNames ? '' : 'vcodePrevType')
    ..aOS(6, _omitFieldNames ? '' : 'vcodeType')
    ..aOS(7, _omitFieldNames ? '' : 'passToken')
    ..aOS(8, _omitFieldNames ? '' : 'blockContent')
    ..aOS(9, _omitFieldNames ? '' : 'blockCancel')
    ..aOS(10, _omitFieldNames ? '' : 'blockConfirm')
    ..aOS(12, _omitFieldNames ? '' : 'vcodePicUrl')
    ..aOM<$1.VcodeExtra>(13, _omitFieldNames ? '' : 'vcodeExtra',
        subBuilder: $1.VcodeExtra.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PostAntiInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PostAntiInfo copyWith(void Function(PostAntiInfo) updates) =>
      super.copyWith((message) => updates(message as PostAntiInfo))
          as PostAntiInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PostAntiInfo create() => PostAntiInfo._();
  @$core.override
  PostAntiInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PostAntiInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PostAntiInfo>(create);
  static PostAntiInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $0.AccessState get accessState => $_getN(0);
  @$pb.TagNumber(1)
  set accessState($0.AccessState value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasAccessState() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccessState() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.AccessState ensureAccessState() => $_ensure(0);

  @$pb.TagNumber(2)
  $pb.PbList<$core.String> get confilterHitwords => $_getList(1);

  @$pb.TagNumber(3)
  $core.String get needVcode => $_getSZ(2);
  @$pb.TagNumber(3)
  set needVcode($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasNeedVcode() => $_has(2);
  @$pb.TagNumber(3)
  void clearNeedVcode() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get vcodeMd5 => $_getSZ(3);
  @$pb.TagNumber(4)
  set vcodeMd5($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasVcodeMd5() => $_has(3);
  @$pb.TagNumber(4)
  void clearVcodeMd5() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get vcodePrevType => $_getSZ(4);
  @$pb.TagNumber(5)
  set vcodePrevType($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasVcodePrevType() => $_has(4);
  @$pb.TagNumber(5)
  void clearVcodePrevType() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get vcodeType => $_getSZ(5);
  @$pb.TagNumber(6)
  set vcodeType($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasVcodeType() => $_has(5);
  @$pb.TagNumber(6)
  void clearVcodeType() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get passToken => $_getSZ(6);
  @$pb.TagNumber(7)
  set passToken($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasPassToken() => $_has(6);
  @$pb.TagNumber(7)
  void clearPassToken() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.String get blockContent => $_getSZ(7);
  @$pb.TagNumber(8)
  set blockContent($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasBlockContent() => $_has(7);
  @$pb.TagNumber(8)
  void clearBlockContent() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.String get blockCancel => $_getSZ(8);
  @$pb.TagNumber(9)
  set blockCancel($core.String value) => $_setString(8, value);
  @$pb.TagNumber(9)
  $core.bool hasBlockCancel() => $_has(8);
  @$pb.TagNumber(9)
  void clearBlockCancel() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.String get blockConfirm => $_getSZ(9);
  @$pb.TagNumber(10)
  set blockConfirm($core.String value) => $_setString(9, value);
  @$pb.TagNumber(10)
  $core.bool hasBlockConfirm() => $_has(9);
  @$pb.TagNumber(10)
  void clearBlockConfirm() => $_clearField(10);

  @$pb.TagNumber(12)
  $core.String get vcodePicUrl => $_getSZ(10);
  @$pb.TagNumber(12)
  set vcodePicUrl($core.String value) => $_setString(10, value);
  @$pb.TagNumber(12)
  $core.bool hasVcodePicUrl() => $_has(10);
  @$pb.TagNumber(12)
  void clearVcodePicUrl() => $_clearField(12);

  @$pb.TagNumber(13)
  $1.VcodeExtra get vcodeExtra => $_getN(11);
  @$pb.TagNumber(13)
  set vcodeExtra($1.VcodeExtra value) => $_setField(13, value);
  @$pb.TagNumber(13)
  $core.bool hasVcodeExtra() => $_has(11);
  @$pb.TagNumber(13)
  void clearVcodeExtra() => $_clearField(13);
  @$pb.TagNumber(13)
  $1.VcodeExtra ensureVcodeExtra() => $_ensure(11);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
