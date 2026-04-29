// This is a generated file - do not edit.
//
// Generated from GetUserInfo/GetUserInfoRequestData.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../CommonRequest.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class GetUserInfoRequestData extends $pb.GeneratedMessage {
  factory GetUserInfoRequestData({
    $0.CommonRequest? common,
    $fixnum.Int64? uid,
    $core.int? scrW,
  }) {
    final result = create();
    if (common != null) result.common = common;
    if (uid != null) result.uid = uid;
    if (scrW != null) result.scrW = scrW;
    return result;
  }

  GetUserInfoRequestData._();

  factory GetUserInfoRequestData.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetUserInfoRequestData.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetUserInfoRequestData',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'tieba.getUserInfo'),
      createEmptyInstance: create)
    ..aOM<$0.CommonRequest>(1, _omitFieldNames ? '' : 'common',
        subBuilder: $0.CommonRequest.create)
    ..aInt64(2, _omitFieldNames ? '' : 'uid')
    ..aI(3, _omitFieldNames ? '' : 'scrW')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetUserInfoRequestData clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetUserInfoRequestData copyWith(
          void Function(GetUserInfoRequestData) updates) =>
      super.copyWith((message) => updates(message as GetUserInfoRequestData))
          as GetUserInfoRequestData;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetUserInfoRequestData create() => GetUserInfoRequestData._();
  @$core.override
  GetUserInfoRequestData createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetUserInfoRequestData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetUserInfoRequestData>(create);
  static GetUserInfoRequestData? _defaultInstance;

  @$pb.TagNumber(1)
  $0.CommonRequest get common => $_getN(0);
  @$pb.TagNumber(1)
  set common($0.CommonRequest value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasCommon() => $_has(0);
  @$pb.TagNumber(1)
  void clearCommon() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.CommonRequest ensureCommon() => $_ensure(0);

  @$pb.TagNumber(2)
  $fixnum.Int64 get uid => $_getI64(1);
  @$pb.TagNumber(2)
  set uid($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasUid() => $_has(1);
  @$pb.TagNumber(2)
  void clearUid() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get scrW => $_getIZ(2);
  @$pb.TagNumber(3)
  set scrW($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasScrW() => $_has(2);
  @$pb.TagNumber(3)
  void clearScrW() => $_clearField(3);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
