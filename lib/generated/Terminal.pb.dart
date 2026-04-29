// This is a generated file - do not edit.
//
// Generated from Terminal.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class Terminal extends $pb.GeneratedMessage {
  factory Terminal({
    $core.int? pc,
    $core.int? wap,
    $core.int? client,
  }) {
    final result = create();
    if (pc != null) result.pc = pc;
    if (wap != null) result.wap = wap;
    if (client != null) result.client = client;
    return result;
  }

  Terminal._();

  factory Terminal.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Terminal.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Terminal',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'pc')
    ..aI(2, _omitFieldNames ? '' : 'wap')
    ..aI(3, _omitFieldNames ? '' : 'client')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Terminal clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Terminal copyWith(void Function(Terminal) updates) =>
      super.copyWith((message) => updates(message as Terminal)) as Terminal;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Terminal create() => Terminal._();
  @$core.override
  Terminal createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Terminal getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Terminal>(create);
  static Terminal? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get pc => $_getIZ(0);
  @$pb.TagNumber(1)
  set pc($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPc() => $_has(0);
  @$pb.TagNumber(1)
  void clearPc() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get wap => $_getIZ(1);
  @$pb.TagNumber(2)
  set wap($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasWap() => $_has(1);
  @$pb.TagNumber(2)
  void clearWap() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get client => $_getIZ(2);
  @$pb.TagNumber(3)
  set client($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasClient() => $_has(2);
  @$pb.TagNumber(3)
  void clearClient() => $_clearField(3);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
