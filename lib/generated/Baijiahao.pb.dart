// This is a generated file - do not edit.
//
// Generated from Baijiahao.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class Baijiahao extends $pb.GeneratedMessage {
  factory Baijiahao({
    $core.String? oriUgcNid,
    $core.String? oriUgcTid,
    $core.int? oriUgcType,
    $core.String? oriUgcVid,
    $core.String? forwardUrl,
  }) {
    final result = create();
    if (oriUgcNid != null) result.oriUgcNid = oriUgcNid;
    if (oriUgcTid != null) result.oriUgcTid = oriUgcTid;
    if (oriUgcType != null) result.oriUgcType = oriUgcType;
    if (oriUgcVid != null) result.oriUgcVid = oriUgcVid;
    if (forwardUrl != null) result.forwardUrl = forwardUrl;
    return result;
  }

  Baijiahao._();

  factory Baijiahao.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Baijiahao.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Baijiahao',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'oriUgcNid')
    ..aOS(2, _omitFieldNames ? '' : 'oriUgcTid')
    ..aI(3, _omitFieldNames ? '' : 'oriUgcType')
    ..aOS(4, _omitFieldNames ? '' : 'oriUgcVid')
    ..aOS(5, _omitFieldNames ? '' : 'forwardUrl')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Baijiahao clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Baijiahao copyWith(void Function(Baijiahao) updates) =>
      super.copyWith((message) => updates(message as Baijiahao)) as Baijiahao;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Baijiahao create() => Baijiahao._();
  @$core.override
  Baijiahao createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Baijiahao getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Baijiahao>(create);
  static Baijiahao? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get oriUgcNid => $_getSZ(0);
  @$pb.TagNumber(1)
  set oriUgcNid($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasOriUgcNid() => $_has(0);
  @$pb.TagNumber(1)
  void clearOriUgcNid() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get oriUgcTid => $_getSZ(1);
  @$pb.TagNumber(2)
  set oriUgcTid($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasOriUgcTid() => $_has(1);
  @$pb.TagNumber(2)
  void clearOriUgcTid() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get oriUgcType => $_getIZ(2);
  @$pb.TagNumber(3)
  set oriUgcType($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasOriUgcType() => $_has(2);
  @$pb.TagNumber(3)
  void clearOriUgcType() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get oriUgcVid => $_getSZ(3);
  @$pb.TagNumber(4)
  set oriUgcVid($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasOriUgcVid() => $_has(3);
  @$pb.TagNumber(4)
  void clearOriUgcVid() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get forwardUrl => $_getSZ(4);
  @$pb.TagNumber(5)
  set forwardUrl($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasForwardUrl() => $_has(4);
  @$pb.TagNumber(5)
  void clearForwardUrl() => $_clearField(5);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
