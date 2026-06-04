// This is a generated file - do not edit.
//
// Generated from PbFloor/PbFloorResponseData.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../Anti.pb.dart' as $1;
import '../FeedKV.pb.dart' as $6;
import '../Page.pb.dart' as $0;
import '../Post.pb.dart' as $2;
import '../SimpleForum.pb.dart' as $5;
import '../SubPostList.pb.dart' as $3;
import '../ThreadInfo.pb.dart' as $4;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class PbFloorResponseData extends $pb.GeneratedMessage {
  factory PbFloorResponseData({
    $0.Page? page,
    $1.Anti? anti,
    $2.Post? post,
    $core.Iterable<$3.SubPostList>? subpostList,
    $4.ThreadInfo? thread,
    $5.SimpleForum? forum,
    $core.int? serverTime,
    $5.SimpleForum? displayForum,
    $core.int? isBlackWhite,
    $core.Iterable<$6.FeedKV>? logParam,
  }) {
    final result = create();
    if (page != null) result.page = page;
    if (anti != null) result.anti = anti;
    if (post != null) result.post = post;
    if (subpostList != null) result.subpostList.addAll(subpostList);
    if (thread != null) result.thread = thread;
    if (forum != null) result.forum = forum;
    if (serverTime != null) result.serverTime = serverTime;
    if (displayForum != null) result.displayForum = displayForum;
    if (isBlackWhite != null) result.isBlackWhite = isBlackWhite;
    if (logParam != null) result.logParam.addAll(logParam);
    return result;
  }

  PbFloorResponseData._();

  factory PbFloorResponseData.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PbFloorResponseData.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PbFloorResponseData',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba.pbFloor'),
      createEmptyInstance: create)
    ..aOM<$0.Page>(1, _omitFieldNames ? '' : 'page', subBuilder: $0.Page.create)
    ..aOM<$1.Anti>(2, _omitFieldNames ? '' : 'anti', subBuilder: $1.Anti.create)
    ..aOM<$2.Post>(3, _omitFieldNames ? '' : 'post', subBuilder: $2.Post.create)
    ..pPM<$3.SubPostList>(4, _omitFieldNames ? '' : 'subpostList',
        subBuilder: $3.SubPostList.create)
    ..aOM<$4.ThreadInfo>(5, _omitFieldNames ? '' : 'thread',
        subBuilder: $4.ThreadInfo.create)
    ..aOM<$5.SimpleForum>(6, _omitFieldNames ? '' : 'forum',
        subBuilder: $5.SimpleForum.create)
    ..aI(7, _omitFieldNames ? '' : 'serverTime')
    ..aOM<$5.SimpleForum>(8, _omitFieldNames ? '' : 'displayForum',
        subBuilder: $5.SimpleForum.create)
    ..aI(9, _omitFieldNames ? '' : 'isBlackWhite')
    ..pPM<$6.FeedKV>(10, _omitFieldNames ? '' : 'logParam',
        subBuilder: $6.FeedKV.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PbFloorResponseData clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PbFloorResponseData copyWith(void Function(PbFloorResponseData) updates) =>
      super.copyWith((message) => updates(message as PbFloorResponseData))
          as PbFloorResponseData;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PbFloorResponseData create() => PbFloorResponseData._();
  @$core.override
  PbFloorResponseData createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PbFloorResponseData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PbFloorResponseData>(create);
  static PbFloorResponseData? _defaultInstance;

  @$pb.TagNumber(1)
  $0.Page get page => $_getN(0);
  @$pb.TagNumber(1)
  set page($0.Page value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasPage() => $_has(0);
  @$pb.TagNumber(1)
  void clearPage() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.Page ensurePage() => $_ensure(0);

  @$pb.TagNumber(2)
  $1.Anti get anti => $_getN(1);
  @$pb.TagNumber(2)
  set anti($1.Anti value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasAnti() => $_has(1);
  @$pb.TagNumber(2)
  void clearAnti() => $_clearField(2);
  @$pb.TagNumber(2)
  $1.Anti ensureAnti() => $_ensure(1);

  @$pb.TagNumber(3)
  $2.Post get post => $_getN(2);
  @$pb.TagNumber(3)
  set post($2.Post value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasPost() => $_has(2);
  @$pb.TagNumber(3)
  void clearPost() => $_clearField(3);
  @$pb.TagNumber(3)
  $2.Post ensurePost() => $_ensure(2);

  @$pb.TagNumber(4)
  $pb.PbList<$3.SubPostList> get subpostList => $_getList(3);

  @$pb.TagNumber(5)
  $4.ThreadInfo get thread => $_getN(4);
  @$pb.TagNumber(5)
  set thread($4.ThreadInfo value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasThread() => $_has(4);
  @$pb.TagNumber(5)
  void clearThread() => $_clearField(5);
  @$pb.TagNumber(5)
  $4.ThreadInfo ensureThread() => $_ensure(4);

  @$pb.TagNumber(6)
  $5.SimpleForum get forum => $_getN(5);
  @$pb.TagNumber(6)
  set forum($5.SimpleForum value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasForum() => $_has(5);
  @$pb.TagNumber(6)
  void clearForum() => $_clearField(6);
  @$pb.TagNumber(6)
  $5.SimpleForum ensureForum() => $_ensure(5);

  @$pb.TagNumber(7)
  $core.int get serverTime => $_getIZ(6);
  @$pb.TagNumber(7)
  set serverTime($core.int value) => $_setSignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasServerTime() => $_has(6);
  @$pb.TagNumber(7)
  void clearServerTime() => $_clearField(7);

  @$pb.TagNumber(8)
  $5.SimpleForum get displayForum => $_getN(7);
  @$pb.TagNumber(8)
  set displayForum($5.SimpleForum value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasDisplayForum() => $_has(7);
  @$pb.TagNumber(8)
  void clearDisplayForum() => $_clearField(8);
  @$pb.TagNumber(8)
  $5.SimpleForum ensureDisplayForum() => $_ensure(7);

  @$pb.TagNumber(9)
  $core.int get isBlackWhite => $_getIZ(8);
  @$pb.TagNumber(9)
  set isBlackWhite($core.int value) => $_setSignedInt32(8, value);
  @$pb.TagNumber(9)
  $core.bool hasIsBlackWhite() => $_has(8);
  @$pb.TagNumber(9)
  void clearIsBlackWhite() => $_clearField(9);

  @$pb.TagNumber(10)
  $pb.PbList<$6.FeedKV> get logParam => $_getList(9);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
