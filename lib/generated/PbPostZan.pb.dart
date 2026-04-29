// This is a generated file - do not edit.
//
// Generated from PbPostZan.proto.

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

class PbPostZan extends $pb.GeneratedMessage {
  factory PbPostZan({
    $fixnum.Int64? zanNum,
    $core.int? hasZan,
  }) {
    final result = create();
    if (zanNum != null) result.zanNum = zanNum;
    if (hasZan != null) result.hasZan = hasZan;
    return result;
  }

  PbPostZan._();

  factory PbPostZan.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PbPostZan.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PbPostZan',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'zanNum')
    ..aI(2, _omitFieldNames ? '' : 'hasZan')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PbPostZan clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PbPostZan copyWith(void Function(PbPostZan) updates) =>
      super.copyWith((message) => updates(message as PbPostZan)) as PbPostZan;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PbPostZan create() => PbPostZan._();
  @$core.override
  PbPostZan createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PbPostZan getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PbPostZan>(create);
  static PbPostZan? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get zanNum => $_getI64(0);
  @$pb.TagNumber(1)
  set zanNum($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasZanNum() => $_has(0);
  @$pb.TagNumber(1)
  void clearZanNum() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get hasZan => $_getIZ(1);
  @$pb.TagNumber(2)
  set hasZan($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasHasZan() => $_has(1);
  @$pb.TagNumber(2)
  void clearHasZan() => $_clearField(2);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
