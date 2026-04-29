// This is a generated file - do not edit.
//
// Generated from SkinInfo.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class SkinInfo extends $pb.GeneratedMessage {
  factory SkinInfo({
    $core.String? skin,
    $core.String? skinSize,
    $core.String? url,
    $core.String? objId,
    $core.String? monitorId,
  }) {
    final result = create();
    if (skin != null) result.skin = skin;
    if (skinSize != null) result.skinSize = skinSize;
    if (url != null) result.url = url;
    if (objId != null) result.objId = objId;
    if (monitorId != null) result.monitorId = monitorId;
    return result;
  }

  SkinInfo._();

  factory SkinInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SkinInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SkinInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'skin')
    ..aOS(2, _omitFieldNames ? '' : 'skinSize')
    ..aOS(3, _omitFieldNames ? '' : 'url')
    ..aOS(4, _omitFieldNames ? '' : 'objId')
    ..aOS(5, _omitFieldNames ? '' : 'monitorId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SkinInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SkinInfo copyWith(void Function(SkinInfo) updates) =>
      super.copyWith((message) => updates(message as SkinInfo)) as SkinInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SkinInfo create() => SkinInfo._();
  @$core.override
  SkinInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SkinInfo getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SkinInfo>(create);
  static SkinInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get skin => $_getSZ(0);
  @$pb.TagNumber(1)
  set skin($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSkin() => $_has(0);
  @$pb.TagNumber(1)
  void clearSkin() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get skinSize => $_getSZ(1);
  @$pb.TagNumber(2)
  set skinSize($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSkinSize() => $_has(1);
  @$pb.TagNumber(2)
  void clearSkinSize() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get url => $_getSZ(2);
  @$pb.TagNumber(3)
  set url($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasUrl() => $_has(2);
  @$pb.TagNumber(3)
  void clearUrl() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get objId => $_getSZ(3);
  @$pb.TagNumber(4)
  set objId($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasObjId() => $_has(3);
  @$pb.TagNumber(4)
  void clearObjId() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get monitorId => $_getSZ(4);
  @$pb.TagNumber(5)
  set monitorId($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasMonitorId() => $_has(4);
  @$pb.TagNumber(5)
  void clearMonitorId() => $_clearField(5);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
