// This is a generated file - do not edit.
//
// Generated from GetForumDetail/ForumDataCenter.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class ForumDataCenter extends $pb.GeneratedMessage {
  factory ForumDataCenter({
    $core.int? newPvCnt,
    $core.int? newPvCntDiff,
    $core.int? newThreadCnt,
    $core.int? newThreadCntDiff,
    $core.int? newFollowCnt,
    $core.int? newFollowCntDiff,
    $core.int? userDurationAvg,
    $core.double? userDurationAvgDiff,
    $core.double? userSignRate,
    $core.double? userSignRateDiff,
    $core.int? homepageThreadCnt,
    $core.int? homepageThreadCntDiff,
  }) {
    final result = create();
    if (newPvCnt != null) result.newPvCnt = newPvCnt;
    if (newPvCntDiff != null) result.newPvCntDiff = newPvCntDiff;
    if (newThreadCnt != null) result.newThreadCnt = newThreadCnt;
    if (newThreadCntDiff != null) result.newThreadCntDiff = newThreadCntDiff;
    if (newFollowCnt != null) result.newFollowCnt = newFollowCnt;
    if (newFollowCntDiff != null) result.newFollowCntDiff = newFollowCntDiff;
    if (userDurationAvg != null) result.userDurationAvg = userDurationAvg;
    if (userDurationAvgDiff != null)
      result.userDurationAvgDiff = userDurationAvgDiff;
    if (userSignRate != null) result.userSignRate = userSignRate;
    if (userSignRateDiff != null) result.userSignRateDiff = userSignRateDiff;
    if (homepageThreadCnt != null) result.homepageThreadCnt = homepageThreadCnt;
    if (homepageThreadCntDiff != null)
      result.homepageThreadCntDiff = homepageThreadCntDiff;
    return result;
  }

  ForumDataCenter._();

  factory ForumDataCenter.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ForumDataCenter.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ForumDataCenter',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'tieba.getForumDetail'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'newPvCnt')
    ..aI(2, _omitFieldNames ? '' : 'newPvCntDiff')
    ..aI(3, _omitFieldNames ? '' : 'newThreadCnt')
    ..aI(4, _omitFieldNames ? '' : 'newThreadCntDiff')
    ..aI(5, _omitFieldNames ? '' : 'newFollowCnt')
    ..aI(6, _omitFieldNames ? '' : 'newFollowCntDiff')
    ..aI(7, _omitFieldNames ? '' : 'userDurationAvg')
    ..aD(8, _omitFieldNames ? '' : 'userDurationAvgDiff')
    ..aD(9, _omitFieldNames ? '' : 'userSignRate')
    ..aD(10, _omitFieldNames ? '' : 'userSignRateDiff')
    ..aI(11, _omitFieldNames ? '' : 'homepageThreadCnt')
    ..aI(12, _omitFieldNames ? '' : 'homepageThreadCntDiff')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ForumDataCenter clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ForumDataCenter copyWith(void Function(ForumDataCenter) updates) =>
      super.copyWith((message) => updates(message as ForumDataCenter))
          as ForumDataCenter;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ForumDataCenter create() => ForumDataCenter._();
  @$core.override
  ForumDataCenter createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ForumDataCenter getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ForumDataCenter>(create);
  static ForumDataCenter? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get newPvCnt => $_getIZ(0);
  @$pb.TagNumber(1)
  set newPvCnt($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasNewPvCnt() => $_has(0);
  @$pb.TagNumber(1)
  void clearNewPvCnt() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get newPvCntDiff => $_getIZ(1);
  @$pb.TagNumber(2)
  set newPvCntDiff($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasNewPvCntDiff() => $_has(1);
  @$pb.TagNumber(2)
  void clearNewPvCntDiff() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get newThreadCnt => $_getIZ(2);
  @$pb.TagNumber(3)
  set newThreadCnt($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasNewThreadCnt() => $_has(2);
  @$pb.TagNumber(3)
  void clearNewThreadCnt() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get newThreadCntDiff => $_getIZ(3);
  @$pb.TagNumber(4)
  set newThreadCntDiff($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasNewThreadCntDiff() => $_has(3);
  @$pb.TagNumber(4)
  void clearNewThreadCntDiff() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get newFollowCnt => $_getIZ(4);
  @$pb.TagNumber(5)
  set newFollowCnt($core.int value) => $_setSignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasNewFollowCnt() => $_has(4);
  @$pb.TagNumber(5)
  void clearNewFollowCnt() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get newFollowCntDiff => $_getIZ(5);
  @$pb.TagNumber(6)
  set newFollowCntDiff($core.int value) => $_setSignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasNewFollowCntDiff() => $_has(5);
  @$pb.TagNumber(6)
  void clearNewFollowCntDiff() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.int get userDurationAvg => $_getIZ(6);
  @$pb.TagNumber(7)
  set userDurationAvg($core.int value) => $_setSignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasUserDurationAvg() => $_has(6);
  @$pb.TagNumber(7)
  void clearUserDurationAvg() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.double get userDurationAvgDiff => $_getN(7);
  @$pb.TagNumber(8)
  set userDurationAvgDiff($core.double value) => $_setDouble(7, value);
  @$pb.TagNumber(8)
  $core.bool hasUserDurationAvgDiff() => $_has(7);
  @$pb.TagNumber(8)
  void clearUserDurationAvgDiff() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.double get userSignRate => $_getN(8);
  @$pb.TagNumber(9)
  set userSignRate($core.double value) => $_setDouble(8, value);
  @$pb.TagNumber(9)
  $core.bool hasUserSignRate() => $_has(8);
  @$pb.TagNumber(9)
  void clearUserSignRate() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.double get userSignRateDiff => $_getN(9);
  @$pb.TagNumber(10)
  set userSignRateDiff($core.double value) => $_setDouble(9, value);
  @$pb.TagNumber(10)
  $core.bool hasUserSignRateDiff() => $_has(9);
  @$pb.TagNumber(10)
  void clearUserSignRateDiff() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.int get homepageThreadCnt => $_getIZ(10);
  @$pb.TagNumber(11)
  set homepageThreadCnt($core.int value) => $_setSignedInt32(10, value);
  @$pb.TagNumber(11)
  $core.bool hasHomepageThreadCnt() => $_has(10);
  @$pb.TagNumber(11)
  void clearHomepageThreadCnt() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.int get homepageThreadCntDiff => $_getIZ(11);
  @$pb.TagNumber(12)
  set homepageThreadCntDiff($core.int value) => $_setSignedInt32(11, value);
  @$pb.TagNumber(12)
  $core.bool hasHomepageThreadCntDiff() => $_has(11);
  @$pb.TagNumber(12)
  void clearHomepageThreadCntDiff() => $_clearField(12);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
