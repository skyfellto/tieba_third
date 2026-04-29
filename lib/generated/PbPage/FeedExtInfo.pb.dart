// This is a generated file - do not edit.
//
// Generated from PbPage/FeedExtInfo.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class FeedExtInfo extends $pb.GeneratedMessage {
  factory FeedExtInfo({
    $core.Iterable<$core.String>? feedTab,
    $core.Iterable<$core.String>? feedBar,
  }) {
    final result = create();
    if (feedTab != null) result.feedTab.addAll(feedTab);
    if (feedBar != null) result.feedBar.addAll(feedBar);
    return result;
  }

  FeedExtInfo._();

  factory FeedExtInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FeedExtInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FeedExtInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba.pbPage'),
      createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'feedTab')
    ..pPS(2, _omitFieldNames ? '' : 'feedBar')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FeedExtInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FeedExtInfo copyWith(void Function(FeedExtInfo) updates) =>
      super.copyWith((message) => updates(message as FeedExtInfo))
          as FeedExtInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FeedExtInfo create() => FeedExtInfo._();
  @$core.override
  FeedExtInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FeedExtInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FeedExtInfo>(create);
  static FeedExtInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.String> get feedTab => $_getList(0);

  @$pb.TagNumber(2)
  $pb.PbList<$core.String> get feedBar => $_getList(1);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
