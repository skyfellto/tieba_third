// This is a generated file - do not edit.
//
// Generated from GetForumDetail/UniversityTabInfo.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'UniversityInfo.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class UniversityTabInfo extends $pb.GeneratedMessage {
  factory UniversityTabInfo({
    $core.String? tabName,
    $core.Iterable<$0.UniversityInfo>? content,
  }) {
    final result = create();
    if (tabName != null) result.tabName = tabName;
    if (content != null) result.content.addAll(content);
    return result;
  }

  UniversityTabInfo._();

  factory UniversityTabInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UniversityTabInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UniversityTabInfo',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'tieba.getForumDetail'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'tabName')
    ..pPM<$0.UniversityInfo>(2, _omitFieldNames ? '' : 'content',
        subBuilder: $0.UniversityInfo.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UniversityTabInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UniversityTabInfo copyWith(void Function(UniversityTabInfo) updates) =>
      super.copyWith((message) => updates(message as UniversityTabInfo))
          as UniversityTabInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UniversityTabInfo create() => UniversityTabInfo._();
  @$core.override
  UniversityTabInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UniversityTabInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UniversityTabInfo>(create);
  static UniversityTabInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get tabName => $_getSZ(0);
  @$pb.TagNumber(1)
  set tabName($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTabName() => $_has(0);
  @$pb.TagNumber(1)
  void clearTabName() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<$0.UniversityInfo> get content => $_getList(1);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
