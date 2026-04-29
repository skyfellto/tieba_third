// This is a generated file - do not edit.
//
// Generated from ForumRuleStatus.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class ForumRuleStatus extends $pb.GeneratedMessage {
  factory ForumRuleStatus({
    $core.String? title,
    $core.int? auditStatus,
    $core.int? hasForumRule,
  }) {
    final result = create();
    if (title != null) result.title = title;
    if (auditStatus != null) result.auditStatus = auditStatus;
    if (hasForumRule != null) result.hasForumRule = hasForumRule;
    return result;
  }

  ForumRuleStatus._();

  factory ForumRuleStatus.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ForumRuleStatus.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ForumRuleStatus',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aOS(2, _omitFieldNames ? '' : 'title')
    ..aI(3, _omitFieldNames ? '' : 'auditStatus')
    ..aI(4, _omitFieldNames ? '' : 'hasForumRule')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ForumRuleStatus clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ForumRuleStatus copyWith(void Function(ForumRuleStatus) updates) =>
      super.copyWith((message) => updates(message as ForumRuleStatus))
          as ForumRuleStatus;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ForumRuleStatus create() => ForumRuleStatus._();
  @$core.override
  ForumRuleStatus createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ForumRuleStatus getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ForumRuleStatus>(create);
  static ForumRuleStatus? _defaultInstance;

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(2)
  set title($core.String value) => $_setString(0, value);
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(2)
  void clearTitle() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get auditStatus => $_getIZ(1);
  @$pb.TagNumber(3)
  set auditStatus($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(3)
  $core.bool hasAuditStatus() => $_has(1);
  @$pb.TagNumber(3)
  void clearAuditStatus() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get hasForumRule => $_getIZ(2);
  @$pb.TagNumber(4)
  set hasForumRule($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(4)
  $core.bool hasHasForumRule() => $_has(2);
  @$pb.TagNumber(4)
  void clearHasForumRule() => $_clearField(4);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
