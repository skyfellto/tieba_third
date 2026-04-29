// This is a generated file - do not edit.
//
// Generated from ForumRuleDetail/ForumRuleDetailResponse.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../Error.pb.dart' as $0;
import 'ForumRuleDetailResponseData.pb.dart' as $1;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class ForumRuleDetailResponse extends $pb.GeneratedMessage {
  factory ForumRuleDetailResponse({
    $0.Error? error,
    $1.ForumRuleDetailResponseData? data,
  }) {
    final result = create();
    if (error != null) result.error = error;
    if (data != null) result.data = data;
    return result;
  }

  ForumRuleDetailResponse._();

  factory ForumRuleDetailResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ForumRuleDetailResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ForumRuleDetailResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'tieba.forumRuleDetail'),
      createEmptyInstance: create)
    ..aOM<$0.Error>(1, _omitFieldNames ? '' : 'error',
        subBuilder: $0.Error.create)
    ..aOM<$1.ForumRuleDetailResponseData>(2, _omitFieldNames ? '' : 'data',
        subBuilder: $1.ForumRuleDetailResponseData.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ForumRuleDetailResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ForumRuleDetailResponse copyWith(
          void Function(ForumRuleDetailResponse) updates) =>
      super.copyWith((message) => updates(message as ForumRuleDetailResponse))
          as ForumRuleDetailResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ForumRuleDetailResponse create() => ForumRuleDetailResponse._();
  @$core.override
  ForumRuleDetailResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ForumRuleDetailResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ForumRuleDetailResponse>(create);
  static ForumRuleDetailResponse? _defaultInstance;

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
  $1.ForumRuleDetailResponseData get data => $_getN(1);
  @$pb.TagNumber(2)
  set data($1.ForumRuleDetailResponseData value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasData() => $_has(1);
  @$pb.TagNumber(2)
  void clearData() => $_clearField(2);
  @$pb.TagNumber(2)
  $1.ForumRuleDetailResponseData ensureData() => $_ensure(1);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
