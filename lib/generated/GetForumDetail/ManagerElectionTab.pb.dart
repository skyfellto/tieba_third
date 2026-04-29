// This is a generated file - do not edit.
//
// Generated from GetForumDetail/ManagerElectionTab.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class ManagerElectionTab extends $pb.GeneratedMessage {
  factory ManagerElectionTab({
    $core.int? isNewStrategy,
    $core.String? newStrategyLink,
    $core.int? newManagerStatus,
    $core.String? newStrategyText,
    $core.String? toastText,
  }) {
    final result = create();
    if (isNewStrategy != null) result.isNewStrategy = isNewStrategy;
    if (newStrategyLink != null) result.newStrategyLink = newStrategyLink;
    if (newManagerStatus != null) result.newManagerStatus = newManagerStatus;
    if (newStrategyText != null) result.newStrategyText = newStrategyText;
    if (toastText != null) result.toastText = toastText;
    return result;
  }

  ManagerElectionTab._();

  factory ManagerElectionTab.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ManagerElectionTab.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ManagerElectionTab',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'tieba.getForumDetail'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'isNewStrategy',
        fieldType: $pb.PbFieldType.OU3)
    ..aOS(2, _omitFieldNames ? '' : 'newStrategyLink')
    ..aI(4, _omitFieldNames ? '' : 'newManagerStatus',
        fieldType: $pb.PbFieldType.OU3)
    ..aOS(5, _omitFieldNames ? '' : 'newStrategyText')
    ..aOS(6, _omitFieldNames ? '' : 'toastText')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ManagerElectionTab clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ManagerElectionTab copyWith(void Function(ManagerElectionTab) updates) =>
      super.copyWith((message) => updates(message as ManagerElectionTab))
          as ManagerElectionTab;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ManagerElectionTab create() => ManagerElectionTab._();
  @$core.override
  ManagerElectionTab createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ManagerElectionTab getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ManagerElectionTab>(create);
  static ManagerElectionTab? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get isNewStrategy => $_getIZ(0);
  @$pb.TagNumber(1)
  set isNewStrategy($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasIsNewStrategy() => $_has(0);
  @$pb.TagNumber(1)
  void clearIsNewStrategy() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get newStrategyLink => $_getSZ(1);
  @$pb.TagNumber(2)
  set newStrategyLink($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasNewStrategyLink() => $_has(1);
  @$pb.TagNumber(2)
  void clearNewStrategyLink() => $_clearField(2);

  @$pb.TagNumber(4)
  $core.int get newManagerStatus => $_getIZ(2);
  @$pb.TagNumber(4)
  set newManagerStatus($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(4)
  $core.bool hasNewManagerStatus() => $_has(2);
  @$pb.TagNumber(4)
  void clearNewManagerStatus() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get newStrategyText => $_getSZ(3);
  @$pb.TagNumber(5)
  set newStrategyText($core.String value) => $_setString(3, value);
  @$pb.TagNumber(5)
  $core.bool hasNewStrategyText() => $_has(3);
  @$pb.TagNumber(5)
  void clearNewStrategyText() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get toastText => $_getSZ(4);
  @$pb.TagNumber(6)
  set toastText($core.String value) => $_setString(4, value);
  @$pb.TagNumber(6)
  $core.bool hasToastText() => $_has(4);
  @$pb.TagNumber(6)
  void clearToastText() => $_clearField(6);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
