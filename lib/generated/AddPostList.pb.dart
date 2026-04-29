// This is a generated file - do not edit.
//
// Generated from AddPostList.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'SubPostList.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class AddPostList extends $pb.GeneratedMessage {
  factory AddPostList({
    $fixnum.Int64? pid,
    $core.int? totalNum,
    $core.int? totalCount,
    $core.Iterable<$0.SubPostList>? addPostList,
  }) {
    final result = create();
    if (pid != null) result.pid = pid;
    if (totalNum != null) result.totalNum = totalNum;
    if (totalCount != null) result.totalCount = totalCount;
    if (addPostList != null) result.addPostList.addAll(addPostList);
    return result;
  }

  AddPostList._();

  factory AddPostList.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AddPostList.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AddPostList',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'pid', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aI(2, _omitFieldNames ? '' : 'totalNum', fieldType: $pb.PbFieldType.OU3)
    ..aI(3, _omitFieldNames ? '' : 'totalCount', fieldType: $pb.PbFieldType.OU3)
    ..pPM<$0.SubPostList>(4, _omitFieldNames ? '' : 'addPostList',
        subBuilder: $0.SubPostList.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AddPostList clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AddPostList copyWith(void Function(AddPostList) updates) =>
      super.copyWith((message) => updates(message as AddPostList))
          as AddPostList;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AddPostList create() => AddPostList._();
  @$core.override
  AddPostList createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AddPostList getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AddPostList>(create);
  static AddPostList? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get pid => $_getI64(0);
  @$pb.TagNumber(1)
  set pid($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPid() => $_has(0);
  @$pb.TagNumber(1)
  void clearPid() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get totalNum => $_getIZ(1);
  @$pb.TagNumber(2)
  set totalNum($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasTotalNum() => $_has(1);
  @$pb.TagNumber(2)
  void clearTotalNum() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get totalCount => $_getIZ(2);
  @$pb.TagNumber(3)
  set totalCount($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasTotalCount() => $_has(2);
  @$pb.TagNumber(3)
  void clearTotalCount() => $_clearField(3);

  @$pb.TagNumber(4)
  $pb.PbList<$0.SubPostList> get addPostList => $_getList(3);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
