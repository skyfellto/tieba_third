// This is a generated file - do not edit.
//
// Generated from Pendant.proto.

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

class Pendant extends $pb.GeneratedMessage {
  factory Pendant({
    $fixnum.Int64? propsId,
    $core.String? imgUrl,
    $core.String? dynamicUrl,
    $core.String? jumpUrl,
  }) {
    final result = create();
    if (propsId != null) result.propsId = propsId;
    if (imgUrl != null) result.imgUrl = imgUrl;
    if (dynamicUrl != null) result.dynamicUrl = dynamicUrl;
    if (jumpUrl != null) result.jumpUrl = jumpUrl;
    return result;
  }

  Pendant._();

  factory Pendant.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Pendant.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Pendant',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'propsId', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(2, _omitFieldNames ? '' : 'imgUrl')
    ..aOS(3, _omitFieldNames ? '' : 'dynamicUrl')
    ..aOS(4, _omitFieldNames ? '' : 'jumpUrl')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Pendant clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Pendant copyWith(void Function(Pendant) updates) =>
      super.copyWith((message) => updates(message as Pendant)) as Pendant;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Pendant create() => Pendant._();
  @$core.override
  Pendant createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Pendant getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Pendant>(create);
  static Pendant? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get propsId => $_getI64(0);
  @$pb.TagNumber(1)
  set propsId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPropsId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPropsId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get imgUrl => $_getSZ(1);
  @$pb.TagNumber(2)
  set imgUrl($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasImgUrl() => $_has(1);
  @$pb.TagNumber(2)
  void clearImgUrl() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get dynamicUrl => $_getSZ(2);
  @$pb.TagNumber(3)
  set dynamicUrl($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasDynamicUrl() => $_has(2);
  @$pb.TagNumber(3)
  void clearDynamicUrl() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get jumpUrl => $_getSZ(3);
  @$pb.TagNumber(4)
  set jumpUrl($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasJumpUrl() => $_has(3);
  @$pb.TagNumber(4)
  void clearJumpUrl() => $_clearField(4);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
