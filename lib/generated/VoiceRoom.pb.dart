// This is a generated file - do not edit.
//
// Generated from VoiceRoom.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'User.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class VoiceRoom extends $pb.GeneratedMessage {
  factory VoiceRoom({
    $fixnum.Int64? roomId,
    $0.User? author,
    $core.Iterable<$0.User>? talker,
    $fixnum.Int64? joinedNum,
    $fixnum.Int64? talkerNum,
    $core.int? status,
    $core.String? roomName,
  }) {
    final result = create();
    if (roomId != null) result.roomId = roomId;
    if (author != null) result.author = author;
    if (talker != null) result.talker.addAll(talker);
    if (joinedNum != null) result.joinedNum = joinedNum;
    if (talkerNum != null) result.talkerNum = talkerNum;
    if (status != null) result.status = status;
    if (roomName != null) result.roomName = roomName;
    return result;
  }

  VoiceRoom._();

  factory VoiceRoom.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory VoiceRoom.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'VoiceRoom',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aInt64(2, _omitFieldNames ? '' : 'roomId')
    ..aOM<$0.User>(4, _omitFieldNames ? '' : 'author',
        subBuilder: $0.User.create)
    ..pPM<$0.User>(5, _omitFieldNames ? '' : 'talker',
        subBuilder: $0.User.create)
    ..aInt64(6, _omitFieldNames ? '' : 'joinedNum')
    ..aInt64(7, _omitFieldNames ? '' : 'talkerNum')
    ..aI(8, _omitFieldNames ? '' : 'status', fieldType: $pb.PbFieldType.OU3)
    ..aOS(9, _omitFieldNames ? '' : 'roomName')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VoiceRoom clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VoiceRoom copyWith(void Function(VoiceRoom) updates) =>
      super.copyWith((message) => updates(message as VoiceRoom)) as VoiceRoom;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VoiceRoom create() => VoiceRoom._();
  @$core.override
  VoiceRoom createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static VoiceRoom getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VoiceRoom>(create);
  static VoiceRoom? _defaultInstance;

  @$pb.TagNumber(2)
  $fixnum.Int64 get roomId => $_getI64(0);
  @$pb.TagNumber(2)
  set roomId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(2)
  $core.bool hasRoomId() => $_has(0);
  @$pb.TagNumber(2)
  void clearRoomId() => $_clearField(2);

  @$pb.TagNumber(4)
  $0.User get author => $_getN(1);
  @$pb.TagNumber(4)
  set author($0.User value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasAuthor() => $_has(1);
  @$pb.TagNumber(4)
  void clearAuthor() => $_clearField(4);
  @$pb.TagNumber(4)
  $0.User ensureAuthor() => $_ensure(1);

  @$pb.TagNumber(5)
  $pb.PbList<$0.User> get talker => $_getList(2);

  @$pb.TagNumber(6)
  $fixnum.Int64 get joinedNum => $_getI64(3);
  @$pb.TagNumber(6)
  set joinedNum($fixnum.Int64 value) => $_setInt64(3, value);
  @$pb.TagNumber(6)
  $core.bool hasJoinedNum() => $_has(3);
  @$pb.TagNumber(6)
  void clearJoinedNum() => $_clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get talkerNum => $_getI64(4);
  @$pb.TagNumber(7)
  set talkerNum($fixnum.Int64 value) => $_setInt64(4, value);
  @$pb.TagNumber(7)
  $core.bool hasTalkerNum() => $_has(4);
  @$pb.TagNumber(7)
  void clearTalkerNum() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.int get status => $_getIZ(5);
  @$pb.TagNumber(8)
  set status($core.int value) => $_setUnsignedInt32(5, value);
  @$pb.TagNumber(8)
  $core.bool hasStatus() => $_has(5);
  @$pb.TagNumber(8)
  void clearStatus() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.String get roomName => $_getSZ(6);
  @$pb.TagNumber(9)
  set roomName($core.String value) => $_setString(6, value);
  @$pb.TagNumber(9)
  $core.bool hasRoomName() => $_has(6);
  @$pb.TagNumber(9)
  void clearRoomName() => $_clearField(9);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
