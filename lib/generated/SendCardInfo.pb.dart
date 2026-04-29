// This is a generated file - do not edit.
//
// Generated from SendCardInfo.proto.

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

class SendCardInfo extends $pb.GeneratedMessage {
  factory SendCardInfo({
    $core.String? cardLogo,
    $core.String? cardName,
    $core.String? cardPro,
    $core.int? cardGetStatus,
    $fixnum.Int64? packetId,
  }) {
    final result = create();
    if (cardLogo != null) result.cardLogo = cardLogo;
    if (cardName != null) result.cardName = cardName;
    if (cardPro != null) result.cardPro = cardPro;
    if (cardGetStatus != null) result.cardGetStatus = cardGetStatus;
    if (packetId != null) result.packetId = packetId;
    return result;
  }

  SendCardInfo._();

  factory SendCardInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SendCardInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SendCardInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'cardLogo')
    ..aOS(2, _omitFieldNames ? '' : 'cardName')
    ..aOS(3, _omitFieldNames ? '' : 'cardPro')
    ..aI(4, _omitFieldNames ? '' : 'cardGetStatus')
    ..aInt64(5, _omitFieldNames ? '' : 'packetId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SendCardInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SendCardInfo copyWith(void Function(SendCardInfo) updates) =>
      super.copyWith((message) => updates(message as SendCardInfo))
          as SendCardInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SendCardInfo create() => SendCardInfo._();
  @$core.override
  SendCardInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SendCardInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SendCardInfo>(create);
  static SendCardInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get cardLogo => $_getSZ(0);
  @$pb.TagNumber(1)
  set cardLogo($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCardLogo() => $_has(0);
  @$pb.TagNumber(1)
  void clearCardLogo() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get cardName => $_getSZ(1);
  @$pb.TagNumber(2)
  set cardName($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCardName() => $_has(1);
  @$pb.TagNumber(2)
  void clearCardName() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get cardPro => $_getSZ(2);
  @$pb.TagNumber(3)
  set cardPro($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasCardPro() => $_has(2);
  @$pb.TagNumber(3)
  void clearCardPro() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get cardGetStatus => $_getIZ(3);
  @$pb.TagNumber(4)
  set cardGetStatus($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasCardGetStatus() => $_has(3);
  @$pb.TagNumber(4)
  void clearCardGetStatus() => $_clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get packetId => $_getI64(4);
  @$pb.TagNumber(5)
  set packetId($fixnum.Int64 value) => $_setInt64(4, value);
  @$pb.TagNumber(5)
  $core.bool hasPacketId() => $_has(4);
  @$pb.TagNumber(5)
  void clearPacketId() => $_clearField(5);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
