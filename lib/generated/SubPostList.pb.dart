// This is a generated file - do not edit.
//
// Generated from SubPostList.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'Agree.pb.dart' as $2;
import 'FeedKV.pb.dart' as $4;
import 'Lbs.pb.dart' as $3;
import 'PbContent.pb.dart' as $0;
import 'User.pb.dart' as $1;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class SubPostList extends $pb.GeneratedMessage {
  factory SubPostList({
    $fixnum.Int64? id,
    $core.Iterable<$0.PbContent>? content,
    $core.int? time,
    $fixnum.Int64? authorId,
    $core.String? title,
    $core.int? floor,
    $1.User? author,
    $core.int? isGiftpost,
    $2.Agree? agree,
    $3.Lbs? location,
    $core.int? isFakeTop,
    $core.int? isAuthorView,
    $core.String? footer,
    $core.Iterable<$4.FeedKV>? logParam,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (content != null) result.content.addAll(content);
    if (time != null) result.time = time;
    if (authorId != null) result.authorId = authorId;
    if (title != null) result.title = title;
    if (floor != null) result.floor = floor;
    if (author != null) result.author = author;
    if (isGiftpost != null) result.isGiftpost = isGiftpost;
    if (agree != null) result.agree = agree;
    if (location != null) result.location = location;
    if (isFakeTop != null) result.isFakeTop = isFakeTop;
    if (isAuthorView != null) result.isAuthorView = isAuthorView;
    if (footer != null) result.footer = footer;
    if (logParam != null) result.logParam.addAll(logParam);
    return result;
  }

  SubPostList._();

  factory SubPostList.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SubPostList.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SubPostList',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..pPM<$0.PbContent>(2, _omitFieldNames ? '' : 'content',
        subBuilder: $0.PbContent.create)
    ..aI(3, _omitFieldNames ? '' : 'time', fieldType: $pb.PbFieldType.OU3)
    ..aInt64(4, _omitFieldNames ? '' : 'authorId')
    ..aOS(5, _omitFieldNames ? '' : 'title')
    ..aI(6, _omitFieldNames ? '' : 'floor', fieldType: $pb.PbFieldType.OU3)
    ..aOM<$1.User>(7, _omitFieldNames ? '' : 'author',
        subBuilder: $1.User.create)
    ..aI(8, _omitFieldNames ? '' : 'isGiftpost')
    ..aOM<$2.Agree>(9, _omitFieldNames ? '' : 'agree',
        subBuilder: $2.Agree.create)
    ..aOM<$3.Lbs>(10, _omitFieldNames ? '' : 'location',
        subBuilder: $3.Lbs.create)
    ..aI(11, _omitFieldNames ? '' : 'isFakeTop')
    ..aI(12, _omitFieldNames ? '' : 'isAuthorView')
    ..aOS(13, _omitFieldNames ? '' : 'footer')
    ..pPM<$4.FeedKV>(14, _omitFieldNames ? '' : 'logParam',
        subBuilder: $4.FeedKV.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SubPostList clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SubPostList copyWith(void Function(SubPostList) updates) =>
      super.copyWith((message) => updates(message as SubPostList))
          as SubPostList;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SubPostList create() => SubPostList._();
  @$core.override
  SubPostList createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SubPostList getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SubPostList>(create);
  static SubPostList? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<$0.PbContent> get content => $_getList(1);

  @$pb.TagNumber(3)
  $core.int get time => $_getIZ(2);
  @$pb.TagNumber(3)
  set time($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearTime() => $_clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get authorId => $_getI64(3);
  @$pb.TagNumber(4)
  set authorId($fixnum.Int64 value) => $_setInt64(3, value);
  @$pb.TagNumber(4)
  $core.bool hasAuthorId() => $_has(3);
  @$pb.TagNumber(4)
  void clearAuthorId() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get title => $_getSZ(4);
  @$pb.TagNumber(5)
  set title($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasTitle() => $_has(4);
  @$pb.TagNumber(5)
  void clearTitle() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get floor => $_getIZ(5);
  @$pb.TagNumber(6)
  set floor($core.int value) => $_setUnsignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasFloor() => $_has(5);
  @$pb.TagNumber(6)
  void clearFloor() => $_clearField(6);

  @$pb.TagNumber(7)
  $1.User get author => $_getN(6);
  @$pb.TagNumber(7)
  set author($1.User value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasAuthor() => $_has(6);
  @$pb.TagNumber(7)
  void clearAuthor() => $_clearField(7);
  @$pb.TagNumber(7)
  $1.User ensureAuthor() => $_ensure(6);

  @$pb.TagNumber(8)
  $core.int get isGiftpost => $_getIZ(7);
  @$pb.TagNumber(8)
  set isGiftpost($core.int value) => $_setSignedInt32(7, value);
  @$pb.TagNumber(8)
  $core.bool hasIsGiftpost() => $_has(7);
  @$pb.TagNumber(8)
  void clearIsGiftpost() => $_clearField(8);

  @$pb.TagNumber(9)
  $2.Agree get agree => $_getN(8);
  @$pb.TagNumber(9)
  set agree($2.Agree value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasAgree() => $_has(8);
  @$pb.TagNumber(9)
  void clearAgree() => $_clearField(9);
  @$pb.TagNumber(9)
  $2.Agree ensureAgree() => $_ensure(8);

  @$pb.TagNumber(10)
  $3.Lbs get location => $_getN(9);
  @$pb.TagNumber(10)
  set location($3.Lbs value) => $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasLocation() => $_has(9);
  @$pb.TagNumber(10)
  void clearLocation() => $_clearField(10);
  @$pb.TagNumber(10)
  $3.Lbs ensureLocation() => $_ensure(9);

  @$pb.TagNumber(11)
  $core.int get isFakeTop => $_getIZ(10);
  @$pb.TagNumber(11)
  set isFakeTop($core.int value) => $_setSignedInt32(10, value);
  @$pb.TagNumber(11)
  $core.bool hasIsFakeTop() => $_has(10);
  @$pb.TagNumber(11)
  void clearIsFakeTop() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.int get isAuthorView => $_getIZ(11);
  @$pb.TagNumber(12)
  set isAuthorView($core.int value) => $_setSignedInt32(11, value);
  @$pb.TagNumber(12)
  $core.bool hasIsAuthorView() => $_has(11);
  @$pb.TagNumber(12)
  void clearIsAuthorView() => $_clearField(12);

  @$pb.TagNumber(13)
  $core.String get footer => $_getSZ(12);
  @$pb.TagNumber(13)
  set footer($core.String value) => $_setString(12, value);
  @$pb.TagNumber(13)
  $core.bool hasFooter() => $_has(12);
  @$pb.TagNumber(13)
  void clearFooter() => $_clearField(13);

  @$pb.TagNumber(14)
  $pb.PbList<$4.FeedKV> get logParam => $_getList(13);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
