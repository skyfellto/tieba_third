// This is a generated file - do not edit.
//
// Generated from SugLiveInfo.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'AlaLiveInfo.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class SugLiveInfo extends $pb.GeneratedMessage {
  factory SugLiveInfo({
    $core.String? word,
    $0.AlaLiveInfo? alaInfo,
  }) {
    final result = create();
    if (word != null) result.word = word;
    if (alaInfo != null) result.alaInfo = alaInfo;
    return result;
  }

  SugLiveInfo._();

  factory SugLiveInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SugLiveInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SugLiveInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'word')
    ..aOM<$0.AlaLiveInfo>(2, _omitFieldNames ? '' : 'alaInfo',
        subBuilder: $0.AlaLiveInfo.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SugLiveInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SugLiveInfo copyWith(void Function(SugLiveInfo) updates) =>
      super.copyWith((message) => updates(message as SugLiveInfo))
          as SugLiveInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SugLiveInfo create() => SugLiveInfo._();
  @$core.override
  SugLiveInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SugLiveInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SugLiveInfo>(create);
  static SugLiveInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get word => $_getSZ(0);
  @$pb.TagNumber(1)
  set word($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasWord() => $_has(0);
  @$pb.TagNumber(1)
  void clearWord() => $_clearField(1);

  @$pb.TagNumber(2)
  $0.AlaLiveInfo get alaInfo => $_getN(1);
  @$pb.TagNumber(2)
  set alaInfo($0.AlaLiveInfo value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasAlaInfo() => $_has(1);
  @$pb.TagNumber(2)
  void clearAlaInfo() => $_clearField(2);
  @$pb.TagNumber(2)
  $0.AlaLiveInfo ensureAlaInfo() => $_ensure(1);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
