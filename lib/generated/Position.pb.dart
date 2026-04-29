// This is a generated file - do not edit.
//
// Generated from Position.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class Position extends $pb.GeneratedMessage {
  factory Position({
    $core.int? frs,
    $core.int? pb,
    $core.int? home,
    $core.int? card,
  }) {
    final result = create();
    if (frs != null) result.frs = frs;
    if (pb != null) result.pb = pb;
    if (home != null) result.home = home;
    if (card != null) result.card = card;
    return result;
  }

  Position._();

  factory Position.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Position.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Position',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'frs')
    ..aI(2, _omitFieldNames ? '' : 'pb')
    ..aI(3, _omitFieldNames ? '' : 'home')
    ..aI(4, _omitFieldNames ? '' : 'card')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Position clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Position copyWith(void Function(Position) updates) =>
      super.copyWith((message) => updates(message as Position)) as Position;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Position create() => Position._();
  @$core.override
  Position createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Position getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Position>(create);
  static Position? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get frs => $_getIZ(0);
  @$pb.TagNumber(1)
  set frs($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasFrs() => $_has(0);
  @$pb.TagNumber(1)
  void clearFrs() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get pb => $_getIZ(1);
  @$pb.TagNumber(2)
  set pb($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPb() => $_has(1);
  @$pb.TagNumber(2)
  void clearPb() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get home => $_getIZ(2);
  @$pb.TagNumber(3)
  set home($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasHome() => $_has(2);
  @$pb.TagNumber(3)
  void clearHome() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get card => $_getIZ(3);
  @$pb.TagNumber(4)
  set card($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasCard() => $_has(3);
  @$pb.TagNumber(4)
  void clearCard() => $_clearField(4);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
