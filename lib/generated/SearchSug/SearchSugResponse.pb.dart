// This is a generated file - do not edit.
//
// Generated from SearchSug/SearchSugResponse.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../Error.pb.dart' as $0;
import 'SearchSugResponseData.pb.dart' as $1;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class SearchSugResponse extends $pb.GeneratedMessage {
  factory SearchSugResponse({
    $0.Error? error,
    $1.SearchSugResponseData? data,
  }) {
    final result = create();
    if (error != null) result.error = error;
    if (data != null) result.data = data;
    return result;
  }

  SearchSugResponse._();

  factory SearchSugResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SearchSugResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SearchSugResponse',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'tieba.searchSug'),
      createEmptyInstance: create)
    ..aOM<$0.Error>(1, _omitFieldNames ? '' : 'error',
        subBuilder: $0.Error.create)
    ..aOM<$1.SearchSugResponseData>(2, _omitFieldNames ? '' : 'data',
        subBuilder: $1.SearchSugResponseData.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SearchSugResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SearchSugResponse copyWith(void Function(SearchSugResponse) updates) =>
      super.copyWith((message) => updates(message as SearchSugResponse))
          as SearchSugResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SearchSugResponse create() => SearchSugResponse._();
  @$core.override
  SearchSugResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SearchSugResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SearchSugResponse>(create);
  static SearchSugResponse? _defaultInstance;

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
  $1.SearchSugResponseData get data => $_getN(1);
  @$pb.TagNumber(2)
  set data($1.SearchSugResponseData value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasData() => $_has(1);
  @$pb.TagNumber(2)
  void clearData() => $_clearField(2);
  @$pb.TagNumber(2)
  $1.SearchSugResponseData ensureData() => $_ensure(1);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
