// This is a generated file - do not edit.
//
// Generated from AgreeList.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'Post.pb.dart' as $2;
import 'ThreadInfo.pb.dart' as $0;
import 'User.pb.dart' as $1;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class AgreeList extends $pb.GeneratedMessage {
  factory AgreeList({
    $0.ThreadInfo? threadInfo,
    $core.int? time,
    $core.int? isDel,
    $core.int? type,
    $fixnum.Int64? id,
    $1.User? agreeer,
    $2.Post? postInfo,
    $core.String? virtualImageUrl,
    $core.int? snapshootPicId,
    $core.String? targetScheme,
  }) {
    final result = create();
    if (threadInfo != null) result.threadInfo = threadInfo;
    if (time != null) result.time = time;
    if (isDel != null) result.isDel = isDel;
    if (type != null) result.type = type;
    if (id != null) result.id = id;
    if (agreeer != null) result.agreeer = agreeer;
    if (postInfo != null) result.postInfo = postInfo;
    if (virtualImageUrl != null) result.virtualImageUrl = virtualImageUrl;
    if (snapshootPicId != null) result.snapshootPicId = snapshootPicId;
    if (targetScheme != null) result.targetScheme = targetScheme;
    return result;
  }

  AgreeList._();

  factory AgreeList.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AgreeList.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AgreeList',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aOM<$0.ThreadInfo>(1, _omitFieldNames ? '' : 'threadInfo',
        subBuilder: $0.ThreadInfo.create)
    ..aI(4, _omitFieldNames ? '' : 'time', fieldType: $pb.PbFieldType.OU3)
    ..aI(5, _omitFieldNames ? '' : 'isDel')
    ..aI(6, _omitFieldNames ? '' : 'type')
    ..a<$fixnum.Int64>(7, _omitFieldNames ? '' : 'id', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<$1.User>(8, _omitFieldNames ? '' : 'agreeer',
        subBuilder: $1.User.create)
    ..aOM<$2.Post>(9, _omitFieldNames ? '' : 'postInfo',
        subBuilder: $2.Post.create)
    ..aOS(10, _omitFieldNames ? '' : 'virtualImageUrl')
    ..aI(11, _omitFieldNames ? '' : 'snapshootPicId')
    ..aOS(12, _omitFieldNames ? '' : 'targetScheme')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AgreeList clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AgreeList copyWith(void Function(AgreeList) updates) =>
      super.copyWith((message) => updates(message as AgreeList)) as AgreeList;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AgreeList create() => AgreeList._();
  @$core.override
  AgreeList createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AgreeList getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AgreeList>(create);
  static AgreeList? _defaultInstance;

  @$pb.TagNumber(1)
  $0.ThreadInfo get threadInfo => $_getN(0);
  @$pb.TagNumber(1)
  set threadInfo($0.ThreadInfo value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasThreadInfo() => $_has(0);
  @$pb.TagNumber(1)
  void clearThreadInfo() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.ThreadInfo ensureThreadInfo() => $_ensure(0);

  @$pb.TagNumber(4)
  $core.int get time => $_getIZ(1);
  @$pb.TagNumber(4)
  set time($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(4)
  $core.bool hasTime() => $_has(1);
  @$pb.TagNumber(4)
  void clearTime() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get isDel => $_getIZ(2);
  @$pb.TagNumber(5)
  set isDel($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(5)
  $core.bool hasIsDel() => $_has(2);
  @$pb.TagNumber(5)
  void clearIsDel() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get type => $_getIZ(3);
  @$pb.TagNumber(6)
  set type($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(6)
  $core.bool hasType() => $_has(3);
  @$pb.TagNumber(6)
  void clearType() => $_clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get id => $_getI64(4);
  @$pb.TagNumber(7)
  set id($fixnum.Int64 value) => $_setInt64(4, value);
  @$pb.TagNumber(7)
  $core.bool hasId() => $_has(4);
  @$pb.TagNumber(7)
  void clearId() => $_clearField(7);

  @$pb.TagNumber(8)
  $1.User get agreeer => $_getN(5);
  @$pb.TagNumber(8)
  set agreeer($1.User value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasAgreeer() => $_has(5);
  @$pb.TagNumber(8)
  void clearAgreeer() => $_clearField(8);
  @$pb.TagNumber(8)
  $1.User ensureAgreeer() => $_ensure(5);

  @$pb.TagNumber(9)
  $2.Post get postInfo => $_getN(6);
  @$pb.TagNumber(9)
  set postInfo($2.Post value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasPostInfo() => $_has(6);
  @$pb.TagNumber(9)
  void clearPostInfo() => $_clearField(9);
  @$pb.TagNumber(9)
  $2.Post ensurePostInfo() => $_ensure(6);

  @$pb.TagNumber(10)
  $core.String get virtualImageUrl => $_getSZ(7);
  @$pb.TagNumber(10)
  set virtualImageUrl($core.String value) => $_setString(7, value);
  @$pb.TagNumber(10)
  $core.bool hasVirtualImageUrl() => $_has(7);
  @$pb.TagNumber(10)
  void clearVirtualImageUrl() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.int get snapshootPicId => $_getIZ(8);
  @$pb.TagNumber(11)
  set snapshootPicId($core.int value) => $_setSignedInt32(8, value);
  @$pb.TagNumber(11)
  $core.bool hasSnapshootPicId() => $_has(8);
  @$pb.TagNumber(11)
  void clearSnapshootPicId() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.String get targetScheme => $_getSZ(9);
  @$pb.TagNumber(12)
  set targetScheme($core.String value) => $_setString(9, value);
  @$pb.TagNumber(12)
  $core.bool hasTargetScheme() => $_has(9);
  @$pb.TagNumber(12)
  void clearTargetScheme() => $_clearField(12);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
