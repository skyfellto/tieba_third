// This is a generated file - do not edit.
//
// Generated from PbPage/AddPost.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class AddPost extends $pb.GeneratedMessage {
  factory AddPost({
    $core.int? createTime,
    $core.String? postId,
    $core.int? alreadyCount,
    $core.int? totalCount,
    $core.String? lastAdditionContent,
    $core.int? lastAdditionTime,
    $core.String? warnMsg,
  }) {
    final result = create();
    if (createTime != null) result.createTime = createTime;
    if (postId != null) result.postId = postId;
    if (alreadyCount != null) result.alreadyCount = alreadyCount;
    if (totalCount != null) result.totalCount = totalCount;
    if (lastAdditionContent != null)
      result.lastAdditionContent = lastAdditionContent;
    if (lastAdditionTime != null) result.lastAdditionTime = lastAdditionTime;
    if (warnMsg != null) result.warnMsg = warnMsg;
    return result;
  }

  AddPost._();

  factory AddPost.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AddPost.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AddPost',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba.pbPage'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'createTime')
    ..aOS(2, _omitFieldNames ? '' : 'postId')
    ..aI(3, _omitFieldNames ? '' : 'alreadyCount')
    ..aI(4, _omitFieldNames ? '' : 'totalCount')
    ..aOS(5, _omitFieldNames ? '' : 'lastAdditionContent')
    ..aI(6, _omitFieldNames ? '' : 'lastAdditionTime')
    ..aOS(7, _omitFieldNames ? '' : 'warnMsg')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AddPost clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AddPost copyWith(void Function(AddPost) updates) =>
      super.copyWith((message) => updates(message as AddPost)) as AddPost;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AddPost create() => AddPost._();
  @$core.override
  AddPost createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AddPost getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddPost>(create);
  static AddPost? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get createTime => $_getIZ(0);
  @$pb.TagNumber(1)
  set createTime($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCreateTime() => $_has(0);
  @$pb.TagNumber(1)
  void clearCreateTime() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get postId => $_getSZ(1);
  @$pb.TagNumber(2)
  set postId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPostId() => $_has(1);
  @$pb.TagNumber(2)
  void clearPostId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get alreadyCount => $_getIZ(2);
  @$pb.TagNumber(3)
  set alreadyCount($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasAlreadyCount() => $_has(2);
  @$pb.TagNumber(3)
  void clearAlreadyCount() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get totalCount => $_getIZ(3);
  @$pb.TagNumber(4)
  set totalCount($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasTotalCount() => $_has(3);
  @$pb.TagNumber(4)
  void clearTotalCount() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get lastAdditionContent => $_getSZ(4);
  @$pb.TagNumber(5)
  set lastAdditionContent($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasLastAdditionContent() => $_has(4);
  @$pb.TagNumber(5)
  void clearLastAdditionContent() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get lastAdditionTime => $_getIZ(5);
  @$pb.TagNumber(6)
  set lastAdditionTime($core.int value) => $_setSignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasLastAdditionTime() => $_has(5);
  @$pb.TagNumber(6)
  void clearLastAdditionTime() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get warnMsg => $_getSZ(6);
  @$pb.TagNumber(7)
  set warnMsg($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasWarnMsg() => $_has(6);
  @$pb.TagNumber(7)
  void clearWarnMsg() => $_clearField(7);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
