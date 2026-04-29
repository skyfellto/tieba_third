// This is a generated file - do not edit.
//
// Generated from ForumRuleDetail/ForumRuleDetailRequest.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'ForumRuleDetailRequestData.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class ForumRuleDetailRequest extends $pb.GeneratedMessage {
  factory ForumRuleDetailRequest({
    $0.ForumRuleDetailRequestData? data,
  }) {
    final result = create();
    if (data != null) result.data = data;
    return result;
  }

  ForumRuleDetailRequest._();

  factory ForumRuleDetailRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ForumRuleDetailRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ForumRuleDetailRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'tieba.forumRuleDetail'),
      createEmptyInstance: create)
    ..aOM<$0.ForumRuleDetailRequestData>(1, _omitFieldNames ? '' : 'data',
        subBuilder: $0.ForumRuleDetailRequestData.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ForumRuleDetailRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ForumRuleDetailRequest copyWith(
          void Function(ForumRuleDetailRequest) updates) =>
      super.copyWith((message) => updates(message as ForumRuleDetailRequest))
          as ForumRuleDetailRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ForumRuleDetailRequest create() => ForumRuleDetailRequest._();
  @$core.override
  ForumRuleDetailRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ForumRuleDetailRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ForumRuleDetailRequest>(create);
  static ForumRuleDetailRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $0.ForumRuleDetailRequestData get data => $_getN(0);
  @$pb.TagNumber(1)
  set data($0.ForumRuleDetailRequestData value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasData() => $_has(0);
  @$pb.TagNumber(1)
  void clearData() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.ForumRuleDetailRequestData ensureData() => $_ensure(0);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
