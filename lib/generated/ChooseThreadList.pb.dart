// This is a generated file - do not edit.
//
// Generated from ChooseThreadList.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class ChooseThreadList extends $pb.GeneratedMessage {
  factory ChooseThreadList({
    $fixnum.Int64? tid,
    $core.String? title,
  }) {
    final result = create();
    if (tid != null) result.tid = tid;
    if (title != null) result.title = title;
    return result;
  }

  ChooseThreadList._();

  factory ChooseThreadList.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ChooseThreadList.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ChooseThreadList',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'tid')
    ..aOS(2, _omitFieldNames ? '' : 'title')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ChooseThreadList clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ChooseThreadList copyWith(void Function(ChooseThreadList) updates) =>
      super.copyWith((message) => updates(message as ChooseThreadList))
          as ChooseThreadList;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChooseThreadList create() => ChooseThreadList._();
  @$core.override
  ChooseThreadList createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ChooseThreadList getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ChooseThreadList>(create);
  static ChooseThreadList? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get tid => $_getI64(0);
  @$pb.TagNumber(1)
  set tid($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTid() => $_has(0);
  @$pb.TagNumber(1)
  void clearTid() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => $_clearField(2);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
