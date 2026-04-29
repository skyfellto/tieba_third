// This is a generated file - do not edit.
//
// Generated from SearchSug/SearchSugRequestData.proto.

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

class SearchSugRequestData extends $pb.GeneratedMessage {
  factory SearchSugRequestData({
    $0.CommonRequest? common,
    $core.String? word,
    $core.String? isforum,
  }) {
    final result = create();
    if (common != null) result.common = common;
    if (word != null) result.word = word;
    if (isforum != null) result.isforum = isforum;
    return result;
  }

  SearchSugRequestData._();

  factory SearchSugRequestData.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SearchSugRequestData.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SearchSugRequestData',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'tieba.searchSug'),
      createEmptyInstance: create)
    ..aOM<$0.CommonRequest>(1, _omitFieldNames ? '' : 'common',
        subBuilder: $0.CommonRequest.create)
    ..aOS(2, _omitFieldNames ? '' : 'word')
    ..aOS(3, _omitFieldNames ? '' : 'isforum')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SearchSugRequestData clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SearchSugRequestData copyWith(void Function(SearchSugRequestData) updates) =>
      super.copyWith((message) => updates(message as SearchSugRequestData))
          as SearchSugRequestData;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SearchSugRequestData create() => SearchSugRequestData._();
  @$core.override
  SearchSugRequestData createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SearchSugRequestData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SearchSugRequestData>(create);
  static SearchSugRequestData? _defaultInstance;

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
  $core.String get word => $_getSZ(1);
  @$pb.TagNumber(2)
  set word($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasWord() => $_has(1);
  @$pb.TagNumber(2)
  void clearWord() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get isforum => $_getSZ(2);
  @$pb.TagNumber(3)
  set isforum($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasIsforum() => $_has(2);
  @$pb.TagNumber(3)
  void clearIsforum() => $_clearField(3);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
