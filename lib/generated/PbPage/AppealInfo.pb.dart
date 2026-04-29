// This is a generated file - do not edit.
//
// Generated from PbPage/AppealInfo.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class AppealInfo extends $pb.GeneratedMessage {
  factory AppealInfo({
    $core.String? source,
    $core.String? appealUrl,
  }) {
    final result = create();
    if (source != null) result.source = source;
    if (appealUrl != null) result.appealUrl = appealUrl;
    return result;
  }

  AppealInfo._();

  factory AppealInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AppealInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AppealInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba.pbPage'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'source')
    ..aOS(2, _omitFieldNames ? '' : 'appealUrl')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AppealInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AppealInfo copyWith(void Function(AppealInfo) updates) =>
      super.copyWith((message) => updates(message as AppealInfo)) as AppealInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AppealInfo create() => AppealInfo._();
  @$core.override
  AppealInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AppealInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AppealInfo>(create);
  static AppealInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get source => $_getSZ(0);
  @$pb.TagNumber(1)
  set source($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSource() => $_has(0);
  @$pb.TagNumber(1)
  void clearSource() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get appealUrl => $_getSZ(1);
  @$pb.TagNumber(2)
  set appealUrl($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasAppealUrl() => $_has(1);
  @$pb.TagNumber(2)
  void clearAppealUrl() => $_clearField(2);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
