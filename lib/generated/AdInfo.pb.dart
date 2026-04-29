// This is a generated file - do not edit.
//
// Generated from AdInfo.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'Media.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class AdInfo extends $pb.GeneratedMessage {
  factory AdInfo({
    $core.int? showRule,
    $core.int? adType,
    $core.String? adDesc,
    $core.String? adPic,
    $core.String? adUrl,
    $core.String? adName,
    $core.String? portrait,
    $core.Iterable<$0.Media>? media,
  }) {
    final result = create();
    if (showRule != null) result.showRule = showRule;
    if (adType != null) result.adType = adType;
    if (adDesc != null) result.adDesc = adDesc;
    if (adPic != null) result.adPic = adPic;
    if (adUrl != null) result.adUrl = adUrl;
    if (adName != null) result.adName = adName;
    if (portrait != null) result.portrait = portrait;
    if (media != null) result.media.addAll(media);
    return result;
  }

  AdInfo._();

  factory AdInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AdInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AdInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'showRule')
    ..aI(2, _omitFieldNames ? '' : 'adType')
    ..aOS(3, _omitFieldNames ? '' : 'adDesc')
    ..aOS(4, _omitFieldNames ? '' : 'adPic')
    ..aOS(5, _omitFieldNames ? '' : 'adUrl')
    ..aOS(6, _omitFieldNames ? '' : 'adName')
    ..aOS(7, _omitFieldNames ? '' : 'portrait')
    ..pPM<$0.Media>(8, _omitFieldNames ? '' : 'media',
        subBuilder: $0.Media.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AdInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AdInfo copyWith(void Function(AdInfo) updates) =>
      super.copyWith((message) => updates(message as AdInfo)) as AdInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AdInfo create() => AdInfo._();
  @$core.override
  AdInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AdInfo getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AdInfo>(create);
  static AdInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get showRule => $_getIZ(0);
  @$pb.TagNumber(1)
  set showRule($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasShowRule() => $_has(0);
  @$pb.TagNumber(1)
  void clearShowRule() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get adType => $_getIZ(1);
  @$pb.TagNumber(2)
  set adType($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasAdType() => $_has(1);
  @$pb.TagNumber(2)
  void clearAdType() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get adDesc => $_getSZ(2);
  @$pb.TagNumber(3)
  set adDesc($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasAdDesc() => $_has(2);
  @$pb.TagNumber(3)
  void clearAdDesc() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get adPic => $_getSZ(3);
  @$pb.TagNumber(4)
  set adPic($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasAdPic() => $_has(3);
  @$pb.TagNumber(4)
  void clearAdPic() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get adUrl => $_getSZ(4);
  @$pb.TagNumber(5)
  set adUrl($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasAdUrl() => $_has(4);
  @$pb.TagNumber(5)
  void clearAdUrl() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get adName => $_getSZ(5);
  @$pb.TagNumber(6)
  set adName($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasAdName() => $_has(5);
  @$pb.TagNumber(6)
  void clearAdName() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get portrait => $_getSZ(6);
  @$pb.TagNumber(7)
  set portrait($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasPortrait() => $_has(6);
  @$pb.TagNumber(7)
  void clearPortrait() => $_clearField(7);

  @$pb.TagNumber(8)
  $pb.PbList<$0.Media> get media => $_getList(7);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
