// This is a generated file - do not edit.
//
// Generated from UserShowInfo.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'FeedHeadComponent.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class UserShowInfo extends $pb.GeneratedMessage {
  factory UserShowInfo({
    $0.FeedHeadComponent? feedHead,
  }) {
    final result = create();
    if (feedHead != null) result.feedHead = feedHead;
    return result;
  }

  UserShowInfo._();

  factory UserShowInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UserShowInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UserShowInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aOM<$0.FeedHeadComponent>(1, _omitFieldNames ? '' : 'feedHead',
        subBuilder: $0.FeedHeadComponent.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UserShowInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UserShowInfo copyWith(void Function(UserShowInfo) updates) =>
      super.copyWith((message) => updates(message as UserShowInfo))
          as UserShowInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserShowInfo create() => UserShowInfo._();
  @$core.override
  UserShowInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UserShowInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UserShowInfo>(create);
  static UserShowInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $0.FeedHeadComponent get feedHead => $_getN(0);
  @$pb.TagNumber(1)
  set feedHead($0.FeedHeadComponent value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasFeedHead() => $_has(0);
  @$pb.TagNumber(1)
  void clearFeedHead() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.FeedHeadComponent ensureFeedHead() => $_ensure(0);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
