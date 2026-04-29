// This is a generated file - do not edit.
//
// Generated from Profile/TAInfo.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'CommonDistance.pb.dart' as $0;
import 'CommonLocation.pb.dart' as $2;
import 'ReplyList.pb.dart' as $1;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class TAInfo extends $pb.GeneratedMessage {
  factory TAInfo({
    $core.Iterable<$core.String>? foruminfo,
    $core.Iterable<$core.String>? groupinfo,
    $core.Iterable<$core.String>? friendinfo,
    $0.CommonDistance? distanceinfo,
    $core.int? groupnum,
    $core.int? friendnum,
    $core.int? isFriend,
    $core.Iterable<$1.ReplyList>? replyList,
    $core.int? userClientVersionIsLower,
    $2.CommonLocation? location,
    $core.String? hideUserFeed,
  }) {
    final result = create();
    if (foruminfo != null) result.foruminfo.addAll(foruminfo);
    if (groupinfo != null) result.groupinfo.addAll(groupinfo);
    if (friendinfo != null) result.friendinfo.addAll(friendinfo);
    if (distanceinfo != null) result.distanceinfo = distanceinfo;
    if (groupnum != null) result.groupnum = groupnum;
    if (friendnum != null) result.friendnum = friendnum;
    if (isFriend != null) result.isFriend = isFriend;
    if (replyList != null) result.replyList.addAll(replyList);
    if (userClientVersionIsLower != null)
      result.userClientVersionIsLower = userClientVersionIsLower;
    if (location != null) result.location = location;
    if (hideUserFeed != null) result.hideUserFeed = hideUserFeed;
    return result;
  }

  TAInfo._();

  factory TAInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TAInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TAInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba.profile'),
      createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'foruminfo')
    ..pPS(2, _omitFieldNames ? '' : 'groupinfo')
    ..pPS(3, _omitFieldNames ? '' : 'friendinfo')
    ..aOM<$0.CommonDistance>(4, _omitFieldNames ? '' : 'distanceinfo',
        subBuilder: $0.CommonDistance.create)
    ..aI(5, _omitFieldNames ? '' : 'groupnum', fieldType: $pb.PbFieldType.OU3)
    ..aI(6, _omitFieldNames ? '' : 'friendnum', fieldType: $pb.PbFieldType.OU3)
    ..aI(7, _omitFieldNames ? '' : 'isFriend', fieldType: $pb.PbFieldType.OU3)
    ..pPM<$1.ReplyList>(8, _omitFieldNames ? '' : 'replyList',
        subBuilder: $1.ReplyList.create)
    ..aI(9, _omitFieldNames ? '' : 'userClientVersionIsLower',
        protoName: 'userClientVersionIsLower', fieldType: $pb.PbFieldType.OU3)
    ..aOM<$2.CommonLocation>(10, _omitFieldNames ? '' : 'location',
        subBuilder: $2.CommonLocation.create)
    ..aOS(11, _omitFieldNames ? '' : 'hideUserFeed')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TAInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TAInfo copyWith(void Function(TAInfo) updates) =>
      super.copyWith((message) => updates(message as TAInfo)) as TAInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TAInfo create() => TAInfo._();
  @$core.override
  TAInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TAInfo getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TAInfo>(create);
  static TAInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.String> get foruminfo => $_getList(0);

  @$pb.TagNumber(2)
  $pb.PbList<$core.String> get groupinfo => $_getList(1);

  @$pb.TagNumber(3)
  $pb.PbList<$core.String> get friendinfo => $_getList(2);

  @$pb.TagNumber(4)
  $0.CommonDistance get distanceinfo => $_getN(3);
  @$pb.TagNumber(4)
  set distanceinfo($0.CommonDistance value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasDistanceinfo() => $_has(3);
  @$pb.TagNumber(4)
  void clearDistanceinfo() => $_clearField(4);
  @$pb.TagNumber(4)
  $0.CommonDistance ensureDistanceinfo() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.int get groupnum => $_getIZ(4);
  @$pb.TagNumber(5)
  set groupnum($core.int value) => $_setUnsignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasGroupnum() => $_has(4);
  @$pb.TagNumber(5)
  void clearGroupnum() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get friendnum => $_getIZ(5);
  @$pb.TagNumber(6)
  set friendnum($core.int value) => $_setUnsignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasFriendnum() => $_has(5);
  @$pb.TagNumber(6)
  void clearFriendnum() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.int get isFriend => $_getIZ(6);
  @$pb.TagNumber(7)
  set isFriend($core.int value) => $_setUnsignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasIsFriend() => $_has(6);
  @$pb.TagNumber(7)
  void clearIsFriend() => $_clearField(7);

  @$pb.TagNumber(8)
  $pb.PbList<$1.ReplyList> get replyList => $_getList(7);

  @$pb.TagNumber(9)
  $core.int get userClientVersionIsLower => $_getIZ(8);
  @$pb.TagNumber(9)
  set userClientVersionIsLower($core.int value) => $_setUnsignedInt32(8, value);
  @$pb.TagNumber(9)
  $core.bool hasUserClientVersionIsLower() => $_has(8);
  @$pb.TagNumber(9)
  void clearUserClientVersionIsLower() => $_clearField(9);

  @$pb.TagNumber(10)
  $2.CommonLocation get location => $_getN(9);
  @$pb.TagNumber(10)
  set location($2.CommonLocation value) => $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasLocation() => $_has(9);
  @$pb.TagNumber(10)
  void clearLocation() => $_clearField(10);
  @$pb.TagNumber(10)
  $2.CommonLocation ensureLocation() => $_ensure(9);

  @$pb.TagNumber(11)
  $core.String get hideUserFeed => $_getSZ(10);
  @$pb.TagNumber(11)
  set hideUserFeed($core.String value) => $_setString(10, value);
  @$pb.TagNumber(11)
  $core.bool hasHideUserFeed() => $_has(10);
  @$pb.TagNumber(11)
  void clearHideUserFeed() => $_clearField(11);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
