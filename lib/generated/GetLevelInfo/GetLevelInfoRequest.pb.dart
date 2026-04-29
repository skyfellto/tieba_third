// This is a generated file - do not edit.
//
// Generated from GetLevelInfo/GetLevelInfoRequest.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'GetLevelInfoRequestData.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class GetLevelInfoRequest extends $pb.GeneratedMessage {
  factory GetLevelInfoRequest({
    $0.GetLevelInfoRequestData? data,
  }) {
    final result = create();
    if (data != null) result.data = data;
    return result;
  }

  GetLevelInfoRequest._();

  factory GetLevelInfoRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetLevelInfoRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetLevelInfoRequest',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'tieba.getLevelInfo'),
      createEmptyInstance: create)
    ..aOM<$0.GetLevelInfoRequestData>(1, _omitFieldNames ? '' : 'data',
        subBuilder: $0.GetLevelInfoRequestData.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetLevelInfoRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetLevelInfoRequest copyWith(void Function(GetLevelInfoRequest) updates) =>
      super.copyWith((message) => updates(message as GetLevelInfoRequest))
          as GetLevelInfoRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetLevelInfoRequest create() => GetLevelInfoRequest._();
  @$core.override
  GetLevelInfoRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetLevelInfoRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetLevelInfoRequest>(create);
  static GetLevelInfoRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $0.GetLevelInfoRequestData get data => $_getN(0);
  @$pb.TagNumber(1)
  set data($0.GetLevelInfoRequestData value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasData() => $_has(0);
  @$pb.TagNumber(1)
  void clearData() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.GetLevelInfoRequestData ensureData() => $_ensure(0);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
