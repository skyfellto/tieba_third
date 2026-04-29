// This is a generated file - do not edit.
//
// Generated from SugRankingInfo.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'RankingParam.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class SugRankingInfo extends $pb.GeneratedMessage {
  factory SugRankingInfo({
    $core.String? rankTitle,
    $0.RankingParam? rankParam,
  }) {
    final result = create();
    if (rankTitle != null) result.rankTitle = rankTitle;
    if (rankParam != null) result.rankParam = rankParam;
    return result;
  }

  SugRankingInfo._();

  factory SugRankingInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SugRankingInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SugRankingInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'rankTitle')
    ..aOM<$0.RankingParam>(2, _omitFieldNames ? '' : 'rankParam',
        subBuilder: $0.RankingParam.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SugRankingInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SugRankingInfo copyWith(void Function(SugRankingInfo) updates) =>
      super.copyWith((message) => updates(message as SugRankingInfo))
          as SugRankingInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SugRankingInfo create() => SugRankingInfo._();
  @$core.override
  SugRankingInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SugRankingInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SugRankingInfo>(create);
  static SugRankingInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get rankTitle => $_getSZ(0);
  @$pb.TagNumber(1)
  set rankTitle($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasRankTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearRankTitle() => $_clearField(1);

  @$pb.TagNumber(2)
  $0.RankingParam get rankParam => $_getN(1);
  @$pb.TagNumber(2)
  set rankParam($0.RankingParam value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasRankParam() => $_has(1);
  @$pb.TagNumber(2)
  void clearRankParam() => $_clearField(2);
  @$pb.TagNumber(2)
  $0.RankingParam ensureRankParam() => $_ensure(1);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
