// This is a generated file - do not edit.
//
// Generated from AlaChallengeInfo.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class AlaChallengeInfo extends $pb.GeneratedMessage {
  factory AlaChallengeInfo({
    $fixnum.Int64? challengeId,
    $fixnum.Int64? winningNum,
    $core.String? rivalSession,
    $core.String? rivalRtmpUrl,
    $core.String? rivalHlsUrl,
    $core.String? ext,
  }) {
    final result = create();
    if (challengeId != null) result.challengeId = challengeId;
    if (winningNum != null) result.winningNum = winningNum;
    if (rivalSession != null) result.rivalSession = rivalSession;
    if (rivalRtmpUrl != null) result.rivalRtmpUrl = rivalRtmpUrl;
    if (rivalHlsUrl != null) result.rivalHlsUrl = rivalHlsUrl;
    if (ext != null) result.ext = ext;
    return result;
  }

  AlaChallengeInfo._();

  factory AlaChallengeInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AlaChallengeInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AlaChallengeInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'challengeId')
    ..aInt64(2, _omitFieldNames ? '' : 'winningNum')
    ..aOS(3, _omitFieldNames ? '' : 'rivalSession')
    ..aOS(4, _omitFieldNames ? '' : 'rivalRtmpUrl')
    ..aOS(5, _omitFieldNames ? '' : 'rivalHlsUrl')
    ..aOS(6, _omitFieldNames ? '' : 'ext')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AlaChallengeInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AlaChallengeInfo copyWith(void Function(AlaChallengeInfo) updates) =>
      super.copyWith((message) => updates(message as AlaChallengeInfo))
          as AlaChallengeInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AlaChallengeInfo create() => AlaChallengeInfo._();
  @$core.override
  AlaChallengeInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AlaChallengeInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AlaChallengeInfo>(create);
  static AlaChallengeInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get challengeId => $_getI64(0);
  @$pb.TagNumber(1)
  set challengeId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasChallengeId() => $_has(0);
  @$pb.TagNumber(1)
  void clearChallengeId() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get winningNum => $_getI64(1);
  @$pb.TagNumber(2)
  set winningNum($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasWinningNum() => $_has(1);
  @$pb.TagNumber(2)
  void clearWinningNum() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get rivalSession => $_getSZ(2);
  @$pb.TagNumber(3)
  set rivalSession($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasRivalSession() => $_has(2);
  @$pb.TagNumber(3)
  void clearRivalSession() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get rivalRtmpUrl => $_getSZ(3);
  @$pb.TagNumber(4)
  set rivalRtmpUrl($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasRivalRtmpUrl() => $_has(3);
  @$pb.TagNumber(4)
  void clearRivalRtmpUrl() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get rivalHlsUrl => $_getSZ(4);
  @$pb.TagNumber(5)
  set rivalHlsUrl($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasRivalHlsUrl() => $_has(4);
  @$pb.TagNumber(5)
  void clearRivalHlsUrl() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get ext => $_getSZ(5);
  @$pb.TagNumber(6)
  set ext($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasExt() => $_has(5);
  @$pb.TagNumber(6)
  void clearExt() => $_clearField(6);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
