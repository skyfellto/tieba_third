// This is a generated file - do not edit.
//
// Generated from GetHistoryForum/GetHistoryForumResponse.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../Error.pb.dart' as $0;
import 'GetHistoryForumResponseData.pb.dart' as $1;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class GetHistoryForumResponse extends $pb.GeneratedMessage {
  factory GetHistoryForumResponse({
    $0.Error? error,
    $1.GetHistoryForumResponseData? data,
  }) {
    final result = create();
    if (error != null) result.error = error;
    if (data != null) result.data = data;
    return result;
  }

  GetHistoryForumResponse._();

  factory GetHistoryForumResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetHistoryForumResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetHistoryForumResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'tieba.getHistoryForum'),
      createEmptyInstance: create)
    ..aOM<$0.Error>(1, _omitFieldNames ? '' : 'error',
        subBuilder: $0.Error.create)
    ..aOM<$1.GetHistoryForumResponseData>(2, _omitFieldNames ? '' : 'data',
        subBuilder: $1.GetHistoryForumResponseData.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetHistoryForumResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetHistoryForumResponse copyWith(
          void Function(GetHistoryForumResponse) updates) =>
      super.copyWith((message) => updates(message as GetHistoryForumResponse))
          as GetHistoryForumResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetHistoryForumResponse create() => GetHistoryForumResponse._();
  @$core.override
  GetHistoryForumResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetHistoryForumResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetHistoryForumResponse>(create);
  static GetHistoryForumResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $0.Error get error => $_getN(0);
  @$pb.TagNumber(1)
  set error($0.Error value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasError() => $_has(0);
  @$pb.TagNumber(1)
  void clearError() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.Error ensureError() => $_ensure(0);

  @$pb.TagNumber(2)
  $1.GetHistoryForumResponseData get data => $_getN(1);
  @$pb.TagNumber(2)
  set data($1.GetHistoryForumResponseData value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasData() => $_has(1);
  @$pb.TagNumber(2)
  void clearData() => $_clearField(2);
  @$pb.TagNumber(2)
  $1.GetHistoryForumResponseData ensureData() => $_ensure(1);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
