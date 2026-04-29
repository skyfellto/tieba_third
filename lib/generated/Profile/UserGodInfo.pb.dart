// This is a generated file - do not edit.
//
// Generated from Profile/UserGodInfo.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../ThreadInfo.pb.dart' as $2;
import 'ForumGodDetailInfo.pb.dart' as $1;
import 'GodDetailInfo.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class UserGodInfo extends $pb.GeneratedMessage {
  factory UserGodInfo({
    $core.int? godType,
    $0.GodDetailInfo? godInfo,
    $core.Iterable<$1.ForumGodDetailInfo>? forumGodList,
    $core.int? sex,
    $core.int? age,
    $core.String? address,
    $core.Iterable<$2.ThreadInfo>? threadList,
    $core.int? curPage,
    $core.String? totalThread,
  }) {
    final result = create();
    if (godType != null) result.godType = godType;
    if (godInfo != null) result.godInfo = godInfo;
    if (forumGodList != null) result.forumGodList.addAll(forumGodList);
    if (sex != null) result.sex = sex;
    if (age != null) result.age = age;
    if (address != null) result.address = address;
    if (threadList != null) result.threadList.addAll(threadList);
    if (curPage != null) result.curPage = curPage;
    if (totalThread != null) result.totalThread = totalThread;
    return result;
  }

  UserGodInfo._();

  factory UserGodInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UserGodInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UserGodInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba.profile'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'godType')
    ..aOM<$0.GodDetailInfo>(2, _omitFieldNames ? '' : 'godInfo',
        subBuilder: $0.GodDetailInfo.create)
    ..pPM<$1.ForumGodDetailInfo>(3, _omitFieldNames ? '' : 'forumGodList',
        subBuilder: $1.ForumGodDetailInfo.create)
    ..aI(4, _omitFieldNames ? '' : 'sex')
    ..aI(5, _omitFieldNames ? '' : 'age')
    ..aOS(6, _omitFieldNames ? '' : 'address')
    ..pPM<$2.ThreadInfo>(7, _omitFieldNames ? '' : 'threadList',
        subBuilder: $2.ThreadInfo.create)
    ..aI(8, _omitFieldNames ? '' : 'curPage')
    ..aOS(9, _omitFieldNames ? '' : 'totalThread')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UserGodInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UserGodInfo copyWith(void Function(UserGodInfo) updates) =>
      super.copyWith((message) => updates(message as UserGodInfo))
          as UserGodInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserGodInfo create() => UserGodInfo._();
  @$core.override
  UserGodInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UserGodInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UserGodInfo>(create);
  static UserGodInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get godType => $_getIZ(0);
  @$pb.TagNumber(1)
  set godType($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasGodType() => $_has(0);
  @$pb.TagNumber(1)
  void clearGodType() => $_clearField(1);

  @$pb.TagNumber(2)
  $0.GodDetailInfo get godInfo => $_getN(1);
  @$pb.TagNumber(2)
  set godInfo($0.GodDetailInfo value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasGodInfo() => $_has(1);
  @$pb.TagNumber(2)
  void clearGodInfo() => $_clearField(2);
  @$pb.TagNumber(2)
  $0.GodDetailInfo ensureGodInfo() => $_ensure(1);

  @$pb.TagNumber(3)
  $pb.PbList<$1.ForumGodDetailInfo> get forumGodList => $_getList(2);

  @$pb.TagNumber(4)
  $core.int get sex => $_getIZ(3);
  @$pb.TagNumber(4)
  set sex($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasSex() => $_has(3);
  @$pb.TagNumber(4)
  void clearSex() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get age => $_getIZ(4);
  @$pb.TagNumber(5)
  set age($core.int value) => $_setSignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasAge() => $_has(4);
  @$pb.TagNumber(5)
  void clearAge() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get address => $_getSZ(5);
  @$pb.TagNumber(6)
  set address($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasAddress() => $_has(5);
  @$pb.TagNumber(6)
  void clearAddress() => $_clearField(6);

  @$pb.TagNumber(7)
  $pb.PbList<$2.ThreadInfo> get threadList => $_getList(6);

  @$pb.TagNumber(8)
  $core.int get curPage => $_getIZ(7);
  @$pb.TagNumber(8)
  set curPage($core.int value) => $_setSignedInt32(7, value);
  @$pb.TagNumber(8)
  $core.bool hasCurPage() => $_has(7);
  @$pb.TagNumber(8)
  void clearCurPage() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.String get totalThread => $_getSZ(8);
  @$pb.TagNumber(9)
  set totalThread($core.String value) => $_setString(8, value);
  @$pb.TagNumber(9)
  $core.bool hasTotalThread() => $_has(8);
  @$pb.TagNumber(9)
  void clearTotalThread() => $_clearField(9);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
