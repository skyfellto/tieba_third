// This is a generated file - do not edit.
//
// Generated from SimpleThreadInfo.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'Abstract.pb.dart' as $0;
import 'Zan.pb.dart' as $1;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class SimpleThreadInfo extends $pb.GeneratedMessage {
  factory SimpleThreadInfo({
    $fixnum.Int64? tid,
    $core.String? title,
    $core.int? replyNum,
    $core.int? lastTimeInt,
    $core.Iterable<$0.Abstract>? abstract,
    $1.Zan? zan,
    $fixnum.Int64? threadType,
  }) {
    final result = create();
    if (tid != null) result.tid = tid;
    if (title != null) result.title = title;
    if (replyNum != null) result.replyNum = replyNum;
    if (lastTimeInt != null) result.lastTimeInt = lastTimeInt;
    if (abstract != null) result.abstract.addAll(abstract);
    if (zan != null) result.zan = zan;
    if (threadType != null) result.threadType = threadType;
    return result;
  }

  SimpleThreadInfo._();

  factory SimpleThreadInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SimpleThreadInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SimpleThreadInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'tid', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(2, _omitFieldNames ? '' : 'title')
    ..aI(3, _omitFieldNames ? '' : 'replyNum')
    ..aI(4, _omitFieldNames ? '' : 'lastTimeInt')
    ..pPM<$0.Abstract>(5, _omitFieldNames ? '' : 'Abstract',
        subBuilder: $0.Abstract.create)
    ..aOM<$1.Zan>(6, _omitFieldNames ? '' : 'zan', subBuilder: $1.Zan.create)
    ..a<$fixnum.Int64>(
        7, _omitFieldNames ? '' : 'threadType', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SimpleThreadInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SimpleThreadInfo copyWith(void Function(SimpleThreadInfo) updates) =>
      super.copyWith((message) => updates(message as SimpleThreadInfo))
          as SimpleThreadInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SimpleThreadInfo create() => SimpleThreadInfo._();
  @$core.override
  SimpleThreadInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SimpleThreadInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SimpleThreadInfo>(create);
  static SimpleThreadInfo? _defaultInstance;

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
  $core.int get replyNum => $_getIZ(2);
  @$pb.TagNumber(3)
  set replyNum($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasReplyNum() => $_has(2);
  @$pb.TagNumber(3)
  void clearReplyNum() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get lastTimeInt => $_getIZ(3);
  @$pb.TagNumber(4)
  set lastTimeInt($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasLastTimeInt() => $_has(3);
  @$pb.TagNumber(4)
  void clearLastTimeInt() => $_clearField(4);

  @$pb.TagNumber(5)
  $pb.PbList<$0.Abstract> get abstract => $_getList(4);

  @$pb.TagNumber(6)
  $1.Zan get zan => $_getN(5);
  @$pb.TagNumber(6)
  set zan($1.Zan value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasZan() => $_has(5);
  @$pb.TagNumber(6)
  void clearZan() => $_clearField(6);
  @$pb.TagNumber(6)
  $1.Zan ensureZan() => $_ensure(5);

  @$pb.TagNumber(7)
  $fixnum.Int64 get threadType => $_getI64(6);
  @$pb.TagNumber(7)
  set threadType($fixnum.Int64 value) => $_setInt64(6, value);
  @$pb.TagNumber(7)
  $core.bool hasThreadType() => $_has(6);
  @$pb.TagNumber(7)
  void clearThreadType() => $_clearField(7);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
