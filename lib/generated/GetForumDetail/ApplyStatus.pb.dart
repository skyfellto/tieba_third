// This is a generated file - do not edit.
//
// Generated from GetForumDetail/ApplyStatus.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class ApplyStatus extends $pb.GeneratedMessage {
  factory ApplyStatus({
    $core.int? isAvatarApplying,
    $core.int? isDescApplying,
    $core.int? nextAvatarApplyTime,
    $core.int? nextDescApplyTime,
    $core.int? isFdirApplying,
    $core.int? fdirNextApplyTime,
  }) {
    final result = create();
    if (isAvatarApplying != null) result.isAvatarApplying = isAvatarApplying;
    if (isDescApplying != null) result.isDescApplying = isDescApplying;
    if (nextAvatarApplyTime != null)
      result.nextAvatarApplyTime = nextAvatarApplyTime;
    if (nextDescApplyTime != null) result.nextDescApplyTime = nextDescApplyTime;
    if (isFdirApplying != null) result.isFdirApplying = isFdirApplying;
    if (fdirNextApplyTime != null) result.fdirNextApplyTime = fdirNextApplyTime;
    return result;
  }

  ApplyStatus._();

  factory ApplyStatus.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ApplyStatus.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ApplyStatus',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'tieba.getForumDetail'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'isAvatarApplying')
    ..aI(2, _omitFieldNames ? '' : 'isDescApplying')
    ..aI(3, _omitFieldNames ? '' : 'nextAvatarApplyTime')
    ..aI(4, _omitFieldNames ? '' : 'nextDescApplyTime')
    ..aI(5, _omitFieldNames ? '' : 'isFdirApplying')
    ..aI(6, _omitFieldNames ? '' : 'fdirNextApplyTime')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ApplyStatus clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ApplyStatus copyWith(void Function(ApplyStatus) updates) =>
      super.copyWith((message) => updates(message as ApplyStatus))
          as ApplyStatus;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ApplyStatus create() => ApplyStatus._();
  @$core.override
  ApplyStatus createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ApplyStatus getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ApplyStatus>(create);
  static ApplyStatus? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get isAvatarApplying => $_getIZ(0);
  @$pb.TagNumber(1)
  set isAvatarApplying($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasIsAvatarApplying() => $_has(0);
  @$pb.TagNumber(1)
  void clearIsAvatarApplying() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get isDescApplying => $_getIZ(1);
  @$pb.TagNumber(2)
  set isDescApplying($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasIsDescApplying() => $_has(1);
  @$pb.TagNumber(2)
  void clearIsDescApplying() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get nextAvatarApplyTime => $_getIZ(2);
  @$pb.TagNumber(3)
  set nextAvatarApplyTime($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasNextAvatarApplyTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearNextAvatarApplyTime() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get nextDescApplyTime => $_getIZ(3);
  @$pb.TagNumber(4)
  set nextDescApplyTime($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasNextDescApplyTime() => $_has(3);
  @$pb.TagNumber(4)
  void clearNextDescApplyTime() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get isFdirApplying => $_getIZ(4);
  @$pb.TagNumber(5)
  set isFdirApplying($core.int value) => $_setSignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasIsFdirApplying() => $_has(4);
  @$pb.TagNumber(5)
  void clearIsFdirApplying() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get fdirNextApplyTime => $_getIZ(5);
  @$pb.TagNumber(6)
  set fdirNextApplyTime($core.int value) => $_setSignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasFdirNextApplyTime() => $_has(5);
  @$pb.TagNumber(6)
  void clearFdirNextApplyTime() => $_clearField(6);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
