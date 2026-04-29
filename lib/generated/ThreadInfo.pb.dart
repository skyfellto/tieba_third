// This is a generated file - do not edit.
//
// Generated from ThreadInfo.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'Abstract.pb.dart' as $1;
import 'Agree.pb.dart' as $8;
import 'AlaLiveInfo.pb.dart' as $6;
import 'DislikeInfo.pb.dart' as $7;
import 'Media.pb.dart' as $2;
import 'OriginThreadInfo.pb.dart' as $9;
import 'PbContent.pb.dart' as $5;
import 'SimpleForum.pb.dart' as $10;
import 'User.pb.dart' as $0;
import 'VideoInfo.pb.dart' as $4;
import 'ZhiBoInfoTW.pb.dart' as $3;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class ThreadInfo extends $pb.GeneratedMessage {
  factory ThreadInfo({
    $fixnum.Int64? id,
    $fixnum.Int64? threadId,
    $core.String? title,
    $core.int? replyNum,
    $core.int? viewNum,
    $core.String? lastTime,
    $core.int? lastTimeInt,
    $core.int? threadTypes,
    $core.int? isTop,
    $core.int? isGood,
    $0.User? author,
    $0.User? lastReplyer,
    $core.int? commentNum,
    $core.Iterable<$1.Abstract>? abstract,
    $core.Iterable<$2.Media>? media,
    $fixnum.Int64? forumId,
    $core.String? forumName,
    $core.int? isNoTitle,
    $fixnum.Int64? firstPostId,
    $core.int? createTime,
    $core.int? collectStatus,
    $core.String? collectMarkPid,
    $fixnum.Int64? postId,
    $core.int? isMemberTop,
    $fixnum.Int64? authorId,
    $core.String? pids,
    $3.ZhiBoInfoTW? twzhiboInfo,
    $4.VideoInfo? videoInfo,
    $core.Iterable<$5.PbContent>? richTitle,
    $core.Iterable<$5.PbContent>? richAbstract,
    $6.AlaLiveInfo? alaInfo,
    $core.Iterable<$7.DislikeInfo>? dislikeInfo,
    $core.int? agreeNum,
    $8.Agree? agree,
    $fixnum.Int64? shareNum,
    $9.OriginThreadInfo? originThreadInfo,
    $core.Iterable<$5.PbContent>? firstPostContent,
    $core.int? isShareThread,
    $core.int? isTopic,
    $core.String? topicUserName,
    $core.String? topicH5Url,
    $10.SimpleForum? forumInfo,
    $core.String? tShareImg,
    $core.String? nid,
    $core.int? tabId,
    $core.String? tabName,
    $core.int? isDeleted,
    $core.int? hotNum,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (threadId != null) result.threadId = threadId;
    if (title != null) result.title = title;
    if (replyNum != null) result.replyNum = replyNum;
    if (viewNum != null) result.viewNum = viewNum;
    if (lastTime != null) result.lastTime = lastTime;
    if (lastTimeInt != null) result.lastTimeInt = lastTimeInt;
    if (threadTypes != null) result.threadTypes = threadTypes;
    if (isTop != null) result.isTop = isTop;
    if (isGood != null) result.isGood = isGood;
    if (author != null) result.author = author;
    if (lastReplyer != null) result.lastReplyer = lastReplyer;
    if (commentNum != null) result.commentNum = commentNum;
    if (abstract != null) result.abstract.addAll(abstract);
    if (media != null) result.media.addAll(media);
    if (forumId != null) result.forumId = forumId;
    if (forumName != null) result.forumName = forumName;
    if (isNoTitle != null) result.isNoTitle = isNoTitle;
    if (firstPostId != null) result.firstPostId = firstPostId;
    if (createTime != null) result.createTime = createTime;
    if (collectStatus != null) result.collectStatus = collectStatus;
    if (collectMarkPid != null) result.collectMarkPid = collectMarkPid;
    if (postId != null) result.postId = postId;
    if (isMemberTop != null) result.isMemberTop = isMemberTop;
    if (authorId != null) result.authorId = authorId;
    if (pids != null) result.pids = pids;
    if (twzhiboInfo != null) result.twzhiboInfo = twzhiboInfo;
    if (videoInfo != null) result.videoInfo = videoInfo;
    if (richTitle != null) result.richTitle.addAll(richTitle);
    if (richAbstract != null) result.richAbstract.addAll(richAbstract);
    if (alaInfo != null) result.alaInfo = alaInfo;
    if (dislikeInfo != null) result.dislikeInfo.addAll(dislikeInfo);
    if (agreeNum != null) result.agreeNum = agreeNum;
    if (agree != null) result.agree = agree;
    if (shareNum != null) result.shareNum = shareNum;
    if (originThreadInfo != null) result.originThreadInfo = originThreadInfo;
    if (firstPostContent != null)
      result.firstPostContent.addAll(firstPostContent);
    if (isShareThread != null) result.isShareThread = isShareThread;
    if (isTopic != null) result.isTopic = isTopic;
    if (topicUserName != null) result.topicUserName = topicUserName;
    if (topicH5Url != null) result.topicH5Url = topicH5Url;
    if (forumInfo != null) result.forumInfo = forumInfo;
    if (tShareImg != null) result.tShareImg = tShareImg;
    if (nid != null) result.nid = nid;
    if (tabId != null) result.tabId = tabId;
    if (tabName != null) result.tabName = tabName;
    if (isDeleted != null) result.isDeleted = isDeleted;
    if (hotNum != null) result.hotNum = hotNum;
    return result;
  }

  ThreadInfo._();

  factory ThreadInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ThreadInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ThreadInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aInt64(2, _omitFieldNames ? '' : 'threadId', protoName: 'threadId')
    ..aOS(3, _omitFieldNames ? '' : 'title')
    ..aI(4, _omitFieldNames ? '' : 'replyNum', protoName: 'replyNum')
    ..aI(5, _omitFieldNames ? '' : 'viewNum', protoName: 'viewNum')
    ..aOS(6, _omitFieldNames ? '' : 'lastTime', protoName: 'lastTime')
    ..aI(7, _omitFieldNames ? '' : 'lastTimeInt', protoName: 'lastTimeInt')
    ..aI(8, _omitFieldNames ? '' : 'threadTypes', protoName: 'threadTypes')
    ..aI(9, _omitFieldNames ? '' : 'isTop', protoName: 'isTop')
    ..aI(10, _omitFieldNames ? '' : 'isGood', protoName: 'isGood')
    ..aOM<$0.User>(18, _omitFieldNames ? '' : 'author',
        subBuilder: $0.User.create)
    ..aOM<$0.User>(19, _omitFieldNames ? '' : 'lastReplyer',
        protoName: 'lastReplyer', subBuilder: $0.User.create)
    ..aI(20, _omitFieldNames ? '' : 'commentNum', protoName: 'commentNum')
    ..pPM<$1.Abstract>(21, _omitFieldNames ? '' : 'Abstract',
        subBuilder: $1.Abstract.create)
    ..pPM<$2.Media>(22, _omitFieldNames ? '' : 'media',
        subBuilder: $2.Media.create)
    ..aInt64(27, _omitFieldNames ? '' : 'forumId', protoName: 'forumId')
    ..aOS(28, _omitFieldNames ? '' : 'forumName', protoName: 'forumName')
    ..aI(38, _omitFieldNames ? '' : 'isNoTitle', protoName: 'isNoTitle')
    ..aInt64(40, _omitFieldNames ? '' : 'firstPostId', protoName: 'firstPostId')
    ..aI(45, _omitFieldNames ? '' : 'createTime', protoName: 'createTime')
    ..aI(50, _omitFieldNames ? '' : 'collectStatus', protoName: 'collectStatus')
    ..aOS(51, _omitFieldNames ? '' : 'collectMarkPid',
        protoName: 'collectMarkPid')
    ..aInt64(52, _omitFieldNames ? '' : 'postId')
    ..aI(54, _omitFieldNames ? '' : 'isMemberTop', protoName: 'isMemberTop')
    ..aInt64(56, _omitFieldNames ? '' : 'authorId', protoName: 'authorId')
    ..aOS(61, _omitFieldNames ? '' : 'pids')
    ..aOM<$3.ZhiBoInfoTW>(72, _omitFieldNames ? '' : 'twzhiboInfo',
        subBuilder: $3.ZhiBoInfoTW.create)
    ..aOM<$4.VideoInfo>(79, _omitFieldNames ? '' : 'videoInfo',
        protoName: 'videoInfo', subBuilder: $4.VideoInfo.create)
    ..pPM<$5.PbContent>(111, _omitFieldNames ? '' : 'richTitle',
        protoName: 'richTitle', subBuilder: $5.PbContent.create)
    ..pPM<$5.PbContent>(112, _omitFieldNames ? '' : 'richAbstract',
        protoName: 'richAbstract', subBuilder: $5.PbContent.create)
    ..aOM<$6.AlaLiveInfo>(113, _omitFieldNames ? '' : 'alaInfo',
        subBuilder: $6.AlaLiveInfo.create)
    ..pPM<$7.DislikeInfo>(120, _omitFieldNames ? '' : 'dislikeInfo',
        protoName: 'dislikeInfo', subBuilder: $7.DislikeInfo.create)
    ..aI(124, _omitFieldNames ? '' : 'agreeNum', protoName: 'agreeNum')
    ..aOM<$8.Agree>(126, _omitFieldNames ? '' : 'agree',
        subBuilder: $8.Agree.create)
    ..aInt64(135, _omitFieldNames ? '' : 'shareNum', protoName: 'shareNum')
    ..aOM<$9.OriginThreadInfo>(141, _omitFieldNames ? '' : 'originThreadInfo',
        subBuilder: $9.OriginThreadInfo.create)
    ..pPM<$5.PbContent>(142, _omitFieldNames ? '' : 'firstPostContent',
        protoName: 'firstPostContent', subBuilder: $5.PbContent.create)
    ..aI(143, _omitFieldNames ? '' : 'isShareThread')
    ..aI(148, _omitFieldNames ? '' : 'isTopic', protoName: 'isTopic')
    ..aOS(149, _omitFieldNames ? '' : 'topicUserName',
        protoName: 'topicUserName')
    ..aOS(150, _omitFieldNames ? '' : 'topicH5Url', protoName: 'topicH5Url')
    ..aOM<$10.SimpleForum>(155, _omitFieldNames ? '' : 'forumInfo',
        protoName: 'forumInfo', subBuilder: $10.SimpleForum.create)
    ..aOS(159, _omitFieldNames ? '' : 'tShareImg', protoName: 'tShareImg')
    ..aOS(164, _omitFieldNames ? '' : 'nid')
    ..aI(175, _omitFieldNames ? '' : 'tabId', protoName: 'tabId')
    ..aOS(176, _omitFieldNames ? '' : 'tabName', protoName: 'tabName')
    ..aI(181, _omitFieldNames ? '' : 'isDeleted', protoName: 'isDeleted')
    ..aI(182, _omitFieldNames ? '' : 'hotNum', protoName: 'hotNum')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ThreadInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ThreadInfo copyWith(void Function(ThreadInfo) updates) =>
      super.copyWith((message) => updates(message as ThreadInfo)) as ThreadInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ThreadInfo create() => ThreadInfo._();
  @$core.override
  ThreadInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ThreadInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ThreadInfo>(create);
  static ThreadInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get threadId => $_getI64(1);
  @$pb.TagNumber(2)
  set threadId($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasThreadId() => $_has(1);
  @$pb.TagNumber(2)
  void clearThreadId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get title => $_getSZ(2);
  @$pb.TagNumber(3)
  set title($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasTitle() => $_has(2);
  @$pb.TagNumber(3)
  void clearTitle() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get replyNum => $_getIZ(3);
  @$pb.TagNumber(4)
  set replyNum($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasReplyNum() => $_has(3);
  @$pb.TagNumber(4)
  void clearReplyNum() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get viewNum => $_getIZ(4);
  @$pb.TagNumber(5)
  set viewNum($core.int value) => $_setSignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasViewNum() => $_has(4);
  @$pb.TagNumber(5)
  void clearViewNum() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get lastTime => $_getSZ(5);
  @$pb.TagNumber(6)
  set lastTime($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasLastTime() => $_has(5);
  @$pb.TagNumber(6)
  void clearLastTime() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.int get lastTimeInt => $_getIZ(6);
  @$pb.TagNumber(7)
  set lastTimeInt($core.int value) => $_setSignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasLastTimeInt() => $_has(6);
  @$pb.TagNumber(7)
  void clearLastTimeInt() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.int get threadTypes => $_getIZ(7);
  @$pb.TagNumber(8)
  set threadTypes($core.int value) => $_setSignedInt32(7, value);
  @$pb.TagNumber(8)
  $core.bool hasThreadTypes() => $_has(7);
  @$pb.TagNumber(8)
  void clearThreadTypes() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.int get isTop => $_getIZ(8);
  @$pb.TagNumber(9)
  set isTop($core.int value) => $_setSignedInt32(8, value);
  @$pb.TagNumber(9)
  $core.bool hasIsTop() => $_has(8);
  @$pb.TagNumber(9)
  void clearIsTop() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.int get isGood => $_getIZ(9);
  @$pb.TagNumber(10)
  set isGood($core.int value) => $_setSignedInt32(9, value);
  @$pb.TagNumber(10)
  $core.bool hasIsGood() => $_has(9);
  @$pb.TagNumber(10)
  void clearIsGood() => $_clearField(10);

  @$pb.TagNumber(18)
  $0.User get author => $_getN(10);
  @$pb.TagNumber(18)
  set author($0.User value) => $_setField(18, value);
  @$pb.TagNumber(18)
  $core.bool hasAuthor() => $_has(10);
  @$pb.TagNumber(18)
  void clearAuthor() => $_clearField(18);
  @$pb.TagNumber(18)
  $0.User ensureAuthor() => $_ensure(10);

  @$pb.TagNumber(19)
  $0.User get lastReplyer => $_getN(11);
  @$pb.TagNumber(19)
  set lastReplyer($0.User value) => $_setField(19, value);
  @$pb.TagNumber(19)
  $core.bool hasLastReplyer() => $_has(11);
  @$pb.TagNumber(19)
  void clearLastReplyer() => $_clearField(19);
  @$pb.TagNumber(19)
  $0.User ensureLastReplyer() => $_ensure(11);

  @$pb.TagNumber(20)
  $core.int get commentNum => $_getIZ(12);
  @$pb.TagNumber(20)
  set commentNum($core.int value) => $_setSignedInt32(12, value);
  @$pb.TagNumber(20)
  $core.bool hasCommentNum() => $_has(12);
  @$pb.TagNumber(20)
  void clearCommentNum() => $_clearField(20);

  @$pb.TagNumber(21)
  $pb.PbList<$1.Abstract> get abstract => $_getList(13);

  @$pb.TagNumber(22)
  $pb.PbList<$2.Media> get media => $_getList(14);

  @$pb.TagNumber(27)
  $fixnum.Int64 get forumId => $_getI64(15);
  @$pb.TagNumber(27)
  set forumId($fixnum.Int64 value) => $_setInt64(15, value);
  @$pb.TagNumber(27)
  $core.bool hasForumId() => $_has(15);
  @$pb.TagNumber(27)
  void clearForumId() => $_clearField(27);

  @$pb.TagNumber(28)
  $core.String get forumName => $_getSZ(16);
  @$pb.TagNumber(28)
  set forumName($core.String value) => $_setString(16, value);
  @$pb.TagNumber(28)
  $core.bool hasForumName() => $_has(16);
  @$pb.TagNumber(28)
  void clearForumName() => $_clearField(28);

  @$pb.TagNumber(38)
  $core.int get isNoTitle => $_getIZ(17);
  @$pb.TagNumber(38)
  set isNoTitle($core.int value) => $_setSignedInt32(17, value);
  @$pb.TagNumber(38)
  $core.bool hasIsNoTitle() => $_has(17);
  @$pb.TagNumber(38)
  void clearIsNoTitle() => $_clearField(38);

  @$pb.TagNumber(40)
  $fixnum.Int64 get firstPostId => $_getI64(18);
  @$pb.TagNumber(40)
  set firstPostId($fixnum.Int64 value) => $_setInt64(18, value);
  @$pb.TagNumber(40)
  $core.bool hasFirstPostId() => $_has(18);
  @$pb.TagNumber(40)
  void clearFirstPostId() => $_clearField(40);

  @$pb.TagNumber(45)
  $core.int get createTime => $_getIZ(19);
  @$pb.TagNumber(45)
  set createTime($core.int value) => $_setSignedInt32(19, value);
  @$pb.TagNumber(45)
  $core.bool hasCreateTime() => $_has(19);
  @$pb.TagNumber(45)
  void clearCreateTime() => $_clearField(45);

  @$pb.TagNumber(50)
  $core.int get collectStatus => $_getIZ(20);
  @$pb.TagNumber(50)
  set collectStatus($core.int value) => $_setSignedInt32(20, value);
  @$pb.TagNumber(50)
  $core.bool hasCollectStatus() => $_has(20);
  @$pb.TagNumber(50)
  void clearCollectStatus() => $_clearField(50);

  @$pb.TagNumber(51)
  $core.String get collectMarkPid => $_getSZ(21);
  @$pb.TagNumber(51)
  set collectMarkPid($core.String value) => $_setString(21, value);
  @$pb.TagNumber(51)
  $core.bool hasCollectMarkPid() => $_has(21);
  @$pb.TagNumber(51)
  void clearCollectMarkPid() => $_clearField(51);

  @$pb.TagNumber(52)
  $fixnum.Int64 get postId => $_getI64(22);
  @$pb.TagNumber(52)
  set postId($fixnum.Int64 value) => $_setInt64(22, value);
  @$pb.TagNumber(52)
  $core.bool hasPostId() => $_has(22);
  @$pb.TagNumber(52)
  void clearPostId() => $_clearField(52);

  @$pb.TagNumber(54)
  $core.int get isMemberTop => $_getIZ(23);
  @$pb.TagNumber(54)
  set isMemberTop($core.int value) => $_setSignedInt32(23, value);
  @$pb.TagNumber(54)
  $core.bool hasIsMemberTop() => $_has(23);
  @$pb.TagNumber(54)
  void clearIsMemberTop() => $_clearField(54);

  @$pb.TagNumber(56)
  $fixnum.Int64 get authorId => $_getI64(24);
  @$pb.TagNumber(56)
  set authorId($fixnum.Int64 value) => $_setInt64(24, value);
  @$pb.TagNumber(56)
  $core.bool hasAuthorId() => $_has(24);
  @$pb.TagNumber(56)
  void clearAuthorId() => $_clearField(56);

  @$pb.TagNumber(61)
  $core.String get pids => $_getSZ(25);
  @$pb.TagNumber(61)
  set pids($core.String value) => $_setString(25, value);
  @$pb.TagNumber(61)
  $core.bool hasPids() => $_has(25);
  @$pb.TagNumber(61)
  void clearPids() => $_clearField(61);

  @$pb.TagNumber(72)
  $3.ZhiBoInfoTW get twzhiboInfo => $_getN(26);
  @$pb.TagNumber(72)
  set twzhiboInfo($3.ZhiBoInfoTW value) => $_setField(72, value);
  @$pb.TagNumber(72)
  $core.bool hasTwzhiboInfo() => $_has(26);
  @$pb.TagNumber(72)
  void clearTwzhiboInfo() => $_clearField(72);
  @$pb.TagNumber(72)
  $3.ZhiBoInfoTW ensureTwzhiboInfo() => $_ensure(26);

  @$pb.TagNumber(79)
  $4.VideoInfo get videoInfo => $_getN(27);
  @$pb.TagNumber(79)
  set videoInfo($4.VideoInfo value) => $_setField(79, value);
  @$pb.TagNumber(79)
  $core.bool hasVideoInfo() => $_has(27);
  @$pb.TagNumber(79)
  void clearVideoInfo() => $_clearField(79);
  @$pb.TagNumber(79)
  $4.VideoInfo ensureVideoInfo() => $_ensure(27);

  @$pb.TagNumber(111)
  $pb.PbList<$5.PbContent> get richTitle => $_getList(28);

  @$pb.TagNumber(112)
  $pb.PbList<$5.PbContent> get richAbstract => $_getList(29);

  @$pb.TagNumber(113)
  $6.AlaLiveInfo get alaInfo => $_getN(30);
  @$pb.TagNumber(113)
  set alaInfo($6.AlaLiveInfo value) => $_setField(113, value);
  @$pb.TagNumber(113)
  $core.bool hasAlaInfo() => $_has(30);
  @$pb.TagNumber(113)
  void clearAlaInfo() => $_clearField(113);
  @$pb.TagNumber(113)
  $6.AlaLiveInfo ensureAlaInfo() => $_ensure(30);

  @$pb.TagNumber(120)
  $pb.PbList<$7.DislikeInfo> get dislikeInfo => $_getList(31);

  @$pb.TagNumber(124)
  $core.int get agreeNum => $_getIZ(32);
  @$pb.TagNumber(124)
  set agreeNum($core.int value) => $_setSignedInt32(32, value);
  @$pb.TagNumber(124)
  $core.bool hasAgreeNum() => $_has(32);
  @$pb.TagNumber(124)
  void clearAgreeNum() => $_clearField(124);

  @$pb.TagNumber(126)
  $8.Agree get agree => $_getN(33);
  @$pb.TagNumber(126)
  set agree($8.Agree value) => $_setField(126, value);
  @$pb.TagNumber(126)
  $core.bool hasAgree() => $_has(33);
  @$pb.TagNumber(126)
  void clearAgree() => $_clearField(126);
  @$pb.TagNumber(126)
  $8.Agree ensureAgree() => $_ensure(33);

  @$pb.TagNumber(135)
  $fixnum.Int64 get shareNum => $_getI64(34);
  @$pb.TagNumber(135)
  set shareNum($fixnum.Int64 value) => $_setInt64(34, value);
  @$pb.TagNumber(135)
  $core.bool hasShareNum() => $_has(34);
  @$pb.TagNumber(135)
  void clearShareNum() => $_clearField(135);

  @$pb.TagNumber(141)
  $9.OriginThreadInfo get originThreadInfo => $_getN(35);
  @$pb.TagNumber(141)
  set originThreadInfo($9.OriginThreadInfo value) => $_setField(141, value);
  @$pb.TagNumber(141)
  $core.bool hasOriginThreadInfo() => $_has(35);
  @$pb.TagNumber(141)
  void clearOriginThreadInfo() => $_clearField(141);
  @$pb.TagNumber(141)
  $9.OriginThreadInfo ensureOriginThreadInfo() => $_ensure(35);

  @$pb.TagNumber(142)
  $pb.PbList<$5.PbContent> get firstPostContent => $_getList(36);

  @$pb.TagNumber(143)
  $core.int get isShareThread => $_getIZ(37);
  @$pb.TagNumber(143)
  set isShareThread($core.int value) => $_setSignedInt32(37, value);
  @$pb.TagNumber(143)
  $core.bool hasIsShareThread() => $_has(37);
  @$pb.TagNumber(143)
  void clearIsShareThread() => $_clearField(143);

  @$pb.TagNumber(148)
  $core.int get isTopic => $_getIZ(38);
  @$pb.TagNumber(148)
  set isTopic($core.int value) => $_setSignedInt32(38, value);
  @$pb.TagNumber(148)
  $core.bool hasIsTopic() => $_has(38);
  @$pb.TagNumber(148)
  void clearIsTopic() => $_clearField(148);

  @$pb.TagNumber(149)
  $core.String get topicUserName => $_getSZ(39);
  @$pb.TagNumber(149)
  set topicUserName($core.String value) => $_setString(39, value);
  @$pb.TagNumber(149)
  $core.bool hasTopicUserName() => $_has(39);
  @$pb.TagNumber(149)
  void clearTopicUserName() => $_clearField(149);

  @$pb.TagNumber(150)
  $core.String get topicH5Url => $_getSZ(40);
  @$pb.TagNumber(150)
  set topicH5Url($core.String value) => $_setString(40, value);
  @$pb.TagNumber(150)
  $core.bool hasTopicH5Url() => $_has(40);
  @$pb.TagNumber(150)
  void clearTopicH5Url() => $_clearField(150);

  @$pb.TagNumber(155)
  $10.SimpleForum get forumInfo => $_getN(41);
  @$pb.TagNumber(155)
  set forumInfo($10.SimpleForum value) => $_setField(155, value);
  @$pb.TagNumber(155)
  $core.bool hasForumInfo() => $_has(41);
  @$pb.TagNumber(155)
  void clearForumInfo() => $_clearField(155);
  @$pb.TagNumber(155)
  $10.SimpleForum ensureForumInfo() => $_ensure(41);

  @$pb.TagNumber(159)
  $core.String get tShareImg => $_getSZ(42);
  @$pb.TagNumber(159)
  set tShareImg($core.String value) => $_setString(42, value);
  @$pb.TagNumber(159)
  $core.bool hasTShareImg() => $_has(42);
  @$pb.TagNumber(159)
  void clearTShareImg() => $_clearField(159);

  @$pb.TagNumber(164)
  $core.String get nid => $_getSZ(43);
  @$pb.TagNumber(164)
  set nid($core.String value) => $_setString(43, value);
  @$pb.TagNumber(164)
  $core.bool hasNid() => $_has(43);
  @$pb.TagNumber(164)
  void clearNid() => $_clearField(164);

  @$pb.TagNumber(175)
  $core.int get tabId => $_getIZ(44);
  @$pb.TagNumber(175)
  set tabId($core.int value) => $_setSignedInt32(44, value);
  @$pb.TagNumber(175)
  $core.bool hasTabId() => $_has(44);
  @$pb.TagNumber(175)
  void clearTabId() => $_clearField(175);

  @$pb.TagNumber(176)
  $core.String get tabName => $_getSZ(45);
  @$pb.TagNumber(176)
  set tabName($core.String value) => $_setString(45, value);
  @$pb.TagNumber(176)
  $core.bool hasTabName() => $_has(45);
  @$pb.TagNumber(176)
  void clearTabName() => $_clearField(176);

  @$pb.TagNumber(181)
  $core.int get isDeleted => $_getIZ(46);
  @$pb.TagNumber(181)
  set isDeleted($core.int value) => $_setSignedInt32(46, value);
  @$pb.TagNumber(181)
  $core.bool hasIsDeleted() => $_has(46);
  @$pb.TagNumber(181)
  void clearIsDeleted() => $_clearField(181);

  @$pb.TagNumber(182)
  $core.int get hotNum => $_getIZ(47);
  @$pb.TagNumber(182)
  set hotNum($core.int value) => $_setSignedInt32(47, value);
  @$pb.TagNumber(182)
  $core.bool hasHotNum() => $_has(47);
  @$pb.TagNumber(182)
  void clearHotNum() => $_clearField(182);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
