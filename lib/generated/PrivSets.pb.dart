// This is a generated file - do not edit.
//
// Generated from PrivSets.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class PrivSets extends $pb.GeneratedMessage {
  factory PrivSets({
    $core.int? location,
    $core.int? like,
    $core.int? group,
    $core.int? post,
    $core.int? friend,
    $core.int? live,
    $core.int? reply,
    $core.int? bazhuShowInside,
    $core.int? bazhuShowOutside,
    $core.int? follow,
  }) {
    final result = create();
    if (location != null) result.location = location;
    if (like != null) result.like = like;
    if (group != null) result.group = group;
    if (post != null) result.post = post;
    if (friend != null) result.friend = friend;
    if (live != null) result.live = live;
    if (reply != null) result.reply = reply;
    if (bazhuShowInside != null) result.bazhuShowInside = bazhuShowInside;
    if (bazhuShowOutside != null) result.bazhuShowOutside = bazhuShowOutside;
    if (follow != null) result.follow = follow;
    return result;
  }

  PrivSets._();

  factory PrivSets.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PrivSets.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PrivSets',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'location')
    ..aI(2, _omitFieldNames ? '' : 'like')
    ..aI(3, _omitFieldNames ? '' : 'group')
    ..aI(4, _omitFieldNames ? '' : 'post')
    ..aI(5, _omitFieldNames ? '' : 'friend')
    ..aI(6, _omitFieldNames ? '' : 'live')
    ..aI(7, _omitFieldNames ? '' : 'reply')
    ..aI(8, _omitFieldNames ? '' : 'bazhuShowInside')
    ..aI(9, _omitFieldNames ? '' : 'bazhuShowOutside')
    ..aI(10, _omitFieldNames ? '' : 'follow')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PrivSets clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PrivSets copyWith(void Function(PrivSets) updates) =>
      super.copyWith((message) => updates(message as PrivSets)) as PrivSets;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PrivSets create() => PrivSets._();
  @$core.override
  PrivSets createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PrivSets getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PrivSets>(create);
  static PrivSets? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get location => $_getIZ(0);
  @$pb.TagNumber(1)
  set location($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasLocation() => $_has(0);
  @$pb.TagNumber(1)
  void clearLocation() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get like => $_getIZ(1);
  @$pb.TagNumber(2)
  set like($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasLike() => $_has(1);
  @$pb.TagNumber(2)
  void clearLike() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get group => $_getIZ(2);
  @$pb.TagNumber(3)
  set group($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasGroup() => $_has(2);
  @$pb.TagNumber(3)
  void clearGroup() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get post => $_getIZ(3);
  @$pb.TagNumber(4)
  set post($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasPost() => $_has(3);
  @$pb.TagNumber(4)
  void clearPost() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get friend => $_getIZ(4);
  @$pb.TagNumber(5)
  set friend($core.int value) => $_setSignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasFriend() => $_has(4);
  @$pb.TagNumber(5)
  void clearFriend() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get live => $_getIZ(5);
  @$pb.TagNumber(6)
  set live($core.int value) => $_setSignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasLive() => $_has(5);
  @$pb.TagNumber(6)
  void clearLive() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.int get reply => $_getIZ(6);
  @$pb.TagNumber(7)
  set reply($core.int value) => $_setSignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasReply() => $_has(6);
  @$pb.TagNumber(7)
  void clearReply() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.int get bazhuShowInside => $_getIZ(7);
  @$pb.TagNumber(8)
  set bazhuShowInside($core.int value) => $_setSignedInt32(7, value);
  @$pb.TagNumber(8)
  $core.bool hasBazhuShowInside() => $_has(7);
  @$pb.TagNumber(8)
  void clearBazhuShowInside() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.int get bazhuShowOutside => $_getIZ(8);
  @$pb.TagNumber(9)
  set bazhuShowOutside($core.int value) => $_setSignedInt32(8, value);
  @$pb.TagNumber(9)
  $core.bool hasBazhuShowOutside() => $_has(8);
  @$pb.TagNumber(9)
  void clearBazhuShowOutside() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.int get follow => $_getIZ(9);
  @$pb.TagNumber(10)
  set follow($core.int value) => $_setSignedInt32(9, value);
  @$pb.TagNumber(10)
  $core.bool hasFollow() => $_has(9);
  @$pb.TagNumber(10)
  void clearFollow() => $_clearField(10);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
