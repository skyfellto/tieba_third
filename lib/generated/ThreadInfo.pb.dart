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
import 'AdInfo.pb.dart' as $11;
import 'Agree.pb.dart' as $15;
import 'AlaLiveInfo.pb.dart' as $13;
import 'DislikeInfo.pb.dart' as $14;
import 'HotTWThreadInfo.pb.dart' as $7;
import 'Media.pb.dart' as $2;
import 'OriginThreadInfo.pb.dart' as $16;
import 'PbContent.pb.dart' as $12;
import 'PollInfo.pb.dart' as $9;
import 'PostList.pb.dart' as $5;
import 'SimpleForum.pb.dart' as $17;
import 'TiebaPlusAd.pb.dart' as $19;
import 'Topic.pb.dart' as $6;
import 'User.pb.dart' as $0;
import 'VideoInfo.pb.dart' as $10;
import 'Voice.pb.dart' as $3;
import 'VoiceRoom.pb.dart' as $18;
import 'Zan.pb.dart' as $4;
import 'ZhiBoInfoTW.pb.dart' as $8;

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
    $core.int? isVote,
    $core.int? isBakan,
    $core.int? isProtal,
    $core.int? isMeizhi,
    $core.int? isVoiceThread,
    $core.int? isActivity,
    $core.int? isNotice,
    $0.User? author,
    $0.User? lastReplyer,
    $core.int? commentNum,
    $core.Iterable<$1.Abstract>? abstract,
    $core.Iterable<$2.Media>? media,
    $core.Iterable<$3.Voice>? voiceInfo,
    $core.String? meizhiPic,
    $core.int? threadType,
    $fixnum.Int64? forumId,
    $core.String? forumName,
    $core.String? livePostType,
    $core.int? isLivepost,
    $core.int? showCommented,
    $core.String? clickUrl,
    $core.String? video,
    $core.String? videoSwf,
    $core.String? videoCover,
    $core.String? videoId,
    $core.String? videoMobileUrl,
    $core.int? isNoTitle,
    $core.int? isBub,
    $fixnum.Int64? firstPostId,
    $4.Zan? zan,
    $core.int? isGlobalTop,
    $core.int? isPic,
    $core.Iterable<$5.PostList>? postList,
    $core.int? createTime,
    $core.int? repostNum,
    $6.Topic? topic,
    $core.int? hasCommented,
    $core.String? from,
    $core.int? collectStatus,
    $core.String? collectMarkPid,
    $fixnum.Int64? postId,
    $core.int? time,
    $core.int? isMemberTop,
    $fixnum.Int64? authorId,
    $core.int? isAd,
    $core.String? ecom,
    $core.String? pids,
    $core.int? hotWeight,
    $core.String? livecoverSrc,
    $core.int? storecount,
    $core.int? postNum,
    $7.HotTWThreadInfo? hotTWInfo,
    $8.ZhiBoInfoTW? twzhiboInfo,
    $core.String? categoryName,
    $9.PollInfo? pollInfo,
    $core.int? isNovel,
    $core.int? isNovelThank,
    $core.int? isNovelReward,
    $10.VideoInfo? videoInfo,
    $core.int? pushEndTime,
    $core.int? isCopythread,
    $core.int? operatorFlag,
    $core.int? picNum,
    $core.int? isGodthreadRecommend,
    $11.AdInfo? videoAdInfo,
    $core.Iterable<$12.PbContent>? richTitle,
    $core.Iterable<$12.PbContent>? richAbstract,
    $13.AlaLiveInfo? alaInfo,
    $core.Iterable<$14.DislikeInfo>? dislikeInfo,
    $core.int? agreeNum,
    $15.Agree? agree,
    $fixnum.Int64? shareNum,
    $16.OriginThreadInfo? originThreadInfo,
    $core.Iterable<$12.PbContent>? firstPostContent,
    $core.int? isShareThread,
    $core.int? isTopic,
    $core.String? topicUserName,
    $core.String? topicH5Url,
    $17.SimpleForum? forumInfo,
    $core.String? tShareImg,
    $core.String? nid,
    $core.int? tabId,
    $core.String? tabName,
    $core.int? isDeleted,
    $core.int? hotNum,
    $18.VoiceRoom? voiceRoom,
    $19.TiebaPlusAd? tiebaplusAd,
    $core.int? pollStyle,
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
    if (isVote != null) result.isVote = isVote;
    if (isBakan != null) result.isBakan = isBakan;
    if (isProtal != null) result.isProtal = isProtal;
    if (isMeizhi != null) result.isMeizhi = isMeizhi;
    if (isVoiceThread != null) result.isVoiceThread = isVoiceThread;
    if (isActivity != null) result.isActivity = isActivity;
    if (isNotice != null) result.isNotice = isNotice;
    if (author != null) result.author = author;
    if (lastReplyer != null) result.lastReplyer = lastReplyer;
    if (commentNum != null) result.commentNum = commentNum;
    if (abstract != null) result.abstract.addAll(abstract);
    if (media != null) result.media.addAll(media);
    if (voiceInfo != null) result.voiceInfo.addAll(voiceInfo);
    if (meizhiPic != null) result.meizhiPic = meizhiPic;
    if (threadType != null) result.threadType = threadType;
    if (forumId != null) result.forumId = forumId;
    if (forumName != null) result.forumName = forumName;
    if (livePostType != null) result.livePostType = livePostType;
    if (isLivepost != null) result.isLivepost = isLivepost;
    if (showCommented != null) result.showCommented = showCommented;
    if (clickUrl != null) result.clickUrl = clickUrl;
    if (video != null) result.video = video;
    if (videoSwf != null) result.videoSwf = videoSwf;
    if (videoCover != null) result.videoCover = videoCover;
    if (videoId != null) result.videoId = videoId;
    if (videoMobileUrl != null) result.videoMobileUrl = videoMobileUrl;
    if (isNoTitle != null) result.isNoTitle = isNoTitle;
    if (isBub != null) result.isBub = isBub;
    if (firstPostId != null) result.firstPostId = firstPostId;
    if (zan != null) result.zan = zan;
    if (isGlobalTop != null) result.isGlobalTop = isGlobalTop;
    if (isPic != null) result.isPic = isPic;
    if (postList != null) result.postList.addAll(postList);
    if (createTime != null) result.createTime = createTime;
    if (repostNum != null) result.repostNum = repostNum;
    if (topic != null) result.topic = topic;
    if (hasCommented != null) result.hasCommented = hasCommented;
    if (from != null) result.from = from;
    if (collectStatus != null) result.collectStatus = collectStatus;
    if (collectMarkPid != null) result.collectMarkPid = collectMarkPid;
    if (postId != null) result.postId = postId;
    if (time != null) result.time = time;
    if (isMemberTop != null) result.isMemberTop = isMemberTop;
    if (authorId != null) result.authorId = authorId;
    if (isAd != null) result.isAd = isAd;
    if (ecom != null) result.ecom = ecom;
    if (pids != null) result.pids = pids;
    if (hotWeight != null) result.hotWeight = hotWeight;
    if (livecoverSrc != null) result.livecoverSrc = livecoverSrc;
    if (storecount != null) result.storecount = storecount;
    if (postNum != null) result.postNum = postNum;
    if (hotTWInfo != null) result.hotTWInfo = hotTWInfo;
    if (twzhiboInfo != null) result.twzhiboInfo = twzhiboInfo;
    if (categoryName != null) result.categoryName = categoryName;
    if (pollInfo != null) result.pollInfo = pollInfo;
    if (isNovel != null) result.isNovel = isNovel;
    if (isNovelThank != null) result.isNovelThank = isNovelThank;
    if (isNovelReward != null) result.isNovelReward = isNovelReward;
    if (videoInfo != null) result.videoInfo = videoInfo;
    if (pushEndTime != null) result.pushEndTime = pushEndTime;
    if (isCopythread != null) result.isCopythread = isCopythread;
    if (operatorFlag != null) result.operatorFlag = operatorFlag;
    if (picNum != null) result.picNum = picNum;
    if (isGodthreadRecommend != null)
      result.isGodthreadRecommend = isGodthreadRecommend;
    if (videoAdInfo != null) result.videoAdInfo = videoAdInfo;
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
    if (voiceRoom != null) result.voiceRoom = voiceRoom;
    if (tiebaplusAd != null) result.tiebaplusAd = tiebaplusAd;
    if (pollStyle != null) result.pollStyle = pollStyle;
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
    ..aI(11, _omitFieldNames ? '' : 'isVote')
    ..aI(12, _omitFieldNames ? '' : 'isBakan')
    ..aI(13, _omitFieldNames ? '' : 'isProtal')
    ..aI(14, _omitFieldNames ? '' : 'isMeizhi')
    ..aI(15, _omitFieldNames ? '' : 'isVoiceThread')
    ..aI(16, _omitFieldNames ? '' : 'isActivity')
    ..aI(17, _omitFieldNames ? '' : 'isNotice')
    ..aOM<$0.User>(18, _omitFieldNames ? '' : 'author',
        subBuilder: $0.User.create)
    ..aOM<$0.User>(19, _omitFieldNames ? '' : 'lastReplyer',
        protoName: 'lastReplyer', subBuilder: $0.User.create)
    ..aI(20, _omitFieldNames ? '' : 'commentNum', protoName: 'commentNum')
    ..pPM<$1.Abstract>(21, _omitFieldNames ? '' : 'Abstract',
        subBuilder: $1.Abstract.create)
    ..pPM<$2.Media>(22, _omitFieldNames ? '' : 'media',
        subBuilder: $2.Media.create)
    ..pPM<$3.Voice>(23, _omitFieldNames ? '' : 'voiceInfo',
        subBuilder: $3.Voice.create)
    ..aOS(24, _omitFieldNames ? '' : 'meizhiPic')
    ..aI(26, _omitFieldNames ? '' : 'threadType')
    ..aInt64(27, _omitFieldNames ? '' : 'forumId', protoName: 'forumId')
    ..aOS(28, _omitFieldNames ? '' : 'forumName', protoName: 'forumName')
    ..aOS(29, _omitFieldNames ? '' : 'livePostType')
    ..aI(30, _omitFieldNames ? '' : 'isLivepost')
    ..aI(31, _omitFieldNames ? '' : 'showCommented')
    ..aOS(32, _omitFieldNames ? '' : 'clickUrl')
    ..aOS(33, _omitFieldNames ? '' : 'video')
    ..aOS(34, _omitFieldNames ? '' : 'videoSwf')
    ..aOS(35, _omitFieldNames ? '' : 'videoCover')
    ..aOS(36, _omitFieldNames ? '' : 'videoId')
    ..aOS(37, _omitFieldNames ? '' : 'videoMobileUrl')
    ..aI(38, _omitFieldNames ? '' : 'isNoTitle', protoName: 'isNoTitle')
    ..aI(39, _omitFieldNames ? '' : 'isBub')
    ..aInt64(40, _omitFieldNames ? '' : 'firstPostId', protoName: 'firstPostId')
    ..aOM<$4.Zan>(41, _omitFieldNames ? '' : 'zan', subBuilder: $4.Zan.create)
    ..aI(42, _omitFieldNames ? '' : 'isGlobalTop')
    ..aI(43, _omitFieldNames ? '' : 'isPic')
    ..pPM<$5.PostList>(44, _omitFieldNames ? '' : 'postList',
        subBuilder: $5.PostList.create)
    ..aI(45, _omitFieldNames ? '' : 'createTime', protoName: 'createTime')
    ..aI(46, _omitFieldNames ? '' : 'repostNum')
    ..aOM<$6.Topic>(47, _omitFieldNames ? '' : 'topic',
        subBuilder: $6.Topic.create)
    ..aI(48, _omitFieldNames ? '' : 'hasCommented')
    ..aOS(49, _omitFieldNames ? '' : 'from')
    ..aI(50, _omitFieldNames ? '' : 'collectStatus', protoName: 'collectStatus')
    ..aOS(51, _omitFieldNames ? '' : 'collectMarkPid',
        protoName: 'collectMarkPid')
    ..aInt64(52, _omitFieldNames ? '' : 'postId')
    ..aI(53, _omitFieldNames ? '' : 'time')
    ..aI(54, _omitFieldNames ? '' : 'isMemberTop', protoName: 'isMemberTop')
    ..aInt64(56, _omitFieldNames ? '' : 'authorId', protoName: 'authorId')
    ..aI(59, _omitFieldNames ? '' : 'isAd', fieldType: $pb.PbFieldType.OU3)
    ..aOS(60, _omitFieldNames ? '' : 'ecom')
    ..aOS(61, _omitFieldNames ? '' : 'pids')
    ..aI(66, _omitFieldNames ? '' : 'hotWeight')
    ..aOS(67, _omitFieldNames ? '' : 'livecoverSrc')
    ..aI(68, _omitFieldNames ? '' : 'storecount')
    ..aI(69, _omitFieldNames ? '' : 'postNum')
    ..aOM<$7.HotTWThreadInfo>(71, _omitFieldNames ? '' : 'hotTWInfo',
        protoName: 'hotTWInfo', subBuilder: $7.HotTWThreadInfo.create)
    ..aOM<$8.ZhiBoInfoTW>(72, _omitFieldNames ? '' : 'twzhiboInfo',
        subBuilder: $8.ZhiBoInfoTW.create)
    ..aOS(73, _omitFieldNames ? '' : 'categoryName')
    ..aOM<$9.PollInfo>(74, _omitFieldNames ? '' : 'pollInfo',
        subBuilder: $9.PollInfo.create)
    ..aI(76, _omitFieldNames ? '' : 'isNovel')
    ..aI(77, _omitFieldNames ? '' : 'isNovelThank')
    ..aI(78, _omitFieldNames ? '' : 'isNovelReward')
    ..aOM<$10.VideoInfo>(79, _omitFieldNames ? '' : 'videoInfo',
        protoName: 'videoInfo', subBuilder: $10.VideoInfo.create)
    ..aI(80, _omitFieldNames ? '' : 'pushEndTime')
    ..aI(81, _omitFieldNames ? '' : 'isCopythread',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(82, _omitFieldNames ? '' : 'operatorFlag',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(84, _omitFieldNames ? '' : 'picNum', fieldType: $pb.PbFieldType.OU3)
    ..aI(85, _omitFieldNames ? '' : 'isGodthreadRecommend')
    ..aOM<$11.AdInfo>(110, _omitFieldNames ? '' : 'videoAdInfo',
        subBuilder: $11.AdInfo.create)
    ..pPM<$12.PbContent>(111, _omitFieldNames ? '' : 'richTitle',
        protoName: 'richTitle', subBuilder: $12.PbContent.create)
    ..pPM<$12.PbContent>(112, _omitFieldNames ? '' : 'richAbstract',
        protoName: 'richAbstract', subBuilder: $12.PbContent.create)
    ..aOM<$13.AlaLiveInfo>(113, _omitFieldNames ? '' : 'alaInfo',
        subBuilder: $13.AlaLiveInfo.create)
    ..pPM<$14.DislikeInfo>(120, _omitFieldNames ? '' : 'dislikeInfo',
        protoName: 'dislikeInfo', subBuilder: $14.DislikeInfo.create)
    ..aI(124, _omitFieldNames ? '' : 'agreeNum', protoName: 'agreeNum')
    ..aOM<$15.Agree>(126, _omitFieldNames ? '' : 'agree',
        subBuilder: $15.Agree.create)
    ..aInt64(135, _omitFieldNames ? '' : 'shareNum', protoName: 'shareNum')
    ..aOM<$16.OriginThreadInfo>(141, _omitFieldNames ? '' : 'originThreadInfo',
        subBuilder: $16.OriginThreadInfo.create)
    ..pPM<$12.PbContent>(142, _omitFieldNames ? '' : 'firstPostContent',
        protoName: 'firstPostContent', subBuilder: $12.PbContent.create)
    ..aI(143, _omitFieldNames ? '' : 'isShareThread')
    ..aI(148, _omitFieldNames ? '' : 'isTopic', protoName: 'isTopic')
    ..aOS(149, _omitFieldNames ? '' : 'topicUserName',
        protoName: 'topicUserName')
    ..aOS(150, _omitFieldNames ? '' : 'topicH5Url', protoName: 'topicH5Url')
    ..aOM<$17.SimpleForum>(155, _omitFieldNames ? '' : 'forumInfo',
        protoName: 'forumInfo', subBuilder: $17.SimpleForum.create)
    ..aOS(159, _omitFieldNames ? '' : 'tShareImg', protoName: 'tShareImg')
    ..aOS(164, _omitFieldNames ? '' : 'nid')
    ..aI(175, _omitFieldNames ? '' : 'tabId', protoName: 'tabId')
    ..aOS(176, _omitFieldNames ? '' : 'tabName', protoName: 'tabName')
    ..aI(181, _omitFieldNames ? '' : 'isDeleted', protoName: 'isDeleted')
    ..aI(182, _omitFieldNames ? '' : 'hotNum', protoName: 'hotNum')
    ..aOM<$18.VoiceRoom>(199, _omitFieldNames ? '' : 'voiceRoom',
        subBuilder: $18.VoiceRoom.create)
    ..aOM<$19.TiebaPlusAd>(201, _omitFieldNames ? '' : 'tiebaplusAd',
        subBuilder: $19.TiebaPlusAd.create)
    ..aI(256, _omitFieldNames ? '' : 'pollStyle')
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

  @$pb.TagNumber(11)
  $core.int get isVote => $_getIZ(10);
  @$pb.TagNumber(11)
  set isVote($core.int value) => $_setSignedInt32(10, value);
  @$pb.TagNumber(11)
  $core.bool hasIsVote() => $_has(10);
  @$pb.TagNumber(11)
  void clearIsVote() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.int get isBakan => $_getIZ(11);
  @$pb.TagNumber(12)
  set isBakan($core.int value) => $_setSignedInt32(11, value);
  @$pb.TagNumber(12)
  $core.bool hasIsBakan() => $_has(11);
  @$pb.TagNumber(12)
  void clearIsBakan() => $_clearField(12);

  @$pb.TagNumber(13)
  $core.int get isProtal => $_getIZ(12);
  @$pb.TagNumber(13)
  set isProtal($core.int value) => $_setSignedInt32(12, value);
  @$pb.TagNumber(13)
  $core.bool hasIsProtal() => $_has(12);
  @$pb.TagNumber(13)
  void clearIsProtal() => $_clearField(13);

  @$pb.TagNumber(14)
  $core.int get isMeizhi => $_getIZ(13);
  @$pb.TagNumber(14)
  set isMeizhi($core.int value) => $_setSignedInt32(13, value);
  @$pb.TagNumber(14)
  $core.bool hasIsMeizhi() => $_has(13);
  @$pb.TagNumber(14)
  void clearIsMeizhi() => $_clearField(14);

  @$pb.TagNumber(15)
  $core.int get isVoiceThread => $_getIZ(14);
  @$pb.TagNumber(15)
  set isVoiceThread($core.int value) => $_setSignedInt32(14, value);
  @$pb.TagNumber(15)
  $core.bool hasIsVoiceThread() => $_has(14);
  @$pb.TagNumber(15)
  void clearIsVoiceThread() => $_clearField(15);

  @$pb.TagNumber(16)
  $core.int get isActivity => $_getIZ(15);
  @$pb.TagNumber(16)
  set isActivity($core.int value) => $_setSignedInt32(15, value);
  @$pb.TagNumber(16)
  $core.bool hasIsActivity() => $_has(15);
  @$pb.TagNumber(16)
  void clearIsActivity() => $_clearField(16);

  @$pb.TagNumber(17)
  $core.int get isNotice => $_getIZ(16);
  @$pb.TagNumber(17)
  set isNotice($core.int value) => $_setSignedInt32(16, value);
  @$pb.TagNumber(17)
  $core.bool hasIsNotice() => $_has(16);
  @$pb.TagNumber(17)
  void clearIsNotice() => $_clearField(17);

  @$pb.TagNumber(18)
  $0.User get author => $_getN(17);
  @$pb.TagNumber(18)
  set author($0.User value) => $_setField(18, value);
  @$pb.TagNumber(18)
  $core.bool hasAuthor() => $_has(17);
  @$pb.TagNumber(18)
  void clearAuthor() => $_clearField(18);
  @$pb.TagNumber(18)
  $0.User ensureAuthor() => $_ensure(17);

  @$pb.TagNumber(19)
  $0.User get lastReplyer => $_getN(18);
  @$pb.TagNumber(19)
  set lastReplyer($0.User value) => $_setField(19, value);
  @$pb.TagNumber(19)
  $core.bool hasLastReplyer() => $_has(18);
  @$pb.TagNumber(19)
  void clearLastReplyer() => $_clearField(19);
  @$pb.TagNumber(19)
  $0.User ensureLastReplyer() => $_ensure(18);

  @$pb.TagNumber(20)
  $core.int get commentNum => $_getIZ(19);
  @$pb.TagNumber(20)
  set commentNum($core.int value) => $_setSignedInt32(19, value);
  @$pb.TagNumber(20)
  $core.bool hasCommentNum() => $_has(19);
  @$pb.TagNumber(20)
  void clearCommentNum() => $_clearField(20);

  @$pb.TagNumber(21)
  $pb.PbList<$1.Abstract> get abstract => $_getList(20);

  @$pb.TagNumber(22)
  $pb.PbList<$2.Media> get media => $_getList(21);

  @$pb.TagNumber(23)
  $pb.PbList<$3.Voice> get voiceInfo => $_getList(22);

  @$pb.TagNumber(24)
  $core.String get meizhiPic => $_getSZ(23);
  @$pb.TagNumber(24)
  set meizhiPic($core.String value) => $_setString(23, value);
  @$pb.TagNumber(24)
  $core.bool hasMeizhiPic() => $_has(23);
  @$pb.TagNumber(24)
  void clearMeizhiPic() => $_clearField(24);

  @$pb.TagNumber(26)
  $core.int get threadType => $_getIZ(24);
  @$pb.TagNumber(26)
  set threadType($core.int value) => $_setSignedInt32(24, value);
  @$pb.TagNumber(26)
  $core.bool hasThreadType() => $_has(24);
  @$pb.TagNumber(26)
  void clearThreadType() => $_clearField(26);

  @$pb.TagNumber(27)
  $fixnum.Int64 get forumId => $_getI64(25);
  @$pb.TagNumber(27)
  set forumId($fixnum.Int64 value) => $_setInt64(25, value);
  @$pb.TagNumber(27)
  $core.bool hasForumId() => $_has(25);
  @$pb.TagNumber(27)
  void clearForumId() => $_clearField(27);

  @$pb.TagNumber(28)
  $core.String get forumName => $_getSZ(26);
  @$pb.TagNumber(28)
  set forumName($core.String value) => $_setString(26, value);
  @$pb.TagNumber(28)
  $core.bool hasForumName() => $_has(26);
  @$pb.TagNumber(28)
  void clearForumName() => $_clearField(28);

  @$pb.TagNumber(29)
  $core.String get livePostType => $_getSZ(27);
  @$pb.TagNumber(29)
  set livePostType($core.String value) => $_setString(27, value);
  @$pb.TagNumber(29)
  $core.bool hasLivePostType() => $_has(27);
  @$pb.TagNumber(29)
  void clearLivePostType() => $_clearField(29);

  @$pb.TagNumber(30)
  $core.int get isLivepost => $_getIZ(28);
  @$pb.TagNumber(30)
  set isLivepost($core.int value) => $_setSignedInt32(28, value);
  @$pb.TagNumber(30)
  $core.bool hasIsLivepost() => $_has(28);
  @$pb.TagNumber(30)
  void clearIsLivepost() => $_clearField(30);

  @$pb.TagNumber(31)
  $core.int get showCommented => $_getIZ(29);
  @$pb.TagNumber(31)
  set showCommented($core.int value) => $_setSignedInt32(29, value);
  @$pb.TagNumber(31)
  $core.bool hasShowCommented() => $_has(29);
  @$pb.TagNumber(31)
  void clearShowCommented() => $_clearField(31);

  @$pb.TagNumber(32)
  $core.String get clickUrl => $_getSZ(30);
  @$pb.TagNumber(32)
  set clickUrl($core.String value) => $_setString(30, value);
  @$pb.TagNumber(32)
  $core.bool hasClickUrl() => $_has(30);
  @$pb.TagNumber(32)
  void clearClickUrl() => $_clearField(32);

  @$pb.TagNumber(33)
  $core.String get video => $_getSZ(31);
  @$pb.TagNumber(33)
  set video($core.String value) => $_setString(31, value);
  @$pb.TagNumber(33)
  $core.bool hasVideo() => $_has(31);
  @$pb.TagNumber(33)
  void clearVideo() => $_clearField(33);

  @$pb.TagNumber(34)
  $core.String get videoSwf => $_getSZ(32);
  @$pb.TagNumber(34)
  set videoSwf($core.String value) => $_setString(32, value);
  @$pb.TagNumber(34)
  $core.bool hasVideoSwf() => $_has(32);
  @$pb.TagNumber(34)
  void clearVideoSwf() => $_clearField(34);

  @$pb.TagNumber(35)
  $core.String get videoCover => $_getSZ(33);
  @$pb.TagNumber(35)
  set videoCover($core.String value) => $_setString(33, value);
  @$pb.TagNumber(35)
  $core.bool hasVideoCover() => $_has(33);
  @$pb.TagNumber(35)
  void clearVideoCover() => $_clearField(35);

  @$pb.TagNumber(36)
  $core.String get videoId => $_getSZ(34);
  @$pb.TagNumber(36)
  set videoId($core.String value) => $_setString(34, value);
  @$pb.TagNumber(36)
  $core.bool hasVideoId() => $_has(34);
  @$pb.TagNumber(36)
  void clearVideoId() => $_clearField(36);

  @$pb.TagNumber(37)
  $core.String get videoMobileUrl => $_getSZ(35);
  @$pb.TagNumber(37)
  set videoMobileUrl($core.String value) => $_setString(35, value);
  @$pb.TagNumber(37)
  $core.bool hasVideoMobileUrl() => $_has(35);
  @$pb.TagNumber(37)
  void clearVideoMobileUrl() => $_clearField(37);

  @$pb.TagNumber(38)
  $core.int get isNoTitle => $_getIZ(36);
  @$pb.TagNumber(38)
  set isNoTitle($core.int value) => $_setSignedInt32(36, value);
  @$pb.TagNumber(38)
  $core.bool hasIsNoTitle() => $_has(36);
  @$pb.TagNumber(38)
  void clearIsNoTitle() => $_clearField(38);

  @$pb.TagNumber(39)
  $core.int get isBub => $_getIZ(37);
  @$pb.TagNumber(39)
  set isBub($core.int value) => $_setSignedInt32(37, value);
  @$pb.TagNumber(39)
  $core.bool hasIsBub() => $_has(37);
  @$pb.TagNumber(39)
  void clearIsBub() => $_clearField(39);

  @$pb.TagNumber(40)
  $fixnum.Int64 get firstPostId => $_getI64(38);
  @$pb.TagNumber(40)
  set firstPostId($fixnum.Int64 value) => $_setInt64(38, value);
  @$pb.TagNumber(40)
  $core.bool hasFirstPostId() => $_has(38);
  @$pb.TagNumber(40)
  void clearFirstPostId() => $_clearField(40);

  @$pb.TagNumber(41)
  $4.Zan get zan => $_getN(39);
  @$pb.TagNumber(41)
  set zan($4.Zan value) => $_setField(41, value);
  @$pb.TagNumber(41)
  $core.bool hasZan() => $_has(39);
  @$pb.TagNumber(41)
  void clearZan() => $_clearField(41);
  @$pb.TagNumber(41)
  $4.Zan ensureZan() => $_ensure(39);

  @$pb.TagNumber(42)
  $core.int get isGlobalTop => $_getIZ(40);
  @$pb.TagNumber(42)
  set isGlobalTop($core.int value) => $_setSignedInt32(40, value);
  @$pb.TagNumber(42)
  $core.bool hasIsGlobalTop() => $_has(40);
  @$pb.TagNumber(42)
  void clearIsGlobalTop() => $_clearField(42);

  @$pb.TagNumber(43)
  $core.int get isPic => $_getIZ(41);
  @$pb.TagNumber(43)
  set isPic($core.int value) => $_setSignedInt32(41, value);
  @$pb.TagNumber(43)
  $core.bool hasIsPic() => $_has(41);
  @$pb.TagNumber(43)
  void clearIsPic() => $_clearField(43);

  @$pb.TagNumber(44)
  $pb.PbList<$5.PostList> get postList => $_getList(42);

  @$pb.TagNumber(45)
  $core.int get createTime => $_getIZ(43);
  @$pb.TagNumber(45)
  set createTime($core.int value) => $_setSignedInt32(43, value);
  @$pb.TagNumber(45)
  $core.bool hasCreateTime() => $_has(43);
  @$pb.TagNumber(45)
  void clearCreateTime() => $_clearField(45);

  @$pb.TagNumber(46)
  $core.int get repostNum => $_getIZ(44);
  @$pb.TagNumber(46)
  set repostNum($core.int value) => $_setSignedInt32(44, value);
  @$pb.TagNumber(46)
  $core.bool hasRepostNum() => $_has(44);
  @$pb.TagNumber(46)
  void clearRepostNum() => $_clearField(46);

  @$pb.TagNumber(47)
  $6.Topic get topic => $_getN(45);
  @$pb.TagNumber(47)
  set topic($6.Topic value) => $_setField(47, value);
  @$pb.TagNumber(47)
  $core.bool hasTopic() => $_has(45);
  @$pb.TagNumber(47)
  void clearTopic() => $_clearField(47);
  @$pb.TagNumber(47)
  $6.Topic ensureTopic() => $_ensure(45);

  @$pb.TagNumber(48)
  $core.int get hasCommented => $_getIZ(46);
  @$pb.TagNumber(48)
  set hasCommented($core.int value) => $_setSignedInt32(46, value);
  @$pb.TagNumber(48)
  $core.bool hasHasCommented() => $_has(46);
  @$pb.TagNumber(48)
  void clearHasCommented() => $_clearField(48);

  @$pb.TagNumber(49)
  $core.String get from => $_getSZ(47);
  @$pb.TagNumber(49)
  set from($core.String value) => $_setString(47, value);
  @$pb.TagNumber(49)
  $core.bool hasFrom() => $_has(47);
  @$pb.TagNumber(49)
  void clearFrom() => $_clearField(49);

  @$pb.TagNumber(50)
  $core.int get collectStatus => $_getIZ(48);
  @$pb.TagNumber(50)
  set collectStatus($core.int value) => $_setSignedInt32(48, value);
  @$pb.TagNumber(50)
  $core.bool hasCollectStatus() => $_has(48);
  @$pb.TagNumber(50)
  void clearCollectStatus() => $_clearField(50);

  @$pb.TagNumber(51)
  $core.String get collectMarkPid => $_getSZ(49);
  @$pb.TagNumber(51)
  set collectMarkPid($core.String value) => $_setString(49, value);
  @$pb.TagNumber(51)
  $core.bool hasCollectMarkPid() => $_has(49);
  @$pb.TagNumber(51)
  void clearCollectMarkPid() => $_clearField(51);

  @$pb.TagNumber(52)
  $fixnum.Int64 get postId => $_getI64(50);
  @$pb.TagNumber(52)
  set postId($fixnum.Int64 value) => $_setInt64(50, value);
  @$pb.TagNumber(52)
  $core.bool hasPostId() => $_has(50);
  @$pb.TagNumber(52)
  void clearPostId() => $_clearField(52);

  @$pb.TagNumber(53)
  $core.int get time => $_getIZ(51);
  @$pb.TagNumber(53)
  set time($core.int value) => $_setSignedInt32(51, value);
  @$pb.TagNumber(53)
  $core.bool hasTime() => $_has(51);
  @$pb.TagNumber(53)
  void clearTime() => $_clearField(53);

  @$pb.TagNumber(54)
  $core.int get isMemberTop => $_getIZ(52);
  @$pb.TagNumber(54)
  set isMemberTop($core.int value) => $_setSignedInt32(52, value);
  @$pb.TagNumber(54)
  $core.bool hasIsMemberTop() => $_has(52);
  @$pb.TagNumber(54)
  void clearIsMemberTop() => $_clearField(54);

  @$pb.TagNumber(56)
  $fixnum.Int64 get authorId => $_getI64(53);
  @$pb.TagNumber(56)
  set authorId($fixnum.Int64 value) => $_setInt64(53, value);
  @$pb.TagNumber(56)
  $core.bool hasAuthorId() => $_has(53);
  @$pb.TagNumber(56)
  void clearAuthorId() => $_clearField(56);

  @$pb.TagNumber(59)
  $core.int get isAd => $_getIZ(54);
  @$pb.TagNumber(59)
  set isAd($core.int value) => $_setUnsignedInt32(54, value);
  @$pb.TagNumber(59)
  $core.bool hasIsAd() => $_has(54);
  @$pb.TagNumber(59)
  void clearIsAd() => $_clearField(59);

  @$pb.TagNumber(60)
  $core.String get ecom => $_getSZ(55);
  @$pb.TagNumber(60)
  set ecom($core.String value) => $_setString(55, value);
  @$pb.TagNumber(60)
  $core.bool hasEcom() => $_has(55);
  @$pb.TagNumber(60)
  void clearEcom() => $_clearField(60);

  @$pb.TagNumber(61)
  $core.String get pids => $_getSZ(56);
  @$pb.TagNumber(61)
  set pids($core.String value) => $_setString(56, value);
  @$pb.TagNumber(61)
  $core.bool hasPids() => $_has(56);
  @$pb.TagNumber(61)
  void clearPids() => $_clearField(61);

  @$pb.TagNumber(66)
  $core.int get hotWeight => $_getIZ(57);
  @$pb.TagNumber(66)
  set hotWeight($core.int value) => $_setSignedInt32(57, value);
  @$pb.TagNumber(66)
  $core.bool hasHotWeight() => $_has(57);
  @$pb.TagNumber(66)
  void clearHotWeight() => $_clearField(66);

  @$pb.TagNumber(67)
  $core.String get livecoverSrc => $_getSZ(58);
  @$pb.TagNumber(67)
  set livecoverSrc($core.String value) => $_setString(58, value);
  @$pb.TagNumber(67)
  $core.bool hasLivecoverSrc() => $_has(58);
  @$pb.TagNumber(67)
  void clearLivecoverSrc() => $_clearField(67);

  @$pb.TagNumber(68)
  $core.int get storecount => $_getIZ(59);
  @$pb.TagNumber(68)
  set storecount($core.int value) => $_setSignedInt32(59, value);
  @$pb.TagNumber(68)
  $core.bool hasStorecount() => $_has(59);
  @$pb.TagNumber(68)
  void clearStorecount() => $_clearField(68);

  @$pb.TagNumber(69)
  $core.int get postNum => $_getIZ(60);
  @$pb.TagNumber(69)
  set postNum($core.int value) => $_setSignedInt32(60, value);
  @$pb.TagNumber(69)
  $core.bool hasPostNum() => $_has(60);
  @$pb.TagNumber(69)
  void clearPostNum() => $_clearField(69);

  @$pb.TagNumber(71)
  $7.HotTWThreadInfo get hotTWInfo => $_getN(61);
  @$pb.TagNumber(71)
  set hotTWInfo($7.HotTWThreadInfo value) => $_setField(71, value);
  @$pb.TagNumber(71)
  $core.bool hasHotTWInfo() => $_has(61);
  @$pb.TagNumber(71)
  void clearHotTWInfo() => $_clearField(71);
  @$pb.TagNumber(71)
  $7.HotTWThreadInfo ensureHotTWInfo() => $_ensure(61);

  @$pb.TagNumber(72)
  $8.ZhiBoInfoTW get twzhiboInfo => $_getN(62);
  @$pb.TagNumber(72)
  set twzhiboInfo($8.ZhiBoInfoTW value) => $_setField(72, value);
  @$pb.TagNumber(72)
  $core.bool hasTwzhiboInfo() => $_has(62);
  @$pb.TagNumber(72)
  void clearTwzhiboInfo() => $_clearField(72);
  @$pb.TagNumber(72)
  $8.ZhiBoInfoTW ensureTwzhiboInfo() => $_ensure(62);

  @$pb.TagNumber(73)
  $core.String get categoryName => $_getSZ(63);
  @$pb.TagNumber(73)
  set categoryName($core.String value) => $_setString(63, value);
  @$pb.TagNumber(73)
  $core.bool hasCategoryName() => $_has(63);
  @$pb.TagNumber(73)
  void clearCategoryName() => $_clearField(73);

  @$pb.TagNumber(74)
  $9.PollInfo get pollInfo => $_getN(64);
  @$pb.TagNumber(74)
  set pollInfo($9.PollInfo value) => $_setField(74, value);
  @$pb.TagNumber(74)
  $core.bool hasPollInfo() => $_has(64);
  @$pb.TagNumber(74)
  void clearPollInfo() => $_clearField(74);
  @$pb.TagNumber(74)
  $9.PollInfo ensurePollInfo() => $_ensure(64);

  @$pb.TagNumber(76)
  $core.int get isNovel => $_getIZ(65);
  @$pb.TagNumber(76)
  set isNovel($core.int value) => $_setSignedInt32(65, value);
  @$pb.TagNumber(76)
  $core.bool hasIsNovel() => $_has(65);
  @$pb.TagNumber(76)
  void clearIsNovel() => $_clearField(76);

  @$pb.TagNumber(77)
  $core.int get isNovelThank => $_getIZ(66);
  @$pb.TagNumber(77)
  set isNovelThank($core.int value) => $_setSignedInt32(66, value);
  @$pb.TagNumber(77)
  $core.bool hasIsNovelThank() => $_has(66);
  @$pb.TagNumber(77)
  void clearIsNovelThank() => $_clearField(77);

  @$pb.TagNumber(78)
  $core.int get isNovelReward => $_getIZ(67);
  @$pb.TagNumber(78)
  set isNovelReward($core.int value) => $_setSignedInt32(67, value);
  @$pb.TagNumber(78)
  $core.bool hasIsNovelReward() => $_has(67);
  @$pb.TagNumber(78)
  void clearIsNovelReward() => $_clearField(78);

  @$pb.TagNumber(79)
  $10.VideoInfo get videoInfo => $_getN(68);
  @$pb.TagNumber(79)
  set videoInfo($10.VideoInfo value) => $_setField(79, value);
  @$pb.TagNumber(79)
  $core.bool hasVideoInfo() => $_has(68);
  @$pb.TagNumber(79)
  void clearVideoInfo() => $_clearField(79);
  @$pb.TagNumber(79)
  $10.VideoInfo ensureVideoInfo() => $_ensure(68);

  @$pb.TagNumber(80)
  $core.int get pushEndTime => $_getIZ(69);
  @$pb.TagNumber(80)
  set pushEndTime($core.int value) => $_setSignedInt32(69, value);
  @$pb.TagNumber(80)
  $core.bool hasPushEndTime() => $_has(69);
  @$pb.TagNumber(80)
  void clearPushEndTime() => $_clearField(80);

  @$pb.TagNumber(81)
  $core.int get isCopythread => $_getIZ(70);
  @$pb.TagNumber(81)
  set isCopythread($core.int value) => $_setUnsignedInt32(70, value);
  @$pb.TagNumber(81)
  $core.bool hasIsCopythread() => $_has(70);
  @$pb.TagNumber(81)
  void clearIsCopythread() => $_clearField(81);

  @$pb.TagNumber(82)
  $core.int get operatorFlag => $_getIZ(71);
  @$pb.TagNumber(82)
  set operatorFlag($core.int value) => $_setUnsignedInt32(71, value);
  @$pb.TagNumber(82)
  $core.bool hasOperatorFlag() => $_has(71);
  @$pb.TagNumber(82)
  void clearOperatorFlag() => $_clearField(82);

  @$pb.TagNumber(84)
  $core.int get picNum => $_getIZ(72);
  @$pb.TagNumber(84)
  set picNum($core.int value) => $_setUnsignedInt32(72, value);
  @$pb.TagNumber(84)
  $core.bool hasPicNum() => $_has(72);
  @$pb.TagNumber(84)
  void clearPicNum() => $_clearField(84);

  @$pb.TagNumber(85)
  $core.int get isGodthreadRecommend => $_getIZ(73);
  @$pb.TagNumber(85)
  set isGodthreadRecommend($core.int value) => $_setSignedInt32(73, value);
  @$pb.TagNumber(85)
  $core.bool hasIsGodthreadRecommend() => $_has(73);
  @$pb.TagNumber(85)
  void clearIsGodthreadRecommend() => $_clearField(85);

  @$pb.TagNumber(110)
  $11.AdInfo get videoAdInfo => $_getN(74);
  @$pb.TagNumber(110)
  set videoAdInfo($11.AdInfo value) => $_setField(110, value);
  @$pb.TagNumber(110)
  $core.bool hasVideoAdInfo() => $_has(74);
  @$pb.TagNumber(110)
  void clearVideoAdInfo() => $_clearField(110);
  @$pb.TagNumber(110)
  $11.AdInfo ensureVideoAdInfo() => $_ensure(74);

  @$pb.TagNumber(111)
  $pb.PbList<$12.PbContent> get richTitle => $_getList(75);

  @$pb.TagNumber(112)
  $pb.PbList<$12.PbContent> get richAbstract => $_getList(76);

  @$pb.TagNumber(113)
  $13.AlaLiveInfo get alaInfo => $_getN(77);
  @$pb.TagNumber(113)
  set alaInfo($13.AlaLiveInfo value) => $_setField(113, value);
  @$pb.TagNumber(113)
  $core.bool hasAlaInfo() => $_has(77);
  @$pb.TagNumber(113)
  void clearAlaInfo() => $_clearField(113);
  @$pb.TagNumber(113)
  $13.AlaLiveInfo ensureAlaInfo() => $_ensure(77);

  @$pb.TagNumber(120)
  $pb.PbList<$14.DislikeInfo> get dislikeInfo => $_getList(78);

  @$pb.TagNumber(124)
  $core.int get agreeNum => $_getIZ(79);
  @$pb.TagNumber(124)
  set agreeNum($core.int value) => $_setSignedInt32(79, value);
  @$pb.TagNumber(124)
  $core.bool hasAgreeNum() => $_has(79);
  @$pb.TagNumber(124)
  void clearAgreeNum() => $_clearField(124);

  @$pb.TagNumber(126)
  $15.Agree get agree => $_getN(80);
  @$pb.TagNumber(126)
  set agree($15.Agree value) => $_setField(126, value);
  @$pb.TagNumber(126)
  $core.bool hasAgree() => $_has(80);
  @$pb.TagNumber(126)
  void clearAgree() => $_clearField(126);
  @$pb.TagNumber(126)
  $15.Agree ensureAgree() => $_ensure(80);

  @$pb.TagNumber(135)
  $fixnum.Int64 get shareNum => $_getI64(81);
  @$pb.TagNumber(135)
  set shareNum($fixnum.Int64 value) => $_setInt64(81, value);
  @$pb.TagNumber(135)
  $core.bool hasShareNum() => $_has(81);
  @$pb.TagNumber(135)
  void clearShareNum() => $_clearField(135);

  @$pb.TagNumber(141)
  $16.OriginThreadInfo get originThreadInfo => $_getN(82);
  @$pb.TagNumber(141)
  set originThreadInfo($16.OriginThreadInfo value) => $_setField(141, value);
  @$pb.TagNumber(141)
  $core.bool hasOriginThreadInfo() => $_has(82);
  @$pb.TagNumber(141)
  void clearOriginThreadInfo() => $_clearField(141);
  @$pb.TagNumber(141)
  $16.OriginThreadInfo ensureOriginThreadInfo() => $_ensure(82);

  @$pb.TagNumber(142)
  $pb.PbList<$12.PbContent> get firstPostContent => $_getList(83);

  @$pb.TagNumber(143)
  $core.int get isShareThread => $_getIZ(84);
  @$pb.TagNumber(143)
  set isShareThread($core.int value) => $_setSignedInt32(84, value);
  @$pb.TagNumber(143)
  $core.bool hasIsShareThread() => $_has(84);
  @$pb.TagNumber(143)
  void clearIsShareThread() => $_clearField(143);

  @$pb.TagNumber(148)
  $core.int get isTopic => $_getIZ(85);
  @$pb.TagNumber(148)
  set isTopic($core.int value) => $_setSignedInt32(85, value);
  @$pb.TagNumber(148)
  $core.bool hasIsTopic() => $_has(85);
  @$pb.TagNumber(148)
  void clearIsTopic() => $_clearField(148);

  @$pb.TagNumber(149)
  $core.String get topicUserName => $_getSZ(86);
  @$pb.TagNumber(149)
  set topicUserName($core.String value) => $_setString(86, value);
  @$pb.TagNumber(149)
  $core.bool hasTopicUserName() => $_has(86);
  @$pb.TagNumber(149)
  void clearTopicUserName() => $_clearField(149);

  @$pb.TagNumber(150)
  $core.String get topicH5Url => $_getSZ(87);
  @$pb.TagNumber(150)
  set topicH5Url($core.String value) => $_setString(87, value);
  @$pb.TagNumber(150)
  $core.bool hasTopicH5Url() => $_has(87);
  @$pb.TagNumber(150)
  void clearTopicH5Url() => $_clearField(150);

  @$pb.TagNumber(155)
  $17.SimpleForum get forumInfo => $_getN(88);
  @$pb.TagNumber(155)
  set forumInfo($17.SimpleForum value) => $_setField(155, value);
  @$pb.TagNumber(155)
  $core.bool hasForumInfo() => $_has(88);
  @$pb.TagNumber(155)
  void clearForumInfo() => $_clearField(155);
  @$pb.TagNumber(155)
  $17.SimpleForum ensureForumInfo() => $_ensure(88);

  @$pb.TagNumber(159)
  $core.String get tShareImg => $_getSZ(89);
  @$pb.TagNumber(159)
  set tShareImg($core.String value) => $_setString(89, value);
  @$pb.TagNumber(159)
  $core.bool hasTShareImg() => $_has(89);
  @$pb.TagNumber(159)
  void clearTShareImg() => $_clearField(159);

  @$pb.TagNumber(164)
  $core.String get nid => $_getSZ(90);
  @$pb.TagNumber(164)
  set nid($core.String value) => $_setString(90, value);
  @$pb.TagNumber(164)
  $core.bool hasNid() => $_has(90);
  @$pb.TagNumber(164)
  void clearNid() => $_clearField(164);

  @$pb.TagNumber(175)
  $core.int get tabId => $_getIZ(91);
  @$pb.TagNumber(175)
  set tabId($core.int value) => $_setSignedInt32(91, value);
  @$pb.TagNumber(175)
  $core.bool hasTabId() => $_has(91);
  @$pb.TagNumber(175)
  void clearTabId() => $_clearField(175);

  @$pb.TagNumber(176)
  $core.String get tabName => $_getSZ(92);
  @$pb.TagNumber(176)
  set tabName($core.String value) => $_setString(92, value);
  @$pb.TagNumber(176)
  $core.bool hasTabName() => $_has(92);
  @$pb.TagNumber(176)
  void clearTabName() => $_clearField(176);

  @$pb.TagNumber(181)
  $core.int get isDeleted => $_getIZ(93);
  @$pb.TagNumber(181)
  set isDeleted($core.int value) => $_setSignedInt32(93, value);
  @$pb.TagNumber(181)
  $core.bool hasIsDeleted() => $_has(93);
  @$pb.TagNumber(181)
  void clearIsDeleted() => $_clearField(181);

  @$pb.TagNumber(182)
  $core.int get hotNum => $_getIZ(94);
  @$pb.TagNumber(182)
  set hotNum($core.int value) => $_setSignedInt32(94, value);
  @$pb.TagNumber(182)
  $core.bool hasHotNum() => $_has(94);
  @$pb.TagNumber(182)
  void clearHotNum() => $_clearField(182);

  @$pb.TagNumber(199)
  $18.VoiceRoom get voiceRoom => $_getN(95);
  @$pb.TagNumber(199)
  set voiceRoom($18.VoiceRoom value) => $_setField(199, value);
  @$pb.TagNumber(199)
  $core.bool hasVoiceRoom() => $_has(95);
  @$pb.TagNumber(199)
  void clearVoiceRoom() => $_clearField(199);
  @$pb.TagNumber(199)
  $18.VoiceRoom ensureVoiceRoom() => $_ensure(95);

  @$pb.TagNumber(201)
  $19.TiebaPlusAd get tiebaplusAd => $_getN(96);
  @$pb.TagNumber(201)
  set tiebaplusAd($19.TiebaPlusAd value) => $_setField(201, value);
  @$pb.TagNumber(201)
  $core.bool hasTiebaplusAd() => $_has(96);
  @$pb.TagNumber(201)
  void clearTiebaplusAd() => $_clearField(201);
  @$pb.TagNumber(201)
  $19.TiebaPlusAd ensureTiebaplusAd() => $_ensure(96);

  @$pb.TagNumber(256)
  $core.int get pollStyle => $_getIZ(97);
  @$pb.TagNumber(256)
  set pollStyle($core.int value) => $_setSignedInt32(97, value);
  @$pb.TagNumber(256)
  $core.bool hasPollStyle() => $_has(97);
  @$pb.TagNumber(256)
  void clearPollStyle() => $_clearField(256);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
