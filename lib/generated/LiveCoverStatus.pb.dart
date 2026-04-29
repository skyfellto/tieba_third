// This is a generated file - do not edit.
//
// Generated from LiveCoverStatus.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class LiveCoverStatus extends $pb.GeneratedMessage {
  factory LiveCoverStatus({
    $core.int? statusNum,
    $core.String? status,
  }) {
    final result = create();
    if (statusNum != null) result.statusNum = statusNum;
    if (status != null) result.status = status;
    return result;
  }

  LiveCoverStatus._();

  factory LiveCoverStatus.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory LiveCoverStatus.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'LiveCoverStatus',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'statusNum')
    ..aOS(2, _omitFieldNames ? '' : 'status')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LiveCoverStatus clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LiveCoverStatus copyWith(void Function(LiveCoverStatus) updates) =>
      super.copyWith((message) => updates(message as LiveCoverStatus))
          as LiveCoverStatus;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LiveCoverStatus create() => LiveCoverStatus._();
  @$core.override
  LiveCoverStatus createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static LiveCoverStatus getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LiveCoverStatus>(create);
  static LiveCoverStatus? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get statusNum => $_getIZ(0);
  @$pb.TagNumber(1)
  set statusNum($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasStatusNum() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatusNum() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get status => $_getSZ(1);
  @$pb.TagNumber(2)
  set status($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearStatus() => $_clearField(2);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
