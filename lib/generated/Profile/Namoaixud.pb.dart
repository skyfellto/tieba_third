// This is a generated file - do not edit.
//
// Generated from Profile/Namoaixud.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class Namoaixud extends $pb.GeneratedMessage {
  factory Namoaixud({
    $core.int? totalCash,
    $core.int? isEnd,
  }) {
    final result = create();
    if (totalCash != null) result.totalCash = totalCash;
    if (isEnd != null) result.isEnd = isEnd;
    return result;
  }

  Namoaixud._();

  factory Namoaixud.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Namoaixud.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Namoaixud',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba.profile'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'totalCash', fieldType: $pb.PbFieldType.OU3)
    ..aI(2, _omitFieldNames ? '' : 'isEnd', fieldType: $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Namoaixud clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Namoaixud copyWith(void Function(Namoaixud) updates) =>
      super.copyWith((message) => updates(message as Namoaixud)) as Namoaixud;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Namoaixud create() => Namoaixud._();
  @$core.override
  Namoaixud createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Namoaixud getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Namoaixud>(create);
  static Namoaixud? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get totalCash => $_getIZ(0);
  @$pb.TagNumber(1)
  set totalCash($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTotalCash() => $_has(0);
  @$pb.TagNumber(1)
  void clearTotalCash() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get isEnd => $_getIZ(1);
  @$pb.TagNumber(2)
  set isEnd($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasIsEnd() => $_has(1);
  @$pb.TagNumber(2)
  void clearIsEnd() => $_clearField(2);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
