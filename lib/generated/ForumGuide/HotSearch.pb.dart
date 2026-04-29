// This is a generated file - do not edit.
//
// Generated from ForumGuide/HotSearch.proto.

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

class HotSearch extends $pb.GeneratedMessage {
  factory HotSearch({
    $fixnum.Int64? forumId,
    $core.String? forumName,
    $core.String? slogan,
    $core.String? searchTitle,
  }) {
    final result = create();
    if (forumId != null) result.forumId = forumId;
    if (forumName != null) result.forumName = forumName;
    if (slogan != null) result.slogan = slogan;
    if (searchTitle != null) result.searchTitle = searchTitle;
    return result;
  }

  HotSearch._();

  factory HotSearch.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory HotSearch.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'HotSearch',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'tieba.forumGuide'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'forumId', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(2, _omitFieldNames ? '' : 'forumName')
    ..aOS(3, _omitFieldNames ? '' : 'slogan')
    ..aOS(4, _omitFieldNames ? '' : 'searchTitle')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HotSearch clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HotSearch copyWith(void Function(HotSearch) updates) =>
      super.copyWith((message) => updates(message as HotSearch)) as HotSearch;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HotSearch create() => HotSearch._();
  @$core.override
  HotSearch createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static HotSearch getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HotSearch>(create);
  static HotSearch? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get forumId => $_getI64(0);
  @$pb.TagNumber(1)
  set forumId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasForumId() => $_has(0);
  @$pb.TagNumber(1)
  void clearForumId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get forumName => $_getSZ(1);
  @$pb.TagNumber(2)
  set forumName($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasForumName() => $_has(1);
  @$pb.TagNumber(2)
  void clearForumName() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get slogan => $_getSZ(2);
  @$pb.TagNumber(3)
  set slogan($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasSlogan() => $_has(2);
  @$pb.TagNumber(3)
  void clearSlogan() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get searchTitle => $_getSZ(3);
  @$pb.TagNumber(4)
  set searchTitle($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasSearchTitle() => $_has(3);
  @$pb.TagNumber(4)
  void clearSearchTitle() => $_clearField(4);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
