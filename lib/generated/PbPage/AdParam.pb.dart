// This is a generated file - do not edit.
//
// Generated from PbPage/AdParam.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class AdParam extends $pb.GeneratedMessage {
  factory AdParam({
    $core.int? loadCount,
    $core.int? refreshCount,
    $core.String? yogaLibVersion,
    $core.int? isReqAd,
  }) {
    final result = create();
    if (loadCount != null) result.loadCount = loadCount;
    if (refreshCount != null) result.refreshCount = refreshCount;
    if (yogaLibVersion != null) result.yogaLibVersion = yogaLibVersion;
    if (isReqAd != null) result.isReqAd = isReqAd;
    return result;
  }

  AdParam._();

  factory AdParam.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AdParam.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AdParam',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba.pbPage'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'loadCount')
    ..aI(2, _omitFieldNames ? '' : 'refreshCount')
    ..aOS(3, _omitFieldNames ? '' : 'yogaLibVersion')
    ..aI(4, _omitFieldNames ? '' : 'isReqAd')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AdParam clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AdParam copyWith(void Function(AdParam) updates) =>
      super.copyWith((message) => updates(message as AdParam)) as AdParam;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AdParam create() => AdParam._();
  @$core.override
  AdParam createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AdParam getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AdParam>(create);
  static AdParam? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get loadCount => $_getIZ(0);
  @$pb.TagNumber(1)
  set loadCount($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasLoadCount() => $_has(0);
  @$pb.TagNumber(1)
  void clearLoadCount() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get refreshCount => $_getIZ(1);
  @$pb.TagNumber(2)
  set refreshCount($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasRefreshCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearRefreshCount() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get yogaLibVersion => $_getSZ(2);
  @$pb.TagNumber(3)
  set yogaLibVersion($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasYogaLibVersion() => $_has(2);
  @$pb.TagNumber(3)
  void clearYogaLibVersion() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get isReqAd => $_getIZ(3);
  @$pb.TagNumber(4)
  set isReqAd($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasIsReqAd() => $_has(3);
  @$pb.TagNumber(4)
  void clearIsReqAd() => $_clearField(4);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
