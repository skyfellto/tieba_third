// This is a generated file - do not edit.
//
// Generated from ActPost.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'ActHot.pb.dart' as $0;
import 'LinkInfo.pb.dart' as $1;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class ActPost extends $pb.GeneratedMessage {
  factory ActPost({
    $core.Iterable<$0.ActHot>? actHot,
    $core.String? listHead,
    $core.Iterable<$1.LinkInfo>? linkInfo,
  }) {
    final result = create();
    if (actHot != null) result.actHot.addAll(actHot);
    if (listHead != null) result.listHead = listHead;
    if (linkInfo != null) result.linkInfo.addAll(linkInfo);
    return result;
  }

  ActPost._();

  factory ActPost.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ActPost.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ActPost',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..pPM<$0.ActHot>(1, _omitFieldNames ? '' : 'actHot',
        subBuilder: $0.ActHot.create)
    ..aOS(2, _omitFieldNames ? '' : 'listHead')
    ..pPM<$1.LinkInfo>(3, _omitFieldNames ? '' : 'linkInfo',
        subBuilder: $1.LinkInfo.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ActPost clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ActPost copyWith(void Function(ActPost) updates) =>
      super.copyWith((message) => updates(message as ActPost)) as ActPost;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ActPost create() => ActPost._();
  @$core.override
  ActPost createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ActPost getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ActPost>(create);
  static ActPost? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$0.ActHot> get actHot => $_getList(0);

  @$pb.TagNumber(2)
  $core.String get listHead => $_getSZ(1);
  @$pb.TagNumber(2)
  set listHead($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasListHead() => $_has(1);
  @$pb.TagNumber(2)
  void clearListHead() => $_clearField(2);

  @$pb.TagNumber(3)
  $pb.PbList<$1.LinkInfo> get linkInfo => $_getList(2);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
