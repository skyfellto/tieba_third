// This is a generated file - do not edit.
//
// Generated from DislikeInfo.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class DislikeInfo extends $pb.GeneratedMessage {
  factory DislikeInfo({
    $core.String? dislikeReason,
    $core.int? dislikeId,
    $core.String? extra,
  }) {
    final result = create();
    if (dislikeReason != null) result.dislikeReason = dislikeReason;
    if (dislikeId != null) result.dislikeId = dislikeId;
    if (extra != null) result.extra = extra;
    return result;
  }

  DislikeInfo._();

  factory DislikeInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DislikeInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DislikeInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'dislikeReason', protoName: 'dislikeReason')
    ..aI(2, _omitFieldNames ? '' : 'dislikeId',
        protoName: 'dislikeId', fieldType: $pb.PbFieldType.OU3)
    ..aOS(3, _omitFieldNames ? '' : 'extra')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DislikeInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DislikeInfo copyWith(void Function(DislikeInfo) updates) =>
      super.copyWith((message) => updates(message as DislikeInfo))
          as DislikeInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DislikeInfo create() => DislikeInfo._();
  @$core.override
  DislikeInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DislikeInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DislikeInfo>(create);
  static DislikeInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get dislikeReason => $_getSZ(0);
  @$pb.TagNumber(1)
  set dislikeReason($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDislikeReason() => $_has(0);
  @$pb.TagNumber(1)
  void clearDislikeReason() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get dislikeId => $_getIZ(1);
  @$pb.TagNumber(2)
  set dislikeId($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasDislikeId() => $_has(1);
  @$pb.TagNumber(2)
  void clearDislikeId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get extra => $_getSZ(2);
  @$pb.TagNumber(3)
  set extra($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasExtra() => $_has(2);
  @$pb.TagNumber(3)
  void clearExtra() => $_clearField(3);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
