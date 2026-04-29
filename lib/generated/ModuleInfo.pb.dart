// This is a generated file - do not edit.
//
// Generated from ModuleInfo.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'ThreadModule.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class ModuleInfo extends $pb.GeneratedMessage {
  factory ModuleInfo({
    $core.Iterable<$0.ThreadModule>? moduleList,
    $core.int? maxModuleNum,
    $core.int? maxModuleThreadNum,
  }) {
    final result = create();
    if (moduleList != null) result.moduleList.addAll(moduleList);
    if (maxModuleNum != null) result.maxModuleNum = maxModuleNum;
    if (maxModuleThreadNum != null)
      result.maxModuleThreadNum = maxModuleThreadNum;
    return result;
  }

  ModuleInfo._();

  factory ModuleInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ModuleInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ModuleInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..pPM<$0.ThreadModule>(1, _omitFieldNames ? '' : 'moduleList',
        subBuilder: $0.ThreadModule.create)
    ..aI(2, _omitFieldNames ? '' : 'maxModuleNum')
    ..aI(3, _omitFieldNames ? '' : 'maxModuleThreadNum')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ModuleInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ModuleInfo copyWith(void Function(ModuleInfo) updates) =>
      super.copyWith((message) => updates(message as ModuleInfo)) as ModuleInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ModuleInfo create() => ModuleInfo._();
  @$core.override
  ModuleInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ModuleInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ModuleInfo>(create);
  static ModuleInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$0.ThreadModule> get moduleList => $_getList(0);

  @$pb.TagNumber(2)
  $core.int get maxModuleNum => $_getIZ(1);
  @$pb.TagNumber(2)
  set maxModuleNum($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMaxModuleNum() => $_has(1);
  @$pb.TagNumber(2)
  void clearMaxModuleNum() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get maxModuleThreadNum => $_getIZ(2);
  @$pb.TagNumber(3)
  set maxModuleThreadNum($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasMaxModuleThreadNum() => $_has(2);
  @$pb.TagNumber(3)
  void clearMaxModuleThreadNum() => $_clearField(3);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
