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
import 'AdInfo.pb.dart' as $12;
import 'Agree.pb.dart' as $17;
import 'AlaLiveInfo.pb.dart' as $14;
import 'Baijiahao.pb.dart' as $20;
import 'DislikeInfo.pb.dart' as $15;
import 'FeedKV.pb.dart' as $23;
import 'HotTWThreadInfo.pb.dart' as $7;
import 'Media.pb.dart' as $2;
import 'OriginThreadInfo.pb.dart' as $18;
import 'PbContent.pb.dart' as $13;
import 'PollInfo.pb.dart' as $9;
import 'Post.pb.dart' as $16;
import 'PostList.pb.dart' as $5;
import 'SimpleForum.pb.dart' as $19;
import 'TaskInfo.pb.dart' as $11;
import 'TiebaPlusAd.pb.dart' as $22;
import 'Topic.pb.dart' as $6;
import 'User.pb.dart' as $0;
import 'VideoInfo.pb.dart' as $10;
import 'Voice.pb.dart' as $3;
import 'VoiceRoom.pb.dart' as $21;
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
    $core.int? validPostNum,
    $core.int? isLzDeleteAll,
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
    $11.TaskInfo? taskInfo,
    $core.int? picNum,
    $core.int? isGodthreadRecommend,
    $core.int? isDeal,
    $core.int? isBookChapter,
    $core.String? recomSource,
    $core.String? recomWeight,
    $fixnum.Int64? lastReadPid,
    $core.int? cheakRepeat,
    $core.String? abTag,
    $core.String? recomReason,
    $12.AdInfo? videoAdInfo,
    $core.Iterable<$13.PbContent>? richTitle,
    $core.Iterable<$13.PbContent>? richAbstract,
    $14.AlaLiveInfo? alaInfo,
    $core.Iterable<$15.DislikeInfo>? dislikeInfo,
    $core.int? isMultiforumThread,
    $core.int? agreeNum,
    $16.Post? topAgreePost,
    $17.Agree? agree,
    $core.int? isPartialVisible,
    $core.int? isLinkThread,
    $fixnum.Int64? freqNum,
    $core.int? isGod,
    $2.Media? picInfo,
    $core.int? isStoryAudit,
    $fixnum.Int64? shareNum,
    $core.int? isCalled,
    $core.String? tiebaGameInformationSource,
    $fixnum.Int64? auditTime,
    $core.int? middlePageNum,
    $core.int? middlePagePassFlag,
    $18.OriginThreadInfo? originThreadInfo,
    $core.Iterable<$13.PbContent>? firstPostContent,
    $core.int? isShareThread,
    $core.String? recomExtra,
    $fixnum.Int64? transNum,
    $core.String? multiForumText,
    $core.int? isTopic,
    $core.String? topicUserName,
    $core.String? topicH5Url,
    $core.String? presentationStyle,
    $core.int? isVideobiggieRecomthread,
    $core.String? dailyPaperTime,
    $19.SimpleForum? forumInfo,
    $core.String? isTopImg,
    $core.String? tShareImg,
    $core.int? isBjh,
    $core.String? articleCover,
    $core.int? bjhContentTag,
    $core.String? nid,
    $core.int? isHeadlinepost,
    $20.Baijiahao? baijiahao,
    $core.int? isSCard,
    $core.String? scardPacketId,
    $core.String? threadShareLink,
    $core.int? ifComment,
    $core.String? ifCommentInfo,
    $core.int? tabId,
    $core.String? tabName,
    $core.String? wonderfulPostInfo,
    $core.int? isDeleted,
    $core.int? hotNum,
    $core.int? isLocal,
    $core.int? pbEntry,
    $core.int? isAuthorView,
    $core.String? forumUserLiveMsg,
    $core.int? collectNum,
    $core.String? recomTagIcon,
    $core.String? isTiebaplusAd,
    $core.String? tiebaplusOrderId,
    $core.String? tiebaplusToken,
    $core.String? tiebaplusExtraParam,
    $core.int? tiebaplusCantDelete,
    $core.int? isFrsMask,
    $21.VoiceRoom? voiceRoom,
    $core.int? tabShowMode,
    $22.TiebaPlusAd? tiebaplusAd,
    $core.int? isPictxt,
    $core.String? exposureMonitorUrl,
    $core.String? clickMonitorUrl,
    $core.int? readonly,
    $core.int? isHighlight,
    $core.int? isXiuxiuThread,
    $core.int? showAdSubscript,
    $core.String? targetScheme,
    $core.String? convertBtnType,
    $core.int? isExcellentThread,
    $core.int? literatureFlag,
    $fixnum.Int64? robotThreadType,
    $fixnum.Int64? bookId,
    $core.String? headType,
    $fixnum.Int64? disableShare,
    $core.String? disableShareToast,
    $core.String? shareUrl,
    $fixnum.Int64? topThreadSetTime,
    $core.Iterable<$23.FeedKV>? logParam,
    $core.String? gameExt,
    $core.String? placeholderCardId,
    $core.bool? isHottopThread,
    $fixnum.Int64? disableReply,
    $core.Iterable<$0.User>? showUserList,
    $core.String? showExtStr,
    $core.int? showNewQuestionStyle,
    $core.String? titleAi,
    $core.Iterable<$16.Post>? fullPostList,
    $core.int? threadAlbumId,
    $16.Post? hotestPost,
    $core.int? threadAlbumStatus,
    $core.int? tiebaplusDaType,
    $core.int? tiebaplusDaTypeClick,
    $core.int? pollStyle,
    $core.String? feedNid,
    $core.int? isStarThread,
    $core.String? contentStatement,
    $core.String? adInfo,
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
    if (validPostNum != null) result.validPostNum = validPostNum;
    if (isLzDeleteAll != null) result.isLzDeleteAll = isLzDeleteAll;
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
    if (taskInfo != null) result.taskInfo = taskInfo;
    if (picNum != null) result.picNum = picNum;
    if (isGodthreadRecommend != null)
      result.isGodthreadRecommend = isGodthreadRecommend;
    if (isDeal != null) result.isDeal = isDeal;
    if (isBookChapter != null) result.isBookChapter = isBookChapter;
    if (recomSource != null) result.recomSource = recomSource;
    if (recomWeight != null) result.recomWeight = recomWeight;
    if (lastReadPid != null) result.lastReadPid = lastReadPid;
    if (cheakRepeat != null) result.cheakRepeat = cheakRepeat;
    if (abTag != null) result.abTag = abTag;
    if (recomReason != null) result.recomReason = recomReason;
    if (videoAdInfo != null) result.videoAdInfo = videoAdInfo;
    if (richTitle != null) result.richTitle.addAll(richTitle);
    if (richAbstract != null) result.richAbstract.addAll(richAbstract);
    if (alaInfo != null) result.alaInfo = alaInfo;
    if (dislikeInfo != null) result.dislikeInfo.addAll(dislikeInfo);
    if (isMultiforumThread != null)
      result.isMultiforumThread = isMultiforumThread;
    if (agreeNum != null) result.agreeNum = agreeNum;
    if (topAgreePost != null) result.topAgreePost = topAgreePost;
    if (agree != null) result.agree = agree;
    if (isPartialVisible != null) result.isPartialVisible = isPartialVisible;
    if (isLinkThread != null) result.isLinkThread = isLinkThread;
    if (freqNum != null) result.freqNum = freqNum;
    if (isGod != null) result.isGod = isGod;
    if (picInfo != null) result.picInfo = picInfo;
    if (isStoryAudit != null) result.isStoryAudit = isStoryAudit;
    if (shareNum != null) result.shareNum = shareNum;
    if (isCalled != null) result.isCalled = isCalled;
    if (tiebaGameInformationSource != null)
      result.tiebaGameInformationSource = tiebaGameInformationSource;
    if (auditTime != null) result.auditTime = auditTime;
    if (middlePageNum != null) result.middlePageNum = middlePageNum;
    if (middlePagePassFlag != null)
      result.middlePagePassFlag = middlePagePassFlag;
    if (originThreadInfo != null) result.originThreadInfo = originThreadInfo;
    if (firstPostContent != null)
      result.firstPostContent.addAll(firstPostContent);
    if (isShareThread != null) result.isShareThread = isShareThread;
    if (recomExtra != null) result.recomExtra = recomExtra;
    if (transNum != null) result.transNum = transNum;
    if (multiForumText != null) result.multiForumText = multiForumText;
    if (isTopic != null) result.isTopic = isTopic;
    if (topicUserName != null) result.topicUserName = topicUserName;
    if (topicH5Url != null) result.topicH5Url = topicH5Url;
    if (presentationStyle != null) result.presentationStyle = presentationStyle;
    if (isVideobiggieRecomthread != null)
      result.isVideobiggieRecomthread = isVideobiggieRecomthread;
    if (dailyPaperTime != null) result.dailyPaperTime = dailyPaperTime;
    if (forumInfo != null) result.forumInfo = forumInfo;
    if (isTopImg != null) result.isTopImg = isTopImg;
    if (tShareImg != null) result.tShareImg = tShareImg;
    if (isBjh != null) result.isBjh = isBjh;
    if (articleCover != null) result.articleCover = articleCover;
    if (bjhContentTag != null) result.bjhContentTag = bjhContentTag;
    if (nid != null) result.nid = nid;
    if (isHeadlinepost != null) result.isHeadlinepost = isHeadlinepost;
    if (baijiahao != null) result.baijiahao = baijiahao;
    if (isSCard != null) result.isSCard = isSCard;
    if (scardPacketId != null) result.scardPacketId = scardPacketId;
    if (threadShareLink != null) result.threadShareLink = threadShareLink;
    if (ifComment != null) result.ifComment = ifComment;
    if (ifCommentInfo != null) result.ifCommentInfo = ifCommentInfo;
    if (tabId != null) result.tabId = tabId;
    if (tabName != null) result.tabName = tabName;
    if (wonderfulPostInfo != null) result.wonderfulPostInfo = wonderfulPostInfo;
    if (isDeleted != null) result.isDeleted = isDeleted;
    if (hotNum != null) result.hotNum = hotNum;
    if (isLocal != null) result.isLocal = isLocal;
    if (pbEntry != null) result.pbEntry = pbEntry;
    if (isAuthorView != null) result.isAuthorView = isAuthorView;
    if (forumUserLiveMsg != null) result.forumUserLiveMsg = forumUserLiveMsg;
    if (collectNum != null) result.collectNum = collectNum;
    if (recomTagIcon != null) result.recomTagIcon = recomTagIcon;
    if (isTiebaplusAd != null) result.isTiebaplusAd = isTiebaplusAd;
    if (tiebaplusOrderId != null) result.tiebaplusOrderId = tiebaplusOrderId;
    if (tiebaplusToken != null) result.tiebaplusToken = tiebaplusToken;
    if (tiebaplusExtraParam != null)
      result.tiebaplusExtraParam = tiebaplusExtraParam;
    if (tiebaplusCantDelete != null)
      result.tiebaplusCantDelete = tiebaplusCantDelete;
    if (isFrsMask != null) result.isFrsMask = isFrsMask;
    if (voiceRoom != null) result.voiceRoom = voiceRoom;
    if (tabShowMode != null) result.tabShowMode = tabShowMode;
    if (tiebaplusAd != null) result.tiebaplusAd = tiebaplusAd;
    if (isPictxt != null) result.isPictxt = isPictxt;
    if (exposureMonitorUrl != null)
      result.exposureMonitorUrl = exposureMonitorUrl;
    if (clickMonitorUrl != null) result.clickMonitorUrl = clickMonitorUrl;
    if (readonly != null) result.readonly = readonly;
    if (isHighlight != null) result.isHighlight = isHighlight;
    if (isXiuxiuThread != null) result.isXiuxiuThread = isXiuxiuThread;
    if (showAdSubscript != null) result.showAdSubscript = showAdSubscript;
    if (targetScheme != null) result.targetScheme = targetScheme;
    if (convertBtnType != null) result.convertBtnType = convertBtnType;
    if (isExcellentThread != null) result.isExcellentThread = isExcellentThread;
    if (literatureFlag != null) result.literatureFlag = literatureFlag;
    if (robotThreadType != null) result.robotThreadType = robotThreadType;
    if (bookId != null) result.bookId = bookId;
    if (headType != null) result.headType = headType;
    if (disableShare != null) result.disableShare = disableShare;
    if (disableShareToast != null) result.disableShareToast = disableShareToast;
    if (shareUrl != null) result.shareUrl = shareUrl;
    if (topThreadSetTime != null) result.topThreadSetTime = topThreadSetTime;
    if (logParam != null) result.logParam.addAll(logParam);
    if (gameExt != null) result.gameExt = gameExt;
    if (placeholderCardId != null) result.placeholderCardId = placeholderCardId;
    if (isHottopThread != null) result.isHottopThread = isHottopThread;
    if (disableReply != null) result.disableReply = disableReply;
    if (showUserList != null) result.showUserList.addAll(showUserList);
    if (showExtStr != null) result.showExtStr = showExtStr;
    if (showNewQuestionStyle != null)
      result.showNewQuestionStyle = showNewQuestionStyle;
    if (titleAi != null) result.titleAi = titleAi;
    if (fullPostList != null) result.fullPostList.addAll(fullPostList);
    if (threadAlbumId != null) result.threadAlbumId = threadAlbumId;
    if (hotestPost != null) result.hotestPost = hotestPost;
    if (threadAlbumStatus != null) result.threadAlbumStatus = threadAlbumStatus;
    if (tiebaplusDaType != null) result.tiebaplusDaType = tiebaplusDaType;
    if (tiebaplusDaTypeClick != null)
      result.tiebaplusDaTypeClick = tiebaplusDaTypeClick;
    if (pollStyle != null) result.pollStyle = pollStyle;
    if (feedNid != null) result.feedNid = feedNid;
    if (isStarThread != null) result.isStarThread = isStarThread;
    if (contentStatement != null) result.contentStatement = contentStatement;
    if (adInfo != null) result.adInfo = adInfo;
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
    ..aI(57, _omitFieldNames ? '' : 'validPostNum',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(58, _omitFieldNames ? '' : 'isLzDeleteAll',
        protoName: 'isLzDeleteAll', fieldType: $pb.PbFieldType.OU3)
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
    ..aOM<$11.TaskInfo>(83, _omitFieldNames ? '' : 'taskInfo',
        subBuilder: $11.TaskInfo.create)
    ..aI(84, _omitFieldNames ? '' : 'picNum', fieldType: $pb.PbFieldType.OU3)
    ..aI(85, _omitFieldNames ? '' : 'isGodthreadRecommend')
    ..aI(97, _omitFieldNames ? '' : 'isDeal')
    ..aI(103, _omitFieldNames ? '' : 'isBookChapter',
        fieldType: $pb.PbFieldType.OU3)
    ..aOS(104, _omitFieldNames ? '' : 'recomSource')
    ..aOS(105, _omitFieldNames ? '' : 'recomWeight')
    ..a<$fixnum.Int64>(
        106, _omitFieldNames ? '' : 'lastReadPid', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aI(107, _omitFieldNames ? '' : 'cheakRepeat',
        fieldType: $pb.PbFieldType.OU3)
    ..aOS(108, _omitFieldNames ? '' : 'abTag')
    ..aOS(109, _omitFieldNames ? '' : 'recomReason')
    ..aOM<$12.AdInfo>(110, _omitFieldNames ? '' : 'videoAdInfo',
        subBuilder: $12.AdInfo.create)
    ..pPM<$13.PbContent>(111, _omitFieldNames ? '' : 'richTitle',
        protoName: 'richTitle', subBuilder: $13.PbContent.create)
    ..pPM<$13.PbContent>(112, _omitFieldNames ? '' : 'richAbstract',
        protoName: 'richAbstract', subBuilder: $13.PbContent.create)
    ..aOM<$14.AlaLiveInfo>(113, _omitFieldNames ? '' : 'alaInfo',
        subBuilder: $14.AlaLiveInfo.create)
    ..pPM<$15.DislikeInfo>(120, _omitFieldNames ? '' : 'dislikeInfo',
        protoName: 'dislikeInfo', subBuilder: $15.DislikeInfo.create)
    ..aI(123, _omitFieldNames ? '' : 'isMultiforumThread')
    ..aI(124, _omitFieldNames ? '' : 'agreeNum', protoName: 'agreeNum')
    ..aOM<$16.Post>(125, _omitFieldNames ? '' : 'topAgreePost',
        subBuilder: $16.Post.create)
    ..aOM<$17.Agree>(126, _omitFieldNames ? '' : 'agree',
        subBuilder: $17.Agree.create)
    ..aI(127, _omitFieldNames ? '' : 'isPartialVisible')
    ..aI(128, _omitFieldNames ? '' : 'isLinkThread')
    ..aInt64(130, _omitFieldNames ? '' : 'freqNum')
    ..aI(131, _omitFieldNames ? '' : 'isGod')
    ..aOM<$2.Media>(133, _omitFieldNames ? '' : 'picInfo',
        subBuilder: $2.Media.create)
    ..aI(134, _omitFieldNames ? '' : 'isStoryAudit')
    ..aInt64(135, _omitFieldNames ? '' : 'shareNum')
    ..aI(136, _omitFieldNames ? '' : 'isCalled')
    ..aOS(137, _omitFieldNames ? '' : 'tiebaGameInformationSource')
    ..aInt64(138, _omitFieldNames ? '' : 'auditTime')
    ..aI(139, _omitFieldNames ? '' : 'middlePageNum')
    ..aI(140, _omitFieldNames ? '' : 'middlePagePassFlag')
    ..aOM<$18.OriginThreadInfo>(141, _omitFieldNames ? '' : 'originThreadInfo',
        subBuilder: $18.OriginThreadInfo.create)
    ..pPM<$13.PbContent>(142, _omitFieldNames ? '' : 'firstPostContent',
        protoName: 'firstPostContent', subBuilder: $13.PbContent.create)
    ..aI(143, _omitFieldNames ? '' : 'isShareThread')
    ..aOS(144, _omitFieldNames ? '' : 'recomExtra')
    ..a<$fixnum.Int64>(
        145, _omitFieldNames ? '' : 'transNum', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(146, _omitFieldNames ? '' : 'multiForumText')
    ..aI(148, _omitFieldNames ? '' : 'isTopic', protoName: 'isTopic')
    ..aOS(149, _omitFieldNames ? '' : 'topicUserName',
        protoName: 'topicUserName')
    ..aOS(150, _omitFieldNames ? '' : 'topicH5Url', protoName: 'topicH5Url')
    ..aOS(151, _omitFieldNames ? '' : 'presentationStyle')
    ..aI(153, _omitFieldNames ? '' : 'isVideobiggieRecomthread')
    ..aOS(154, _omitFieldNames ? '' : 'dailyPaperTime')
    ..aOM<$19.SimpleForum>(155, _omitFieldNames ? '' : 'forumInfo',
        protoName: 'forumInfo', subBuilder: $19.SimpleForum.create)
    ..aOS(158, _omitFieldNames ? '' : 'isTopImg')
    ..aOS(159, _omitFieldNames ? '' : 'tShareImg')
    ..aI(161, _omitFieldNames ? '' : 'isBjh')
    ..aOS(162, _omitFieldNames ? '' : 'articleCover')
    ..aI(163, _omitFieldNames ? '' : 'bjhContentTag')
    ..aOS(164, _omitFieldNames ? '' : 'nid')
    ..aI(165, _omitFieldNames ? '' : 'isHeadlinepost')
    ..aOM<$20.Baijiahao>(169, _omitFieldNames ? '' : 'baijiahao',
        subBuilder: $20.Baijiahao.create)
    ..aI(170, _omitFieldNames ? '' : 'isSCard', fieldType: $pb.PbFieldType.OU3)
    ..aOS(171, _omitFieldNames ? '' : 'scardPacketId')
    ..aOS(172, _omitFieldNames ? '' : 'threadShareLink')
    ..aI(173, _omitFieldNames ? '' : 'ifComment')
    ..aOS(174, _omitFieldNames ? '' : 'ifCommentInfo')
    ..aI(175, _omitFieldNames ? '' : 'tabId')
    ..aOS(176, _omitFieldNames ? '' : 'tabName')
    ..aOS(177, _omitFieldNames ? '' : 'wonderfulPostInfo')
    ..aI(181, _omitFieldNames ? '' : 'isDeleted', protoName: 'isDeleted')
    ..aI(182, _omitFieldNames ? '' : 'hotNum', protoName: 'hotNum')
    ..aI(184, _omitFieldNames ? '' : 'isLocal', fieldType: $pb.PbFieldType.OU3)
    ..aI(185, _omitFieldNames ? '' : 'pbEntry')
    ..aI(186, _omitFieldNames ? '' : 'isAuthorView')
    ..aOS(187, _omitFieldNames ? '' : 'forumUserLiveMsg')
    ..aI(190, _omitFieldNames ? '' : 'collectNum',
        fieldType: $pb.PbFieldType.OU3)
    ..aOS(192, _omitFieldNames ? '' : 'recomTagIcon')
    ..aOS(193, _omitFieldNames ? '' : 'isTiebaplusAd')
    ..aOS(194, _omitFieldNames ? '' : 'tiebaplusOrderId')
    ..aOS(195, _omitFieldNames ? '' : 'tiebaplusToken')
    ..aOS(196, _omitFieldNames ? '' : 'tiebaplusExtraParam')
    ..aI(197, _omitFieldNames ? '' : 'tiebaplusCantDelete')
    ..aI(198, _omitFieldNames ? '' : 'isFrsMask')
    ..aOM<$21.VoiceRoom>(199, _omitFieldNames ? '' : 'voiceRoom',
        subBuilder: $21.VoiceRoom.create)
    ..aI(200, _omitFieldNames ? '' : 'tabShowMode')
    ..aOM<$22.TiebaPlusAd>(201, _omitFieldNames ? '' : 'tiebaplusAd',
        subBuilder: $22.TiebaPlusAd.create)
    ..aI(204, _omitFieldNames ? '' : 'isPictxt')
    ..aOS(205, _omitFieldNames ? '' : 'exposureMonitorUrl')
    ..aOS(206, _omitFieldNames ? '' : 'clickMonitorUrl')
    ..aI(207, _omitFieldNames ? '' : 'readonly')
    ..aI(213, _omitFieldNames ? '' : 'isHighlight')
    ..aI(214, _omitFieldNames ? '' : 'isXiuxiuThread')
    ..aI(216, _omitFieldNames ? '' : 'showAdSubscript',
        fieldType: $pb.PbFieldType.OU3)
    ..aOS(217, _omitFieldNames ? '' : 'targetScheme')
    ..aOS(218, _omitFieldNames ? '' : 'convertBtnType')
    ..aI(219, _omitFieldNames ? '' : 'isExcellentThread')
    ..aI(220, _omitFieldNames ? '' : 'literatureFlag')
    ..aInt64(225, _omitFieldNames ? '' : 'robotThreadType')
    ..aInt64(226, _omitFieldNames ? '' : 'bookId')
    ..aOS(227, _omitFieldNames ? '' : 'headType')
    ..aInt64(228, _omitFieldNames ? '' : 'disableShare')
    ..aOS(229, _omitFieldNames ? '' : 'disableShareToast')
    ..aOS(230, _omitFieldNames ? '' : 'shareUrl')
    ..aInt64(231, _omitFieldNames ? '' : 'topThreadSetTime')
    ..pPM<$23.FeedKV>(234, _omitFieldNames ? '' : 'logParam',
        subBuilder: $23.FeedKV.create)
    ..aOS(237, _omitFieldNames ? '' : 'gameExt')
    ..aOS(238, _omitFieldNames ? '' : 'placeholderCardId')
    ..aOB(239, _omitFieldNames ? '' : 'isHottopThread')
    ..aInt64(240, _omitFieldNames ? '' : 'disableReply')
    ..pPM<$0.User>(243, _omitFieldNames ? '' : 'showUserList',
        subBuilder: $0.User.create)
    ..aOS(244, _omitFieldNames ? '' : 'showExtStr')
    ..aI(245, _omitFieldNames ? '' : 'showNewQuestionStyle')
    ..aOS(246, _omitFieldNames ? '' : 'titleAi')
    ..pPM<$16.Post>(247, _omitFieldNames ? '' : 'fullPostList',
        subBuilder: $16.Post.create)
    ..aI(248, _omitFieldNames ? '' : 'threadAlbumId')
    ..aOM<$16.Post>(250, _omitFieldNames ? '' : 'hotestPost',
        subBuilder: $16.Post.create)
    ..aI(251, _omitFieldNames ? '' : 'threadAlbumStatus')
    ..aI(253, _omitFieldNames ? '' : 'tiebaplusDaType',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(254, _omitFieldNames ? '' : 'tiebaplusDaTypeClick',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(256, _omitFieldNames ? '' : 'pollStyle')
    ..aOS(257, _omitFieldNames ? '' : 'feedNid')
    ..aI(261, _omitFieldNames ? '' : 'isStarThread')
    ..aOS(265, _omitFieldNames ? '' : 'contentStatement')
    ..aOS(266, _omitFieldNames ? '' : 'adInfo')
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

  @$pb.TagNumber(57)
  $core.int get validPostNum => $_getIZ(54);
  @$pb.TagNumber(57)
  set validPostNum($core.int value) => $_setUnsignedInt32(54, value);
  @$pb.TagNumber(57)
  $core.bool hasValidPostNum() => $_has(54);
  @$pb.TagNumber(57)
  void clearValidPostNum() => $_clearField(57);

  @$pb.TagNumber(58)
  $core.int get isLzDeleteAll => $_getIZ(55);
  @$pb.TagNumber(58)
  set isLzDeleteAll($core.int value) => $_setUnsignedInt32(55, value);
  @$pb.TagNumber(58)
  $core.bool hasIsLzDeleteAll() => $_has(55);
  @$pb.TagNumber(58)
  void clearIsLzDeleteAll() => $_clearField(58);

  @$pb.TagNumber(59)
  $core.int get isAd => $_getIZ(56);
  @$pb.TagNumber(59)
  set isAd($core.int value) => $_setUnsignedInt32(56, value);
  @$pb.TagNumber(59)
  $core.bool hasIsAd() => $_has(56);
  @$pb.TagNumber(59)
  void clearIsAd() => $_clearField(59);

  @$pb.TagNumber(60)
  $core.String get ecom => $_getSZ(57);
  @$pb.TagNumber(60)
  set ecom($core.String value) => $_setString(57, value);
  @$pb.TagNumber(60)
  $core.bool hasEcom() => $_has(57);
  @$pb.TagNumber(60)
  void clearEcom() => $_clearField(60);

  @$pb.TagNumber(61)
  $core.String get pids => $_getSZ(58);
  @$pb.TagNumber(61)
  set pids($core.String value) => $_setString(58, value);
  @$pb.TagNumber(61)
  $core.bool hasPids() => $_has(58);
  @$pb.TagNumber(61)
  void clearPids() => $_clearField(61);

  @$pb.TagNumber(66)
  $core.int get hotWeight => $_getIZ(59);
  @$pb.TagNumber(66)
  set hotWeight($core.int value) => $_setSignedInt32(59, value);
  @$pb.TagNumber(66)
  $core.bool hasHotWeight() => $_has(59);
  @$pb.TagNumber(66)
  void clearHotWeight() => $_clearField(66);

  @$pb.TagNumber(67)
  $core.String get livecoverSrc => $_getSZ(60);
  @$pb.TagNumber(67)
  set livecoverSrc($core.String value) => $_setString(60, value);
  @$pb.TagNumber(67)
  $core.bool hasLivecoverSrc() => $_has(60);
  @$pb.TagNumber(67)
  void clearLivecoverSrc() => $_clearField(67);

  @$pb.TagNumber(68)
  $core.int get storecount => $_getIZ(61);
  @$pb.TagNumber(68)
  set storecount($core.int value) => $_setSignedInt32(61, value);
  @$pb.TagNumber(68)
  $core.bool hasStorecount() => $_has(61);
  @$pb.TagNumber(68)
  void clearStorecount() => $_clearField(68);

  @$pb.TagNumber(69)
  $core.int get postNum => $_getIZ(62);
  @$pb.TagNumber(69)
  set postNum($core.int value) => $_setSignedInt32(62, value);
  @$pb.TagNumber(69)
  $core.bool hasPostNum() => $_has(62);
  @$pb.TagNumber(69)
  void clearPostNum() => $_clearField(69);

  @$pb.TagNumber(71)
  $7.HotTWThreadInfo get hotTWInfo => $_getN(63);
  @$pb.TagNumber(71)
  set hotTWInfo($7.HotTWThreadInfo value) => $_setField(71, value);
  @$pb.TagNumber(71)
  $core.bool hasHotTWInfo() => $_has(63);
  @$pb.TagNumber(71)
  void clearHotTWInfo() => $_clearField(71);
  @$pb.TagNumber(71)
  $7.HotTWThreadInfo ensureHotTWInfo() => $_ensure(63);

  @$pb.TagNumber(72)
  $8.ZhiBoInfoTW get twzhiboInfo => $_getN(64);
  @$pb.TagNumber(72)
  set twzhiboInfo($8.ZhiBoInfoTW value) => $_setField(72, value);
  @$pb.TagNumber(72)
  $core.bool hasTwzhiboInfo() => $_has(64);
  @$pb.TagNumber(72)
  void clearTwzhiboInfo() => $_clearField(72);
  @$pb.TagNumber(72)
  $8.ZhiBoInfoTW ensureTwzhiboInfo() => $_ensure(64);

  @$pb.TagNumber(73)
  $core.String get categoryName => $_getSZ(65);
  @$pb.TagNumber(73)
  set categoryName($core.String value) => $_setString(65, value);
  @$pb.TagNumber(73)
  $core.bool hasCategoryName() => $_has(65);
  @$pb.TagNumber(73)
  void clearCategoryName() => $_clearField(73);

  @$pb.TagNumber(74)
  $9.PollInfo get pollInfo => $_getN(66);
  @$pb.TagNumber(74)
  set pollInfo($9.PollInfo value) => $_setField(74, value);
  @$pb.TagNumber(74)
  $core.bool hasPollInfo() => $_has(66);
  @$pb.TagNumber(74)
  void clearPollInfo() => $_clearField(74);
  @$pb.TagNumber(74)
  $9.PollInfo ensurePollInfo() => $_ensure(66);

  @$pb.TagNumber(76)
  $core.int get isNovel => $_getIZ(67);
  @$pb.TagNumber(76)
  set isNovel($core.int value) => $_setSignedInt32(67, value);
  @$pb.TagNumber(76)
  $core.bool hasIsNovel() => $_has(67);
  @$pb.TagNumber(76)
  void clearIsNovel() => $_clearField(76);

  @$pb.TagNumber(77)
  $core.int get isNovelThank => $_getIZ(68);
  @$pb.TagNumber(77)
  set isNovelThank($core.int value) => $_setSignedInt32(68, value);
  @$pb.TagNumber(77)
  $core.bool hasIsNovelThank() => $_has(68);
  @$pb.TagNumber(77)
  void clearIsNovelThank() => $_clearField(77);

  @$pb.TagNumber(78)
  $core.int get isNovelReward => $_getIZ(69);
  @$pb.TagNumber(78)
  set isNovelReward($core.int value) => $_setSignedInt32(69, value);
  @$pb.TagNumber(78)
  $core.bool hasIsNovelReward() => $_has(69);
  @$pb.TagNumber(78)
  void clearIsNovelReward() => $_clearField(78);

  @$pb.TagNumber(79)
  $10.VideoInfo get videoInfo => $_getN(70);
  @$pb.TagNumber(79)
  set videoInfo($10.VideoInfo value) => $_setField(79, value);
  @$pb.TagNumber(79)
  $core.bool hasVideoInfo() => $_has(70);
  @$pb.TagNumber(79)
  void clearVideoInfo() => $_clearField(79);
  @$pb.TagNumber(79)
  $10.VideoInfo ensureVideoInfo() => $_ensure(70);

  @$pb.TagNumber(80)
  $core.int get pushEndTime => $_getIZ(71);
  @$pb.TagNumber(80)
  set pushEndTime($core.int value) => $_setSignedInt32(71, value);
  @$pb.TagNumber(80)
  $core.bool hasPushEndTime() => $_has(71);
  @$pb.TagNumber(80)
  void clearPushEndTime() => $_clearField(80);

  @$pb.TagNumber(81)
  $core.int get isCopythread => $_getIZ(72);
  @$pb.TagNumber(81)
  set isCopythread($core.int value) => $_setUnsignedInt32(72, value);
  @$pb.TagNumber(81)
  $core.bool hasIsCopythread() => $_has(72);
  @$pb.TagNumber(81)
  void clearIsCopythread() => $_clearField(81);

  @$pb.TagNumber(82)
  $core.int get operatorFlag => $_getIZ(73);
  @$pb.TagNumber(82)
  set operatorFlag($core.int value) => $_setUnsignedInt32(73, value);
  @$pb.TagNumber(82)
  $core.bool hasOperatorFlag() => $_has(73);
  @$pb.TagNumber(82)
  void clearOperatorFlag() => $_clearField(82);

  @$pb.TagNumber(83)
  $11.TaskInfo get taskInfo => $_getN(74);
  @$pb.TagNumber(83)
  set taskInfo($11.TaskInfo value) => $_setField(83, value);
  @$pb.TagNumber(83)
  $core.bool hasTaskInfo() => $_has(74);
  @$pb.TagNumber(83)
  void clearTaskInfo() => $_clearField(83);
  @$pb.TagNumber(83)
  $11.TaskInfo ensureTaskInfo() => $_ensure(74);

  @$pb.TagNumber(84)
  $core.int get picNum => $_getIZ(75);
  @$pb.TagNumber(84)
  set picNum($core.int value) => $_setUnsignedInt32(75, value);
  @$pb.TagNumber(84)
  $core.bool hasPicNum() => $_has(75);
  @$pb.TagNumber(84)
  void clearPicNum() => $_clearField(84);

  @$pb.TagNumber(85)
  $core.int get isGodthreadRecommend => $_getIZ(76);
  @$pb.TagNumber(85)
  set isGodthreadRecommend($core.int value) => $_setSignedInt32(76, value);
  @$pb.TagNumber(85)
  $core.bool hasIsGodthreadRecommend() => $_has(76);
  @$pb.TagNumber(85)
  void clearIsGodthreadRecommend() => $_clearField(85);

  @$pb.TagNumber(97)
  $core.int get isDeal => $_getIZ(77);
  @$pb.TagNumber(97)
  set isDeal($core.int value) => $_setSignedInt32(77, value);
  @$pb.TagNumber(97)
  $core.bool hasIsDeal() => $_has(77);
  @$pb.TagNumber(97)
  void clearIsDeal() => $_clearField(97);

  @$pb.TagNumber(103)
  $core.int get isBookChapter => $_getIZ(78);
  @$pb.TagNumber(103)
  set isBookChapter($core.int value) => $_setUnsignedInt32(78, value);
  @$pb.TagNumber(103)
  $core.bool hasIsBookChapter() => $_has(78);
  @$pb.TagNumber(103)
  void clearIsBookChapter() => $_clearField(103);

  @$pb.TagNumber(104)
  $core.String get recomSource => $_getSZ(79);
  @$pb.TagNumber(104)
  set recomSource($core.String value) => $_setString(79, value);
  @$pb.TagNumber(104)
  $core.bool hasRecomSource() => $_has(79);
  @$pb.TagNumber(104)
  void clearRecomSource() => $_clearField(104);

  @$pb.TagNumber(105)
  $core.String get recomWeight => $_getSZ(80);
  @$pb.TagNumber(105)
  set recomWeight($core.String value) => $_setString(80, value);
  @$pb.TagNumber(105)
  $core.bool hasRecomWeight() => $_has(80);
  @$pb.TagNumber(105)
  void clearRecomWeight() => $_clearField(105);

  @$pb.TagNumber(106)
  $fixnum.Int64 get lastReadPid => $_getI64(81);
  @$pb.TagNumber(106)
  set lastReadPid($fixnum.Int64 value) => $_setInt64(81, value);
  @$pb.TagNumber(106)
  $core.bool hasLastReadPid() => $_has(81);
  @$pb.TagNumber(106)
  void clearLastReadPid() => $_clearField(106);

  @$pb.TagNumber(107)
  $core.int get cheakRepeat => $_getIZ(82);
  @$pb.TagNumber(107)
  set cheakRepeat($core.int value) => $_setUnsignedInt32(82, value);
  @$pb.TagNumber(107)
  $core.bool hasCheakRepeat() => $_has(82);
  @$pb.TagNumber(107)
  void clearCheakRepeat() => $_clearField(107);

  @$pb.TagNumber(108)
  $core.String get abTag => $_getSZ(83);
  @$pb.TagNumber(108)
  set abTag($core.String value) => $_setString(83, value);
  @$pb.TagNumber(108)
  $core.bool hasAbTag() => $_has(83);
  @$pb.TagNumber(108)
  void clearAbTag() => $_clearField(108);

  @$pb.TagNumber(109)
  $core.String get recomReason => $_getSZ(84);
  @$pb.TagNumber(109)
  set recomReason($core.String value) => $_setString(84, value);
  @$pb.TagNumber(109)
  $core.bool hasRecomReason() => $_has(84);
  @$pb.TagNumber(109)
  void clearRecomReason() => $_clearField(109);

  @$pb.TagNumber(110)
  $12.AdInfo get videoAdInfo => $_getN(85);
  @$pb.TagNumber(110)
  set videoAdInfo($12.AdInfo value) => $_setField(110, value);
  @$pb.TagNumber(110)
  $core.bool hasVideoAdInfo() => $_has(85);
  @$pb.TagNumber(110)
  void clearVideoAdInfo() => $_clearField(110);
  @$pb.TagNumber(110)
  $12.AdInfo ensureVideoAdInfo() => $_ensure(85);

  @$pb.TagNumber(111)
  $pb.PbList<$13.PbContent> get richTitle => $_getList(86);

  @$pb.TagNumber(112)
  $pb.PbList<$13.PbContent> get richAbstract => $_getList(87);

  @$pb.TagNumber(113)
  $14.AlaLiveInfo get alaInfo => $_getN(88);
  @$pb.TagNumber(113)
  set alaInfo($14.AlaLiveInfo value) => $_setField(113, value);
  @$pb.TagNumber(113)
  $core.bool hasAlaInfo() => $_has(88);
  @$pb.TagNumber(113)
  void clearAlaInfo() => $_clearField(113);
  @$pb.TagNumber(113)
  $14.AlaLiveInfo ensureAlaInfo() => $_ensure(88);

  @$pb.TagNumber(120)
  $pb.PbList<$15.DislikeInfo> get dislikeInfo => $_getList(89);

  @$pb.TagNumber(123)
  $core.int get isMultiforumThread => $_getIZ(90);
  @$pb.TagNumber(123)
  set isMultiforumThread($core.int value) => $_setSignedInt32(90, value);
  @$pb.TagNumber(123)
  $core.bool hasIsMultiforumThread() => $_has(90);
  @$pb.TagNumber(123)
  void clearIsMultiforumThread() => $_clearField(123);

  @$pb.TagNumber(124)
  $core.int get agreeNum => $_getIZ(91);
  @$pb.TagNumber(124)
  set agreeNum($core.int value) => $_setSignedInt32(91, value);
  @$pb.TagNumber(124)
  $core.bool hasAgreeNum() => $_has(91);
  @$pb.TagNumber(124)
  void clearAgreeNum() => $_clearField(124);

  @$pb.TagNumber(125)
  $16.Post get topAgreePost => $_getN(92);
  @$pb.TagNumber(125)
  set topAgreePost($16.Post value) => $_setField(125, value);
  @$pb.TagNumber(125)
  $core.bool hasTopAgreePost() => $_has(92);
  @$pb.TagNumber(125)
  void clearTopAgreePost() => $_clearField(125);
  @$pb.TagNumber(125)
  $16.Post ensureTopAgreePost() => $_ensure(92);

  @$pb.TagNumber(126)
  $17.Agree get agree => $_getN(93);
  @$pb.TagNumber(126)
  set agree($17.Agree value) => $_setField(126, value);
  @$pb.TagNumber(126)
  $core.bool hasAgree() => $_has(93);
  @$pb.TagNumber(126)
  void clearAgree() => $_clearField(126);
  @$pb.TagNumber(126)
  $17.Agree ensureAgree() => $_ensure(93);

  @$pb.TagNumber(127)
  $core.int get isPartialVisible => $_getIZ(94);
  @$pb.TagNumber(127)
  set isPartialVisible($core.int value) => $_setSignedInt32(94, value);
  @$pb.TagNumber(127)
  $core.bool hasIsPartialVisible() => $_has(94);
  @$pb.TagNumber(127)
  void clearIsPartialVisible() => $_clearField(127);

  @$pb.TagNumber(128)
  $core.int get isLinkThread => $_getIZ(95);
  @$pb.TagNumber(128)
  set isLinkThread($core.int value) => $_setSignedInt32(95, value);
  @$pb.TagNumber(128)
  $core.bool hasIsLinkThread() => $_has(95);
  @$pb.TagNumber(128)
  void clearIsLinkThread() => $_clearField(128);

  @$pb.TagNumber(130)
  $fixnum.Int64 get freqNum => $_getI64(96);
  @$pb.TagNumber(130)
  set freqNum($fixnum.Int64 value) => $_setInt64(96, value);
  @$pb.TagNumber(130)
  $core.bool hasFreqNum() => $_has(96);
  @$pb.TagNumber(130)
  void clearFreqNum() => $_clearField(130);

  @$pb.TagNumber(131)
  $core.int get isGod => $_getIZ(97);
  @$pb.TagNumber(131)
  set isGod($core.int value) => $_setSignedInt32(97, value);
  @$pb.TagNumber(131)
  $core.bool hasIsGod() => $_has(97);
  @$pb.TagNumber(131)
  void clearIsGod() => $_clearField(131);

  @$pb.TagNumber(133)
  $2.Media get picInfo => $_getN(98);
  @$pb.TagNumber(133)
  set picInfo($2.Media value) => $_setField(133, value);
  @$pb.TagNumber(133)
  $core.bool hasPicInfo() => $_has(98);
  @$pb.TagNumber(133)
  void clearPicInfo() => $_clearField(133);
  @$pb.TagNumber(133)
  $2.Media ensurePicInfo() => $_ensure(98);

  @$pb.TagNumber(134)
  $core.int get isStoryAudit => $_getIZ(99);
  @$pb.TagNumber(134)
  set isStoryAudit($core.int value) => $_setSignedInt32(99, value);
  @$pb.TagNumber(134)
  $core.bool hasIsStoryAudit() => $_has(99);
  @$pb.TagNumber(134)
  void clearIsStoryAudit() => $_clearField(134);

  @$pb.TagNumber(135)
  $fixnum.Int64 get shareNum => $_getI64(100);
  @$pb.TagNumber(135)
  set shareNum($fixnum.Int64 value) => $_setInt64(100, value);
  @$pb.TagNumber(135)
  $core.bool hasShareNum() => $_has(100);
  @$pb.TagNumber(135)
  void clearShareNum() => $_clearField(135);

  @$pb.TagNumber(136)
  $core.int get isCalled => $_getIZ(101);
  @$pb.TagNumber(136)
  set isCalled($core.int value) => $_setSignedInt32(101, value);
  @$pb.TagNumber(136)
  $core.bool hasIsCalled() => $_has(101);
  @$pb.TagNumber(136)
  void clearIsCalled() => $_clearField(136);

  @$pb.TagNumber(137)
  $core.String get tiebaGameInformationSource => $_getSZ(102);
  @$pb.TagNumber(137)
  set tiebaGameInformationSource($core.String value) => $_setString(102, value);
  @$pb.TagNumber(137)
  $core.bool hasTiebaGameInformationSource() => $_has(102);
  @$pb.TagNumber(137)
  void clearTiebaGameInformationSource() => $_clearField(137);

  @$pb.TagNumber(138)
  $fixnum.Int64 get auditTime => $_getI64(103);
  @$pb.TagNumber(138)
  set auditTime($fixnum.Int64 value) => $_setInt64(103, value);
  @$pb.TagNumber(138)
  $core.bool hasAuditTime() => $_has(103);
  @$pb.TagNumber(138)
  void clearAuditTime() => $_clearField(138);

  @$pb.TagNumber(139)
  $core.int get middlePageNum => $_getIZ(104);
  @$pb.TagNumber(139)
  set middlePageNum($core.int value) => $_setSignedInt32(104, value);
  @$pb.TagNumber(139)
  $core.bool hasMiddlePageNum() => $_has(104);
  @$pb.TagNumber(139)
  void clearMiddlePageNum() => $_clearField(139);

  @$pb.TagNumber(140)
  $core.int get middlePagePassFlag => $_getIZ(105);
  @$pb.TagNumber(140)
  set middlePagePassFlag($core.int value) => $_setSignedInt32(105, value);
  @$pb.TagNumber(140)
  $core.bool hasMiddlePagePassFlag() => $_has(105);
  @$pb.TagNumber(140)
  void clearMiddlePagePassFlag() => $_clearField(140);

  @$pb.TagNumber(141)
  $18.OriginThreadInfo get originThreadInfo => $_getN(106);
  @$pb.TagNumber(141)
  set originThreadInfo($18.OriginThreadInfo value) => $_setField(141, value);
  @$pb.TagNumber(141)
  $core.bool hasOriginThreadInfo() => $_has(106);
  @$pb.TagNumber(141)
  void clearOriginThreadInfo() => $_clearField(141);
  @$pb.TagNumber(141)
  $18.OriginThreadInfo ensureOriginThreadInfo() => $_ensure(106);

  @$pb.TagNumber(142)
  $pb.PbList<$13.PbContent> get firstPostContent => $_getList(107);

  @$pb.TagNumber(143)
  $core.int get isShareThread => $_getIZ(108);
  @$pb.TagNumber(143)
  set isShareThread($core.int value) => $_setSignedInt32(108, value);
  @$pb.TagNumber(143)
  $core.bool hasIsShareThread() => $_has(108);
  @$pb.TagNumber(143)
  void clearIsShareThread() => $_clearField(143);

  @$pb.TagNumber(144)
  $core.String get recomExtra => $_getSZ(109);
  @$pb.TagNumber(144)
  set recomExtra($core.String value) => $_setString(109, value);
  @$pb.TagNumber(144)
  $core.bool hasRecomExtra() => $_has(109);
  @$pb.TagNumber(144)
  void clearRecomExtra() => $_clearField(144);

  @$pb.TagNumber(145)
  $fixnum.Int64 get transNum => $_getI64(110);
  @$pb.TagNumber(145)
  set transNum($fixnum.Int64 value) => $_setInt64(110, value);
  @$pb.TagNumber(145)
  $core.bool hasTransNum() => $_has(110);
  @$pb.TagNumber(145)
  void clearTransNum() => $_clearField(145);

  @$pb.TagNumber(146)
  $core.String get multiForumText => $_getSZ(111);
  @$pb.TagNumber(146)
  set multiForumText($core.String value) => $_setString(111, value);
  @$pb.TagNumber(146)
  $core.bool hasMultiForumText() => $_has(111);
  @$pb.TagNumber(146)
  void clearMultiForumText() => $_clearField(146);

  @$pb.TagNumber(148)
  $core.int get isTopic => $_getIZ(112);
  @$pb.TagNumber(148)
  set isTopic($core.int value) => $_setSignedInt32(112, value);
  @$pb.TagNumber(148)
  $core.bool hasIsTopic() => $_has(112);
  @$pb.TagNumber(148)
  void clearIsTopic() => $_clearField(148);

  @$pb.TagNumber(149)
  $core.String get topicUserName => $_getSZ(113);
  @$pb.TagNumber(149)
  set topicUserName($core.String value) => $_setString(113, value);
  @$pb.TagNumber(149)
  $core.bool hasTopicUserName() => $_has(113);
  @$pb.TagNumber(149)
  void clearTopicUserName() => $_clearField(149);

  @$pb.TagNumber(150)
  $core.String get topicH5Url => $_getSZ(114);
  @$pb.TagNumber(150)
  set topicH5Url($core.String value) => $_setString(114, value);
  @$pb.TagNumber(150)
  $core.bool hasTopicH5Url() => $_has(114);
  @$pb.TagNumber(150)
  void clearTopicH5Url() => $_clearField(150);

  @$pb.TagNumber(151)
  $core.String get presentationStyle => $_getSZ(115);
  @$pb.TagNumber(151)
  set presentationStyle($core.String value) => $_setString(115, value);
  @$pb.TagNumber(151)
  $core.bool hasPresentationStyle() => $_has(115);
  @$pb.TagNumber(151)
  void clearPresentationStyle() => $_clearField(151);

  @$pb.TagNumber(153)
  $core.int get isVideobiggieRecomthread => $_getIZ(116);
  @$pb.TagNumber(153)
  set isVideobiggieRecomthread($core.int value) => $_setSignedInt32(116, value);
  @$pb.TagNumber(153)
  $core.bool hasIsVideobiggieRecomthread() => $_has(116);
  @$pb.TagNumber(153)
  void clearIsVideobiggieRecomthread() => $_clearField(153);

  @$pb.TagNumber(154)
  $core.String get dailyPaperTime => $_getSZ(117);
  @$pb.TagNumber(154)
  set dailyPaperTime($core.String value) => $_setString(117, value);
  @$pb.TagNumber(154)
  $core.bool hasDailyPaperTime() => $_has(117);
  @$pb.TagNumber(154)
  void clearDailyPaperTime() => $_clearField(154);

  @$pb.TagNumber(155)
  $19.SimpleForum get forumInfo => $_getN(118);
  @$pb.TagNumber(155)
  set forumInfo($19.SimpleForum value) => $_setField(155, value);
  @$pb.TagNumber(155)
  $core.bool hasForumInfo() => $_has(118);
  @$pb.TagNumber(155)
  void clearForumInfo() => $_clearField(155);
  @$pb.TagNumber(155)
  $19.SimpleForum ensureForumInfo() => $_ensure(118);

  @$pb.TagNumber(158)
  $core.String get isTopImg => $_getSZ(119);
  @$pb.TagNumber(158)
  set isTopImg($core.String value) => $_setString(119, value);
  @$pb.TagNumber(158)
  $core.bool hasIsTopImg() => $_has(119);
  @$pb.TagNumber(158)
  void clearIsTopImg() => $_clearField(158);

  @$pb.TagNumber(159)
  $core.String get tShareImg => $_getSZ(120);
  @$pb.TagNumber(159)
  set tShareImg($core.String value) => $_setString(120, value);
  @$pb.TagNumber(159)
  $core.bool hasTShareImg() => $_has(120);
  @$pb.TagNumber(159)
  void clearTShareImg() => $_clearField(159);

  @$pb.TagNumber(161)
  $core.int get isBjh => $_getIZ(121);
  @$pb.TagNumber(161)
  set isBjh($core.int value) => $_setSignedInt32(121, value);
  @$pb.TagNumber(161)
  $core.bool hasIsBjh() => $_has(121);
  @$pb.TagNumber(161)
  void clearIsBjh() => $_clearField(161);

  @$pb.TagNumber(162)
  $core.String get articleCover => $_getSZ(122);
  @$pb.TagNumber(162)
  set articleCover($core.String value) => $_setString(122, value);
  @$pb.TagNumber(162)
  $core.bool hasArticleCover() => $_has(122);
  @$pb.TagNumber(162)
  void clearArticleCover() => $_clearField(162);

  @$pb.TagNumber(163)
  $core.int get bjhContentTag => $_getIZ(123);
  @$pb.TagNumber(163)
  set bjhContentTag($core.int value) => $_setSignedInt32(123, value);
  @$pb.TagNumber(163)
  $core.bool hasBjhContentTag() => $_has(123);
  @$pb.TagNumber(163)
  void clearBjhContentTag() => $_clearField(163);

  @$pb.TagNumber(164)
  $core.String get nid => $_getSZ(124);
  @$pb.TagNumber(164)
  set nid($core.String value) => $_setString(124, value);
  @$pb.TagNumber(164)
  $core.bool hasNid() => $_has(124);
  @$pb.TagNumber(164)
  void clearNid() => $_clearField(164);

  @$pb.TagNumber(165)
  $core.int get isHeadlinepost => $_getIZ(125);
  @$pb.TagNumber(165)
  set isHeadlinepost($core.int value) => $_setSignedInt32(125, value);
  @$pb.TagNumber(165)
  $core.bool hasIsHeadlinepost() => $_has(125);
  @$pb.TagNumber(165)
  void clearIsHeadlinepost() => $_clearField(165);

  @$pb.TagNumber(169)
  $20.Baijiahao get baijiahao => $_getN(126);
  @$pb.TagNumber(169)
  set baijiahao($20.Baijiahao value) => $_setField(169, value);
  @$pb.TagNumber(169)
  $core.bool hasBaijiahao() => $_has(126);
  @$pb.TagNumber(169)
  void clearBaijiahao() => $_clearField(169);
  @$pb.TagNumber(169)
  $20.Baijiahao ensureBaijiahao() => $_ensure(126);

  @$pb.TagNumber(170)
  $core.int get isSCard => $_getIZ(127);
  @$pb.TagNumber(170)
  set isSCard($core.int value) => $_setUnsignedInt32(127, value);
  @$pb.TagNumber(170)
  $core.bool hasIsSCard() => $_has(127);
  @$pb.TagNumber(170)
  void clearIsSCard() => $_clearField(170);

  @$pb.TagNumber(171)
  $core.String get scardPacketId => $_getSZ(128);
  @$pb.TagNumber(171)
  set scardPacketId($core.String value) => $_setString(128, value);
  @$pb.TagNumber(171)
  $core.bool hasScardPacketId() => $_has(128);
  @$pb.TagNumber(171)
  void clearScardPacketId() => $_clearField(171);

  @$pb.TagNumber(172)
  $core.String get threadShareLink => $_getSZ(129);
  @$pb.TagNumber(172)
  set threadShareLink($core.String value) => $_setString(129, value);
  @$pb.TagNumber(172)
  $core.bool hasThreadShareLink() => $_has(129);
  @$pb.TagNumber(172)
  void clearThreadShareLink() => $_clearField(172);

  @$pb.TagNumber(173)
  $core.int get ifComment => $_getIZ(130);
  @$pb.TagNumber(173)
  set ifComment($core.int value) => $_setSignedInt32(130, value);
  @$pb.TagNumber(173)
  $core.bool hasIfComment() => $_has(130);
  @$pb.TagNumber(173)
  void clearIfComment() => $_clearField(173);

  @$pb.TagNumber(174)
  $core.String get ifCommentInfo => $_getSZ(131);
  @$pb.TagNumber(174)
  set ifCommentInfo($core.String value) => $_setString(131, value);
  @$pb.TagNumber(174)
  $core.bool hasIfCommentInfo() => $_has(131);
  @$pb.TagNumber(174)
  void clearIfCommentInfo() => $_clearField(174);

  @$pb.TagNumber(175)
  $core.int get tabId => $_getIZ(132);
  @$pb.TagNumber(175)
  set tabId($core.int value) => $_setSignedInt32(132, value);
  @$pb.TagNumber(175)
  $core.bool hasTabId() => $_has(132);
  @$pb.TagNumber(175)
  void clearTabId() => $_clearField(175);

  @$pb.TagNumber(176)
  $core.String get tabName => $_getSZ(133);
  @$pb.TagNumber(176)
  set tabName($core.String value) => $_setString(133, value);
  @$pb.TagNumber(176)
  $core.bool hasTabName() => $_has(133);
  @$pb.TagNumber(176)
  void clearTabName() => $_clearField(176);

  @$pb.TagNumber(177)
  $core.String get wonderfulPostInfo => $_getSZ(134);
  @$pb.TagNumber(177)
  set wonderfulPostInfo($core.String value) => $_setString(134, value);
  @$pb.TagNumber(177)
  $core.bool hasWonderfulPostInfo() => $_has(134);
  @$pb.TagNumber(177)
  void clearWonderfulPostInfo() => $_clearField(177);

  @$pb.TagNumber(181)
  $core.int get isDeleted => $_getIZ(135);
  @$pb.TagNumber(181)
  set isDeleted($core.int value) => $_setSignedInt32(135, value);
  @$pb.TagNumber(181)
  $core.bool hasIsDeleted() => $_has(135);
  @$pb.TagNumber(181)
  void clearIsDeleted() => $_clearField(181);

  @$pb.TagNumber(182)
  $core.int get hotNum => $_getIZ(136);
  @$pb.TagNumber(182)
  set hotNum($core.int value) => $_setSignedInt32(136, value);
  @$pb.TagNumber(182)
  $core.bool hasHotNum() => $_has(136);
  @$pb.TagNumber(182)
  void clearHotNum() => $_clearField(182);

  @$pb.TagNumber(184)
  $core.int get isLocal => $_getIZ(137);
  @$pb.TagNumber(184)
  set isLocal($core.int value) => $_setUnsignedInt32(137, value);
  @$pb.TagNumber(184)
  $core.bool hasIsLocal() => $_has(137);
  @$pb.TagNumber(184)
  void clearIsLocal() => $_clearField(184);

  @$pb.TagNumber(185)
  $core.int get pbEntry => $_getIZ(138);
  @$pb.TagNumber(185)
  set pbEntry($core.int value) => $_setSignedInt32(138, value);
  @$pb.TagNumber(185)
  $core.bool hasPbEntry() => $_has(138);
  @$pb.TagNumber(185)
  void clearPbEntry() => $_clearField(185);

  @$pb.TagNumber(186)
  $core.int get isAuthorView => $_getIZ(139);
  @$pb.TagNumber(186)
  set isAuthorView($core.int value) => $_setSignedInt32(139, value);
  @$pb.TagNumber(186)
  $core.bool hasIsAuthorView() => $_has(139);
  @$pb.TagNumber(186)
  void clearIsAuthorView() => $_clearField(186);

  @$pb.TagNumber(187)
  $core.String get forumUserLiveMsg => $_getSZ(140);
  @$pb.TagNumber(187)
  set forumUserLiveMsg($core.String value) => $_setString(140, value);
  @$pb.TagNumber(187)
  $core.bool hasForumUserLiveMsg() => $_has(140);
  @$pb.TagNumber(187)
  void clearForumUserLiveMsg() => $_clearField(187);

  @$pb.TagNumber(190)
  $core.int get collectNum => $_getIZ(141);
  @$pb.TagNumber(190)
  set collectNum($core.int value) => $_setUnsignedInt32(141, value);
  @$pb.TagNumber(190)
  $core.bool hasCollectNum() => $_has(141);
  @$pb.TagNumber(190)
  void clearCollectNum() => $_clearField(190);

  @$pb.TagNumber(192)
  $core.String get recomTagIcon => $_getSZ(142);
  @$pb.TagNumber(192)
  set recomTagIcon($core.String value) => $_setString(142, value);
  @$pb.TagNumber(192)
  $core.bool hasRecomTagIcon() => $_has(142);
  @$pb.TagNumber(192)
  void clearRecomTagIcon() => $_clearField(192);

  @$pb.TagNumber(193)
  $core.String get isTiebaplusAd => $_getSZ(143);
  @$pb.TagNumber(193)
  set isTiebaplusAd($core.String value) => $_setString(143, value);
  @$pb.TagNumber(193)
  $core.bool hasIsTiebaplusAd() => $_has(143);
  @$pb.TagNumber(193)
  void clearIsTiebaplusAd() => $_clearField(193);

  @$pb.TagNumber(194)
  $core.String get tiebaplusOrderId => $_getSZ(144);
  @$pb.TagNumber(194)
  set tiebaplusOrderId($core.String value) => $_setString(144, value);
  @$pb.TagNumber(194)
  $core.bool hasTiebaplusOrderId() => $_has(144);
  @$pb.TagNumber(194)
  void clearTiebaplusOrderId() => $_clearField(194);

  @$pb.TagNumber(195)
  $core.String get tiebaplusToken => $_getSZ(145);
  @$pb.TagNumber(195)
  set tiebaplusToken($core.String value) => $_setString(145, value);
  @$pb.TagNumber(195)
  $core.bool hasTiebaplusToken() => $_has(145);
  @$pb.TagNumber(195)
  void clearTiebaplusToken() => $_clearField(195);

  @$pb.TagNumber(196)
  $core.String get tiebaplusExtraParam => $_getSZ(146);
  @$pb.TagNumber(196)
  set tiebaplusExtraParam($core.String value) => $_setString(146, value);
  @$pb.TagNumber(196)
  $core.bool hasTiebaplusExtraParam() => $_has(146);
  @$pb.TagNumber(196)
  void clearTiebaplusExtraParam() => $_clearField(196);

  @$pb.TagNumber(197)
  $core.int get tiebaplusCantDelete => $_getIZ(147);
  @$pb.TagNumber(197)
  set tiebaplusCantDelete($core.int value) => $_setSignedInt32(147, value);
  @$pb.TagNumber(197)
  $core.bool hasTiebaplusCantDelete() => $_has(147);
  @$pb.TagNumber(197)
  void clearTiebaplusCantDelete() => $_clearField(197);

  @$pb.TagNumber(198)
  $core.int get isFrsMask => $_getIZ(148);
  @$pb.TagNumber(198)
  set isFrsMask($core.int value) => $_setSignedInt32(148, value);
  @$pb.TagNumber(198)
  $core.bool hasIsFrsMask() => $_has(148);
  @$pb.TagNumber(198)
  void clearIsFrsMask() => $_clearField(198);

  @$pb.TagNumber(199)
  $21.VoiceRoom get voiceRoom => $_getN(149);
  @$pb.TagNumber(199)
  set voiceRoom($21.VoiceRoom value) => $_setField(199, value);
  @$pb.TagNumber(199)
  $core.bool hasVoiceRoom() => $_has(149);
  @$pb.TagNumber(199)
  void clearVoiceRoom() => $_clearField(199);
  @$pb.TagNumber(199)
  $21.VoiceRoom ensureVoiceRoom() => $_ensure(149);

  @$pb.TagNumber(200)
  $core.int get tabShowMode => $_getIZ(150);
  @$pb.TagNumber(200)
  set tabShowMode($core.int value) => $_setSignedInt32(150, value);
  @$pb.TagNumber(200)
  $core.bool hasTabShowMode() => $_has(150);
  @$pb.TagNumber(200)
  void clearTabShowMode() => $_clearField(200);

  @$pb.TagNumber(201)
  $22.TiebaPlusAd get tiebaplusAd => $_getN(151);
  @$pb.TagNumber(201)
  set tiebaplusAd($22.TiebaPlusAd value) => $_setField(201, value);
  @$pb.TagNumber(201)
  $core.bool hasTiebaplusAd() => $_has(151);
  @$pb.TagNumber(201)
  void clearTiebaplusAd() => $_clearField(201);
  @$pb.TagNumber(201)
  $22.TiebaPlusAd ensureTiebaplusAd() => $_ensure(151);

  @$pb.TagNumber(204)
  $core.int get isPictxt => $_getIZ(152);
  @$pb.TagNumber(204)
  set isPictxt($core.int value) => $_setSignedInt32(152, value);
  @$pb.TagNumber(204)
  $core.bool hasIsPictxt() => $_has(152);
  @$pb.TagNumber(204)
  void clearIsPictxt() => $_clearField(204);

  @$pb.TagNumber(205)
  $core.String get exposureMonitorUrl => $_getSZ(153);
  @$pb.TagNumber(205)
  set exposureMonitorUrl($core.String value) => $_setString(153, value);
  @$pb.TagNumber(205)
  $core.bool hasExposureMonitorUrl() => $_has(153);
  @$pb.TagNumber(205)
  void clearExposureMonitorUrl() => $_clearField(205);

  @$pb.TagNumber(206)
  $core.String get clickMonitorUrl => $_getSZ(154);
  @$pb.TagNumber(206)
  set clickMonitorUrl($core.String value) => $_setString(154, value);
  @$pb.TagNumber(206)
  $core.bool hasClickMonitorUrl() => $_has(154);
  @$pb.TagNumber(206)
  void clearClickMonitorUrl() => $_clearField(206);

  @$pb.TagNumber(207)
  $core.int get readonly => $_getIZ(155);
  @$pb.TagNumber(207)
  set readonly($core.int value) => $_setSignedInt32(155, value);
  @$pb.TagNumber(207)
  $core.bool hasReadonly() => $_has(155);
  @$pb.TagNumber(207)
  void clearReadonly() => $_clearField(207);

  @$pb.TagNumber(213)
  $core.int get isHighlight => $_getIZ(156);
  @$pb.TagNumber(213)
  set isHighlight($core.int value) => $_setSignedInt32(156, value);
  @$pb.TagNumber(213)
  $core.bool hasIsHighlight() => $_has(156);
  @$pb.TagNumber(213)
  void clearIsHighlight() => $_clearField(213);

  @$pb.TagNumber(214)
  $core.int get isXiuxiuThread => $_getIZ(157);
  @$pb.TagNumber(214)
  set isXiuxiuThread($core.int value) => $_setSignedInt32(157, value);
  @$pb.TagNumber(214)
  $core.bool hasIsXiuxiuThread() => $_has(157);
  @$pb.TagNumber(214)
  void clearIsXiuxiuThread() => $_clearField(214);

  @$pb.TagNumber(216)
  $core.int get showAdSubscript => $_getIZ(158);
  @$pb.TagNumber(216)
  set showAdSubscript($core.int value) => $_setUnsignedInt32(158, value);
  @$pb.TagNumber(216)
  $core.bool hasShowAdSubscript() => $_has(158);
  @$pb.TagNumber(216)
  void clearShowAdSubscript() => $_clearField(216);

  @$pb.TagNumber(217)
  $core.String get targetScheme => $_getSZ(159);
  @$pb.TagNumber(217)
  set targetScheme($core.String value) => $_setString(159, value);
  @$pb.TagNumber(217)
  $core.bool hasTargetScheme() => $_has(159);
  @$pb.TagNumber(217)
  void clearTargetScheme() => $_clearField(217);

  @$pb.TagNumber(218)
  $core.String get convertBtnType => $_getSZ(160);
  @$pb.TagNumber(218)
  set convertBtnType($core.String value) => $_setString(160, value);
  @$pb.TagNumber(218)
  $core.bool hasConvertBtnType() => $_has(160);
  @$pb.TagNumber(218)
  void clearConvertBtnType() => $_clearField(218);

  @$pb.TagNumber(219)
  $core.int get isExcellentThread => $_getIZ(161);
  @$pb.TagNumber(219)
  set isExcellentThread($core.int value) => $_setSignedInt32(161, value);
  @$pb.TagNumber(219)
  $core.bool hasIsExcellentThread() => $_has(161);
  @$pb.TagNumber(219)
  void clearIsExcellentThread() => $_clearField(219);

  @$pb.TagNumber(220)
  $core.int get literatureFlag => $_getIZ(162);
  @$pb.TagNumber(220)
  set literatureFlag($core.int value) => $_setSignedInt32(162, value);
  @$pb.TagNumber(220)
  $core.bool hasLiteratureFlag() => $_has(162);
  @$pb.TagNumber(220)
  void clearLiteratureFlag() => $_clearField(220);

  @$pb.TagNumber(225)
  $fixnum.Int64 get robotThreadType => $_getI64(163);
  @$pb.TagNumber(225)
  set robotThreadType($fixnum.Int64 value) => $_setInt64(163, value);
  @$pb.TagNumber(225)
  $core.bool hasRobotThreadType() => $_has(163);
  @$pb.TagNumber(225)
  void clearRobotThreadType() => $_clearField(225);

  @$pb.TagNumber(226)
  $fixnum.Int64 get bookId => $_getI64(164);
  @$pb.TagNumber(226)
  set bookId($fixnum.Int64 value) => $_setInt64(164, value);
  @$pb.TagNumber(226)
  $core.bool hasBookId() => $_has(164);
  @$pb.TagNumber(226)
  void clearBookId() => $_clearField(226);

  @$pb.TagNumber(227)
  $core.String get headType => $_getSZ(165);
  @$pb.TagNumber(227)
  set headType($core.String value) => $_setString(165, value);
  @$pb.TagNumber(227)
  $core.bool hasHeadType() => $_has(165);
  @$pb.TagNumber(227)
  void clearHeadType() => $_clearField(227);

  @$pb.TagNumber(228)
  $fixnum.Int64 get disableShare => $_getI64(166);
  @$pb.TagNumber(228)
  set disableShare($fixnum.Int64 value) => $_setInt64(166, value);
  @$pb.TagNumber(228)
  $core.bool hasDisableShare() => $_has(166);
  @$pb.TagNumber(228)
  void clearDisableShare() => $_clearField(228);

  @$pb.TagNumber(229)
  $core.String get disableShareToast => $_getSZ(167);
  @$pb.TagNumber(229)
  set disableShareToast($core.String value) => $_setString(167, value);
  @$pb.TagNumber(229)
  $core.bool hasDisableShareToast() => $_has(167);
  @$pb.TagNumber(229)
  void clearDisableShareToast() => $_clearField(229);

  @$pb.TagNumber(230)
  $core.String get shareUrl => $_getSZ(168);
  @$pb.TagNumber(230)
  set shareUrl($core.String value) => $_setString(168, value);
  @$pb.TagNumber(230)
  $core.bool hasShareUrl() => $_has(168);
  @$pb.TagNumber(230)
  void clearShareUrl() => $_clearField(230);

  @$pb.TagNumber(231)
  $fixnum.Int64 get topThreadSetTime => $_getI64(169);
  @$pb.TagNumber(231)
  set topThreadSetTime($fixnum.Int64 value) => $_setInt64(169, value);
  @$pb.TagNumber(231)
  $core.bool hasTopThreadSetTime() => $_has(169);
  @$pb.TagNumber(231)
  void clearTopThreadSetTime() => $_clearField(231);

  @$pb.TagNumber(234)
  $pb.PbList<$23.FeedKV> get logParam => $_getList(170);

  @$pb.TagNumber(237)
  $core.String get gameExt => $_getSZ(171);
  @$pb.TagNumber(237)
  set gameExt($core.String value) => $_setString(171, value);
  @$pb.TagNumber(237)
  $core.bool hasGameExt() => $_has(171);
  @$pb.TagNumber(237)
  void clearGameExt() => $_clearField(237);

  @$pb.TagNumber(238)
  $core.String get placeholderCardId => $_getSZ(172);
  @$pb.TagNumber(238)
  set placeholderCardId($core.String value) => $_setString(172, value);
  @$pb.TagNumber(238)
  $core.bool hasPlaceholderCardId() => $_has(172);
  @$pb.TagNumber(238)
  void clearPlaceholderCardId() => $_clearField(238);

  @$pb.TagNumber(239)
  $core.bool get isHottopThread => $_getBF(173);
  @$pb.TagNumber(239)
  set isHottopThread($core.bool value) => $_setBool(173, value);
  @$pb.TagNumber(239)
  $core.bool hasIsHottopThread() => $_has(173);
  @$pb.TagNumber(239)
  void clearIsHottopThread() => $_clearField(239);

  @$pb.TagNumber(240)
  $fixnum.Int64 get disableReply => $_getI64(174);
  @$pb.TagNumber(240)
  set disableReply($fixnum.Int64 value) => $_setInt64(174, value);
  @$pb.TagNumber(240)
  $core.bool hasDisableReply() => $_has(174);
  @$pb.TagNumber(240)
  void clearDisableReply() => $_clearField(240);

  @$pb.TagNumber(243)
  $pb.PbList<$0.User> get showUserList => $_getList(175);

  @$pb.TagNumber(244)
  $core.String get showExtStr => $_getSZ(176);
  @$pb.TagNumber(244)
  set showExtStr($core.String value) => $_setString(176, value);
  @$pb.TagNumber(244)
  $core.bool hasShowExtStr() => $_has(176);
  @$pb.TagNumber(244)
  void clearShowExtStr() => $_clearField(244);

  @$pb.TagNumber(245)
  $core.int get showNewQuestionStyle => $_getIZ(177);
  @$pb.TagNumber(245)
  set showNewQuestionStyle($core.int value) => $_setSignedInt32(177, value);
  @$pb.TagNumber(245)
  $core.bool hasShowNewQuestionStyle() => $_has(177);
  @$pb.TagNumber(245)
  void clearShowNewQuestionStyle() => $_clearField(245);

  @$pb.TagNumber(246)
  $core.String get titleAi => $_getSZ(178);
  @$pb.TagNumber(246)
  set titleAi($core.String value) => $_setString(178, value);
  @$pb.TagNumber(246)
  $core.bool hasTitleAi() => $_has(178);
  @$pb.TagNumber(246)
  void clearTitleAi() => $_clearField(246);

  @$pb.TagNumber(247)
  $pb.PbList<$16.Post> get fullPostList => $_getList(179);

  @$pb.TagNumber(248)
  $core.int get threadAlbumId => $_getIZ(180);
  @$pb.TagNumber(248)
  set threadAlbumId($core.int value) => $_setSignedInt32(180, value);
  @$pb.TagNumber(248)
  $core.bool hasThreadAlbumId() => $_has(180);
  @$pb.TagNumber(248)
  void clearThreadAlbumId() => $_clearField(248);

  @$pb.TagNumber(250)
  $16.Post get hotestPost => $_getN(181);
  @$pb.TagNumber(250)
  set hotestPost($16.Post value) => $_setField(250, value);
  @$pb.TagNumber(250)
  $core.bool hasHotestPost() => $_has(181);
  @$pb.TagNumber(250)
  void clearHotestPost() => $_clearField(250);
  @$pb.TagNumber(250)
  $16.Post ensureHotestPost() => $_ensure(181);

  @$pb.TagNumber(251)
  $core.int get threadAlbumStatus => $_getIZ(182);
  @$pb.TagNumber(251)
  set threadAlbumStatus($core.int value) => $_setSignedInt32(182, value);
  @$pb.TagNumber(251)
  $core.bool hasThreadAlbumStatus() => $_has(182);
  @$pb.TagNumber(251)
  void clearThreadAlbumStatus() => $_clearField(251);

  @$pb.TagNumber(253)
  $core.int get tiebaplusDaType => $_getIZ(183);
  @$pb.TagNumber(253)
  set tiebaplusDaType($core.int value) => $_setUnsignedInt32(183, value);
  @$pb.TagNumber(253)
  $core.bool hasTiebaplusDaType() => $_has(183);
  @$pb.TagNumber(253)
  void clearTiebaplusDaType() => $_clearField(253);

  @$pb.TagNumber(254)
  $core.int get tiebaplusDaTypeClick => $_getIZ(184);
  @$pb.TagNumber(254)
  set tiebaplusDaTypeClick($core.int value) => $_setUnsignedInt32(184, value);
  @$pb.TagNumber(254)
  $core.bool hasTiebaplusDaTypeClick() => $_has(184);
  @$pb.TagNumber(254)
  void clearTiebaplusDaTypeClick() => $_clearField(254);

  @$pb.TagNumber(256)
  $core.int get pollStyle => $_getIZ(185);
  @$pb.TagNumber(256)
  set pollStyle($core.int value) => $_setSignedInt32(185, value);
  @$pb.TagNumber(256)
  $core.bool hasPollStyle() => $_has(185);
  @$pb.TagNumber(256)
  void clearPollStyle() => $_clearField(256);

  @$pb.TagNumber(257)
  $core.String get feedNid => $_getSZ(186);
  @$pb.TagNumber(257)
  set feedNid($core.String value) => $_setString(186, value);
  @$pb.TagNumber(257)
  $core.bool hasFeedNid() => $_has(186);
  @$pb.TagNumber(257)
  void clearFeedNid() => $_clearField(257);

  @$pb.TagNumber(261)
  $core.int get isStarThread => $_getIZ(187);
  @$pb.TagNumber(261)
  set isStarThread($core.int value) => $_setSignedInt32(187, value);
  @$pb.TagNumber(261)
  $core.bool hasIsStarThread() => $_has(187);
  @$pb.TagNumber(261)
  void clearIsStarThread() => $_clearField(261);

  @$pb.TagNumber(265)
  $core.String get contentStatement => $_getSZ(188);
  @$pb.TagNumber(265)
  set contentStatement($core.String value) => $_setString(188, value);
  @$pb.TagNumber(265)
  $core.bool hasContentStatement() => $_has(188);
  @$pb.TagNumber(265)
  void clearContentStatement() => $_clearField(265);

  @$pb.TagNumber(266)
  $core.String get adInfo => $_getSZ(189);
  @$pb.TagNumber(266)
  set adInfo($core.String value) => $_setString(189, value);
  @$pb.TagNumber(266)
  $core.bool hasAdInfo() => $_has(189);
  @$pb.TagNumber(266)
  void clearAdInfo() => $_clearField(266);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
