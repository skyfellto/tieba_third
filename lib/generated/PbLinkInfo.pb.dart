// This is a generated file - do not edit.
//
// Generated from PbLinkInfo.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class PbLinkInfo extends $pb.GeneratedMessage {
  factory PbLinkInfo({
    $core.String? title,
    $core.String? toUrl,
    $core.String? picUrl,
    $core.String? linkFrom,
    $core.String? extTxt,
    $core.int? sort,
    $core.int? urlType,
  }) {
    final result = create();
    if (title != null) result.title = title;
    if (toUrl != null) result.toUrl = toUrl;
    if (picUrl != null) result.picUrl = picUrl;
    if (linkFrom != null) result.linkFrom = linkFrom;
    if (extTxt != null) result.extTxt = extTxt;
    if (sort != null) result.sort = sort;
    if (urlType != null) result.urlType = urlType;
    return result;
  }

  PbLinkInfo._();

  factory PbLinkInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PbLinkInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PbLinkInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'title')
    ..aOS(2, _omitFieldNames ? '' : 'toUrl')
    ..aOS(3, _omitFieldNames ? '' : 'picUrl')
    ..aOS(4, _omitFieldNames ? '' : 'linkFrom')
    ..aOS(5, _omitFieldNames ? '' : 'extTxt')
    ..aI(6, _omitFieldNames ? '' : 'sort', fieldType: $pb.PbFieldType.OU3)
    ..aI(7, _omitFieldNames ? '' : 'urlType')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PbLinkInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PbLinkInfo copyWith(void Function(PbLinkInfo) updates) =>
      super.copyWith((message) => updates(message as PbLinkInfo)) as PbLinkInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PbLinkInfo create() => PbLinkInfo._();
  @$core.override
  PbLinkInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PbLinkInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PbLinkInfo>(create);
  static PbLinkInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get toUrl => $_getSZ(1);
  @$pb.TagNumber(2)
  set toUrl($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasToUrl() => $_has(1);
  @$pb.TagNumber(2)
  void clearToUrl() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get picUrl => $_getSZ(2);
  @$pb.TagNumber(3)
  set picUrl($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasPicUrl() => $_has(2);
  @$pb.TagNumber(3)
  void clearPicUrl() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get linkFrom => $_getSZ(3);
  @$pb.TagNumber(4)
  set linkFrom($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasLinkFrom() => $_has(3);
  @$pb.TagNumber(4)
  void clearLinkFrom() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get extTxt => $_getSZ(4);
  @$pb.TagNumber(5)
  set extTxt($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasExtTxt() => $_has(4);
  @$pb.TagNumber(5)
  void clearExtTxt() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get sort => $_getIZ(5);
  @$pb.TagNumber(6)
  set sort($core.int value) => $_setUnsignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasSort() => $_has(5);
  @$pb.TagNumber(6)
  void clearSort() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.int get urlType => $_getIZ(6);
  @$pb.TagNumber(7)
  set urlType($core.int value) => $_setSignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasUrlType() => $_has(6);
  @$pb.TagNumber(7)
  void clearUrlType() => $_clearField(7);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
