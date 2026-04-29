// This is a generated file - do not edit.
//
// Generated from GetForumDetail/UniversityInfo.proto.

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

class UniversityInfo extends $pb.GeneratedMessage {
  factory UniversityInfo({
    $core.String? title,
    $core.String? picUrl,
    $core.String? toUrl,
    $core.int? type,
    $fixnum.Int64? agreeNum,
    $fixnum.Int64? browseNum,
    $fixnum.Int64? videoTime,
  }) {
    final result = create();
    if (title != null) result.title = title;
    if (picUrl != null) result.picUrl = picUrl;
    if (toUrl != null) result.toUrl = toUrl;
    if (type != null) result.type = type;
    if (agreeNum != null) result.agreeNum = agreeNum;
    if (browseNum != null) result.browseNum = browseNum;
    if (videoTime != null) result.videoTime = videoTime;
    return result;
  }

  UniversityInfo._();

  factory UniversityInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UniversityInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UniversityInfo',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'tieba.getForumDetail'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'title')
    ..aOS(2, _omitFieldNames ? '' : 'picUrl')
    ..aOS(3, _omitFieldNames ? '' : 'toUrl')
    ..aI(4, _omitFieldNames ? '' : 'type')
    ..aInt64(5, _omitFieldNames ? '' : 'agreeNum')
    ..aInt64(6, _omitFieldNames ? '' : 'browseNum')
    ..aInt64(7, _omitFieldNames ? '' : 'videoTime')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UniversityInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UniversityInfo copyWith(void Function(UniversityInfo) updates) =>
      super.copyWith((message) => updates(message as UniversityInfo))
          as UniversityInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UniversityInfo create() => UniversityInfo._();
  @$core.override
  UniversityInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UniversityInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UniversityInfo>(create);
  static UniversityInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get picUrl => $_getSZ(1);
  @$pb.TagNumber(2)
  set picUrl($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPicUrl() => $_has(1);
  @$pb.TagNumber(2)
  void clearPicUrl() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get toUrl => $_getSZ(2);
  @$pb.TagNumber(3)
  set toUrl($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasToUrl() => $_has(2);
  @$pb.TagNumber(3)
  void clearToUrl() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get type => $_getIZ(3);
  @$pb.TagNumber(4)
  set type($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasType() => $_has(3);
  @$pb.TagNumber(4)
  void clearType() => $_clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get agreeNum => $_getI64(4);
  @$pb.TagNumber(5)
  set agreeNum($fixnum.Int64 value) => $_setInt64(4, value);
  @$pb.TagNumber(5)
  $core.bool hasAgreeNum() => $_has(4);
  @$pb.TagNumber(5)
  void clearAgreeNum() => $_clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get browseNum => $_getI64(5);
  @$pb.TagNumber(6)
  set browseNum($fixnum.Int64 value) => $_setInt64(5, value);
  @$pb.TagNumber(6)
  $core.bool hasBrowseNum() => $_has(5);
  @$pb.TagNumber(6)
  void clearBrowseNum() => $_clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get videoTime => $_getI64(6);
  @$pb.TagNumber(7)
  set videoTime($fixnum.Int64 value) => $_setInt64(6, value);
  @$pb.TagNumber(7)
  $core.bool hasVideoTime() => $_has(6);
  @$pb.TagNumber(7)
  void clearVideoTime() => $_clearField(7);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
