// This is a generated file - do not edit.
//
// Generated from ReplyMe/DataRes.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../ChooseThreadList.pb.dart' as $2;
import '../ChooseTimeList.pb.dart' as $3;
import '../Page.pb.dart' as $0;
import 'ReplyList.pb.dart' as $1;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class DataRes extends $pb.GeneratedMessage {
  factory DataRes({
    $0.Page? page,
    $core.Iterable<$1.ReplyList>? replyList,
    $core.Iterable<$2.ChooseThreadList>? chooseThreadList,
    $core.Iterable<$3.ChooseTimeList>? chooseTimeList,
  }) {
    final result = create();
    if (page != null) result.page = page;
    if (replyList != null) result.replyList.addAll(replyList);
    if (chooseThreadList != null)
      result.chooseThreadList.addAll(chooseThreadList);
    if (chooseTimeList != null) result.chooseTimeList.addAll(chooseTimeList);
    return result;
  }

  DataRes._();

  factory DataRes.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DataRes.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DataRes',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba.replyMe'),
      createEmptyInstance: create)
    ..aOM<$0.Page>(1, _omitFieldNames ? '' : 'page', subBuilder: $0.Page.create)
    ..pPM<$1.ReplyList>(2, _omitFieldNames ? '' : 'replyList',
        subBuilder: $1.ReplyList.create)
    ..pPM<$2.ChooseThreadList>(3, _omitFieldNames ? '' : 'chooseThreadList',
        subBuilder: $2.ChooseThreadList.create)
    ..pPM<$3.ChooseTimeList>(4, _omitFieldNames ? '' : 'chooseTimeList',
        subBuilder: $3.ChooseTimeList.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DataRes clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DataRes copyWith(void Function(DataRes) updates) =>
      super.copyWith((message) => updates(message as DataRes)) as DataRes;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DataRes create() => DataRes._();
  @$core.override
  DataRes createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DataRes getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DataRes>(create);
  static DataRes? _defaultInstance;

  @$pb.TagNumber(1)
  $0.Page get page => $_getN(0);
  @$pb.TagNumber(1)
  set page($0.Page value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasPage() => $_has(0);
  @$pb.TagNumber(1)
  void clearPage() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.Page ensurePage() => $_ensure(0);

  @$pb.TagNumber(2)
  $pb.PbList<$1.ReplyList> get replyList => $_getList(1);

  @$pb.TagNumber(3)
  $pb.PbList<$2.ChooseThreadList> get chooseThreadList => $_getList(2);

  @$pb.TagNumber(4)
  $pb.PbList<$3.ChooseTimeList> get chooseTimeList => $_getList(3);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
