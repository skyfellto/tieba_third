// This is a generated file - do not edit.
//
// Generated from RecomThreadList.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'ThreadInfo.pb.dart' as $1;
import 'User.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class RecomThreadList extends $pb.GeneratedMessage {
  factory RecomThreadList({
    $core.Iterable<$0.User>? userList,
    $core.Iterable<$1.ThreadInfo>? threadList,
    $core.String? recommendDate,
    $fixnum.Int64? currentPv,
  }) {
    final result = create();
    if (userList != null) result.userList.addAll(userList);
    if (threadList != null) result.threadList.addAll(threadList);
    if (recommendDate != null) result.recommendDate = recommendDate;
    if (currentPv != null) result.currentPv = currentPv;
    return result;
  }

  RecomThreadList._();

  factory RecomThreadList.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RecomThreadList.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RecomThreadList',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..pPM<$0.User>(1, _omitFieldNames ? '' : 'userList',
        subBuilder: $0.User.create)
    ..pPM<$1.ThreadInfo>(2, _omitFieldNames ? '' : 'threadList',
        subBuilder: $1.ThreadInfo.create)
    ..aOS(3, _omitFieldNames ? '' : 'recommendDate')
    ..aInt64(4, _omitFieldNames ? '' : 'currentPv')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RecomThreadList clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RecomThreadList copyWith(void Function(RecomThreadList) updates) =>
      super.copyWith((message) => updates(message as RecomThreadList))
          as RecomThreadList;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RecomThreadList create() => RecomThreadList._();
  @$core.override
  RecomThreadList createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RecomThreadList getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RecomThreadList>(create);
  static RecomThreadList? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$0.User> get userList => $_getList(0);

  @$pb.TagNumber(2)
  $pb.PbList<$1.ThreadInfo> get threadList => $_getList(1);

  @$pb.TagNumber(3)
  $core.String get recommendDate => $_getSZ(2);
  @$pb.TagNumber(3)
  set recommendDate($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasRecommendDate() => $_has(2);
  @$pb.TagNumber(3)
  void clearRecommendDate() => $_clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get currentPv => $_getI64(3);
  @$pb.TagNumber(4)
  set currentPv($fixnum.Int64 value) => $_setInt64(3, value);
  @$pb.TagNumber(4)
  $core.bool hasCurrentPv() => $_has(3);
  @$pb.TagNumber(4)
  void clearCurrentPv() => $_clearField(4);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
