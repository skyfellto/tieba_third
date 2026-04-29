// This is a generated file - do not edit.
//
// Generated from ForumRuleDetail/ForumRuleDetailRequestData.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../CommonRequest.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class ForumRuleDetailRequestData extends $pb.GeneratedMessage {
  factory ForumRuleDetailRequestData({
    $fixnum.Int64? forumId,
    $0.CommonRequest? common,
  }) {
    final result = create();
    if (forumId != null) result.forumId = forumId;
    if (common != null) result.common = common;
    return result;
  }

  ForumRuleDetailRequestData._();

  factory ForumRuleDetailRequestData.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ForumRuleDetailRequestData.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ForumRuleDetailRequestData',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'tieba.forumRuleDetail'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'forumId')
    ..aOM<$0.CommonRequest>(2, _omitFieldNames ? '' : 'common',
        subBuilder: $0.CommonRequest.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ForumRuleDetailRequestData clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ForumRuleDetailRequestData copyWith(
          void Function(ForumRuleDetailRequestData) updates) =>
      super.copyWith(
              (message) => updates(message as ForumRuleDetailRequestData))
          as ForumRuleDetailRequestData;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ForumRuleDetailRequestData create() => ForumRuleDetailRequestData._();
  @$core.override
  ForumRuleDetailRequestData createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ForumRuleDetailRequestData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ForumRuleDetailRequestData>(create);
  static ForumRuleDetailRequestData? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get forumId => $_getI64(0);
  @$pb.TagNumber(1)
  set forumId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasForumId() => $_has(0);
  @$pb.TagNumber(1)
  void clearForumId() => $_clearField(1);

  @$pb.TagNumber(2)
  $0.CommonRequest get common => $_getN(1);
  @$pb.TagNumber(2)
  set common($0.CommonRequest value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasCommon() => $_has(1);
  @$pb.TagNumber(2)
  void clearCommon() => $_clearField(2);
  @$pb.TagNumber(2)
  $0.CommonRequest ensureCommon() => $_ensure(1);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
