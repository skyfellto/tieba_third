// This is a generated file - do not edit.
//
// Generated from RecomTagInfo.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class RecomTagInfo extends $pb.GeneratedMessage {
  factory RecomTagInfo({
    $core.int? id,
    $core.String? name,
    $core.String? pic,
    $core.String? firstClass,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (name != null) result.name = name;
    if (pic != null) result.pic = pic;
    if (firstClass != null) result.firstClass = firstClass;
    return result;
  }

  RecomTagInfo._();

  factory RecomTagInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RecomTagInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RecomTagInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'pic')
    ..aOS(4, _omitFieldNames ? '' : 'firstClass')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RecomTagInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RecomTagInfo copyWith(void Function(RecomTagInfo) updates) =>
      super.copyWith((message) => updates(message as RecomTagInfo))
          as RecomTagInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RecomTagInfo create() => RecomTagInfo._();
  @$core.override
  RecomTagInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RecomTagInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RecomTagInfo>(create);
  static RecomTagInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get pic => $_getSZ(2);
  @$pb.TagNumber(3)
  set pic($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasPic() => $_has(2);
  @$pb.TagNumber(3)
  void clearPic() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get firstClass => $_getSZ(3);
  @$pb.TagNumber(4)
  set firstClass($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasFirstClass() => $_has(3);
  @$pb.TagNumber(4)
  void clearFirstClass() => $_clearField(4);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
