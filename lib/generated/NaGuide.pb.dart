// This is a generated file - do not edit.
//
// Generated from NaGuide.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'RecGuide.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class NaGuide extends $pb.GeneratedMessage {
  factory NaGuide({
    $core.String? dwnlUrl,
    $core.Iterable<$0.RecGuide>? recInfo,
  }) {
    final result = create();
    if (dwnlUrl != null) result.dwnlUrl = dwnlUrl;
    if (recInfo != null) result.recInfo.addAll(recInfo);
    return result;
  }

  NaGuide._();

  factory NaGuide.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory NaGuide.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'NaGuide',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'dwnlUrl')
    ..pPM<$0.RecGuide>(2, _omitFieldNames ? '' : 'recInfo',
        subBuilder: $0.RecGuide.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NaGuide clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NaGuide copyWith(void Function(NaGuide) updates) =>
      super.copyWith((message) => updates(message as NaGuide)) as NaGuide;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NaGuide create() => NaGuide._();
  @$core.override
  NaGuide createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static NaGuide getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NaGuide>(create);
  static NaGuide? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get dwnlUrl => $_getSZ(0);
  @$pb.TagNumber(1)
  set dwnlUrl($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDwnlUrl() => $_has(0);
  @$pb.TagNumber(1)
  void clearDwnlUrl() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<$0.RecGuide> get recInfo => $_getList(1);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
