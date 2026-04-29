// This is a generated file - do not edit.
//
// Generated from RecomTopicInfo.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'RecomTopicList.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class RecomTopicInfo extends $pb.GeneratedMessage {
  factory RecomTopicInfo({
    $core.String? recomTitle,
    $core.Iterable<$0.RecomTopicList>? topicList,
  }) {
    final result = create();
    if (recomTitle != null) result.recomTitle = recomTitle;
    if (topicList != null) result.topicList.addAll(topicList);
    return result;
  }

  RecomTopicInfo._();

  factory RecomTopicInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RecomTopicInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RecomTopicInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'recomTitle')
    ..pPM<$0.RecomTopicList>(2, _omitFieldNames ? '' : 'topicList',
        subBuilder: $0.RecomTopicList.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RecomTopicInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RecomTopicInfo copyWith(void Function(RecomTopicInfo) updates) =>
      super.copyWith((message) => updates(message as RecomTopicInfo))
          as RecomTopicInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RecomTopicInfo create() => RecomTopicInfo._();
  @$core.override
  RecomTopicInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RecomTopicInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RecomTopicInfo>(create);
  static RecomTopicInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get recomTitle => $_getSZ(0);
  @$pb.TagNumber(1)
  set recomTitle($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasRecomTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearRecomTitle() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<$0.RecomTopicList> get topicList => $_getList(1);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
