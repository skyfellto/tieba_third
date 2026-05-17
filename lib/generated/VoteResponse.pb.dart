// This is a generated file - do not edit.
//
// Generated from VoteResponse.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class VoteResponse_SubResponse extends $pb.GeneratedMessage {
  factory VoteResponse_SubResponse({
    $core.int? code,
    $core.String? msg,
    $core.String? extra,
  }) {
    final result = create();
    if (code != null) result.code = code;
    if (msg != null) result.msg = msg;
    if (extra != null) result.extra = extra;
    return result;
  }

  VoteResponse_SubResponse._();

  factory VoteResponse_SubResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory VoteResponse_SubResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'VoteResponse.SubResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'code')
    ..aOS(2, _omitFieldNames ? '' : 'msg')
    ..aOS(3, _omitFieldNames ? '' : 'extra')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VoteResponse_SubResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VoteResponse_SubResponse copyWith(
          void Function(VoteResponse_SubResponse) updates) =>
      super.copyWith((message) => updates(message as VoteResponse_SubResponse))
          as VoteResponse_SubResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VoteResponse_SubResponse create() => VoteResponse_SubResponse._();
  @$core.override
  VoteResponse_SubResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static VoteResponse_SubResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<VoteResponse_SubResponse>(create);
  static VoteResponse_SubResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get code => $_getIZ(0);
  @$pb.TagNumber(1)
  set code($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearCode() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get msg => $_getSZ(1);
  @$pb.TagNumber(2)
  set msg($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMsg() => $_has(1);
  @$pb.TagNumber(2)
  void clearMsg() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get extra => $_getSZ(2);
  @$pb.TagNumber(3)
  set extra($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasExtra() => $_has(2);
  @$pb.TagNumber(3)
  void clearExtra() => $_clearField(3);
}

class VoteResponse extends $pb.GeneratedMessage {
  factory VoteResponse({
    VoteResponse_SubResponse? res1,
    VoteResponse_SubResponse? res2,
  }) {
    final result = create();
    if (res1 != null) result.res1 = res1;
    if (res2 != null) result.res2 = res2;
    return result;
  }

  VoteResponse._();

  factory VoteResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory VoteResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'VoteResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aOM<VoteResponse_SubResponse>(1, _omitFieldNames ? '' : 'res1',
        subBuilder: VoteResponse_SubResponse.create)
    ..aOM<VoteResponse_SubResponse>(2, _omitFieldNames ? '' : 'res2',
        subBuilder: VoteResponse_SubResponse.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VoteResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VoteResponse copyWith(void Function(VoteResponse) updates) =>
      super.copyWith((message) => updates(message as VoteResponse))
          as VoteResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VoteResponse create() => VoteResponse._();
  @$core.override
  VoteResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static VoteResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<VoteResponse>(create);
  static VoteResponse? _defaultInstance;

  @$pb.TagNumber(1)
  VoteResponse_SubResponse get res1 => $_getN(0);
  @$pb.TagNumber(1)
  set res1(VoteResponse_SubResponse value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasRes1() => $_has(0);
  @$pb.TagNumber(1)
  void clearRes1() => $_clearField(1);
  @$pb.TagNumber(1)
  VoteResponse_SubResponse ensureRes1() => $_ensure(0);

  @$pb.TagNumber(2)
  VoteResponse_SubResponse get res2 => $_getN(1);
  @$pb.TagNumber(2)
  set res2(VoteResponse_SubResponse value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasRes2() => $_has(1);
  @$pb.TagNumber(2)
  void clearRes2() => $_clearField(2);
  @$pb.TagNumber(2)
  VoteResponse_SubResponse ensureRes2() => $_ensure(1);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
