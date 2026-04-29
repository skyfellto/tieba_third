// This is a generated file - do not edit.
//
// Generated from DealWindow.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'DisplayWindowInfo.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class DealWindow extends $pb.GeneratedMessage {
  factory DealWindow({
    $core.Iterable<$0.DisplayWindowInfo>? list,
    $fixnum.Int64? total,
  }) {
    final result = create();
    if (list != null) result.list.addAll(list);
    if (total != null) result.total = total;
    return result;
  }

  DealWindow._();

  factory DealWindow.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DealWindow.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DealWindow',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..pPM<$0.DisplayWindowInfo>(1, _omitFieldNames ? '' : 'list',
        subBuilder: $0.DisplayWindowInfo.create)
    ..a<$fixnum.Int64>(2, _omitFieldNames ? '' : 'total', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DealWindow clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DealWindow copyWith(void Function(DealWindow) updates) =>
      super.copyWith((message) => updates(message as DealWindow)) as DealWindow;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DealWindow create() => DealWindow._();
  @$core.override
  DealWindow createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DealWindow getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DealWindow>(create);
  static DealWindow? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$0.DisplayWindowInfo> get list => $_getList(0);

  @$pb.TagNumber(2)
  $fixnum.Int64 get total => $_getI64(1);
  @$pb.TagNumber(2)
  set total($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasTotal() => $_has(1);
  @$pb.TagNumber(2)
  void clearTotal() => $_clearField(2);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
