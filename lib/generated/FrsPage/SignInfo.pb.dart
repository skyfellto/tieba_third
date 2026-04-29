// This is a generated file - do not edit.
//
// Generated from FrsPage/SignInfo.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'SignForum.pb.dart' as $1;
import 'SignUser.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class SignInfo extends $pb.GeneratedMessage {
  factory SignInfo({
    $0.SignUser? userInfo,
    $1.SignForum? forumInfo,
  }) {
    final result = create();
    if (userInfo != null) result.userInfo = userInfo;
    if (forumInfo != null) result.forumInfo = forumInfo;
    return result;
  }

  SignInfo._();

  factory SignInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SignInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SignInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba.frsPage'),
      createEmptyInstance: create)
    ..aOM<$0.SignUser>(1, _omitFieldNames ? '' : 'userInfo',
        subBuilder: $0.SignUser.create)
    ..aOM<$1.SignForum>(2, _omitFieldNames ? '' : 'forumInfo',
        subBuilder: $1.SignForum.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SignInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SignInfo copyWith(void Function(SignInfo) updates) =>
      super.copyWith((message) => updates(message as SignInfo)) as SignInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SignInfo create() => SignInfo._();
  @$core.override
  SignInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SignInfo getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SignInfo>(create);
  static SignInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $0.SignUser get userInfo => $_getN(0);
  @$pb.TagNumber(1)
  set userInfo($0.SignUser value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasUserInfo() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserInfo() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.SignUser ensureUserInfo() => $_ensure(0);

  @$pb.TagNumber(2)
  $1.SignForum get forumInfo => $_getN(1);
  @$pb.TagNumber(2)
  set forumInfo($1.SignForum value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasForumInfo() => $_has(1);
  @$pb.TagNumber(2)
  void clearForumInfo() => $_clearField(2);
  @$pb.TagNumber(2)
  $1.SignForum ensureForumInfo() => $_ensure(1);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
