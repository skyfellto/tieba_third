// This is a generated file - do not edit.
//
// Generated from GetForumDetail/BazhuUniversity.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'UniversityInfo.pb.dart' as $0;
import 'UniversityTabInfo.pb.dart' as $1;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class BazhuUniversity extends $pb.GeneratedMessage {
  factory BazhuUniversity({
    $core.Iterable<$0.UniversityInfo>? entrance,
    $core.Iterable<$0.UniversityInfo>? banner,
    $core.Iterable<$1.UniversityTabInfo>? tab,
  }) {
    final result = create();
    if (entrance != null) result.entrance.addAll(entrance);
    if (banner != null) result.banner.addAll(banner);
    if (tab != null) result.tab.addAll(tab);
    return result;
  }

  BazhuUniversity._();

  factory BazhuUniversity.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BazhuUniversity.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BazhuUniversity',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'tieba.getForumDetail'),
      createEmptyInstance: create)
    ..pPM<$0.UniversityInfo>(1, _omitFieldNames ? '' : 'entrance',
        subBuilder: $0.UniversityInfo.create)
    ..pPM<$0.UniversityInfo>(2, _omitFieldNames ? '' : 'banner',
        subBuilder: $0.UniversityInfo.create)
    ..pPM<$1.UniversityTabInfo>(3, _omitFieldNames ? '' : 'tab',
        subBuilder: $1.UniversityTabInfo.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BazhuUniversity clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BazhuUniversity copyWith(void Function(BazhuUniversity) updates) =>
      super.copyWith((message) => updates(message as BazhuUniversity))
          as BazhuUniversity;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BazhuUniversity create() => BazhuUniversity._();
  @$core.override
  BazhuUniversity createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BazhuUniversity getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BazhuUniversity>(create);
  static BazhuUniversity? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$0.UniversityInfo> get entrance => $_getList(0);

  @$pb.TagNumber(2)
  $pb.PbList<$0.UniversityInfo> get banner => $_getList(1);

  @$pb.TagNumber(3)
  $pb.PbList<$1.UniversityTabInfo> get tab => $_getList(2);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
