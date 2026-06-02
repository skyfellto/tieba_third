// This is a generated file - do not edit.
//
// Generated from ReplyMe/ReplyList.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../Baijiahao.pb.dart' as $3;
import '../NewFloorInfo.pb.dart' as $4;
import '../OriginThreadInfo.pb.dart' as $2;
import '../User.pb.dart' as $0;
import '../Zan.pb.dart' as $1;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class ReplyList extends $pb.GeneratedMessage {
  factory ReplyList({
    $fixnum.Int64? threadId,
    $fixnum.Int64? postId,
    $core.int? time,
    $core.String? title,
    $core.String? fname,
    $core.String? content,
    $core.int? isFloor,
    $core.String? quoteContent,
    $0.User? replyer,
    $core.int? type,
    $core.int? unread,
    $core.String? itemType,
    $1.Zan? zan,
    $fixnum.Int64? quotePid,
    $0.User? quoteUser,
    $core.int? serverTime,
    $core.int? threadType,
    $fixnum.Int64? vForumId,
    $core.int? hideFname,
    $core.int? isStory,
    $2.OriginThreadInfo? originThreadInfo,
    $core.String? postFrom,
    $core.int? isShareThread,
    $core.String? threadImgUrl,
    $0.User? threadAuthorUser,
    $core.int? isBjh,
    $3.Baijiahao? baijiahao,
    $core.Iterable<$4.NewFloorInfo>? newFloorInfo,
    $core.int? hasAgree,
    $core.String? targetScheme,
    $core.String? displayText,
    $core.int? isFilter,
    $core.String? firstScheme,
    $core.String? secondScheme,
    $core.String? thirdScheme,
  }) {
    final result = create();
    if (threadId != null) result.threadId = threadId;
    if (postId != null) result.postId = postId;
    if (time != null) result.time = time;
    if (title != null) result.title = title;
    if (fname != null) result.fname = fname;
    if (content != null) result.content = content;
    if (isFloor != null) result.isFloor = isFloor;
    if (quoteContent != null) result.quoteContent = quoteContent;
    if (replyer != null) result.replyer = replyer;
    if (type != null) result.type = type;
    if (unread != null) result.unread = unread;
    if (itemType != null) result.itemType = itemType;
    if (zan != null) result.zan = zan;
    if (quotePid != null) result.quotePid = quotePid;
    if (quoteUser != null) result.quoteUser = quoteUser;
    if (serverTime != null) result.serverTime = serverTime;
    if (threadType != null) result.threadType = threadType;
    if (vForumId != null) result.vForumId = vForumId;
    if (hideFname != null) result.hideFname = hideFname;
    if (isStory != null) result.isStory = isStory;
    if (originThreadInfo != null) result.originThreadInfo = originThreadInfo;
    if (postFrom != null) result.postFrom = postFrom;
    if (isShareThread != null) result.isShareThread = isShareThread;
    if (threadImgUrl != null) result.threadImgUrl = threadImgUrl;
    if (threadAuthorUser != null) result.threadAuthorUser = threadAuthorUser;
    if (isBjh != null) result.isBjh = isBjh;
    if (baijiahao != null) result.baijiahao = baijiahao;
    if (newFloorInfo != null) result.newFloorInfo.addAll(newFloorInfo);
    if (hasAgree != null) result.hasAgree = hasAgree;
    if (targetScheme != null) result.targetScheme = targetScheme;
    if (displayText != null) result.displayText = displayText;
    if (isFilter != null) result.isFilter = isFilter;
    if (firstScheme != null) result.firstScheme = firstScheme;
    if (secondScheme != null) result.secondScheme = secondScheme;
    if (thirdScheme != null) result.thirdScheme = thirdScheme;
    return result;
  }

  ReplyList._();

  factory ReplyList.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ReplyList.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ReplyList',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(
        1, _omitFieldNames ? '' : 'threadId', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, _omitFieldNames ? '' : 'postId', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aI(3, _omitFieldNames ? '' : 'time', fieldType: $pb.PbFieldType.OU3)
    ..aOS(4, _omitFieldNames ? '' : 'title')
    ..aOS(5, _omitFieldNames ? '' : 'fname')
    ..aOS(6, _omitFieldNames ? '' : 'content')
    ..aI(7, _omitFieldNames ? '' : 'isFloor', fieldType: $pb.PbFieldType.OU3)
    ..aOS(8, _omitFieldNames ? '' : 'quoteContent')
    ..aOM<$0.User>(9, _omitFieldNames ? '' : 'replyer',
        subBuilder: $0.User.create)
    ..aI(10, _omitFieldNames ? '' : 'type', fieldType: $pb.PbFieldType.OU3)
    ..aI(11, _omitFieldNames ? '' : 'unread', fieldType: $pb.PbFieldType.OU3)
    ..aOS(12, _omitFieldNames ? '' : 'itemType')
    ..aOM<$1.Zan>(13, _omitFieldNames ? '' : 'zan', subBuilder: $1.Zan.create)
    ..a<$fixnum.Int64>(
        14, _omitFieldNames ? '' : 'quotePid', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<$0.User>(15, _omitFieldNames ? '' : 'quoteUser',
        subBuilder: $0.User.create)
    ..aI(16, _omitFieldNames ? '' : 'serverTime')
    ..aI(17, _omitFieldNames ? '' : 'threadType',
        fieldType: $pb.PbFieldType.OU3)
    ..a<$fixnum.Int64>(
        18, _omitFieldNames ? '' : 'vForumId', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aI(19, _omitFieldNames ? '' : 'hideFname', fieldType: $pb.PbFieldType.OU3)
    ..aI(20, _omitFieldNames ? '' : 'isStory')
    ..aOM<$2.OriginThreadInfo>(21, _omitFieldNames ? '' : 'originThreadInfo',
        subBuilder: $2.OriginThreadInfo.create)
    ..aOS(22, _omitFieldNames ? '' : 'postFrom')
    ..aI(23, _omitFieldNames ? '' : 'isShareThread')
    ..aOS(24, _omitFieldNames ? '' : 'threadImgUrl')
    ..aOM<$0.User>(25, _omitFieldNames ? '' : 'threadAuthorUser',
        subBuilder: $0.User.create)
    ..aI(26, _omitFieldNames ? '' : 'isBjh')
    ..aOM<$3.Baijiahao>(27, _omitFieldNames ? '' : 'baijiahao',
        subBuilder: $3.Baijiahao.create)
    ..pPM<$4.NewFloorInfo>(28, _omitFieldNames ? '' : 'newFloorInfo',
        subBuilder: $4.NewFloorInfo.create)
    ..aI(29, _omitFieldNames ? '' : 'hasAgree')
    ..aOS(30, _omitFieldNames ? '' : 'targetScheme')
    ..aOS(31, _omitFieldNames ? '' : 'displayText')
    ..aI(32, _omitFieldNames ? '' : 'isFilter')
    ..aOS(33, _omitFieldNames ? '' : 'firstScheme')
    ..aOS(34, _omitFieldNames ? '' : 'secondScheme')
    ..aOS(35, _omitFieldNames ? '' : 'thirdScheme')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReplyList clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReplyList copyWith(void Function(ReplyList) updates) =>
      super.copyWith((message) => updates(message as ReplyList)) as ReplyList;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReplyList create() => ReplyList._();
  @$core.override
  ReplyList createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ReplyList getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReplyList>(create);
  static ReplyList? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get threadId => $_getI64(0);
  @$pb.TagNumber(1)
  set threadId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasThreadId() => $_has(0);
  @$pb.TagNumber(1)
  void clearThreadId() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get postId => $_getI64(1);
  @$pb.TagNumber(2)
  set postId($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPostId() => $_has(1);
  @$pb.TagNumber(2)
  void clearPostId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get time => $_getIZ(2);
  @$pb.TagNumber(3)
  set time($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearTime() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get title => $_getSZ(3);
  @$pb.TagNumber(4)
  set title($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasTitle() => $_has(3);
  @$pb.TagNumber(4)
  void clearTitle() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get fname => $_getSZ(4);
  @$pb.TagNumber(5)
  set fname($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasFname() => $_has(4);
  @$pb.TagNumber(5)
  void clearFname() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get content => $_getSZ(5);
  @$pb.TagNumber(6)
  set content($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasContent() => $_has(5);
  @$pb.TagNumber(6)
  void clearContent() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.int get isFloor => $_getIZ(6);
  @$pb.TagNumber(7)
  set isFloor($core.int value) => $_setUnsignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasIsFloor() => $_has(6);
  @$pb.TagNumber(7)
  void clearIsFloor() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.String get quoteContent => $_getSZ(7);
  @$pb.TagNumber(8)
  set quoteContent($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasQuoteContent() => $_has(7);
  @$pb.TagNumber(8)
  void clearQuoteContent() => $_clearField(8);

  @$pb.TagNumber(9)
  $0.User get replyer => $_getN(8);
  @$pb.TagNumber(9)
  set replyer($0.User value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasReplyer() => $_has(8);
  @$pb.TagNumber(9)
  void clearReplyer() => $_clearField(9);
  @$pb.TagNumber(9)
  $0.User ensureReplyer() => $_ensure(8);

  @$pb.TagNumber(10)
  $core.int get type => $_getIZ(9);
  @$pb.TagNumber(10)
  set type($core.int value) => $_setUnsignedInt32(9, value);
  @$pb.TagNumber(10)
  $core.bool hasType() => $_has(9);
  @$pb.TagNumber(10)
  void clearType() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.int get unread => $_getIZ(10);
  @$pb.TagNumber(11)
  set unread($core.int value) => $_setUnsignedInt32(10, value);
  @$pb.TagNumber(11)
  $core.bool hasUnread() => $_has(10);
  @$pb.TagNumber(11)
  void clearUnread() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.String get itemType => $_getSZ(11);
  @$pb.TagNumber(12)
  set itemType($core.String value) => $_setString(11, value);
  @$pb.TagNumber(12)
  $core.bool hasItemType() => $_has(11);
  @$pb.TagNumber(12)
  void clearItemType() => $_clearField(12);

  @$pb.TagNumber(13)
  $1.Zan get zan => $_getN(12);
  @$pb.TagNumber(13)
  set zan($1.Zan value) => $_setField(13, value);
  @$pb.TagNumber(13)
  $core.bool hasZan() => $_has(12);
  @$pb.TagNumber(13)
  void clearZan() => $_clearField(13);
  @$pb.TagNumber(13)
  $1.Zan ensureZan() => $_ensure(12);

  @$pb.TagNumber(14)
  $fixnum.Int64 get quotePid => $_getI64(13);
  @$pb.TagNumber(14)
  set quotePid($fixnum.Int64 value) => $_setInt64(13, value);
  @$pb.TagNumber(14)
  $core.bool hasQuotePid() => $_has(13);
  @$pb.TagNumber(14)
  void clearQuotePid() => $_clearField(14);

  @$pb.TagNumber(15)
  $0.User get quoteUser => $_getN(14);
  @$pb.TagNumber(15)
  set quoteUser($0.User value) => $_setField(15, value);
  @$pb.TagNumber(15)
  $core.bool hasQuoteUser() => $_has(14);
  @$pb.TagNumber(15)
  void clearQuoteUser() => $_clearField(15);
  @$pb.TagNumber(15)
  $0.User ensureQuoteUser() => $_ensure(14);

  @$pb.TagNumber(16)
  $core.int get serverTime => $_getIZ(15);
  @$pb.TagNumber(16)
  set serverTime($core.int value) => $_setSignedInt32(15, value);
  @$pb.TagNumber(16)
  $core.bool hasServerTime() => $_has(15);
  @$pb.TagNumber(16)
  void clearServerTime() => $_clearField(16);

  @$pb.TagNumber(17)
  $core.int get threadType => $_getIZ(16);
  @$pb.TagNumber(17)
  set threadType($core.int value) => $_setUnsignedInt32(16, value);
  @$pb.TagNumber(17)
  $core.bool hasThreadType() => $_has(16);
  @$pb.TagNumber(17)
  void clearThreadType() => $_clearField(17);

  @$pb.TagNumber(18)
  $fixnum.Int64 get vForumId => $_getI64(17);
  @$pb.TagNumber(18)
  set vForumId($fixnum.Int64 value) => $_setInt64(17, value);
  @$pb.TagNumber(18)
  $core.bool hasVForumId() => $_has(17);
  @$pb.TagNumber(18)
  void clearVForumId() => $_clearField(18);

  @$pb.TagNumber(19)
  $core.int get hideFname => $_getIZ(18);
  @$pb.TagNumber(19)
  set hideFname($core.int value) => $_setUnsignedInt32(18, value);
  @$pb.TagNumber(19)
  $core.bool hasHideFname() => $_has(18);
  @$pb.TagNumber(19)
  void clearHideFname() => $_clearField(19);

  @$pb.TagNumber(20)
  $core.int get isStory => $_getIZ(19);
  @$pb.TagNumber(20)
  set isStory($core.int value) => $_setSignedInt32(19, value);
  @$pb.TagNumber(20)
  $core.bool hasIsStory() => $_has(19);
  @$pb.TagNumber(20)
  void clearIsStory() => $_clearField(20);

  @$pb.TagNumber(21)
  $2.OriginThreadInfo get originThreadInfo => $_getN(20);
  @$pb.TagNumber(21)
  set originThreadInfo($2.OriginThreadInfo value) => $_setField(21, value);
  @$pb.TagNumber(21)
  $core.bool hasOriginThreadInfo() => $_has(20);
  @$pb.TagNumber(21)
  void clearOriginThreadInfo() => $_clearField(21);
  @$pb.TagNumber(21)
  $2.OriginThreadInfo ensureOriginThreadInfo() => $_ensure(20);

  @$pb.TagNumber(22)
  $core.String get postFrom => $_getSZ(21);
  @$pb.TagNumber(22)
  set postFrom($core.String value) => $_setString(21, value);
  @$pb.TagNumber(22)
  $core.bool hasPostFrom() => $_has(21);
  @$pb.TagNumber(22)
  void clearPostFrom() => $_clearField(22);

  @$pb.TagNumber(23)
  $core.int get isShareThread => $_getIZ(22);
  @$pb.TagNumber(23)
  set isShareThread($core.int value) => $_setSignedInt32(22, value);
  @$pb.TagNumber(23)
  $core.bool hasIsShareThread() => $_has(22);
  @$pb.TagNumber(23)
  void clearIsShareThread() => $_clearField(23);

  @$pb.TagNumber(24)
  $core.String get threadImgUrl => $_getSZ(23);
  @$pb.TagNumber(24)
  set threadImgUrl($core.String value) => $_setString(23, value);
  @$pb.TagNumber(24)
  $core.bool hasThreadImgUrl() => $_has(23);
  @$pb.TagNumber(24)
  void clearThreadImgUrl() => $_clearField(24);

  @$pb.TagNumber(25)
  $0.User get threadAuthorUser => $_getN(24);
  @$pb.TagNumber(25)
  set threadAuthorUser($0.User value) => $_setField(25, value);
  @$pb.TagNumber(25)
  $core.bool hasThreadAuthorUser() => $_has(24);
  @$pb.TagNumber(25)
  void clearThreadAuthorUser() => $_clearField(25);
  @$pb.TagNumber(25)
  $0.User ensureThreadAuthorUser() => $_ensure(24);

  @$pb.TagNumber(26)
  $core.int get isBjh => $_getIZ(25);
  @$pb.TagNumber(26)
  set isBjh($core.int value) => $_setSignedInt32(25, value);
  @$pb.TagNumber(26)
  $core.bool hasIsBjh() => $_has(25);
  @$pb.TagNumber(26)
  void clearIsBjh() => $_clearField(26);

  @$pb.TagNumber(27)
  $3.Baijiahao get baijiahao => $_getN(26);
  @$pb.TagNumber(27)
  set baijiahao($3.Baijiahao value) => $_setField(27, value);
  @$pb.TagNumber(27)
  $core.bool hasBaijiahao() => $_has(26);
  @$pb.TagNumber(27)
  void clearBaijiahao() => $_clearField(27);
  @$pb.TagNumber(27)
  $3.Baijiahao ensureBaijiahao() => $_ensure(26);

  @$pb.TagNumber(28)
  $pb.PbList<$4.NewFloorInfo> get newFloorInfo => $_getList(27);

  @$pb.TagNumber(29)
  $core.int get hasAgree => $_getIZ(28);
  @$pb.TagNumber(29)
  set hasAgree($core.int value) => $_setSignedInt32(28, value);
  @$pb.TagNumber(29)
  $core.bool hasHasAgree() => $_has(28);
  @$pb.TagNumber(29)
  void clearHasAgree() => $_clearField(29);

  @$pb.TagNumber(30)
  $core.String get targetScheme => $_getSZ(29);
  @$pb.TagNumber(30)
  set targetScheme($core.String value) => $_setString(29, value);
  @$pb.TagNumber(30)
  $core.bool hasTargetScheme() => $_has(29);
  @$pb.TagNumber(30)
  void clearTargetScheme() => $_clearField(30);

  @$pb.TagNumber(31)
  $core.String get displayText => $_getSZ(30);
  @$pb.TagNumber(31)
  set displayText($core.String value) => $_setString(30, value);
  @$pb.TagNumber(31)
  $core.bool hasDisplayText() => $_has(30);
  @$pb.TagNumber(31)
  void clearDisplayText() => $_clearField(31);

  @$pb.TagNumber(32)
  $core.int get isFilter => $_getIZ(31);
  @$pb.TagNumber(32)
  set isFilter($core.int value) => $_setSignedInt32(31, value);
  @$pb.TagNumber(32)
  $core.bool hasIsFilter() => $_has(31);
  @$pb.TagNumber(32)
  void clearIsFilter() => $_clearField(32);

  @$pb.TagNumber(33)
  $core.String get firstScheme => $_getSZ(32);
  @$pb.TagNumber(33)
  set firstScheme($core.String value) => $_setString(32, value);
  @$pb.TagNumber(33)
  $core.bool hasFirstScheme() => $_has(32);
  @$pb.TagNumber(33)
  void clearFirstScheme() => $_clearField(33);

  @$pb.TagNumber(34)
  $core.String get secondScheme => $_getSZ(33);
  @$pb.TagNumber(34)
  set secondScheme($core.String value) => $_setString(33, value);
  @$pb.TagNumber(34)
  $core.bool hasSecondScheme() => $_has(33);
  @$pb.TagNumber(34)
  void clearSecondScheme() => $_clearField(34);

  @$pb.TagNumber(35)
  $core.String get thirdScheme => $_getSZ(34);
  @$pb.TagNumber(35)
  set thirdScheme($core.String value) => $_setString(34, value);
  @$pb.TagNumber(35)
  $core.bool hasThirdScheme() => $_has(34);
  @$pb.TagNumber(35)
  void clearThirdScheme() => $_clearField(35);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
