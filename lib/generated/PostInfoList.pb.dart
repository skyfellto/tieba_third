// This is a generated file - do not edit.
//
// Generated from PostInfoList.proto.

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
import 'Agree.pb.dart' as $13;
import 'AlaLiveInfo.pb.dart' as $12;
import 'AnchorInfo.pb.dart' as $6;
import 'BaijiahaoInfo.pb.dart' as $16;
import 'DealInfo.pb.dart' as $10;
import 'HeadItem.pb.dart' as $18;
import 'Item.pb.dart' as $17;
import 'LbsInfo.pb.dart' as $3;
import 'Media.pb.dart' as $2;
import 'MultipleForum.pb.dart' as $11;
import 'OriginThreadInfo.pb.dart' as $14;
import 'PbContent.pb.dart' as $15;
import 'PbLinkInfo.pb.dart' as $19;
import 'PollInfo.pb.dart' as $8;
import 'PostInfoContent.pb.dart' as $0;
import 'PrivSets.pb.dart' as $20;
import 'Quote.pb.dart' as $4;
import 'UserPostPerm.pb.dart' as $21;
import 'VideoInfo.pb.dart' as $9;
import 'Voice.pb.dart' as $5;
import 'ZhiBoInfoTW.pb.dart' as $7;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class PostInfoList extends $pb.GeneratedMessage {
  factory PostInfoList({
    $fixnum.Int64? forumId,
    $fixnum.Int64? threadId,
    $fixnum.Int64? postId,
    $core.int? isThread,
    $core.int? createTime,
    $core.String? forumName,
    $core.String? title,
    $core.Iterable<$0.PostInfoContent>? content,
    $core.String? contentThread,
    $core.String? userName,
    $core.String? ip,
    $core.int? isPostDeleted,
    $core.String? ptype,
    $core.String? abstract,
    $core.Iterable<$1.Abstract>? abstractThread,
    $core.Iterable<$2.Media>? media,
    $core.int? replyNum,
    $fixnum.Int64? userId,
    $core.String? userPortrait,
    $core.String? postType,
    $3.LbsInfo? lbsInfo,
    $4.Quote? quote,
    $core.Iterable<$5.Voice>? voiceInfo,
    $6.AnchorInfo? anchorInfo,
    $core.int? hidePost,
    $fixnum.Int64? threadType,
    $7.ZhiBoInfoTW? twzhiboInfo,
    $8.PollInfo? pollInfo,
    $9.VideoInfo? videoInfo,
    $core.bool? isDeal,
    $10.DealInfo? dealInfo,
    $core.Iterable<$11.MultipleForum>? multipleForumList,
    $core.int? freqNum,
    $fixnum.Int64? vForumId,
    $core.String? nameShow,
    $12.AlaLiveInfo? alaInfo,
    $core.int? agreeNum,
    $core.int? viewNum,
    $core.int? shareNum,
    $13.Agree? agree,
    $core.int? isRemain,
    $14.OriginThreadInfo? originThreadInfo,
    $core.int? isViewYear,
    $core.int? isShareThread,
    $core.Iterable<$15.PbContent>? richTitle,
    $core.Iterable<$15.PbContent>? richAbstract,
    $core.int? isNtitle,
    $core.String? articleCover,
    $core.Iterable<$15.PbContent>? firstPostContent,
    $16.BaijiahaoInfo? baijiahaoInfo,
    $core.String? wonderfulPostInfo,
    $17.Item? item,
    $core.Iterable<$18.HeadItem>? itemStar,
    $core.Iterable<$19.PbLinkInfo>? pbLinkInfo,
    $core.Iterable<$20.PrivSets>? privSets,
    $core.int? isAuthorView,
    $core.int? isManager,
    $core.int? isOriginManager,
    $core.int? goodTypes,
    $core.int? topTypes,
    $21.UserPostPerm? userPostPerm,
    $core.String? targetScheme,
  }) {
    final result = create();
    if (forumId != null) result.forumId = forumId;
    if (threadId != null) result.threadId = threadId;
    if (postId != null) result.postId = postId;
    if (isThread != null) result.isThread = isThread;
    if (createTime != null) result.createTime = createTime;
    if (forumName != null) result.forumName = forumName;
    if (title != null) result.title = title;
    if (content != null) result.content.addAll(content);
    if (contentThread != null) result.contentThread = contentThread;
    if (userName != null) result.userName = userName;
    if (ip != null) result.ip = ip;
    if (isPostDeleted != null) result.isPostDeleted = isPostDeleted;
    if (ptype != null) result.ptype = ptype;
    if (abstract != null) result.abstract = abstract;
    if (abstractThread != null) result.abstractThread.addAll(abstractThread);
    if (media != null) result.media.addAll(media);
    if (replyNum != null) result.replyNum = replyNum;
    if (userId != null) result.userId = userId;
    if (userPortrait != null) result.userPortrait = userPortrait;
    if (postType != null) result.postType = postType;
    if (lbsInfo != null) result.lbsInfo = lbsInfo;
    if (quote != null) result.quote = quote;
    if (voiceInfo != null) result.voiceInfo.addAll(voiceInfo);
    if (anchorInfo != null) result.anchorInfo = anchorInfo;
    if (hidePost != null) result.hidePost = hidePost;
    if (threadType != null) result.threadType = threadType;
    if (twzhiboInfo != null) result.twzhiboInfo = twzhiboInfo;
    if (pollInfo != null) result.pollInfo = pollInfo;
    if (videoInfo != null) result.videoInfo = videoInfo;
    if (isDeal != null) result.isDeal = isDeal;
    if (dealInfo != null) result.dealInfo = dealInfo;
    if (multipleForumList != null)
      result.multipleForumList.addAll(multipleForumList);
    if (freqNum != null) result.freqNum = freqNum;
    if (vForumId != null) result.vForumId = vForumId;
    if (nameShow != null) result.nameShow = nameShow;
    if (alaInfo != null) result.alaInfo = alaInfo;
    if (agreeNum != null) result.agreeNum = agreeNum;
    if (viewNum != null) result.viewNum = viewNum;
    if (shareNum != null) result.shareNum = shareNum;
    if (agree != null) result.agree = agree;
    if (isRemain != null) result.isRemain = isRemain;
    if (originThreadInfo != null) result.originThreadInfo = originThreadInfo;
    if (isViewYear != null) result.isViewYear = isViewYear;
    if (isShareThread != null) result.isShareThread = isShareThread;
    if (richTitle != null) result.richTitle.addAll(richTitle);
    if (richAbstract != null) result.richAbstract.addAll(richAbstract);
    if (isNtitle != null) result.isNtitle = isNtitle;
    if (articleCover != null) result.articleCover = articleCover;
    if (firstPostContent != null)
      result.firstPostContent.addAll(firstPostContent);
    if (baijiahaoInfo != null) result.baijiahaoInfo = baijiahaoInfo;
    if (wonderfulPostInfo != null) result.wonderfulPostInfo = wonderfulPostInfo;
    if (item != null) result.item = item;
    if (itemStar != null) result.itemStar.addAll(itemStar);
    if (pbLinkInfo != null) result.pbLinkInfo.addAll(pbLinkInfo);
    if (privSets != null) result.privSets.addAll(privSets);
    if (isAuthorView != null) result.isAuthorView = isAuthorView;
    if (isManager != null) result.isManager = isManager;
    if (isOriginManager != null) result.isOriginManager = isOriginManager;
    if (goodTypes != null) result.goodTypes = goodTypes;
    if (topTypes != null) result.topTypes = topTypes;
    if (userPostPerm != null) result.userPostPerm = userPostPerm;
    if (targetScheme != null) result.targetScheme = targetScheme;
    return result;
  }

  PostInfoList._();

  factory PostInfoList.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PostInfoList.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PostInfoList',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'forumId', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(
        2, _omitFieldNames ? '' : 'threadId', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(3, _omitFieldNames ? '' : 'postId', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aI(4, _omitFieldNames ? '' : 'isThread', fieldType: $pb.PbFieldType.OU3)
    ..aI(5, _omitFieldNames ? '' : 'createTime', fieldType: $pb.PbFieldType.OU3)
    ..aOS(6, _omitFieldNames ? '' : 'forumName')
    ..aOS(7, _omitFieldNames ? '' : 'title')
    ..pPM<$0.PostInfoContent>(8, _omitFieldNames ? '' : 'content',
        subBuilder: $0.PostInfoContent.create)
    ..aOS(9, _omitFieldNames ? '' : 'contentThread')
    ..aOS(10, _omitFieldNames ? '' : 'userName')
    ..aOS(11, _omitFieldNames ? '' : 'ip')
    ..aI(12, _omitFieldNames ? '' : 'isPostDeleted',
        fieldType: $pb.PbFieldType.OU3)
    ..aOS(13, _omitFieldNames ? '' : 'ptype')
    ..aOS(14, _omitFieldNames ? '' : 'Abstract')
    ..pPM<$1.Abstract>(15, _omitFieldNames ? '' : 'abstractThread',
        subBuilder: $1.Abstract.create)
    ..pPM<$2.Media>(16, _omitFieldNames ? '' : 'media',
        subBuilder: $2.Media.create)
    ..aI(17, _omitFieldNames ? '' : 'replyNum', fieldType: $pb.PbFieldType.OU3)
    ..aInt64(18, _omitFieldNames ? '' : 'userId')
    ..aOS(19, _omitFieldNames ? '' : 'userPortrait')
    ..aOS(20, _omitFieldNames ? '' : 'postType')
    ..aOM<$3.LbsInfo>(21, _omitFieldNames ? '' : 'lbsInfo',
        subBuilder: $3.LbsInfo.create)
    ..aOM<$4.Quote>(22, _omitFieldNames ? '' : 'quote',
        subBuilder: $4.Quote.create)
    ..pPM<$5.Voice>(23, _omitFieldNames ? '' : 'voiceInfo',
        subBuilder: $5.Voice.create)
    ..aOM<$6.AnchorInfo>(24, _omitFieldNames ? '' : 'anchorInfo',
        subBuilder: $6.AnchorInfo.create)
    ..aI(25, _omitFieldNames ? '' : 'hidePost')
    ..a<$fixnum.Int64>(
        26, _omitFieldNames ? '' : 'threadType', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<$7.ZhiBoInfoTW>(27, _omitFieldNames ? '' : 'twzhiboInfo',
        subBuilder: $7.ZhiBoInfoTW.create)
    ..aOM<$8.PollInfo>(28, _omitFieldNames ? '' : 'pollInfo',
        subBuilder: $8.PollInfo.create)
    ..aOM<$9.VideoInfo>(29, _omitFieldNames ? '' : 'videoInfo',
        subBuilder: $9.VideoInfo.create)
    ..aOB(30, _omitFieldNames ? '' : 'isDeal')
    ..aOM<$10.DealInfo>(31, _omitFieldNames ? '' : 'dealInfo',
        subBuilder: $10.DealInfo.create)
    ..pPM<$11.MultipleForum>(32, _omitFieldNames ? '' : 'multipleForumList',
        subBuilder: $11.MultipleForum.create)
    ..aI(33, _omitFieldNames ? '' : 'freqNum')
    ..a<$fixnum.Int64>(
        34, _omitFieldNames ? '' : 'vForumId', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(35, _omitFieldNames ? '' : 'nameShow')
    ..aOM<$12.AlaLiveInfo>(36, _omitFieldNames ? '' : 'alaInfo',
        subBuilder: $12.AlaLiveInfo.create)
    ..aI(37, _omitFieldNames ? '' : 'agreeNum')
    ..aI(38, _omitFieldNames ? '' : 'viewNum')
    ..aI(39, _omitFieldNames ? '' : 'shareNum')
    ..aOM<$13.Agree>(40, _omitFieldNames ? '' : 'agree',
        subBuilder: $13.Agree.create)
    ..aI(41, _omitFieldNames ? '' : 'isRemain')
    ..aOM<$14.OriginThreadInfo>(42, _omitFieldNames ? '' : 'originThreadInfo',
        subBuilder: $14.OriginThreadInfo.create)
    ..aI(43, _omitFieldNames ? '' : 'isViewYear')
    ..aI(44, _omitFieldNames ? '' : 'isShareThread')
    ..pPM<$15.PbContent>(45, _omitFieldNames ? '' : 'richTitle',
        subBuilder: $15.PbContent.create)
    ..pPM<$15.PbContent>(46, _omitFieldNames ? '' : 'richAbstract',
        subBuilder: $15.PbContent.create)
    ..aI(47, _omitFieldNames ? '' : 'isNtitle')
    ..aOS(48, _omitFieldNames ? '' : 'articleCover')
    ..pPM<$15.PbContent>(49, _omitFieldNames ? '' : 'firstPostContent',
        subBuilder: $15.PbContent.create)
    ..aOM<$16.BaijiahaoInfo>(50, _omitFieldNames ? '' : 'baijiahaoInfo',
        subBuilder: $16.BaijiahaoInfo.create)
    ..aOS(51, _omitFieldNames ? '' : 'wonderfulPostInfo')
    ..aOM<$17.Item>(52, _omitFieldNames ? '' : 'item',
        subBuilder: $17.Item.create)
    ..pPM<$18.HeadItem>(53, _omitFieldNames ? '' : 'itemStar',
        subBuilder: $18.HeadItem.create)
    ..pPM<$19.PbLinkInfo>(54, _omitFieldNames ? '' : 'pbLinkInfo',
        subBuilder: $19.PbLinkInfo.create)
    ..pPM<$20.PrivSets>(56, _omitFieldNames ? '' : 'privSets',
        subBuilder: $20.PrivSets.create)
    ..aI(57, _omitFieldNames ? '' : 'isAuthorView')
    ..aI(59, _omitFieldNames ? '' : 'isManager')
    ..aI(60, _omitFieldNames ? '' : 'isOriginManager')
    ..aI(61, _omitFieldNames ? '' : 'goodTypes')
    ..aI(62, _omitFieldNames ? '' : 'topTypes')
    ..aOM<$21.UserPostPerm>(63, _omitFieldNames ? '' : 'userPostPerm',
        subBuilder: $21.UserPostPerm.create)
    ..aOS(66, _omitFieldNames ? '' : 'targetScheme')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PostInfoList clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PostInfoList copyWith(void Function(PostInfoList) updates) =>
      super.copyWith((message) => updates(message as PostInfoList))
          as PostInfoList;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PostInfoList create() => PostInfoList._();
  @$core.override
  PostInfoList createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PostInfoList getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PostInfoList>(create);
  static PostInfoList? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get forumId => $_getI64(0);
  @$pb.TagNumber(1)
  set forumId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasForumId() => $_has(0);
  @$pb.TagNumber(1)
  void clearForumId() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get threadId => $_getI64(1);
  @$pb.TagNumber(2)
  set threadId($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasThreadId() => $_has(1);
  @$pb.TagNumber(2)
  void clearThreadId() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get postId => $_getI64(2);
  @$pb.TagNumber(3)
  set postId($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasPostId() => $_has(2);
  @$pb.TagNumber(3)
  void clearPostId() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get isThread => $_getIZ(3);
  @$pb.TagNumber(4)
  set isThread($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasIsThread() => $_has(3);
  @$pb.TagNumber(4)
  void clearIsThread() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get createTime => $_getIZ(4);
  @$pb.TagNumber(5)
  set createTime($core.int value) => $_setUnsignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasCreateTime() => $_has(4);
  @$pb.TagNumber(5)
  void clearCreateTime() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get forumName => $_getSZ(5);
  @$pb.TagNumber(6)
  set forumName($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasForumName() => $_has(5);
  @$pb.TagNumber(6)
  void clearForumName() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get title => $_getSZ(6);
  @$pb.TagNumber(7)
  set title($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasTitle() => $_has(6);
  @$pb.TagNumber(7)
  void clearTitle() => $_clearField(7);

  @$pb.TagNumber(8)
  $pb.PbList<$0.PostInfoContent> get content => $_getList(7);

  @$pb.TagNumber(9)
  $core.String get contentThread => $_getSZ(8);
  @$pb.TagNumber(9)
  set contentThread($core.String value) => $_setString(8, value);
  @$pb.TagNumber(9)
  $core.bool hasContentThread() => $_has(8);
  @$pb.TagNumber(9)
  void clearContentThread() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.String get userName => $_getSZ(9);
  @$pb.TagNumber(10)
  set userName($core.String value) => $_setString(9, value);
  @$pb.TagNumber(10)
  $core.bool hasUserName() => $_has(9);
  @$pb.TagNumber(10)
  void clearUserName() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.String get ip => $_getSZ(10);
  @$pb.TagNumber(11)
  set ip($core.String value) => $_setString(10, value);
  @$pb.TagNumber(11)
  $core.bool hasIp() => $_has(10);
  @$pb.TagNumber(11)
  void clearIp() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.int get isPostDeleted => $_getIZ(11);
  @$pb.TagNumber(12)
  set isPostDeleted($core.int value) => $_setUnsignedInt32(11, value);
  @$pb.TagNumber(12)
  $core.bool hasIsPostDeleted() => $_has(11);
  @$pb.TagNumber(12)
  void clearIsPostDeleted() => $_clearField(12);

  @$pb.TagNumber(13)
  $core.String get ptype => $_getSZ(12);
  @$pb.TagNumber(13)
  set ptype($core.String value) => $_setString(12, value);
  @$pb.TagNumber(13)
  $core.bool hasPtype() => $_has(12);
  @$pb.TagNumber(13)
  void clearPtype() => $_clearField(13);

  @$pb.TagNumber(14)
  $core.String get abstract => $_getSZ(13);
  @$pb.TagNumber(14)
  set abstract($core.String value) => $_setString(13, value);
  @$pb.TagNumber(14)
  $core.bool hasAbstract() => $_has(13);
  @$pb.TagNumber(14)
  void clearAbstract() => $_clearField(14);

  @$pb.TagNumber(15)
  $pb.PbList<$1.Abstract> get abstractThread => $_getList(14);

  @$pb.TagNumber(16)
  $pb.PbList<$2.Media> get media => $_getList(15);

  @$pb.TagNumber(17)
  $core.int get replyNum => $_getIZ(16);
  @$pb.TagNumber(17)
  set replyNum($core.int value) => $_setUnsignedInt32(16, value);
  @$pb.TagNumber(17)
  $core.bool hasReplyNum() => $_has(16);
  @$pb.TagNumber(17)
  void clearReplyNum() => $_clearField(17);

  @$pb.TagNumber(18)
  $fixnum.Int64 get userId => $_getI64(17);
  @$pb.TagNumber(18)
  set userId($fixnum.Int64 value) => $_setInt64(17, value);
  @$pb.TagNumber(18)
  $core.bool hasUserId() => $_has(17);
  @$pb.TagNumber(18)
  void clearUserId() => $_clearField(18);

  @$pb.TagNumber(19)
  $core.String get userPortrait => $_getSZ(18);
  @$pb.TagNumber(19)
  set userPortrait($core.String value) => $_setString(18, value);
  @$pb.TagNumber(19)
  $core.bool hasUserPortrait() => $_has(18);
  @$pb.TagNumber(19)
  void clearUserPortrait() => $_clearField(19);

  @$pb.TagNumber(20)
  $core.String get postType => $_getSZ(19);
  @$pb.TagNumber(20)
  set postType($core.String value) => $_setString(19, value);
  @$pb.TagNumber(20)
  $core.bool hasPostType() => $_has(19);
  @$pb.TagNumber(20)
  void clearPostType() => $_clearField(20);

  @$pb.TagNumber(21)
  $3.LbsInfo get lbsInfo => $_getN(20);
  @$pb.TagNumber(21)
  set lbsInfo($3.LbsInfo value) => $_setField(21, value);
  @$pb.TagNumber(21)
  $core.bool hasLbsInfo() => $_has(20);
  @$pb.TagNumber(21)
  void clearLbsInfo() => $_clearField(21);
  @$pb.TagNumber(21)
  $3.LbsInfo ensureLbsInfo() => $_ensure(20);

  @$pb.TagNumber(22)
  $4.Quote get quote => $_getN(21);
  @$pb.TagNumber(22)
  set quote($4.Quote value) => $_setField(22, value);
  @$pb.TagNumber(22)
  $core.bool hasQuote() => $_has(21);
  @$pb.TagNumber(22)
  void clearQuote() => $_clearField(22);
  @$pb.TagNumber(22)
  $4.Quote ensureQuote() => $_ensure(21);

  @$pb.TagNumber(23)
  $pb.PbList<$5.Voice> get voiceInfo => $_getList(22);

  @$pb.TagNumber(24)
  $6.AnchorInfo get anchorInfo => $_getN(23);
  @$pb.TagNumber(24)
  set anchorInfo($6.AnchorInfo value) => $_setField(24, value);
  @$pb.TagNumber(24)
  $core.bool hasAnchorInfo() => $_has(23);
  @$pb.TagNumber(24)
  void clearAnchorInfo() => $_clearField(24);
  @$pb.TagNumber(24)
  $6.AnchorInfo ensureAnchorInfo() => $_ensure(23);

  @$pb.TagNumber(25)
  $core.int get hidePost => $_getIZ(24);
  @$pb.TagNumber(25)
  set hidePost($core.int value) => $_setSignedInt32(24, value);
  @$pb.TagNumber(25)
  $core.bool hasHidePost() => $_has(24);
  @$pb.TagNumber(25)
  void clearHidePost() => $_clearField(25);

  @$pb.TagNumber(26)
  $fixnum.Int64 get threadType => $_getI64(25);
  @$pb.TagNumber(26)
  set threadType($fixnum.Int64 value) => $_setInt64(25, value);
  @$pb.TagNumber(26)
  $core.bool hasThreadType() => $_has(25);
  @$pb.TagNumber(26)
  void clearThreadType() => $_clearField(26);

  @$pb.TagNumber(27)
  $7.ZhiBoInfoTW get twzhiboInfo => $_getN(26);
  @$pb.TagNumber(27)
  set twzhiboInfo($7.ZhiBoInfoTW value) => $_setField(27, value);
  @$pb.TagNumber(27)
  $core.bool hasTwzhiboInfo() => $_has(26);
  @$pb.TagNumber(27)
  void clearTwzhiboInfo() => $_clearField(27);
  @$pb.TagNumber(27)
  $7.ZhiBoInfoTW ensureTwzhiboInfo() => $_ensure(26);

  @$pb.TagNumber(28)
  $8.PollInfo get pollInfo => $_getN(27);
  @$pb.TagNumber(28)
  set pollInfo($8.PollInfo value) => $_setField(28, value);
  @$pb.TagNumber(28)
  $core.bool hasPollInfo() => $_has(27);
  @$pb.TagNumber(28)
  void clearPollInfo() => $_clearField(28);
  @$pb.TagNumber(28)
  $8.PollInfo ensurePollInfo() => $_ensure(27);

  @$pb.TagNumber(29)
  $9.VideoInfo get videoInfo => $_getN(28);
  @$pb.TagNumber(29)
  set videoInfo($9.VideoInfo value) => $_setField(29, value);
  @$pb.TagNumber(29)
  $core.bool hasVideoInfo() => $_has(28);
  @$pb.TagNumber(29)
  void clearVideoInfo() => $_clearField(29);
  @$pb.TagNumber(29)
  $9.VideoInfo ensureVideoInfo() => $_ensure(28);

  @$pb.TagNumber(30)
  $core.bool get isDeal => $_getBF(29);
  @$pb.TagNumber(30)
  set isDeal($core.bool value) => $_setBool(29, value);
  @$pb.TagNumber(30)
  $core.bool hasIsDeal() => $_has(29);
  @$pb.TagNumber(30)
  void clearIsDeal() => $_clearField(30);

  @$pb.TagNumber(31)
  $10.DealInfo get dealInfo => $_getN(30);
  @$pb.TagNumber(31)
  set dealInfo($10.DealInfo value) => $_setField(31, value);
  @$pb.TagNumber(31)
  $core.bool hasDealInfo() => $_has(30);
  @$pb.TagNumber(31)
  void clearDealInfo() => $_clearField(31);
  @$pb.TagNumber(31)
  $10.DealInfo ensureDealInfo() => $_ensure(30);

  @$pb.TagNumber(32)
  $pb.PbList<$11.MultipleForum> get multipleForumList => $_getList(31);

  @$pb.TagNumber(33)
  $core.int get freqNum => $_getIZ(32);
  @$pb.TagNumber(33)
  set freqNum($core.int value) => $_setSignedInt32(32, value);
  @$pb.TagNumber(33)
  $core.bool hasFreqNum() => $_has(32);
  @$pb.TagNumber(33)
  void clearFreqNum() => $_clearField(33);

  @$pb.TagNumber(34)
  $fixnum.Int64 get vForumId => $_getI64(33);
  @$pb.TagNumber(34)
  set vForumId($fixnum.Int64 value) => $_setInt64(33, value);
  @$pb.TagNumber(34)
  $core.bool hasVForumId() => $_has(33);
  @$pb.TagNumber(34)
  void clearVForumId() => $_clearField(34);

  @$pb.TagNumber(35)
  $core.String get nameShow => $_getSZ(34);
  @$pb.TagNumber(35)
  set nameShow($core.String value) => $_setString(34, value);
  @$pb.TagNumber(35)
  $core.bool hasNameShow() => $_has(34);
  @$pb.TagNumber(35)
  void clearNameShow() => $_clearField(35);

  @$pb.TagNumber(36)
  $12.AlaLiveInfo get alaInfo => $_getN(35);
  @$pb.TagNumber(36)
  set alaInfo($12.AlaLiveInfo value) => $_setField(36, value);
  @$pb.TagNumber(36)
  $core.bool hasAlaInfo() => $_has(35);
  @$pb.TagNumber(36)
  void clearAlaInfo() => $_clearField(36);
  @$pb.TagNumber(36)
  $12.AlaLiveInfo ensureAlaInfo() => $_ensure(35);

  @$pb.TagNumber(37)
  $core.int get agreeNum => $_getIZ(36);
  @$pb.TagNumber(37)
  set agreeNum($core.int value) => $_setSignedInt32(36, value);
  @$pb.TagNumber(37)
  $core.bool hasAgreeNum() => $_has(36);
  @$pb.TagNumber(37)
  void clearAgreeNum() => $_clearField(37);

  @$pb.TagNumber(38)
  $core.int get viewNum => $_getIZ(37);
  @$pb.TagNumber(38)
  set viewNum($core.int value) => $_setSignedInt32(37, value);
  @$pb.TagNumber(38)
  $core.bool hasViewNum() => $_has(37);
  @$pb.TagNumber(38)
  void clearViewNum() => $_clearField(38);

  @$pb.TagNumber(39)
  $core.int get shareNum => $_getIZ(38);
  @$pb.TagNumber(39)
  set shareNum($core.int value) => $_setSignedInt32(38, value);
  @$pb.TagNumber(39)
  $core.bool hasShareNum() => $_has(38);
  @$pb.TagNumber(39)
  void clearShareNum() => $_clearField(39);

  @$pb.TagNumber(40)
  $13.Agree get agree => $_getN(39);
  @$pb.TagNumber(40)
  set agree($13.Agree value) => $_setField(40, value);
  @$pb.TagNumber(40)
  $core.bool hasAgree() => $_has(39);
  @$pb.TagNumber(40)
  void clearAgree() => $_clearField(40);
  @$pb.TagNumber(40)
  $13.Agree ensureAgree() => $_ensure(39);

  @$pb.TagNumber(41)
  $core.int get isRemain => $_getIZ(40);
  @$pb.TagNumber(41)
  set isRemain($core.int value) => $_setSignedInt32(40, value);
  @$pb.TagNumber(41)
  $core.bool hasIsRemain() => $_has(40);
  @$pb.TagNumber(41)
  void clearIsRemain() => $_clearField(41);

  @$pb.TagNumber(42)
  $14.OriginThreadInfo get originThreadInfo => $_getN(41);
  @$pb.TagNumber(42)
  set originThreadInfo($14.OriginThreadInfo value) => $_setField(42, value);
  @$pb.TagNumber(42)
  $core.bool hasOriginThreadInfo() => $_has(41);
  @$pb.TagNumber(42)
  void clearOriginThreadInfo() => $_clearField(42);
  @$pb.TagNumber(42)
  $14.OriginThreadInfo ensureOriginThreadInfo() => $_ensure(41);

  @$pb.TagNumber(43)
  $core.int get isViewYear => $_getIZ(42);
  @$pb.TagNumber(43)
  set isViewYear($core.int value) => $_setSignedInt32(42, value);
  @$pb.TagNumber(43)
  $core.bool hasIsViewYear() => $_has(42);
  @$pb.TagNumber(43)
  void clearIsViewYear() => $_clearField(43);

  @$pb.TagNumber(44)
  $core.int get isShareThread => $_getIZ(43);
  @$pb.TagNumber(44)
  set isShareThread($core.int value) => $_setSignedInt32(43, value);
  @$pb.TagNumber(44)
  $core.bool hasIsShareThread() => $_has(43);
  @$pb.TagNumber(44)
  void clearIsShareThread() => $_clearField(44);

  @$pb.TagNumber(45)
  $pb.PbList<$15.PbContent> get richTitle => $_getList(44);

  @$pb.TagNumber(46)
  $pb.PbList<$15.PbContent> get richAbstract => $_getList(45);

  @$pb.TagNumber(47)
  $core.int get isNtitle => $_getIZ(46);
  @$pb.TagNumber(47)
  set isNtitle($core.int value) => $_setSignedInt32(46, value);
  @$pb.TagNumber(47)
  $core.bool hasIsNtitle() => $_has(46);
  @$pb.TagNumber(47)
  void clearIsNtitle() => $_clearField(47);

  @$pb.TagNumber(48)
  $core.String get articleCover => $_getSZ(47);
  @$pb.TagNumber(48)
  set articleCover($core.String value) => $_setString(47, value);
  @$pb.TagNumber(48)
  $core.bool hasArticleCover() => $_has(47);
  @$pb.TagNumber(48)
  void clearArticleCover() => $_clearField(48);

  @$pb.TagNumber(49)
  $pb.PbList<$15.PbContent> get firstPostContent => $_getList(48);

  @$pb.TagNumber(50)
  $16.BaijiahaoInfo get baijiahaoInfo => $_getN(49);
  @$pb.TagNumber(50)
  set baijiahaoInfo($16.BaijiahaoInfo value) => $_setField(50, value);
  @$pb.TagNumber(50)
  $core.bool hasBaijiahaoInfo() => $_has(49);
  @$pb.TagNumber(50)
  void clearBaijiahaoInfo() => $_clearField(50);
  @$pb.TagNumber(50)
  $16.BaijiahaoInfo ensureBaijiahaoInfo() => $_ensure(49);

  @$pb.TagNumber(51)
  $core.String get wonderfulPostInfo => $_getSZ(50);
  @$pb.TagNumber(51)
  set wonderfulPostInfo($core.String value) => $_setString(50, value);
  @$pb.TagNumber(51)
  $core.bool hasWonderfulPostInfo() => $_has(50);
  @$pb.TagNumber(51)
  void clearWonderfulPostInfo() => $_clearField(51);

  @$pb.TagNumber(52)
  $17.Item get item => $_getN(51);
  @$pb.TagNumber(52)
  set item($17.Item value) => $_setField(52, value);
  @$pb.TagNumber(52)
  $core.bool hasItem() => $_has(51);
  @$pb.TagNumber(52)
  void clearItem() => $_clearField(52);
  @$pb.TagNumber(52)
  $17.Item ensureItem() => $_ensure(51);

  @$pb.TagNumber(53)
  $pb.PbList<$18.HeadItem> get itemStar => $_getList(52);

  @$pb.TagNumber(54)
  $pb.PbList<$19.PbLinkInfo> get pbLinkInfo => $_getList(53);

  /// repeated PbGoodsInfo pb_goods_info = 55;
  @$pb.TagNumber(56)
  $pb.PbList<$20.PrivSets> get privSets => $_getList(54);

  @$pb.TagNumber(57)
  $core.int get isAuthorView => $_getIZ(55);
  @$pb.TagNumber(57)
  set isAuthorView($core.int value) => $_setSignedInt32(55, value);
  @$pb.TagNumber(57)
  $core.bool hasIsAuthorView() => $_has(55);
  @$pb.TagNumber(57)
  void clearIsAuthorView() => $_clearField(57);

  /// WorksInfo works_info = 58;
  @$pb.TagNumber(59)
  $core.int get isManager => $_getIZ(56);
  @$pb.TagNumber(59)
  set isManager($core.int value) => $_setSignedInt32(56, value);
  @$pb.TagNumber(59)
  $core.bool hasIsManager() => $_has(56);
  @$pb.TagNumber(59)
  void clearIsManager() => $_clearField(59);

  @$pb.TagNumber(60)
  $core.int get isOriginManager => $_getIZ(57);
  @$pb.TagNumber(60)
  set isOriginManager($core.int value) => $_setSignedInt32(57, value);
  @$pb.TagNumber(60)
  $core.bool hasIsOriginManager() => $_has(57);
  @$pb.TagNumber(60)
  void clearIsOriginManager() => $_clearField(60);

  @$pb.TagNumber(61)
  $core.int get goodTypes => $_getIZ(58);
  @$pb.TagNumber(61)
  set goodTypes($core.int value) => $_setSignedInt32(58, value);
  @$pb.TagNumber(61)
  $core.bool hasGoodTypes() => $_has(58);
  @$pb.TagNumber(61)
  void clearGoodTypes() => $_clearField(61);

  @$pb.TagNumber(62)
  $core.int get topTypes => $_getIZ(59);
  @$pb.TagNumber(62)
  set topTypes($core.int value) => $_setSignedInt32(59, value);
  @$pb.TagNumber(62)
  $core.bool hasTopTypes() => $_has(59);
  @$pb.TagNumber(62)
  void clearTopTypes() => $_clearField(62);

  @$pb.TagNumber(63)
  $21.UserPostPerm get userPostPerm => $_getN(60);
  @$pb.TagNumber(63)
  set userPostPerm($21.UserPostPerm value) => $_setField(63, value);
  @$pb.TagNumber(63)
  $core.bool hasUserPostPerm() => $_has(60);
  @$pb.TagNumber(63)
  void clearUserPostPerm() => $_clearField(63);
  @$pb.TagNumber(63)
  $21.UserPostPerm ensureUserPostPerm() => $_ensure(60);

  /// VoiceRoom voice_room = 64;
  @$pb.TagNumber(66)
  $core.String get targetScheme => $_getSZ(61);
  @$pb.TagNumber(66)
  set targetScheme($core.String value) => $_setString(61, value);
  @$pb.TagNumber(66)
  $core.bool hasTargetScheme() => $_has(61);
  @$pb.TagNumber(66)
  void clearTargetScheme() => $_clearField(66);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
