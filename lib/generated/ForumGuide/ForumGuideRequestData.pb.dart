// This is a generated file - do not edit.
//
// Generated from ForumGuide/ForumGuideRequestData.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class ForumGuideRequestData extends $pb.GeneratedMessage {
  factory ForumGuideRequestData({
    $core.int? sortType,
    $core.int? callFrom,
  }) {
    final result = create();
    if (sortType != null) result.sortType = sortType;
    if (callFrom != null) result.callFrom = callFrom;
    return result;
  }

  ForumGuideRequestData._();

  factory ForumGuideRequestData.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ForumGuideRequestData.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ForumGuideRequestData',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'tieba.forumGuide'),
      createEmptyInstance: create)
    ..aI(2, _omitFieldNames ? '' : 'sortType')
    ..aI(3, _omitFieldNames ? '' : 'callFrom')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ForumGuideRequestData clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ForumGuideRequestData copyWith(
          void Function(ForumGuideRequestData) updates) =>
      super.copyWith((message) => updates(message as ForumGuideRequestData))
          as ForumGuideRequestData;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ForumGuideRequestData create() => ForumGuideRequestData._();
  @$core.override
  ForumGuideRequestData createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ForumGuideRequestData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ForumGuideRequestData>(create);
  static ForumGuideRequestData? _defaultInstance;

  @$pb.TagNumber(2)
  $core.int get sortType => $_getIZ(0);
  @$pb.TagNumber(2)
  set sortType($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(2)
  $core.bool hasSortType() => $_has(0);
  @$pb.TagNumber(2)
  void clearSortType() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get callFrom => $_getIZ(1);
  @$pb.TagNumber(3)
  set callFrom($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(3)
  $core.bool hasCallFrom() => $_has(1);
  @$pb.TagNumber(3)
  void clearCallFrom() => $_clearField(3);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
