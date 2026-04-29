// This is a generated file - do not edit.
//
// Generated from UcCardInfo.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class UcCardInfo extends $pb.GeneratedMessage {
  factory UcCardInfo({
    $core.String? title,
    $core.String? pic,
    $core.String? jmp,
    $core.String? tip,
    $core.int? st,
  }) {
    final result = create();
    if (title != null) result.title = title;
    if (pic != null) result.pic = pic;
    if (jmp != null) result.jmp = jmp;
    if (tip != null) result.tip = tip;
    if (st != null) result.st = st;
    return result;
  }

  UcCardInfo._();

  factory UcCardInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UcCardInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UcCardInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'title')
    ..aOS(2, _omitFieldNames ? '' : 'pic')
    ..aOS(3, _omitFieldNames ? '' : 'jmp')
    ..aOS(4, _omitFieldNames ? '' : 'tip')
    ..aI(5, _omitFieldNames ? '' : 'st', fieldType: $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UcCardInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UcCardInfo copyWith(void Function(UcCardInfo) updates) =>
      super.copyWith((message) => updates(message as UcCardInfo)) as UcCardInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UcCardInfo create() => UcCardInfo._();
  @$core.override
  UcCardInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UcCardInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UcCardInfo>(create);
  static UcCardInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get pic => $_getSZ(1);
  @$pb.TagNumber(2)
  set pic($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPic() => $_has(1);
  @$pb.TagNumber(2)
  void clearPic() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get jmp => $_getSZ(2);
  @$pb.TagNumber(3)
  set jmp($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasJmp() => $_has(2);
  @$pb.TagNumber(3)
  void clearJmp() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get tip => $_getSZ(3);
  @$pb.TagNumber(4)
  set tip($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasTip() => $_has(3);
  @$pb.TagNumber(4)
  void clearTip() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get st => $_getIZ(4);
  @$pb.TagNumber(5)
  set st($core.int value) => $_setUnsignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasSt() => $_has(4);
  @$pb.TagNumber(5)
  void clearSt() => $_clearField(5);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
