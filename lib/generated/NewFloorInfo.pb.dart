// This is a generated file - do not edit.
//
// Generated from NewFloorInfo.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'PbContent.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class NewFloorInfo extends $pb.GeneratedMessage {
  factory NewFloorInfo({
    $core.Iterable<$0.PbContent>? content,
    $core.int? isFloor,
    $core.int? isDel,
  }) {
    final result = create();
    if (content != null) result.content.addAll(content);
    if (isFloor != null) result.isFloor = isFloor;
    if (isDel != null) result.isDel = isDel;
    return result;
  }

  NewFloorInfo._();

  factory NewFloorInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory NewFloorInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'NewFloorInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..pPM<$0.PbContent>(1, _omitFieldNames ? '' : 'content',
        subBuilder: $0.PbContent.create)
    ..aI(2, _omitFieldNames ? '' : 'isFloor')
    ..aI(3, _omitFieldNames ? '' : 'isDel')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NewFloorInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NewFloorInfo copyWith(void Function(NewFloorInfo) updates) =>
      super.copyWith((message) => updates(message as NewFloorInfo))
          as NewFloorInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NewFloorInfo create() => NewFloorInfo._();
  @$core.override
  NewFloorInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static NewFloorInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<NewFloorInfo>(create);
  static NewFloorInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$0.PbContent> get content => $_getList(0);

  @$pb.TagNumber(2)
  $core.int get isFloor => $_getIZ(1);
  @$pb.TagNumber(2)
  set isFloor($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasIsFloor() => $_has(1);
  @$pb.TagNumber(2)
  void clearIsFloor() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get isDel => $_getIZ(2);
  @$pb.TagNumber(3)
  set isDel($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasIsDel() => $_has(2);
  @$pb.TagNumber(3)
  void clearIsDel() => $_clearField(3);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
