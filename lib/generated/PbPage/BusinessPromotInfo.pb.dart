// This is a generated file - do not edit.
//
// Generated from PbPage/BusinessPromotInfo.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../SendCardInfo.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class BusinessPromotInfo extends $pb.GeneratedMessage {
  factory BusinessPromotInfo({
    $fixnum.Int64? isPromot,
    $core.int? isHeadlinepost,
    $core.int? isSCard,
    $0.SendCardInfo? sendCardInfo,
  }) {
    final result = create();
    if (isPromot != null) result.isPromot = isPromot;
    if (isHeadlinepost != null) result.isHeadlinepost = isHeadlinepost;
    if (isSCard != null) result.isSCard = isSCard;
    if (sendCardInfo != null) result.sendCardInfo = sendCardInfo;
    return result;
  }

  BusinessPromotInfo._();

  factory BusinessPromotInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BusinessPromotInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BusinessPromotInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba.pbPage'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'isPromot')
    ..aI(2, _omitFieldNames ? '' : 'isHeadlinepost')
    ..aI(3, _omitFieldNames ? '' : 'isSCard')
    ..aOM<$0.SendCardInfo>(4, _omitFieldNames ? '' : 'sendCardInfo',
        subBuilder: $0.SendCardInfo.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BusinessPromotInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BusinessPromotInfo copyWith(void Function(BusinessPromotInfo) updates) =>
      super.copyWith((message) => updates(message as BusinessPromotInfo))
          as BusinessPromotInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BusinessPromotInfo create() => BusinessPromotInfo._();
  @$core.override
  BusinessPromotInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BusinessPromotInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BusinessPromotInfo>(create);
  static BusinessPromotInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get isPromot => $_getI64(0);
  @$pb.TagNumber(1)
  set isPromot($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasIsPromot() => $_has(0);
  @$pb.TagNumber(1)
  void clearIsPromot() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get isHeadlinepost => $_getIZ(1);
  @$pb.TagNumber(2)
  set isHeadlinepost($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasIsHeadlinepost() => $_has(1);
  @$pb.TagNumber(2)
  void clearIsHeadlinepost() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get isSCard => $_getIZ(2);
  @$pb.TagNumber(3)
  set isSCard($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasIsSCard() => $_has(2);
  @$pb.TagNumber(3)
  void clearIsSCard() => $_clearField(3);

  @$pb.TagNumber(4)
  $0.SendCardInfo get sendCardInfo => $_getN(3);
  @$pb.TagNumber(4)
  set sendCardInfo($0.SendCardInfo value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasSendCardInfo() => $_has(3);
  @$pb.TagNumber(4)
  void clearSendCardInfo() => $_clearField(4);
  @$pb.TagNumber(4)
  $0.SendCardInfo ensureSendCardInfo() => $_ensure(3);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
