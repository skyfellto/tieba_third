// This is a generated file - do not edit.
//
// Generated from VcodeInfo.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'VcodeExtra.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class VcodeInfo extends $pb.GeneratedMessage {
  factory VcodeInfo({
    $core.String? vcodeMd5,
    $core.String? vcodePicUrl,
    $core.String? vcodeType,
    $0.VcodeExtra? vcodeExtra,
  }) {
    final result = create();
    if (vcodeMd5 != null) result.vcodeMd5 = vcodeMd5;
    if (vcodePicUrl != null) result.vcodePicUrl = vcodePicUrl;
    if (vcodeType != null) result.vcodeType = vcodeType;
    if (vcodeExtra != null) result.vcodeExtra = vcodeExtra;
    return result;
  }

  VcodeInfo._();

  factory VcodeInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory VcodeInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'VcodeInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'vcodeMd5')
    ..aOS(2, _omitFieldNames ? '' : 'vcodePicUrl')
    ..aOS(3, _omitFieldNames ? '' : 'vcodeType')
    ..aOM<$0.VcodeExtra>(4, _omitFieldNames ? '' : 'vcodeExtra',
        subBuilder: $0.VcodeExtra.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VcodeInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VcodeInfo copyWith(void Function(VcodeInfo) updates) =>
      super.copyWith((message) => updates(message as VcodeInfo)) as VcodeInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VcodeInfo create() => VcodeInfo._();
  @$core.override
  VcodeInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static VcodeInfo getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VcodeInfo>(create);
  static VcodeInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get vcodeMd5 => $_getSZ(0);
  @$pb.TagNumber(1)
  set vcodeMd5($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVcodeMd5() => $_has(0);
  @$pb.TagNumber(1)
  void clearVcodeMd5() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get vcodePicUrl => $_getSZ(1);
  @$pb.TagNumber(2)
  set vcodePicUrl($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasVcodePicUrl() => $_has(1);
  @$pb.TagNumber(2)
  void clearVcodePicUrl() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get vcodeType => $_getSZ(2);
  @$pb.TagNumber(3)
  set vcodeType($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasVcodeType() => $_has(2);
  @$pb.TagNumber(3)
  void clearVcodeType() => $_clearField(3);

  @$pb.TagNumber(4)
  $0.VcodeExtra get vcodeExtra => $_getN(3);
  @$pb.TagNumber(4)
  set vcodeExtra($0.VcodeExtra value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasVcodeExtra() => $_has(3);
  @$pb.TagNumber(4)
  void clearVcodeExtra() => $_clearField(4);
  @$pb.TagNumber(4)
  $0.VcodeExtra ensureVcodeExtra() => $_ensure(3);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
