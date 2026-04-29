// This is a generated file - do not edit.
//
// Generated from ApkDetail.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class ApkDetail extends $pb.GeneratedMessage {
  factory ApkDetail({
    $core.String? developer,
    $core.String? publisher,
    $core.String? version,
    $core.int? versionCode,
    $core.String? updateTime,
    $core.String? size,
    $core.int? needNetwork,
    $core.int? needInnerBuy,
    $core.String? authorityUrl,
    $core.String? privacyUrl,
    $core.int? pkgSource,
  }) {
    final result = create();
    if (developer != null) result.developer = developer;
    if (publisher != null) result.publisher = publisher;
    if (version != null) result.version = version;
    if (versionCode != null) result.versionCode = versionCode;
    if (updateTime != null) result.updateTime = updateTime;
    if (size != null) result.size = size;
    if (needNetwork != null) result.needNetwork = needNetwork;
    if (needInnerBuy != null) result.needInnerBuy = needInnerBuy;
    if (authorityUrl != null) result.authorityUrl = authorityUrl;
    if (privacyUrl != null) result.privacyUrl = privacyUrl;
    if (pkgSource != null) result.pkgSource = pkgSource;
    return result;
  }

  ApkDetail._();

  factory ApkDetail.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ApkDetail.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ApkDetail',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'developer')
    ..aOS(2, _omitFieldNames ? '' : 'publisher')
    ..aOS(3, _omitFieldNames ? '' : 'version')
    ..aI(6, _omitFieldNames ? '' : 'versionCode')
    ..aOS(7, _omitFieldNames ? '' : 'updateTime')
    ..aOS(8, _omitFieldNames ? '' : 'size')
    ..aI(9, _omitFieldNames ? '' : 'needNetwork')
    ..aI(10, _omitFieldNames ? '' : 'needInnerBuy')
    ..aOS(11, _omitFieldNames ? '' : 'authorityUrl')
    ..aOS(12, _omitFieldNames ? '' : 'privacyUrl')
    ..aI(13, _omitFieldNames ? '' : 'pkgSource')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ApkDetail clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ApkDetail copyWith(void Function(ApkDetail) updates) =>
      super.copyWith((message) => updates(message as ApkDetail)) as ApkDetail;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ApkDetail create() => ApkDetail._();
  @$core.override
  ApkDetail createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ApkDetail getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ApkDetail>(create);
  static ApkDetail? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get developer => $_getSZ(0);
  @$pb.TagNumber(1)
  set developer($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDeveloper() => $_has(0);
  @$pb.TagNumber(1)
  void clearDeveloper() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get publisher => $_getSZ(1);
  @$pb.TagNumber(2)
  set publisher($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPublisher() => $_has(1);
  @$pb.TagNumber(2)
  void clearPublisher() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get version => $_getSZ(2);
  @$pb.TagNumber(3)
  set version($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasVersion() => $_has(2);
  @$pb.TagNumber(3)
  void clearVersion() => $_clearField(3);

  @$pb.TagNumber(6)
  $core.int get versionCode => $_getIZ(3);
  @$pb.TagNumber(6)
  set versionCode($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(6)
  $core.bool hasVersionCode() => $_has(3);
  @$pb.TagNumber(6)
  void clearVersionCode() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get updateTime => $_getSZ(4);
  @$pb.TagNumber(7)
  set updateTime($core.String value) => $_setString(4, value);
  @$pb.TagNumber(7)
  $core.bool hasUpdateTime() => $_has(4);
  @$pb.TagNumber(7)
  void clearUpdateTime() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.String get size => $_getSZ(5);
  @$pb.TagNumber(8)
  set size($core.String value) => $_setString(5, value);
  @$pb.TagNumber(8)
  $core.bool hasSize() => $_has(5);
  @$pb.TagNumber(8)
  void clearSize() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.int get needNetwork => $_getIZ(6);
  @$pb.TagNumber(9)
  set needNetwork($core.int value) => $_setSignedInt32(6, value);
  @$pb.TagNumber(9)
  $core.bool hasNeedNetwork() => $_has(6);
  @$pb.TagNumber(9)
  void clearNeedNetwork() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.int get needInnerBuy => $_getIZ(7);
  @$pb.TagNumber(10)
  set needInnerBuy($core.int value) => $_setSignedInt32(7, value);
  @$pb.TagNumber(10)
  $core.bool hasNeedInnerBuy() => $_has(7);
  @$pb.TagNumber(10)
  void clearNeedInnerBuy() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.String get authorityUrl => $_getSZ(8);
  @$pb.TagNumber(11)
  set authorityUrl($core.String value) => $_setString(8, value);
  @$pb.TagNumber(11)
  $core.bool hasAuthorityUrl() => $_has(8);
  @$pb.TagNumber(11)
  void clearAuthorityUrl() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.String get privacyUrl => $_getSZ(9);
  @$pb.TagNumber(12)
  set privacyUrl($core.String value) => $_setString(9, value);
  @$pb.TagNumber(12)
  $core.bool hasPrivacyUrl() => $_has(9);
  @$pb.TagNumber(12)
  void clearPrivacyUrl() => $_clearField(12);

  @$pb.TagNumber(13)
  $core.int get pkgSource => $_getIZ(10);
  @$pb.TagNumber(13)
  set pkgSource($core.int value) => $_setSignedInt32(10, value);
  @$pb.TagNumber(13)
  $core.bool hasPkgSource() => $_has(10);
  @$pb.TagNumber(13)
  void clearPkgSource() => $_clearField(13);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
