// This is a generated file - do not edit.
//
// Generated from GetBawuInfo/GetBawuInfoResponse.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../Error.pb.dart' as $1;
import 'GetBawuInfoResponseData.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class GetBawuInfoResponse extends $pb.GeneratedMessage {
  factory GetBawuInfoResponse({
    $0.GetBawuInfoResponseData? data,
    $1.Error? error,
  }) {
    final result = create();
    if (data != null) result.data = data;
    if (error != null) result.error = error;
    return result;
  }

  GetBawuInfoResponse._();

  factory GetBawuInfoResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetBawuInfoResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetBawuInfoResponse',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'tieba.getBawuInfo'),
      createEmptyInstance: create)
    ..aOM<$0.GetBawuInfoResponseData>(1, _omitFieldNames ? '' : 'data',
        subBuilder: $0.GetBawuInfoResponseData.create)
    ..aOM<$1.Error>(2, _omitFieldNames ? '' : 'error',
        subBuilder: $1.Error.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetBawuInfoResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetBawuInfoResponse copyWith(void Function(GetBawuInfoResponse) updates) =>
      super.copyWith((message) => updates(message as GetBawuInfoResponse))
          as GetBawuInfoResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetBawuInfoResponse create() => GetBawuInfoResponse._();
  @$core.override
  GetBawuInfoResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetBawuInfoResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetBawuInfoResponse>(create);
  static GetBawuInfoResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $0.GetBawuInfoResponseData get data => $_getN(0);
  @$pb.TagNumber(1)
  set data($0.GetBawuInfoResponseData value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasData() => $_has(0);
  @$pb.TagNumber(1)
  void clearData() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.GetBawuInfoResponseData ensureData() => $_ensure(0);

  @$pb.TagNumber(2)
  $1.Error get error => $_getN(1);
  @$pb.TagNumber(2)
  set error($1.Error value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => $_clearField(2);
  @$pb.TagNumber(2)
  $1.Error ensureError() => $_ensure(1);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
