// This is a generated file - do not edit.
//
// Generated from GetHistoryForum/GetHistoryForumRequestData.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../CommonRequest.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class GetHistoryForumRequestData extends $pb.GeneratedMessage {
  factory GetHistoryForumRequestData({
    $0.CommonRequest? common,
    $core.String? history,
  }) {
    final result = create();
    if (common != null) result.common = common;
    if (history != null) result.history = history;
    return result;
  }

  GetHistoryForumRequestData._();

  factory GetHistoryForumRequestData.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetHistoryForumRequestData.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetHistoryForumRequestData',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'tieba.getHistoryForum'),
      createEmptyInstance: create)
    ..aOM<$0.CommonRequest>(1, _omitFieldNames ? '' : 'common',
        subBuilder: $0.CommonRequest.create)
    ..aOS(2, _omitFieldNames ? '' : 'history')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetHistoryForumRequestData clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetHistoryForumRequestData copyWith(
          void Function(GetHistoryForumRequestData) updates) =>
      super.copyWith(
              (message) => updates(message as GetHistoryForumRequestData))
          as GetHistoryForumRequestData;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetHistoryForumRequestData create() => GetHistoryForumRequestData._();
  @$core.override
  GetHistoryForumRequestData createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetHistoryForumRequestData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetHistoryForumRequestData>(create);
  static GetHistoryForumRequestData? _defaultInstance;

  @$pb.TagNumber(1)
  $0.CommonRequest get common => $_getN(0);
  @$pb.TagNumber(1)
  set common($0.CommonRequest value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasCommon() => $_has(0);
  @$pb.TagNumber(1)
  void clearCommon() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.CommonRequest ensureCommon() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get history => $_getSZ(1);
  @$pb.TagNumber(2)
  set history($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasHistory() => $_has(1);
  @$pb.TagNumber(2)
  void clearHistory() => $_clearField(2);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
