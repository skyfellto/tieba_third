// This is a generated file - do not edit.
//
// Generated from ForumMemberInfo.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'User.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class ForumMemberInfo extends $pb.GeneratedMessage {
  factory ForumMemberInfo({
    $core.String? total,
    $core.String? title,
    $core.Iterable<$0.User>? memberList,
  }) {
    final result = create();
    if (total != null) result.total = total;
    if (title != null) result.title = title;
    if (memberList != null) result.memberList.addAll(memberList);
    return result;
  }

  ForumMemberInfo._();

  factory ForumMemberInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ForumMemberInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ForumMemberInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'total')
    ..aOS(2, _omitFieldNames ? '' : 'title')
    ..pPM<$0.User>(3, _omitFieldNames ? '' : 'memberList',
        subBuilder: $0.User.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ForumMemberInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ForumMemberInfo copyWith(void Function(ForumMemberInfo) updates) =>
      super.copyWith((message) => updates(message as ForumMemberInfo))
          as ForumMemberInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ForumMemberInfo create() => ForumMemberInfo._();
  @$core.override
  ForumMemberInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ForumMemberInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ForumMemberInfo>(create);
  static ForumMemberInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get total => $_getSZ(0);
  @$pb.TagNumber(1)
  set total($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTotal() => $_has(0);
  @$pb.TagNumber(1)
  void clearTotal() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => $_clearField(2);

  @$pb.TagNumber(3)
  $pb.PbList<$0.User> get memberList => $_getList(2);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
