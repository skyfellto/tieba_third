// This is a generated file - do not edit.
//
// Generated from ZhiBoInfoTW.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'HotTWThreadInfo.pb.dart' as $2;
import 'LabelInfo.pb.dart' as $3;
import 'LiveCoverStatus.pb.dart' as $5;
import 'NoticeInfo.pb.dart' as $4;
import 'User.pb.dart' as $1;
import 'Zan.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class ZhiBoInfoTW extends $pb.GeneratedMessage {
  factory ZhiBoInfoTW({
    $fixnum.Int64? threadId,
    $core.String? livecoverSrc,
    $core.String? livecoverSrcBsize,
    $core.int? postNum,
    $core.int? replyNum,
    $0.Zan? zan,
    $core.String? forumName,
    $fixnum.Int64? forumId,
    $fixnum.Int64? lastModifiedTime,
    $core.String? title,
    $core.String? content,
    $1.User? user,
    $2.HotTWThreadInfo? hotTwInfo,
    $core.Iterable<$3.LabelInfo>? labelInfo,
    $core.String? livecoverSrcStatus,
    $4.NoticeInfo? noticeInfo,
    $core.int? isHeadline,
    $5.LiveCoverStatus? livecoverStatus,
    $core.int? freqNum,
    $core.int? copythreadRemind,
    $core.int? isCopytwzhibo,
    $core.String? fieldEx,
  }) {
    final result = create();
    if (threadId != null) result.threadId = threadId;
    if (livecoverSrc != null) result.livecoverSrc = livecoverSrc;
    if (livecoverSrcBsize != null) result.livecoverSrcBsize = livecoverSrcBsize;
    if (postNum != null) result.postNum = postNum;
    if (replyNum != null) result.replyNum = replyNum;
    if (zan != null) result.zan = zan;
    if (forumName != null) result.forumName = forumName;
    if (forumId != null) result.forumId = forumId;
    if (lastModifiedTime != null) result.lastModifiedTime = lastModifiedTime;
    if (title != null) result.title = title;
    if (content != null) result.content = content;
    if (user != null) result.user = user;
    if (hotTwInfo != null) result.hotTwInfo = hotTwInfo;
    if (labelInfo != null) result.labelInfo.addAll(labelInfo);
    if (livecoverSrcStatus != null)
      result.livecoverSrcStatus = livecoverSrcStatus;
    if (noticeInfo != null) result.noticeInfo = noticeInfo;
    if (isHeadline != null) result.isHeadline = isHeadline;
    if (livecoverStatus != null) result.livecoverStatus = livecoverStatus;
    if (freqNum != null) result.freqNum = freqNum;
    if (copythreadRemind != null) result.copythreadRemind = copythreadRemind;
    if (isCopytwzhibo != null) result.isCopytwzhibo = isCopytwzhibo;
    if (fieldEx != null) result.fieldEx = fieldEx;
    return result;
  }

  ZhiBoInfoTW._();

  factory ZhiBoInfoTW.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ZhiBoInfoTW.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ZhiBoInfoTW',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(
        1, _omitFieldNames ? '' : 'threadId', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(2, _omitFieldNames ? '' : 'livecoverSrc')
    ..aOS(3, _omitFieldNames ? '' : 'livecoverSrcBsize')
    ..aI(4, _omitFieldNames ? '' : 'postNum', fieldType: $pb.PbFieldType.OU3)
    ..aI(5, _omitFieldNames ? '' : 'replyNum', fieldType: $pb.PbFieldType.OU3)
    ..aOM<$0.Zan>(6, _omitFieldNames ? '' : 'zan', subBuilder: $0.Zan.create)
    ..aOS(7, _omitFieldNames ? '' : 'forumName')
    ..a<$fixnum.Int64>(8, _omitFieldNames ? '' : 'forumId', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(
        9, _omitFieldNames ? '' : 'lastModifiedTime', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(10, _omitFieldNames ? '' : 'title')
    ..aOS(11, _omitFieldNames ? '' : 'content')
    ..aOM<$1.User>(12, _omitFieldNames ? '' : 'user',
        subBuilder: $1.User.create)
    ..aOM<$2.HotTWThreadInfo>(13, _omitFieldNames ? '' : 'hotTwInfo',
        subBuilder: $2.HotTWThreadInfo.create)
    ..pPM<$3.LabelInfo>(14, _omitFieldNames ? '' : 'labelInfo',
        protoName: 'labelInfo', subBuilder: $3.LabelInfo.create)
    ..aOS(15, _omitFieldNames ? '' : 'livecoverSrcStatus')
    ..aOM<$4.NoticeInfo>(16, _omitFieldNames ? '' : 'noticeInfo',
        subBuilder: $4.NoticeInfo.create)
    ..aI(17, _omitFieldNames ? '' : 'isHeadline')
    ..aOM<$5.LiveCoverStatus>(18, _omitFieldNames ? '' : 'livecoverStatus',
        subBuilder: $5.LiveCoverStatus.create)
    ..aI(19, _omitFieldNames ? '' : 'freqNum', fieldType: $pb.PbFieldType.OU3)
    ..aI(20, _omitFieldNames ? '' : 'copythreadRemind',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(21, _omitFieldNames ? '' : 'isCopytwzhibo',
        fieldType: $pb.PbFieldType.OU3)
    ..aOS(22, _omitFieldNames ? '' : 'fieldEx')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ZhiBoInfoTW clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ZhiBoInfoTW copyWith(void Function(ZhiBoInfoTW) updates) =>
      super.copyWith((message) => updates(message as ZhiBoInfoTW))
          as ZhiBoInfoTW;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ZhiBoInfoTW create() => ZhiBoInfoTW._();
  @$core.override
  ZhiBoInfoTW createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ZhiBoInfoTW getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ZhiBoInfoTW>(create);
  static ZhiBoInfoTW? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get threadId => $_getI64(0);
  @$pb.TagNumber(1)
  set threadId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasThreadId() => $_has(0);
  @$pb.TagNumber(1)
  void clearThreadId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get livecoverSrc => $_getSZ(1);
  @$pb.TagNumber(2)
  set livecoverSrc($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasLivecoverSrc() => $_has(1);
  @$pb.TagNumber(2)
  void clearLivecoverSrc() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get livecoverSrcBsize => $_getSZ(2);
  @$pb.TagNumber(3)
  set livecoverSrcBsize($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasLivecoverSrcBsize() => $_has(2);
  @$pb.TagNumber(3)
  void clearLivecoverSrcBsize() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get postNum => $_getIZ(3);
  @$pb.TagNumber(4)
  set postNum($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasPostNum() => $_has(3);
  @$pb.TagNumber(4)
  void clearPostNum() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get replyNum => $_getIZ(4);
  @$pb.TagNumber(5)
  set replyNum($core.int value) => $_setUnsignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasReplyNum() => $_has(4);
  @$pb.TagNumber(5)
  void clearReplyNum() => $_clearField(5);

  @$pb.TagNumber(6)
  $0.Zan get zan => $_getN(5);
  @$pb.TagNumber(6)
  set zan($0.Zan value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasZan() => $_has(5);
  @$pb.TagNumber(6)
  void clearZan() => $_clearField(6);
  @$pb.TagNumber(6)
  $0.Zan ensureZan() => $_ensure(5);

  @$pb.TagNumber(7)
  $core.String get forumName => $_getSZ(6);
  @$pb.TagNumber(7)
  set forumName($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasForumName() => $_has(6);
  @$pb.TagNumber(7)
  void clearForumName() => $_clearField(7);

  @$pb.TagNumber(8)
  $fixnum.Int64 get forumId => $_getI64(7);
  @$pb.TagNumber(8)
  set forumId($fixnum.Int64 value) => $_setInt64(7, value);
  @$pb.TagNumber(8)
  $core.bool hasForumId() => $_has(7);
  @$pb.TagNumber(8)
  void clearForumId() => $_clearField(8);

  @$pb.TagNumber(9)
  $fixnum.Int64 get lastModifiedTime => $_getI64(8);
  @$pb.TagNumber(9)
  set lastModifiedTime($fixnum.Int64 value) => $_setInt64(8, value);
  @$pb.TagNumber(9)
  $core.bool hasLastModifiedTime() => $_has(8);
  @$pb.TagNumber(9)
  void clearLastModifiedTime() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.String get title => $_getSZ(9);
  @$pb.TagNumber(10)
  set title($core.String value) => $_setString(9, value);
  @$pb.TagNumber(10)
  $core.bool hasTitle() => $_has(9);
  @$pb.TagNumber(10)
  void clearTitle() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.String get content => $_getSZ(10);
  @$pb.TagNumber(11)
  set content($core.String value) => $_setString(10, value);
  @$pb.TagNumber(11)
  $core.bool hasContent() => $_has(10);
  @$pb.TagNumber(11)
  void clearContent() => $_clearField(11);

  @$pb.TagNumber(12)
  $1.User get user => $_getN(11);
  @$pb.TagNumber(12)
  set user($1.User value) => $_setField(12, value);
  @$pb.TagNumber(12)
  $core.bool hasUser() => $_has(11);
  @$pb.TagNumber(12)
  void clearUser() => $_clearField(12);
  @$pb.TagNumber(12)
  $1.User ensureUser() => $_ensure(11);

  @$pb.TagNumber(13)
  $2.HotTWThreadInfo get hotTwInfo => $_getN(12);
  @$pb.TagNumber(13)
  set hotTwInfo($2.HotTWThreadInfo value) => $_setField(13, value);
  @$pb.TagNumber(13)
  $core.bool hasHotTwInfo() => $_has(12);
  @$pb.TagNumber(13)
  void clearHotTwInfo() => $_clearField(13);
  @$pb.TagNumber(13)
  $2.HotTWThreadInfo ensureHotTwInfo() => $_ensure(12);

  @$pb.TagNumber(14)
  $pb.PbList<$3.LabelInfo> get labelInfo => $_getList(13);

  @$pb.TagNumber(15)
  $core.String get livecoverSrcStatus => $_getSZ(14);
  @$pb.TagNumber(15)
  set livecoverSrcStatus($core.String value) => $_setString(14, value);
  @$pb.TagNumber(15)
  $core.bool hasLivecoverSrcStatus() => $_has(14);
  @$pb.TagNumber(15)
  void clearLivecoverSrcStatus() => $_clearField(15);

  @$pb.TagNumber(16)
  $4.NoticeInfo get noticeInfo => $_getN(15);
  @$pb.TagNumber(16)
  set noticeInfo($4.NoticeInfo value) => $_setField(16, value);
  @$pb.TagNumber(16)
  $core.bool hasNoticeInfo() => $_has(15);
  @$pb.TagNumber(16)
  void clearNoticeInfo() => $_clearField(16);
  @$pb.TagNumber(16)
  $4.NoticeInfo ensureNoticeInfo() => $_ensure(15);

  @$pb.TagNumber(17)
  $core.int get isHeadline => $_getIZ(16);
  @$pb.TagNumber(17)
  set isHeadline($core.int value) => $_setSignedInt32(16, value);
  @$pb.TagNumber(17)
  $core.bool hasIsHeadline() => $_has(16);
  @$pb.TagNumber(17)
  void clearIsHeadline() => $_clearField(17);

  @$pb.TagNumber(18)
  $5.LiveCoverStatus get livecoverStatus => $_getN(17);
  @$pb.TagNumber(18)
  set livecoverStatus($5.LiveCoverStatus value) => $_setField(18, value);
  @$pb.TagNumber(18)
  $core.bool hasLivecoverStatus() => $_has(17);
  @$pb.TagNumber(18)
  void clearLivecoverStatus() => $_clearField(18);
  @$pb.TagNumber(18)
  $5.LiveCoverStatus ensureLivecoverStatus() => $_ensure(17);

  @$pb.TagNumber(19)
  $core.int get freqNum => $_getIZ(18);
  @$pb.TagNumber(19)
  set freqNum($core.int value) => $_setUnsignedInt32(18, value);
  @$pb.TagNumber(19)
  $core.bool hasFreqNum() => $_has(18);
  @$pb.TagNumber(19)
  void clearFreqNum() => $_clearField(19);

  @$pb.TagNumber(20)
  $core.int get copythreadRemind => $_getIZ(19);
  @$pb.TagNumber(20)
  set copythreadRemind($core.int value) => $_setUnsignedInt32(19, value);
  @$pb.TagNumber(20)
  $core.bool hasCopythreadRemind() => $_has(19);
  @$pb.TagNumber(20)
  void clearCopythreadRemind() => $_clearField(20);

  @$pb.TagNumber(21)
  $core.int get isCopytwzhibo => $_getIZ(20);
  @$pb.TagNumber(21)
  set isCopytwzhibo($core.int value) => $_setUnsignedInt32(20, value);
  @$pb.TagNumber(21)
  $core.bool hasIsCopytwzhibo() => $_has(20);
  @$pb.TagNumber(21)
  void clearIsCopytwzhibo() => $_clearField(21);

  @$pb.TagNumber(22)
  $core.String get fieldEx => $_getSZ(21);
  @$pb.TagNumber(22)
  set fieldEx($core.String value) => $_setString(21, value);
  @$pb.TagNumber(22)
  $core.bool hasFieldEx() => $_has(21);
  @$pb.TagNumber(22)
  void clearFieldEx() => $_clearField(22);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
