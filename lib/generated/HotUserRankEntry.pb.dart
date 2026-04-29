// This is a generated file - do not edit.
//
// Generated from HotUserRankEntry.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'ShortUserInfo.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class HotUserRankEntry extends $pb.GeneratedMessage {
  factory HotUserRankEntry({
    $core.Iterable<$0.ShortUserInfo>? hotUser,
    $core.String? moduleName,
    $core.String? moduleIcon,
    $core.int? todayRank,
    $core.int? yesterdayRank,
    $core.bool? isInRank,
  }) {
    final result = create();
    if (hotUser != null) result.hotUser.addAll(hotUser);
    if (moduleName != null) result.moduleName = moduleName;
    if (moduleIcon != null) result.moduleIcon = moduleIcon;
    if (todayRank != null) result.todayRank = todayRank;
    if (yesterdayRank != null) result.yesterdayRank = yesterdayRank;
    if (isInRank != null) result.isInRank = isInRank;
    return result;
  }

  HotUserRankEntry._();

  factory HotUserRankEntry.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory HotUserRankEntry.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'HotUserRankEntry',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..pPM<$0.ShortUserInfo>(1, _omitFieldNames ? '' : 'hotUser',
        subBuilder: $0.ShortUserInfo.create)
    ..aOS(2, _omitFieldNames ? '' : 'moduleName')
    ..aOS(3, _omitFieldNames ? '' : 'moduleIcon')
    ..aI(4, _omitFieldNames ? '' : 'todayRank', fieldType: $pb.PbFieldType.OU3)
    ..aI(5, _omitFieldNames ? '' : 'yesterdayRank',
        fieldType: $pb.PbFieldType.OU3)
    ..aOB(6, _omitFieldNames ? '' : 'isInRank')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HotUserRankEntry clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HotUserRankEntry copyWith(void Function(HotUserRankEntry) updates) =>
      super.copyWith((message) => updates(message as HotUserRankEntry))
          as HotUserRankEntry;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HotUserRankEntry create() => HotUserRankEntry._();
  @$core.override
  HotUserRankEntry createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static HotUserRankEntry getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<HotUserRankEntry>(create);
  static HotUserRankEntry? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$0.ShortUserInfo> get hotUser => $_getList(0);

  @$pb.TagNumber(2)
  $core.String get moduleName => $_getSZ(1);
  @$pb.TagNumber(2)
  set moduleName($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasModuleName() => $_has(1);
  @$pb.TagNumber(2)
  void clearModuleName() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get moduleIcon => $_getSZ(2);
  @$pb.TagNumber(3)
  set moduleIcon($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasModuleIcon() => $_has(2);
  @$pb.TagNumber(3)
  void clearModuleIcon() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get todayRank => $_getIZ(3);
  @$pb.TagNumber(4)
  set todayRank($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasTodayRank() => $_has(3);
  @$pb.TagNumber(4)
  void clearTodayRank() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get yesterdayRank => $_getIZ(4);
  @$pb.TagNumber(5)
  set yesterdayRank($core.int value) => $_setUnsignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasYesterdayRank() => $_has(4);
  @$pb.TagNumber(5)
  void clearYesterdayRank() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.bool get isInRank => $_getBF(5);
  @$pb.TagNumber(6)
  set isInRank($core.bool value) => $_setBool(5, value);
  @$pb.TagNumber(6)
  $core.bool hasIsInRank() => $_has(5);
  @$pb.TagNumber(6)
  void clearIsInRank() => $_clearField(6);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
