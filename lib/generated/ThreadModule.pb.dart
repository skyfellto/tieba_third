// This is a generated file - do not edit.
//
// Generated from ThreadModule.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'ThreadInfo.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class ThreadModule extends $pb.GeneratedMessage {
  factory ThreadModule({
    $fixnum.Int64? moduleId,
    $core.String? moduleName,
    $core.Iterable<$0.ThreadInfo>? threadInfo,
    $fixnum.Int64? showNum,
  }) {
    final result = create();
    if (moduleId != null) result.moduleId = moduleId;
    if (moduleName != null) result.moduleName = moduleName;
    if (threadInfo != null) result.threadInfo.addAll(threadInfo);
    if (showNum != null) result.showNum = showNum;
    return result;
  }

  ThreadModule._();

  factory ThreadModule.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ThreadModule.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ThreadModule',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'moduleId')
    ..aOS(2, _omitFieldNames ? '' : 'moduleName')
    ..pPM<$0.ThreadInfo>(3, _omitFieldNames ? '' : 'threadInfo',
        subBuilder: $0.ThreadInfo.create)
    ..aInt64(4, _omitFieldNames ? '' : 'showNum')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ThreadModule clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ThreadModule copyWith(void Function(ThreadModule) updates) =>
      super.copyWith((message) => updates(message as ThreadModule))
          as ThreadModule;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ThreadModule create() => ThreadModule._();
  @$core.override
  ThreadModule createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ThreadModule getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ThreadModule>(create);
  static ThreadModule? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get moduleId => $_getI64(0);
  @$pb.TagNumber(1)
  set moduleId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasModuleId() => $_has(0);
  @$pb.TagNumber(1)
  void clearModuleId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get moduleName => $_getSZ(1);
  @$pb.TagNumber(2)
  set moduleName($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasModuleName() => $_has(1);
  @$pb.TagNumber(2)
  void clearModuleName() => $_clearField(2);

  @$pb.TagNumber(3)
  $pb.PbList<$0.ThreadInfo> get threadInfo => $_getList(2);

  @$pb.TagNumber(4)
  $fixnum.Int64 get showNum => $_getI64(3);
  @$pb.TagNumber(4)
  set showNum($fixnum.Int64 value) => $_setInt64(3, value);
  @$pb.TagNumber(4)
  $core.bool hasShowNum() => $_has(3);
  @$pb.TagNumber(4)
  void clearShowNum() => $_clearField(4);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
