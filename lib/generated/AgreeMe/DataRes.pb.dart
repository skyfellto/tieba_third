// This is a generated file - do not edit.
//
// Generated from AgreeMe/DataRes.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../AgreeList.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class DataRes extends $pb.GeneratedMessage {
  factory DataRes({
    $core.int? hasMore,
    $core.Iterable<$0.AgreeList>? agreeList,
  }) {
    final result = create();
    if (hasMore != null) result.hasMore = hasMore;
    if (agreeList != null) result.agreeList.addAll(agreeList);
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
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba.agreeMe'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'hasMore')
    ..pPM<$0.AgreeList>(2, _omitFieldNames ? '' : 'agreeList',
        subBuilder: $0.AgreeList.create)
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
  $core.int get hasMore => $_getIZ(0);
  @$pb.TagNumber(1)
  set hasMore($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasHasMore() => $_has(0);
  @$pb.TagNumber(1)
  void clearHasMore() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<$0.AgreeList> get agreeList => $_getList(1);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
