// This is a generated file - do not edit.
//
// Generated from AlaShareInfo.proto.

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

class AlaShareInfo extends $pb.GeneratedMessage {
  factory AlaShareInfo({
    $core.String? content,
    $core.int? shareUserCount,
    $core.int? shareCount,
    $fixnum.Int64? recordTid,
  }) {
    final result = create();
    if (content != null) result.content = content;
    if (shareUserCount != null) result.shareUserCount = shareUserCount;
    if (shareCount != null) result.shareCount = shareCount;
    if (recordTid != null) result.recordTid = recordTid;
    return result;
  }

  AlaShareInfo._();

  factory AlaShareInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AlaShareInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AlaShareInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'content')
    ..aI(2, _omitFieldNames ? '' : 'shareUserCount')
    ..aI(3, _omitFieldNames ? '' : 'shareCount')
    ..aInt64(4, _omitFieldNames ? '' : 'recordTid')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AlaShareInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AlaShareInfo copyWith(void Function(AlaShareInfo) updates) =>
      super.copyWith((message) => updates(message as AlaShareInfo))
          as AlaShareInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AlaShareInfo create() => AlaShareInfo._();
  @$core.override
  AlaShareInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AlaShareInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AlaShareInfo>(create);
  static AlaShareInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get content => $_getSZ(0);
  @$pb.TagNumber(1)
  set content($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasContent() => $_has(0);
  @$pb.TagNumber(1)
  void clearContent() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get shareUserCount => $_getIZ(1);
  @$pb.TagNumber(2)
  set shareUserCount($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasShareUserCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearShareUserCount() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get shareCount => $_getIZ(2);
  @$pb.TagNumber(3)
  set shareCount($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasShareCount() => $_has(2);
  @$pb.TagNumber(3)
  void clearShareCount() => $_clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get recordTid => $_getI64(3);
  @$pb.TagNumber(4)
  set recordTid($fixnum.Int64 value) => $_setInt64(3, value);
  @$pb.TagNumber(4)
  $core.bool hasRecordTid() => $_has(3);
  @$pb.TagNumber(4)
  void clearRecordTid() => $_clearField(4);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
