// This is a generated file - do not edit.
//
// Generated from ThreadPicList.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class ThreadPicList extends $pb.GeneratedMessage {
  factory ThreadPicList({
    $core.String? pic,
  }) {
    final result = create();
    if (pic != null) result.pic = pic;
    return result;
  }

  ThreadPicList._();

  factory ThreadPicList.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ThreadPicList.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ThreadPicList',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'pic')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ThreadPicList clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ThreadPicList copyWith(void Function(ThreadPicList) updates) =>
      super.copyWith((message) => updates(message as ThreadPicList))
          as ThreadPicList;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ThreadPicList create() => ThreadPicList._();
  @$core.override
  ThreadPicList createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ThreadPicList getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ThreadPicList>(create);
  static ThreadPicList? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get pic => $_getSZ(0);
  @$pb.TagNumber(1)
  set pic($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPic() => $_has(0);
  @$pb.TagNumber(1)
  void clearPic() => $_clearField(1);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
