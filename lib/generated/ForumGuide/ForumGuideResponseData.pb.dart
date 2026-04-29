// This is a generated file - do not edit.
//
// Generated from ForumGuide/ForumGuideResponseData.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../ForumCreateInfo.pb.dart' as $2;
import '../ThreadInfo.pb.dart' as $3;
import 'HotSearch.pb.dart' as $0;
import 'LikeForum.pb.dart' as $1;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class ForumGuideResponseData extends $pb.GeneratedMessage {
  factory ForumGuideResponseData({
    $core.Iterable<$0.HotSearch>? hotSearch,
    $core.Iterable<$1.LikeForum>? likeForum,
    $2.ForumCreateInfo? forumCreateInfo,
    $core.int? isLogin,
    $core.int? msignValid,
    $core.String? msignText,
    $core.int? msignLevel,
    $core.Iterable<$3.ThreadInfo>? voiceRoomList,
  }) {
    final result = create();
    if (hotSearch != null) result.hotSearch.addAll(hotSearch);
    if (likeForum != null) result.likeForum.addAll(likeForum);
    if (forumCreateInfo != null) result.forumCreateInfo = forumCreateInfo;
    if (isLogin != null) result.isLogin = isLogin;
    if (msignValid != null) result.msignValid = msignValid;
    if (msignText != null) result.msignText = msignText;
    if (msignLevel != null) result.msignLevel = msignLevel;
    if (voiceRoomList != null) result.voiceRoomList.addAll(voiceRoomList);
    return result;
  }

  ForumGuideResponseData._();

  factory ForumGuideResponseData.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ForumGuideResponseData.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ForumGuideResponseData',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'tieba.forumGuide'),
      createEmptyInstance: create)
    ..pPM<$0.HotSearch>(1, _omitFieldNames ? '' : 'hotSearch',
        subBuilder: $0.HotSearch.create)
    ..pPM<$1.LikeForum>(2, _omitFieldNames ? '' : 'likeForum',
        subBuilder: $1.LikeForum.create)
    ..aOM<$2.ForumCreateInfo>(3, _omitFieldNames ? '' : 'forumCreateInfo',
        subBuilder: $2.ForumCreateInfo.create)
    ..aI(4, _omitFieldNames ? '' : 'isLogin', fieldType: $pb.PbFieldType.OU3)
    ..aI(5, _omitFieldNames ? '' : 'msignValid', fieldType: $pb.PbFieldType.OU3)
    ..aOS(6, _omitFieldNames ? '' : 'msignText')
    ..aI(7, _omitFieldNames ? '' : 'msignLevel', fieldType: $pb.PbFieldType.OU3)
    ..pPM<$3.ThreadInfo>(8, _omitFieldNames ? '' : 'voiceRoomList',
        subBuilder: $3.ThreadInfo.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ForumGuideResponseData clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ForumGuideResponseData copyWith(
          void Function(ForumGuideResponseData) updates) =>
      super.copyWith((message) => updates(message as ForumGuideResponseData))
          as ForumGuideResponseData;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ForumGuideResponseData create() => ForumGuideResponseData._();
  @$core.override
  ForumGuideResponseData createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ForumGuideResponseData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ForumGuideResponseData>(create);
  static ForumGuideResponseData? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$0.HotSearch> get hotSearch => $_getList(0);

  @$pb.TagNumber(2)
  $pb.PbList<$1.LikeForum> get likeForum => $_getList(1);

  @$pb.TagNumber(3)
  $2.ForumCreateInfo get forumCreateInfo => $_getN(2);
  @$pb.TagNumber(3)
  set forumCreateInfo($2.ForumCreateInfo value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasForumCreateInfo() => $_has(2);
  @$pb.TagNumber(3)
  void clearForumCreateInfo() => $_clearField(3);
  @$pb.TagNumber(3)
  $2.ForumCreateInfo ensureForumCreateInfo() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.int get isLogin => $_getIZ(3);
  @$pb.TagNumber(4)
  set isLogin($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasIsLogin() => $_has(3);
  @$pb.TagNumber(4)
  void clearIsLogin() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get msignValid => $_getIZ(4);
  @$pb.TagNumber(5)
  set msignValid($core.int value) => $_setUnsignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasMsignValid() => $_has(4);
  @$pb.TagNumber(5)
  void clearMsignValid() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get msignText => $_getSZ(5);
  @$pb.TagNumber(6)
  set msignText($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasMsignText() => $_has(5);
  @$pb.TagNumber(6)
  void clearMsignText() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.int get msignLevel => $_getIZ(6);
  @$pb.TagNumber(7)
  set msignLevel($core.int value) => $_setUnsignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasMsignLevel() => $_has(6);
  @$pb.TagNumber(7)
  void clearMsignLevel() => $_clearField(7);

  @$pb.TagNumber(8)
  $pb.PbList<$3.ThreadInfo> get voiceRoomList => $_getList(7);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
