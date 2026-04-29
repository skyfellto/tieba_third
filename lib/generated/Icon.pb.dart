// This is a generated file - do not edit.
//
// Generated from Icon.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'Position.pb.dart' as $1;
import 'Terminal.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class Icon extends $pb.GeneratedMessage {
  factory Icon({
    $core.String? name,
    $core.int? weight,
    $core.String? url,
    $core.String? icon,
    $core.int? value,
    $0.Terminal? terminal,
    $1.Position? position,
    $core.Iterable<$core.String>? spriteInfo,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (weight != null) result.weight = weight;
    if (url != null) result.url = url;
    if (icon != null) result.icon = icon;
    if (value != null) result.value = value;
    if (terminal != null) result.terminal = terminal;
    if (position != null) result.position = position;
    if (spriteInfo != null) result.spriteInfo.addAll(spriteInfo);
    return result;
  }

  Icon._();

  factory Icon.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Icon.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Icon',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aI(2, _omitFieldNames ? '' : 'weight')
    ..aOS(3, _omitFieldNames ? '' : 'url')
    ..aOS(4, _omitFieldNames ? '' : 'icon')
    ..aI(5, _omitFieldNames ? '' : 'value')
    ..aOM<$0.Terminal>(6, _omitFieldNames ? '' : 'terminal',
        subBuilder: $0.Terminal.create)
    ..aOM<$1.Position>(7, _omitFieldNames ? '' : 'position',
        subBuilder: $1.Position.create)
    ..pPS(8, _omitFieldNames ? '' : 'spriteInfo')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Icon clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Icon copyWith(void Function(Icon) updates) =>
      super.copyWith((message) => updates(message as Icon)) as Icon;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Icon create() => Icon._();
  @$core.override
  Icon createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Icon getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Icon>(create);
  static Icon? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get weight => $_getIZ(1);
  @$pb.TagNumber(2)
  set weight($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasWeight() => $_has(1);
  @$pb.TagNumber(2)
  void clearWeight() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get url => $_getSZ(2);
  @$pb.TagNumber(3)
  set url($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasUrl() => $_has(2);
  @$pb.TagNumber(3)
  void clearUrl() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get icon => $_getSZ(3);
  @$pb.TagNumber(4)
  set icon($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasIcon() => $_has(3);
  @$pb.TagNumber(4)
  void clearIcon() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get value => $_getIZ(4);
  @$pb.TagNumber(5)
  set value($core.int value) => $_setSignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasValue() => $_has(4);
  @$pb.TagNumber(5)
  void clearValue() => $_clearField(5);

  @$pb.TagNumber(6)
  $0.Terminal get terminal => $_getN(5);
  @$pb.TagNumber(6)
  set terminal($0.Terminal value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasTerminal() => $_has(5);
  @$pb.TagNumber(6)
  void clearTerminal() => $_clearField(6);
  @$pb.TagNumber(6)
  $0.Terminal ensureTerminal() => $_ensure(5);

  @$pb.TagNumber(7)
  $1.Position get position => $_getN(6);
  @$pb.TagNumber(7)
  set position($1.Position value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasPosition() => $_has(6);
  @$pb.TagNumber(7)
  void clearPosition() => $_clearField(7);
  @$pb.TagNumber(7)
  $1.Position ensurePosition() => $_ensure(6);

  @$pb.TagNumber(8)
  $pb.PbList<$core.String> get spriteInfo => $_getList(7);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
