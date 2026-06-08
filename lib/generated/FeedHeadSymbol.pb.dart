// This is a generated file - do not edit.
//
// Generated from FeedHeadSymbol.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'FeedContentCustom.pb.dart' as $3;
import 'FeedHeadIcon.pb.dart' as $0;
import 'FeedHeadText.pb.dart' as $1;
import 'FeedKV.pb.dart' as $2;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class FeedHeadSymbol extends $pb.GeneratedMessage {
  factory FeedHeadSymbol({
    $0.FeedHeadIcon? icon,
    $core.int? type,
    $1.FeedHeadText? text,
    $core.String? schema,
    $core.Iterable<$2.FeedKV>? logInfo,
    $3.FeedContentCustom? custom,
    $0.FeedHeadIcon? prefixIcon,
    $core.Iterable<$2.FeedKV>? businessInfo,
  }) {
    final result = create();
    if (icon != null) result.icon = icon;
    if (type != null) result.type = type;
    if (text != null) result.text = text;
    if (schema != null) result.schema = schema;
    if (logInfo != null) result.logInfo.addAll(logInfo);
    if (custom != null) result.custom = custom;
    if (prefixIcon != null) result.prefixIcon = prefixIcon;
    if (businessInfo != null) result.businessInfo.addAll(businessInfo);
    return result;
  }

  FeedHeadSymbol._();

  factory FeedHeadSymbol.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FeedHeadSymbol.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FeedHeadSymbol',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aOM<$0.FeedHeadIcon>(1, _omitFieldNames ? '' : 'icon',
        subBuilder: $0.FeedHeadIcon.create)
    ..aI(2, _omitFieldNames ? '' : 'type', fieldType: $pb.PbFieldType.OU3)
    ..aOM<$1.FeedHeadText>(3, _omitFieldNames ? '' : 'text',
        subBuilder: $1.FeedHeadText.create)
    ..aOS(4, _omitFieldNames ? '' : 'schema')
    ..pPM<$2.FeedKV>(5, _omitFieldNames ? '' : 'logInfo',
        subBuilder: $2.FeedKV.create)
    ..aOM<$3.FeedContentCustom>(6, _omitFieldNames ? '' : 'custom',
        subBuilder: $3.FeedContentCustom.create)
    ..aOM<$0.FeedHeadIcon>(7, _omitFieldNames ? '' : 'prefixIcon',
        subBuilder: $0.FeedHeadIcon.create)
    ..pPM<$2.FeedKV>(8, _omitFieldNames ? '' : 'businessInfo',
        subBuilder: $2.FeedKV.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FeedHeadSymbol clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FeedHeadSymbol copyWith(void Function(FeedHeadSymbol) updates) =>
      super.copyWith((message) => updates(message as FeedHeadSymbol))
          as FeedHeadSymbol;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FeedHeadSymbol create() => FeedHeadSymbol._();
  @$core.override
  FeedHeadSymbol createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FeedHeadSymbol getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FeedHeadSymbol>(create);
  static FeedHeadSymbol? _defaultInstance;

  @$pb.TagNumber(1)
  $0.FeedHeadIcon get icon => $_getN(0);
  @$pb.TagNumber(1)
  set icon($0.FeedHeadIcon value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasIcon() => $_has(0);
  @$pb.TagNumber(1)
  void clearIcon() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.FeedHeadIcon ensureIcon() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.int get type => $_getIZ(1);
  @$pb.TagNumber(2)
  set type($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => $_clearField(2);

  @$pb.TagNumber(3)
  $1.FeedHeadText get text => $_getN(2);
  @$pb.TagNumber(3)
  set text($1.FeedHeadText value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasText() => $_has(2);
  @$pb.TagNumber(3)
  void clearText() => $_clearField(3);
  @$pb.TagNumber(3)
  $1.FeedHeadText ensureText() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.String get schema => $_getSZ(3);
  @$pb.TagNumber(4)
  set schema($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasSchema() => $_has(3);
  @$pb.TagNumber(4)
  void clearSchema() => $_clearField(4);

  @$pb.TagNumber(5)
  $pb.PbList<$2.FeedKV> get logInfo => $_getList(4);

  @$pb.TagNumber(6)
  $3.FeedContentCustom get custom => $_getN(5);
  @$pb.TagNumber(6)
  set custom($3.FeedContentCustom value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasCustom() => $_has(5);
  @$pb.TagNumber(6)
  void clearCustom() => $_clearField(6);
  @$pb.TagNumber(6)
  $3.FeedContentCustom ensureCustom() => $_ensure(5);

  @$pb.TagNumber(7)
  $0.FeedHeadIcon get prefixIcon => $_getN(6);
  @$pb.TagNumber(7)
  set prefixIcon($0.FeedHeadIcon value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasPrefixIcon() => $_has(6);
  @$pb.TagNumber(7)
  void clearPrefixIcon() => $_clearField(7);
  @$pb.TagNumber(7)
  $0.FeedHeadIcon ensurePrefixIcon() => $_ensure(6);

  @$pb.TagNumber(8)
  $pb.PbList<$2.FeedKV> get businessInfo => $_getList(7);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
