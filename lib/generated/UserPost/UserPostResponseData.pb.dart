// This is a generated file - do not edit.
//
// Generated from UserPost/UserPostResponseData.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../PostInfoList.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class UserPostResponseData extends $pb.GeneratedMessage {
  factory UserPostResponseData({
    $core.Iterable<$0.PostInfoList>? postList,
    $core.int? hidePost,
    $fixnum.Int64? time,
    $fixnum.Int64? ctime,
    $fixnum.Int64? logid,
    $core.int? maskType,
    $core.int? viewCardNum,
    $core.int? reddotDeletedThread,
  }) {
    final result = create();
    if (postList != null) result.postList.addAll(postList);
    if (hidePost != null) result.hidePost = hidePost;
    if (time != null) result.time = time;
    if (ctime != null) result.ctime = ctime;
    if (logid != null) result.logid = logid;
    if (maskType != null) result.maskType = maskType;
    if (viewCardNum != null) result.viewCardNum = viewCardNum;
    if (reddotDeletedThread != null)
      result.reddotDeletedThread = reddotDeletedThread;
    return result;
  }

  UserPostResponseData._();

  factory UserPostResponseData.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UserPostResponseData.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UserPostResponseData',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba.userPost'),
      createEmptyInstance: create)
    ..pPM<$0.PostInfoList>(1, _omitFieldNames ? '' : 'postList',
        subBuilder: $0.PostInfoList.create)
    ..aI(2, _omitFieldNames ? '' : 'hidePost', fieldType: $pb.PbFieldType.OU3)
    ..a<$fixnum.Int64>(3, _omitFieldNames ? '' : 'time', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(4, _omitFieldNames ? '' : 'ctime', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(5, _omitFieldNames ? '' : 'logid', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aI(6, _omitFieldNames ? '' : 'maskType')
    ..aI(7, _omitFieldNames ? '' : 'viewCardNum')
    ..aI(8, _omitFieldNames ? '' : 'reddotDeletedThread')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UserPostResponseData clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UserPostResponseData copyWith(void Function(UserPostResponseData) updates) =>
      super.copyWith((message) => updates(message as UserPostResponseData))
          as UserPostResponseData;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserPostResponseData create() => UserPostResponseData._();
  @$core.override
  UserPostResponseData createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UserPostResponseData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UserPostResponseData>(create);
  static UserPostResponseData? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$0.PostInfoList> get postList => $_getList(0);

  @$pb.TagNumber(2)
  $core.int get hidePost => $_getIZ(1);
  @$pb.TagNumber(2)
  set hidePost($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasHidePost() => $_has(1);
  @$pb.TagNumber(2)
  void clearHidePost() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get time => $_getI64(2);
  @$pb.TagNumber(3)
  set time($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearTime() => $_clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get ctime => $_getI64(3);
  @$pb.TagNumber(4)
  set ctime($fixnum.Int64 value) => $_setInt64(3, value);
  @$pb.TagNumber(4)
  $core.bool hasCtime() => $_has(3);
  @$pb.TagNumber(4)
  void clearCtime() => $_clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get logid => $_getI64(4);
  @$pb.TagNumber(5)
  set logid($fixnum.Int64 value) => $_setInt64(4, value);
  @$pb.TagNumber(5)
  $core.bool hasLogid() => $_has(4);
  @$pb.TagNumber(5)
  void clearLogid() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get maskType => $_getIZ(5);
  @$pb.TagNumber(6)
  set maskType($core.int value) => $_setSignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasMaskType() => $_has(5);
  @$pb.TagNumber(6)
  void clearMaskType() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.int get viewCardNum => $_getIZ(6);
  @$pb.TagNumber(7)
  set viewCardNum($core.int value) => $_setSignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasViewCardNum() => $_has(6);
  @$pb.TagNumber(7)
  void clearViewCardNum() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.int get reddotDeletedThread => $_getIZ(7);
  @$pb.TagNumber(8)
  set reddotDeletedThread($core.int value) => $_setSignedInt32(7, value);
  @$pb.TagNumber(8)
  $core.bool hasReddotDeletedThread() => $_has(7);
  @$pb.TagNumber(8)
  void clearReddotDeletedThread() => $_clearField(8);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
