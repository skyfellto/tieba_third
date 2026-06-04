// This is a generated file - do not edit.
//
// Generated from Agree.proto.

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

class Agree extends $pb.GeneratedMessage {
  factory Agree({
    $fixnum.Int64? agreeNum,
    $core.int? hasAgree,
    $core.int? agreeType,
    $fixnum.Int64? disagreeNum,
    $fixnum.Int64? diffAgreeNum,
    $core.int? lzAgree,
  }) {
    final result = create();
    if (agreeNum != null) result.agreeNum = agreeNum;
    if (hasAgree != null) result.hasAgree = hasAgree;
    if (agreeType != null) result.agreeType = agreeType;
    if (disagreeNum != null) result.disagreeNum = disagreeNum;
    if (diffAgreeNum != null) result.diffAgreeNum = diffAgreeNum;
    if (lzAgree != null) result.lzAgree = lzAgree;
    return result;
  }

  Agree._();

  factory Agree.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Agree.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Agree',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'agreeNum', protoName: 'agreeNum')
    ..aI(2, _omitFieldNames ? '' : 'hasAgree', protoName: 'hasAgree')
    ..aI(3, _omitFieldNames ? '' : 'agreeType', protoName: 'agreeType')
    ..aInt64(4, _omitFieldNames ? '' : 'disagreeNum', protoName: 'disagreeNum')
    ..aInt64(5, _omitFieldNames ? '' : 'diffAgreeNum',
        protoName: 'diffAgreeNum')
    ..aI(6, _omitFieldNames ? '' : 'lzAgree')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Agree clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Agree copyWith(void Function(Agree) updates) =>
      super.copyWith((message) => updates(message as Agree)) as Agree;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Agree create() => Agree._();
  @$core.override
  Agree createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Agree getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Agree>(create);
  static Agree? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get agreeNum => $_getI64(0);
  @$pb.TagNumber(1)
  set agreeNum($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasAgreeNum() => $_has(0);
  @$pb.TagNumber(1)
  void clearAgreeNum() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get hasAgree => $_getIZ(1);
  @$pb.TagNumber(2)
  set hasAgree($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasHasAgree() => $_has(1);
  @$pb.TagNumber(2)
  void clearHasAgree() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get agreeType => $_getIZ(2);
  @$pb.TagNumber(3)
  set agreeType($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasAgreeType() => $_has(2);
  @$pb.TagNumber(3)
  void clearAgreeType() => $_clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get disagreeNum => $_getI64(3);
  @$pb.TagNumber(4)
  set disagreeNum($fixnum.Int64 value) => $_setInt64(3, value);
  @$pb.TagNumber(4)
  $core.bool hasDisagreeNum() => $_has(3);
  @$pb.TagNumber(4)
  void clearDisagreeNum() => $_clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get diffAgreeNum => $_getI64(4);
  @$pb.TagNumber(5)
  set diffAgreeNum($fixnum.Int64 value) => $_setInt64(4, value);
  @$pb.TagNumber(5)
  $core.bool hasDiffAgreeNum() => $_has(4);
  @$pb.TagNumber(5)
  void clearDiffAgreeNum() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get lzAgree => $_getIZ(5);
  @$pb.TagNumber(6)
  set lzAgree($core.int value) => $_setSignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasLzAgree() => $_has(5);
  @$pb.TagNumber(6)
  void clearLzAgree() => $_clearField(6);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
