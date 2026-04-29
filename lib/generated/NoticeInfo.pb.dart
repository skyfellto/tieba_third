// This is a generated file - do not edit.
//
// Generated from NoticeInfo.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class NoticeInfo extends $pb.GeneratedMessage {
  factory NoticeInfo({
    $core.String? notice,
    $core.int? pullCommentFrequence,
  }) {
    final result = create();
    if (notice != null) result.notice = notice;
    if (pullCommentFrequence != null)
      result.pullCommentFrequence = pullCommentFrequence;
    return result;
  }

  NoticeInfo._();

  factory NoticeInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory NoticeInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'NoticeInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'notice')
    ..aI(2, _omitFieldNames ? '' : 'pullCommentFrequence',
        protoName: 'pullCommentFrequence')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NoticeInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NoticeInfo copyWith(void Function(NoticeInfo) updates) =>
      super.copyWith((message) => updates(message as NoticeInfo)) as NoticeInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NoticeInfo create() => NoticeInfo._();
  @$core.override
  NoticeInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static NoticeInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<NoticeInfo>(create);
  static NoticeInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get notice => $_getSZ(0);
  @$pb.TagNumber(1)
  set notice($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasNotice() => $_has(0);
  @$pb.TagNumber(1)
  void clearNotice() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get pullCommentFrequence => $_getIZ(1);
  @$pb.TagNumber(2)
  set pullCommentFrequence($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPullCommentFrequence() => $_has(1);
  @$pb.TagNumber(2)
  void clearPullCommentFrequence() => $_clearField(2);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
