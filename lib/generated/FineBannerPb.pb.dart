// This is a generated file - do not edit.
//
// Generated from FineBannerPb.proto.

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

class FineBannerPb extends $pb.GeneratedMessage {
  factory FineBannerPb({
    $fixnum.Int64? ftid,
    $core.String? title,
    $core.String? picUrl,
    $core.String? linkUrl,
  }) {
    final result = create();
    if (ftid != null) result.ftid = ftid;
    if (title != null) result.title = title;
    if (picUrl != null) result.picUrl = picUrl;
    if (linkUrl != null) result.linkUrl = linkUrl;
    return result;
  }

  FineBannerPb._();

  factory FineBannerPb.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FineBannerPb.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FineBannerPb',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'ftid')
    ..aOS(2, _omitFieldNames ? '' : 'title')
    ..aOS(3, _omitFieldNames ? '' : 'picUrl')
    ..aOS(4, _omitFieldNames ? '' : 'linkUrl')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FineBannerPb clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FineBannerPb copyWith(void Function(FineBannerPb) updates) =>
      super.copyWith((message) => updates(message as FineBannerPb))
          as FineBannerPb;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FineBannerPb create() => FineBannerPb._();
  @$core.override
  FineBannerPb createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FineBannerPb getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FineBannerPb>(create);
  static FineBannerPb? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get ftid => $_getI64(0);
  @$pb.TagNumber(1)
  set ftid($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasFtid() => $_has(0);
  @$pb.TagNumber(1)
  void clearFtid() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get picUrl => $_getSZ(2);
  @$pb.TagNumber(3)
  set picUrl($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasPicUrl() => $_has(2);
  @$pb.TagNumber(3)
  void clearPicUrl() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get linkUrl => $_getSZ(3);
  @$pb.TagNumber(4)
  set linkUrl($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasLinkUrl() => $_has(3);
  @$pb.TagNumber(4)
  void clearLinkUrl() => $_clearField(4);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
