// This is a generated file - do not edit.
//
// Generated from GetHistoryForum/GetHistoryForumResponseData.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../FrsTabInfo.pb.dart' as $1;
import '../HistoryForumInfo.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class GetHistoryForumResponseData extends $pb.GeneratedMessage {
  factory GetHistoryForumResponseData({
    $core.Iterable<$0.HistoryForumInfo>? historyForum,
    $core.Iterable<$1.FrsTabInfo>? navTabInfo,
    $core.Iterable<$0.HistoryForumInfo>? thisWeekForums,
  }) {
    final result = create();
    if (historyForum != null) result.historyForum.addAll(historyForum);
    if (navTabInfo != null) result.navTabInfo.addAll(navTabInfo);
    if (thisWeekForums != null) result.thisWeekForums.addAll(thisWeekForums);
    return result;
  }

  GetHistoryForumResponseData._();

  factory GetHistoryForumResponseData.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetHistoryForumResponseData.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetHistoryForumResponseData',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'tieba.getHistoryForum'),
      createEmptyInstance: create)
    ..pPM<$0.HistoryForumInfo>(1, _omitFieldNames ? '' : 'historyForum',
        subBuilder: $0.HistoryForumInfo.create)
    ..pPM<$1.FrsTabInfo>(2, _omitFieldNames ? '' : 'navTabInfo',
        subBuilder: $1.FrsTabInfo.create)
    ..pPM<$0.HistoryForumInfo>(3, _omitFieldNames ? '' : 'thisWeekForums',
        subBuilder: $0.HistoryForumInfo.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetHistoryForumResponseData clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetHistoryForumResponseData copyWith(
          void Function(GetHistoryForumResponseData) updates) =>
      super.copyWith(
              (message) => updates(message as GetHistoryForumResponseData))
          as GetHistoryForumResponseData;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetHistoryForumResponseData create() =>
      GetHistoryForumResponseData._();
  @$core.override
  GetHistoryForumResponseData createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetHistoryForumResponseData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetHistoryForumResponseData>(create);
  static GetHistoryForumResponseData? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$0.HistoryForumInfo> get historyForum => $_getList(0);

  @$pb.TagNumber(2)
  $pb.PbList<$1.FrsTabInfo> get navTabInfo => $_getList(1);

  @$pb.TagNumber(3)
  $pb.PbList<$0.HistoryForumInfo> get thisWeekForums => $_getList(2);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
