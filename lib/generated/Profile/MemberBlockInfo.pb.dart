// This is a generated file - do not edit.
//
// Generated from Profile/MemberBlockInfo.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class MemberBlockInfo extends $pb.GeneratedMessage {
  factory MemberBlockInfo({
    $core.int? isPermanentBan,
    $core.int? isAutoPay,
    $core.int? isBan,
  }) {
    final result = create();
    if (isPermanentBan != null) result.isPermanentBan = isPermanentBan;
    if (isAutoPay != null) result.isAutoPay = isAutoPay;
    if (isBan != null) result.isBan = isBan;
    return result;
  }

  MemberBlockInfo._();

  factory MemberBlockInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MemberBlockInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MemberBlockInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba.profile'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'isPermanentBan')
    ..aI(2, _omitFieldNames ? '' : 'isAutoPay')
    ..aI(3, _omitFieldNames ? '' : 'isBan')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MemberBlockInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MemberBlockInfo copyWith(void Function(MemberBlockInfo) updates) =>
      super.copyWith((message) => updates(message as MemberBlockInfo))
          as MemberBlockInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MemberBlockInfo create() => MemberBlockInfo._();
  @$core.override
  MemberBlockInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MemberBlockInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MemberBlockInfo>(create);
  static MemberBlockInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get isPermanentBan => $_getIZ(0);
  @$pb.TagNumber(1)
  set isPermanentBan($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasIsPermanentBan() => $_has(0);
  @$pb.TagNumber(1)
  void clearIsPermanentBan() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get isAutoPay => $_getIZ(1);
  @$pb.TagNumber(2)
  set isAutoPay($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasIsAutoPay() => $_has(1);
  @$pb.TagNumber(2)
  void clearIsAutoPay() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get isBan => $_getIZ(2);
  @$pb.TagNumber(3)
  set isBan($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasIsBan() => $_has(2);
  @$pb.TagNumber(3)
  void clearIsBan() => $_clearField(3);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
