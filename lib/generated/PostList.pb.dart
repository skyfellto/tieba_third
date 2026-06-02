// This is a generated file - do not edit.
//
// Generated from PostList.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'Abstract.pb.dart' as $1;
import 'Agree.pb.dart' as $5;
import 'Media.pb.dart' as $2;
import 'MediaNum.pb.dart' as $3;
import 'User.pb.dart' as $0;
import 'Voice.pb.dart' as $4;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class PostList extends $pb.GeneratedMessage {
  factory PostList({
    $fixnum.Int64? id,
    $0.User? author,
    $core.Iterable<$1.Abstract>? abstract,
    $core.Iterable<$2.Media>? media,
    $core.Iterable<$3.MediaNum>? mediaNum,
    $core.Iterable<$4.Voice>? voiceInfo,
    $fixnum.Int64? authorId,
    $5.Agree? agree,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (author != null) result.author = author;
    if (abstract != null) result.abstract.addAll(abstract);
    if (media != null) result.media.addAll(media);
    if (mediaNum != null) result.mediaNum.addAll(mediaNum);
    if (voiceInfo != null) result.voiceInfo.addAll(voiceInfo);
    if (authorId != null) result.authorId = authorId;
    if (agree != null) result.agree = agree;
    return result;
  }

  PostList._();

  factory PostList.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PostList.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PostList',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aOM<$0.User>(2, _omitFieldNames ? '' : 'author',
        subBuilder: $0.User.create)
    ..pPM<$1.Abstract>(3, _omitFieldNames ? '' : 'Abstract',
        subBuilder: $1.Abstract.create)
    ..pPM<$2.Media>(4, _omitFieldNames ? '' : 'media',
        subBuilder: $2.Media.create)
    ..pPM<$3.MediaNum>(5, _omitFieldNames ? '' : 'mediaNum',
        subBuilder: $3.MediaNum.create)
    ..pPM<$4.Voice>(6, _omitFieldNames ? '' : 'voiceInfo',
        subBuilder: $4.Voice.create)
    ..aInt64(7, _omitFieldNames ? '' : 'authorId')
    ..aOM<$5.Agree>(8, _omitFieldNames ? '' : 'agree',
        subBuilder: $5.Agree.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PostList clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PostList copyWith(void Function(PostList) updates) =>
      super.copyWith((message) => updates(message as PostList)) as PostList;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PostList create() => PostList._();
  @$core.override
  PostList createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PostList getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PostList>(create);
  static PostList? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $0.User get author => $_getN(1);
  @$pb.TagNumber(2)
  set author($0.User value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasAuthor() => $_has(1);
  @$pb.TagNumber(2)
  void clearAuthor() => $_clearField(2);
  @$pb.TagNumber(2)
  $0.User ensureAuthor() => $_ensure(1);

  @$pb.TagNumber(3)
  $pb.PbList<$1.Abstract> get abstract => $_getList(2);

  @$pb.TagNumber(4)
  $pb.PbList<$2.Media> get media => $_getList(3);

  @$pb.TagNumber(5)
  $pb.PbList<$3.MediaNum> get mediaNum => $_getList(4);

  @$pb.TagNumber(6)
  $pb.PbList<$4.Voice> get voiceInfo => $_getList(5);

  @$pb.TagNumber(7)
  $fixnum.Int64 get authorId => $_getI64(6);
  @$pb.TagNumber(7)
  set authorId($fixnum.Int64 value) => $_setInt64(6, value);
  @$pb.TagNumber(7)
  $core.bool hasAuthorId() => $_has(6);
  @$pb.TagNumber(7)
  void clearAuthorId() => $_clearField(7);

  @$pb.TagNumber(8)
  $5.Agree get agree => $_getN(7);
  @$pb.TagNumber(8)
  set agree($5.Agree value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasAgree() => $_has(7);
  @$pb.TagNumber(8)
  void clearAgree() => $_clearField(8);
  @$pb.TagNumber(8)
  $5.Agree ensureAgree() => $_ensure(7);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
