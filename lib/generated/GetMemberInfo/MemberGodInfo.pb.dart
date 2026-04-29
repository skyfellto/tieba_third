// This is a generated file - do not edit.
//
// Generated from GetMemberInfo/MemberGodInfo.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../User.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class MemberGodInfo extends $pb.GeneratedMessage {
  factory MemberGodInfo({
    $core.Iterable<$0.User>? forumGodList,
    $core.int? forumGodNum,
  }) {
    final result = create();
    if (forumGodList != null) result.forumGodList.addAll(forumGodList);
    if (forumGodNum != null) result.forumGodNum = forumGodNum;
    return result;
  }

  MemberGodInfo._();

  factory MemberGodInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MemberGodInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MemberGodInfo',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'tieba.getMemberInfo'),
      createEmptyInstance: create)
    ..pPM<$0.User>(1, _omitFieldNames ? '' : 'forumGodList',
        subBuilder: $0.User.create)
    ..aI(2, _omitFieldNames ? '' : 'forumGodNum')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MemberGodInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MemberGodInfo copyWith(void Function(MemberGodInfo) updates) =>
      super.copyWith((message) => updates(message as MemberGodInfo))
          as MemberGodInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MemberGodInfo create() => MemberGodInfo._();
  @$core.override
  MemberGodInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MemberGodInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MemberGodInfo>(create);
  static MemberGodInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$0.User> get forumGodList => $_getList(0);

  @$pb.TagNumber(2)
  $core.int get forumGodNum => $_getIZ(1);
  @$pb.TagNumber(2)
  set forumGodNum($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasForumGodNum() => $_has(1);
  @$pb.TagNumber(2)
  void clearForumGodNum() => $_clearField(2);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
