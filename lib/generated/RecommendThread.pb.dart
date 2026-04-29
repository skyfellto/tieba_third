// This is a generated file - do not edit.
//
// Generated from RecommendThread.proto.

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

class RecommendThread extends $pb.GeneratedMessage {
  factory RecommendThread({
    $fixnum.Int64? tid,
    $core.String? title,
    $fixnum.Int64? postNum,
    $core.Iterable<$core.String>? termList,
  }) {
    final result = create();
    if (tid != null) result.tid = tid;
    if (title != null) result.title = title;
    if (postNum != null) result.postNum = postNum;
    if (termList != null) result.termList.addAll(termList);
    return result;
  }

  RecommendThread._();

  factory RecommendThread.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RecommendThread.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RecommendThread',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'tid', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(2, _omitFieldNames ? '' : 'title')
    ..a<$fixnum.Int64>(3, _omitFieldNames ? '' : 'postNum', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..pPS(4, _omitFieldNames ? '' : 'termList')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RecommendThread clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RecommendThread copyWith(void Function(RecommendThread) updates) =>
      super.copyWith((message) => updates(message as RecommendThread))
          as RecommendThread;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RecommendThread create() => RecommendThread._();
  @$core.override
  RecommendThread createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RecommendThread getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RecommendThread>(create);
  static RecommendThread? _defaultInstance;

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

  @$pb.TagNumber(3)
  $fixnum.Int64 get postNum => $_getI64(2);
  @$pb.TagNumber(3)
  set postNum($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasPostNum() => $_has(2);
  @$pb.TagNumber(3)
  void clearPostNum() => $_clearField(3);

  @$pb.TagNumber(4)
  $pb.PbList<$core.String> get termList => $_getList(3);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
