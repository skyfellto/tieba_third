// This is a generated file - do not edit.
//
// Generated from PbPage/PbPageResponseData.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../AlaLiveInfo.pb.dart' as $21;
import '../Anti.pb.dart' as $3;
import '../BannerList.pb.dart' as $9;
import '../BusinessAccountInfo.pb.dart' as $34;
import '../FeedKV.pb.dart' as $37;
import '../FineBannerPb.pb.dart' as $12;
import '../ForumRuleStatus.pb.dart' as $35;
import '../GraffitiRankListInfo.pb.dart' as $16;
import '../Lbs.pb.dart' as $7;
import '../ManagerElection.pb.dart' as $31;
import '../NaGuide.pb.dart' as $27;
import '../Page.pb.dart' as $2;
import '../PbHotPost.pb.dart' as $15;
import '../PbTopAgreePost.pb.dart' as $25;
import '../Post.pb.dart' as $5;
import '../Promotion.pb.dart' as $33;
import '../PsRankListItem.pb.dart' as $19;
import '../RecomTopicList.pb.dart' as $29;
import '../RecommendThread.pb.dart' as $11;
import '../SdkTopicThread.pb.dart' as $14;
import '../SimpleForum.pb.dart' as $1;
import '../SimpleUser.pb.dart' as $26;
import '../ThreadInfo.pb.dart' as $6;
import '../TwZhiBoAnti.pb.dart' as $13;
import '../User.pb.dart' as $0;
import 'AddPost.pb.dart' as $4;
import 'AppealInfo.pb.dart' as $17;
import 'BusinessPromotInfo.pb.dart' as $32;
import 'FeedExtInfo.pb.dart' as $24;
import 'FloatingIcon.pb.dart' as $36;
import 'ForumHeadlineImgInfo.pb.dart' as $22;
import 'GodCard.pb.dart' as $18;
import 'GuessLikeStruct.pb.dart' as $23;
import 'NewsInfo.pb.dart' as $10;
import 'PbFollowTip.pb.dart' as $28;
import 'PbSortType.pb.dart' as $30;
import 'PostBanner.pb.dart' as $8;
import 'RecommendBook.pb.dart' as $20;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class PbPageResponseData extends $pb.GeneratedMessage {
  factory PbPageResponseData({
    $0.User? user,
    $1.SimpleForum? forum,
    $2.Page? page,
    $3.Anti? anti,
    $4.AddPost? addPost,
    $core.Iterable<$5.Post>? postList,
    $core.int? hasFloor,
    $6.ThreadInfo? thread,
    $7.Lbs? location,
    $core.int? isNewUrl,
    $core.Iterable<$8.PostBanner>? postBanner,
    $9.BannerList? bannerList,
    $core.Iterable<$0.User>? userList,
    $core.int? serverTime,
    $10.NewsInfo? newsInfo,
    $core.Iterable<$11.RecommendThread>? recommendThreads,
    $core.Iterable<$12.FineBannerPb>? fineBanner,
    $13.TwZhiBoAnti? twzhiboAnti,
    $14.SdkTopicThread? sdkTopicThread,
    $15.PbHotPost? hotPostList,
    $16.GraffitiRankListInfo? graffitiRankListInfo,
    $17.AppealInfo? appealInfo,
    $18.GodCard? godCard,
    $core.Iterable<$19.PsRankListItem>? playRankList,
    $20.RecommendBook? recommendBook,
    $21.AlaLiveInfo? alaInfo,
    $22.ForumHeadlineImgInfo? forumHeadlineImgInfo,
    $core.String? aspShownInfo,
    $23.GuessLikeStruct? guessLike,
    $core.Iterable<$6.ThreadInfo>? feedThreadList,
    $core.int? isFollowCurrentChannel,
    $core.int? switchReadOpen,
    $24.FeedExtInfo? feedInfo,
    $25.PbTopAgreePost? topAgreePostList,
    $core.Iterable<$1.SimpleForum>? repostRecommendForumList,
    $core.Iterable<$1.SimpleForum>? fromForumList,
    $fixnum.Int64? threadFreqNum,
    $5.Post? firstFloorPost,
    $1.SimpleForum? displayForum,
    $core.Iterable<$26.SimpleUser>? newAgreeUser,
    $core.String? partialVisibleToast,
    $27.NaGuide? naGuide,
    $28.PbFollowTip? followTip,
    $core.String? foldTip,
    $core.int? expNewsToday,
    $core.int? expGuideToday,
    $core.String? multiForumText,
    $core.Iterable<$29.RecomTopicList>? threadTopic,
    $core.Iterable<$30.PbSortType>? pbSortInfo,
    $core.int? sortType,
    $31.ManagerElection? managerElection,
    $core.Iterable<$6.ThreadInfo>? bjhRecommend,
    $32.BusinessPromotInfo? businessPromotInfo,
    $33.Promotion? promotion,
    $21.AlaLiveInfo? recomAlaInfo,
    $core.int? jumptotab1,
    $core.String? jumptotab2,
    $34.BusinessAccountInfo? businessAccountInfo,
    $core.Iterable<$6.ThreadInfo>? recomThreadInfo,
    $35.ForumRuleStatus? forumRule,
    $core.int? showAdsense,
    $core.int? isBlackWhite,
    $core.int? isOfficialForum,
    $36.FloatingIcon? floatingIcon,
    $core.int? isPurchase,
    $core.int? pbNoticeType,
    $core.String? pbNotice,
    $core.int? hasFoldComment,
    $fixnum.Int64? foldCommentNum,
    $5.Post? topAnswer,
    $core.Iterable<$37.FeedKV>? logParam,
    $core.Iterable<$core.String>? limitDialogName,
    $core.int? adShowSelect,
    $core.String? searchQuery,
    $core.String? returnPage,
    $5.Post? firstFloor,
    $core.int? scroll,
    $core.int? isTidWhite,
    $core.int? useHybridPb,
    $core.String? adInfo,
  }) {
    final result = create();
    if (user != null) result.user = user;
    if (forum != null) result.forum = forum;
    if (page != null) result.page = page;
    if (anti != null) result.anti = anti;
    if (addPost != null) result.addPost = addPost;
    if (postList != null) result.postList.addAll(postList);
    if (hasFloor != null) result.hasFloor = hasFloor;
    if (thread != null) result.thread = thread;
    if (location != null) result.location = location;
    if (isNewUrl != null) result.isNewUrl = isNewUrl;
    if (postBanner != null) result.postBanner.addAll(postBanner);
    if (bannerList != null) result.bannerList = bannerList;
    if (userList != null) result.userList.addAll(userList);
    if (serverTime != null) result.serverTime = serverTime;
    if (newsInfo != null) result.newsInfo = newsInfo;
    if (recommendThreads != null)
      result.recommendThreads.addAll(recommendThreads);
    if (fineBanner != null) result.fineBanner.addAll(fineBanner);
    if (twzhiboAnti != null) result.twzhiboAnti = twzhiboAnti;
    if (sdkTopicThread != null) result.sdkTopicThread = sdkTopicThread;
    if (hotPostList != null) result.hotPostList = hotPostList;
    if (graffitiRankListInfo != null)
      result.graffitiRankListInfo = graffitiRankListInfo;
    if (appealInfo != null) result.appealInfo = appealInfo;
    if (godCard != null) result.godCard = godCard;
    if (playRankList != null) result.playRankList.addAll(playRankList);
    if (recommendBook != null) result.recommendBook = recommendBook;
    if (alaInfo != null) result.alaInfo = alaInfo;
    if (forumHeadlineImgInfo != null)
      result.forumHeadlineImgInfo = forumHeadlineImgInfo;
    if (aspShownInfo != null) result.aspShownInfo = aspShownInfo;
    if (guessLike != null) result.guessLike = guessLike;
    if (feedThreadList != null) result.feedThreadList.addAll(feedThreadList);
    if (isFollowCurrentChannel != null)
      result.isFollowCurrentChannel = isFollowCurrentChannel;
    if (switchReadOpen != null) result.switchReadOpen = switchReadOpen;
    if (feedInfo != null) result.feedInfo = feedInfo;
    if (topAgreePostList != null) result.topAgreePostList = topAgreePostList;
    if (repostRecommendForumList != null)
      result.repostRecommendForumList.addAll(repostRecommendForumList);
    if (fromForumList != null) result.fromForumList.addAll(fromForumList);
    if (threadFreqNum != null) result.threadFreqNum = threadFreqNum;
    if (firstFloorPost != null) result.firstFloorPost = firstFloorPost;
    if (displayForum != null) result.displayForum = displayForum;
    if (newAgreeUser != null) result.newAgreeUser.addAll(newAgreeUser);
    if (partialVisibleToast != null)
      result.partialVisibleToast = partialVisibleToast;
    if (naGuide != null) result.naGuide = naGuide;
    if (followTip != null) result.followTip = followTip;
    if (foldTip != null) result.foldTip = foldTip;
    if (expNewsToday != null) result.expNewsToday = expNewsToday;
    if (expGuideToday != null) result.expGuideToday = expGuideToday;
    if (multiForumText != null) result.multiForumText = multiForumText;
    if (threadTopic != null) result.threadTopic.addAll(threadTopic);
    if (pbSortInfo != null) result.pbSortInfo.addAll(pbSortInfo);
    if (sortType != null) result.sortType = sortType;
    if (managerElection != null) result.managerElection = managerElection;
    if (bjhRecommend != null) result.bjhRecommend.addAll(bjhRecommend);
    if (businessPromotInfo != null)
      result.businessPromotInfo = businessPromotInfo;
    if (promotion != null) result.promotion = promotion;
    if (recomAlaInfo != null) result.recomAlaInfo = recomAlaInfo;
    if (jumptotab1 != null) result.jumptotab1 = jumptotab1;
    if (jumptotab2 != null) result.jumptotab2 = jumptotab2;
    if (businessAccountInfo != null)
      result.businessAccountInfo = businessAccountInfo;
    if (recomThreadInfo != null) result.recomThreadInfo.addAll(recomThreadInfo);
    if (forumRule != null) result.forumRule = forumRule;
    if (showAdsense != null) result.showAdsense = showAdsense;
    if (isBlackWhite != null) result.isBlackWhite = isBlackWhite;
    if (isOfficialForum != null) result.isOfficialForum = isOfficialForum;
    if (floatingIcon != null) result.floatingIcon = floatingIcon;
    if (isPurchase != null) result.isPurchase = isPurchase;
    if (pbNoticeType != null) result.pbNoticeType = pbNoticeType;
    if (pbNotice != null) result.pbNotice = pbNotice;
    if (hasFoldComment != null) result.hasFoldComment = hasFoldComment;
    if (foldCommentNum != null) result.foldCommentNum = foldCommentNum;
    if (topAnswer != null) result.topAnswer = topAnswer;
    if (logParam != null) result.logParam.addAll(logParam);
    if (limitDialogName != null) result.limitDialogName.addAll(limitDialogName);
    if (adShowSelect != null) result.adShowSelect = adShowSelect;
    if (searchQuery != null) result.searchQuery = searchQuery;
    if (returnPage != null) result.returnPage = returnPage;
    if (firstFloor != null) result.firstFloor = firstFloor;
    if (scroll != null) result.scroll = scroll;
    if (isTidWhite != null) result.isTidWhite = isTidWhite;
    if (useHybridPb != null) result.useHybridPb = useHybridPb;
    if (adInfo != null) result.adInfo = adInfo;
    return result;
  }

  PbPageResponseData._();

  factory PbPageResponseData.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PbPageResponseData.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PbPageResponseData',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba.pbPage'),
      createEmptyInstance: create)
    ..aOM<$0.User>(1, _omitFieldNames ? '' : 'user', subBuilder: $0.User.create)
    ..aOM<$1.SimpleForum>(2, _omitFieldNames ? '' : 'forum',
        subBuilder: $1.SimpleForum.create)
    ..aOM<$2.Page>(3, _omitFieldNames ? '' : 'page', subBuilder: $2.Page.create)
    ..aOM<$3.Anti>(4, _omitFieldNames ? '' : 'anti', subBuilder: $3.Anti.create)
    ..aOM<$4.AddPost>(5, _omitFieldNames ? '' : 'addPost',
        subBuilder: $4.AddPost.create)
    ..pPM<$5.Post>(6, _omitFieldNames ? '' : 'postList',
        subBuilder: $5.Post.create)
    ..aI(7, _omitFieldNames ? '' : 'hasFloor')
    ..aOM<$6.ThreadInfo>(8, _omitFieldNames ? '' : 'thread',
        subBuilder: $6.ThreadInfo.create)
    ..aOM<$7.Lbs>(9, _omitFieldNames ? '' : 'location',
        subBuilder: $7.Lbs.create)
    ..aI(10, _omitFieldNames ? '' : 'isNewUrl')
    ..pPM<$8.PostBanner>(11, _omitFieldNames ? '' : 'postBanner',
        subBuilder: $8.PostBanner.create)
    ..aOM<$9.BannerList>(12, _omitFieldNames ? '' : 'bannerList',
        subBuilder: $9.BannerList.create)
    ..pPM<$0.User>(13, _omitFieldNames ? '' : 'userList',
        subBuilder: $0.User.create)
    ..aI(14, _omitFieldNames ? '' : 'serverTime')
    ..aOM<$10.NewsInfo>(15, _omitFieldNames ? '' : 'newsInfo',
        subBuilder: $10.NewsInfo.create)
    ..pPM<$11.RecommendThread>(16, _omitFieldNames ? '' : 'recommendThreads',
        subBuilder: $11.RecommendThread.create)
    ..pPM<$12.FineBannerPb>(17, _omitFieldNames ? '' : 'fineBanner',
        subBuilder: $12.FineBannerPb.create)
    ..aOM<$13.TwZhiBoAnti>(18, _omitFieldNames ? '' : 'twzhiboAnti',
        subBuilder: $13.TwZhiBoAnti.create)
    ..aOM<$14.SdkTopicThread>(19, _omitFieldNames ? '' : 'sdkTopicThread',
        subBuilder: $14.SdkTopicThread.create)
    ..aOM<$15.PbHotPost>(20, _omitFieldNames ? '' : 'hotPostList',
        subBuilder: $15.PbHotPost.create)
    ..aOM<$16.GraffitiRankListInfo>(
        21, _omitFieldNames ? '' : 'graffitiRankListInfo',
        subBuilder: $16.GraffitiRankListInfo.create)
    ..aOM<$17.AppealInfo>(22, _omitFieldNames ? '' : 'appealInfo',
        subBuilder: $17.AppealInfo.create)
    ..aOM<$18.GodCard>(23, _omitFieldNames ? '' : 'godCard',
        subBuilder: $18.GodCard.create)
    ..pPM<$19.PsRankListItem>(24, _omitFieldNames ? '' : 'playRankList',
        subBuilder: $19.PsRankListItem.create)
    ..aOM<$20.RecommendBook>(25, _omitFieldNames ? '' : 'recommendBook',
        subBuilder: $20.RecommendBook.create)
    ..aOM<$21.AlaLiveInfo>(26, _omitFieldNames ? '' : 'alaInfo',
        subBuilder: $21.AlaLiveInfo.create)
    ..aOM<$22.ForumHeadlineImgInfo>(
        27, _omitFieldNames ? '' : 'forumHeadlineImgInfo',
        subBuilder: $22.ForumHeadlineImgInfo.create)
    ..aOS(28, _omitFieldNames ? '' : 'aspShownInfo')
    ..aOM<$23.GuessLikeStruct>(29, _omitFieldNames ? '' : 'guessLike',
        subBuilder: $23.GuessLikeStruct.create)
    ..pPM<$6.ThreadInfo>(30, _omitFieldNames ? '' : 'feedThreadList',
        subBuilder: $6.ThreadInfo.create)
    ..aI(31, _omitFieldNames ? '' : 'isFollowCurrentChannel',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(32, _omitFieldNames ? '' : 'switchReadOpen')
    ..aOM<$24.FeedExtInfo>(33, _omitFieldNames ? '' : 'feedInfo',
        subBuilder: $24.FeedExtInfo.create)
    ..aOM<$25.PbTopAgreePost>(34, _omitFieldNames ? '' : 'topAgreePostList',
        subBuilder: $25.PbTopAgreePost.create)
    ..pPM<$1.SimpleForum>(35, _omitFieldNames ? '' : 'repostRecommendForumList',
        subBuilder: $1.SimpleForum.create)
    ..pPM<$1.SimpleForum>(36, _omitFieldNames ? '' : 'fromForumList',
        subBuilder: $1.SimpleForum.create)
    ..aInt64(37, _omitFieldNames ? '' : 'threadFreqNum')
    ..aOM<$5.Post>(38, _omitFieldNames ? '' : 'firstFloorPost',
        subBuilder: $5.Post.create)
    ..aOM<$1.SimpleForum>(39, _omitFieldNames ? '' : 'displayForum',
        subBuilder: $1.SimpleForum.create)
    ..pPM<$26.SimpleUser>(40, _omitFieldNames ? '' : 'newAgreeUser',
        subBuilder: $26.SimpleUser.create)
    ..aOS(41, _omitFieldNames ? '' : 'partialVisibleToast')
    ..aOM<$27.NaGuide>(42, _omitFieldNames ? '' : 'naGuide',
        subBuilder: $27.NaGuide.create)
    ..aOM<$28.PbFollowTip>(43, _omitFieldNames ? '' : 'followTip',
        subBuilder: $28.PbFollowTip.create)
    ..aOS(44, _omitFieldNames ? '' : 'foldTip')
    ..aI(45, _omitFieldNames ? '' : 'expNewsToday')
    ..aI(46, _omitFieldNames ? '' : 'expGuideToday')
    ..aOS(47, _omitFieldNames ? '' : 'multiForumText')
    ..pPM<$29.RecomTopicList>(48, _omitFieldNames ? '' : 'threadTopic',
        subBuilder: $29.RecomTopicList.create)
    ..pPM<$30.PbSortType>(49, _omitFieldNames ? '' : 'pbSortInfo',
        subBuilder: $30.PbSortType.create)
    ..aI(50, _omitFieldNames ? '' : 'sortType')
    ..aOM<$31.ManagerElection>(51, _omitFieldNames ? '' : 'managerElection',
        subBuilder: $31.ManagerElection.create)
    ..pPM<$6.ThreadInfo>(52, _omitFieldNames ? '' : 'bjhRecommend',
        subBuilder: $6.ThreadInfo.create)
    ..aOM<$32.BusinessPromotInfo>(
        53, _omitFieldNames ? '' : 'businessPromotInfo',
        subBuilder: $32.BusinessPromotInfo.create)
    ..aOM<$33.Promotion>(54, _omitFieldNames ? '' : 'promotion',
        subBuilder: $33.Promotion.create)
    ..aOM<$21.AlaLiveInfo>(55, _omitFieldNames ? '' : 'recomAlaInfo',
        subBuilder: $21.AlaLiveInfo.create)
    ..aI(56, _omitFieldNames ? '' : 'jumptotab1')
    ..aOS(57, _omitFieldNames ? '' : 'jumptotab2')
    ..aOM<$34.BusinessAccountInfo>(
        58, _omitFieldNames ? '' : 'businessAccountInfo',
        subBuilder: $34.BusinessAccountInfo.create)
    ..pPM<$6.ThreadInfo>(59, _omitFieldNames ? '' : 'recomThreadInfo',
        subBuilder: $6.ThreadInfo.create)
    ..aOM<$35.ForumRuleStatus>(60, _omitFieldNames ? '' : 'forumRule',
        subBuilder: $35.ForumRuleStatus.create)
    ..aI(61, _omitFieldNames ? '' : 'showAdsense')
    ..aI(62, _omitFieldNames ? '' : 'isBlackWhite')
    ..aI(63, _omitFieldNames ? '' : 'isOfficialForum')
    ..aOM<$36.FloatingIcon>(64, _omitFieldNames ? '' : 'floatingIcon',
        subBuilder: $36.FloatingIcon.create)
    ..aI(65, _omitFieldNames ? '' : 'isPurchase')
    ..aI(66, _omitFieldNames ? '' : 'pbNoticeType')
    ..aOS(67, _omitFieldNames ? '' : 'pbNotice')
    ..aI(68, _omitFieldNames ? '' : 'hasFoldComment')
    ..aInt64(70, _omitFieldNames ? '' : 'foldCommentNum')
    ..aOM<$5.Post>(73, _omitFieldNames ? '' : 'topAnswer',
        subBuilder: $5.Post.create)
    ..pPM<$37.FeedKV>(81, _omitFieldNames ? '' : 'logParam',
        subBuilder: $37.FeedKV.create)
    ..pPS(84, _omitFieldNames ? '' : 'limitDialogName')
    ..aI(88, _omitFieldNames ? '' : 'adShowSelect')
    ..aOS(92, _omitFieldNames ? '' : 'searchQuery')
    ..aOS(96, _omitFieldNames ? '' : 'returnPage')
    ..aOM<$5.Post>(97, _omitFieldNames ? '' : 'firstFloor',
        subBuilder: $5.Post.create)
    ..aI(100, _omitFieldNames ? '' : 'scroll', fieldType: $pb.PbFieldType.OU3)
    ..aI(101, _omitFieldNames ? '' : 'isTidWhite',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(112, _omitFieldNames ? '' : 'useHybridPb')
    ..aOS(113, _omitFieldNames ? '' : 'adInfo')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PbPageResponseData clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PbPageResponseData copyWith(void Function(PbPageResponseData) updates) =>
      super.copyWith((message) => updates(message as PbPageResponseData))
          as PbPageResponseData;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PbPageResponseData create() => PbPageResponseData._();
  @$core.override
  PbPageResponseData createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PbPageResponseData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PbPageResponseData>(create);
  static PbPageResponseData? _defaultInstance;

  @$pb.TagNumber(1)
  $0.User get user => $_getN(0);
  @$pb.TagNumber(1)
  set user($0.User value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasUser() => $_has(0);
  @$pb.TagNumber(1)
  void clearUser() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.User ensureUser() => $_ensure(0);

  @$pb.TagNumber(2)
  $1.SimpleForum get forum => $_getN(1);
  @$pb.TagNumber(2)
  set forum($1.SimpleForum value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasForum() => $_has(1);
  @$pb.TagNumber(2)
  void clearForum() => $_clearField(2);
  @$pb.TagNumber(2)
  $1.SimpleForum ensureForum() => $_ensure(1);

  @$pb.TagNumber(3)
  $2.Page get page => $_getN(2);
  @$pb.TagNumber(3)
  set page($2.Page value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasPage() => $_has(2);
  @$pb.TagNumber(3)
  void clearPage() => $_clearField(3);
  @$pb.TagNumber(3)
  $2.Page ensurePage() => $_ensure(2);

  @$pb.TagNumber(4)
  $3.Anti get anti => $_getN(3);
  @$pb.TagNumber(4)
  set anti($3.Anti value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasAnti() => $_has(3);
  @$pb.TagNumber(4)
  void clearAnti() => $_clearField(4);
  @$pb.TagNumber(4)
  $3.Anti ensureAnti() => $_ensure(3);

  @$pb.TagNumber(5)
  $4.AddPost get addPost => $_getN(4);
  @$pb.TagNumber(5)
  set addPost($4.AddPost value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasAddPost() => $_has(4);
  @$pb.TagNumber(5)
  void clearAddPost() => $_clearField(5);
  @$pb.TagNumber(5)
  $4.AddPost ensureAddPost() => $_ensure(4);

  @$pb.TagNumber(6)
  $pb.PbList<$5.Post> get postList => $_getList(5);

  @$pb.TagNumber(7)
  $core.int get hasFloor => $_getIZ(6);
  @$pb.TagNumber(7)
  set hasFloor($core.int value) => $_setSignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasHasFloor() => $_has(6);
  @$pb.TagNumber(7)
  void clearHasFloor() => $_clearField(7);

  @$pb.TagNumber(8)
  $6.ThreadInfo get thread => $_getN(7);
  @$pb.TagNumber(8)
  set thread($6.ThreadInfo value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasThread() => $_has(7);
  @$pb.TagNumber(8)
  void clearThread() => $_clearField(8);
  @$pb.TagNumber(8)
  $6.ThreadInfo ensureThread() => $_ensure(7);

  @$pb.TagNumber(9)
  $7.Lbs get location => $_getN(8);
  @$pb.TagNumber(9)
  set location($7.Lbs value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasLocation() => $_has(8);
  @$pb.TagNumber(9)
  void clearLocation() => $_clearField(9);
  @$pb.TagNumber(9)
  $7.Lbs ensureLocation() => $_ensure(8);

  @$pb.TagNumber(10)
  $core.int get isNewUrl => $_getIZ(9);
  @$pb.TagNumber(10)
  set isNewUrl($core.int value) => $_setSignedInt32(9, value);
  @$pb.TagNumber(10)
  $core.bool hasIsNewUrl() => $_has(9);
  @$pb.TagNumber(10)
  void clearIsNewUrl() => $_clearField(10);

  @$pb.TagNumber(11)
  $pb.PbList<$8.PostBanner> get postBanner => $_getList(10);

  @$pb.TagNumber(12)
  $9.BannerList get bannerList => $_getN(11);
  @$pb.TagNumber(12)
  set bannerList($9.BannerList value) => $_setField(12, value);
  @$pb.TagNumber(12)
  $core.bool hasBannerList() => $_has(11);
  @$pb.TagNumber(12)
  void clearBannerList() => $_clearField(12);
  @$pb.TagNumber(12)
  $9.BannerList ensureBannerList() => $_ensure(11);

  @$pb.TagNumber(13)
  $pb.PbList<$0.User> get userList => $_getList(12);

  @$pb.TagNumber(14)
  $core.int get serverTime => $_getIZ(13);
  @$pb.TagNumber(14)
  set serverTime($core.int value) => $_setSignedInt32(13, value);
  @$pb.TagNumber(14)
  $core.bool hasServerTime() => $_has(13);
  @$pb.TagNumber(14)
  void clearServerTime() => $_clearField(14);

  @$pb.TagNumber(15)
  $10.NewsInfo get newsInfo => $_getN(14);
  @$pb.TagNumber(15)
  set newsInfo($10.NewsInfo value) => $_setField(15, value);
  @$pb.TagNumber(15)
  $core.bool hasNewsInfo() => $_has(14);
  @$pb.TagNumber(15)
  void clearNewsInfo() => $_clearField(15);
  @$pb.TagNumber(15)
  $10.NewsInfo ensureNewsInfo() => $_ensure(14);

  @$pb.TagNumber(16)
  $pb.PbList<$11.RecommendThread> get recommendThreads => $_getList(15);

  @$pb.TagNumber(17)
  $pb.PbList<$12.FineBannerPb> get fineBanner => $_getList(16);

  @$pb.TagNumber(18)
  $13.TwZhiBoAnti get twzhiboAnti => $_getN(17);
  @$pb.TagNumber(18)
  set twzhiboAnti($13.TwZhiBoAnti value) => $_setField(18, value);
  @$pb.TagNumber(18)
  $core.bool hasTwzhiboAnti() => $_has(17);
  @$pb.TagNumber(18)
  void clearTwzhiboAnti() => $_clearField(18);
  @$pb.TagNumber(18)
  $13.TwZhiBoAnti ensureTwzhiboAnti() => $_ensure(17);

  @$pb.TagNumber(19)
  $14.SdkTopicThread get sdkTopicThread => $_getN(18);
  @$pb.TagNumber(19)
  set sdkTopicThread($14.SdkTopicThread value) => $_setField(19, value);
  @$pb.TagNumber(19)
  $core.bool hasSdkTopicThread() => $_has(18);
  @$pb.TagNumber(19)
  void clearSdkTopicThread() => $_clearField(19);
  @$pb.TagNumber(19)
  $14.SdkTopicThread ensureSdkTopicThread() => $_ensure(18);

  @$pb.TagNumber(20)
  $15.PbHotPost get hotPostList => $_getN(19);
  @$pb.TagNumber(20)
  set hotPostList($15.PbHotPost value) => $_setField(20, value);
  @$pb.TagNumber(20)
  $core.bool hasHotPostList() => $_has(19);
  @$pb.TagNumber(20)
  void clearHotPostList() => $_clearField(20);
  @$pb.TagNumber(20)
  $15.PbHotPost ensureHotPostList() => $_ensure(19);

  @$pb.TagNumber(21)
  $16.GraffitiRankListInfo get graffitiRankListInfo => $_getN(20);
  @$pb.TagNumber(21)
  set graffitiRankListInfo($16.GraffitiRankListInfo value) =>
      $_setField(21, value);
  @$pb.TagNumber(21)
  $core.bool hasGraffitiRankListInfo() => $_has(20);
  @$pb.TagNumber(21)
  void clearGraffitiRankListInfo() => $_clearField(21);
  @$pb.TagNumber(21)
  $16.GraffitiRankListInfo ensureGraffitiRankListInfo() => $_ensure(20);

  @$pb.TagNumber(22)
  $17.AppealInfo get appealInfo => $_getN(21);
  @$pb.TagNumber(22)
  set appealInfo($17.AppealInfo value) => $_setField(22, value);
  @$pb.TagNumber(22)
  $core.bool hasAppealInfo() => $_has(21);
  @$pb.TagNumber(22)
  void clearAppealInfo() => $_clearField(22);
  @$pb.TagNumber(22)
  $17.AppealInfo ensureAppealInfo() => $_ensure(21);

  @$pb.TagNumber(23)
  $18.GodCard get godCard => $_getN(22);
  @$pb.TagNumber(23)
  set godCard($18.GodCard value) => $_setField(23, value);
  @$pb.TagNumber(23)
  $core.bool hasGodCard() => $_has(22);
  @$pb.TagNumber(23)
  void clearGodCard() => $_clearField(23);
  @$pb.TagNumber(23)
  $18.GodCard ensureGodCard() => $_ensure(22);

  @$pb.TagNumber(24)
  $pb.PbList<$19.PsRankListItem> get playRankList => $_getList(23);

  @$pb.TagNumber(25)
  $20.RecommendBook get recommendBook => $_getN(24);
  @$pb.TagNumber(25)
  set recommendBook($20.RecommendBook value) => $_setField(25, value);
  @$pb.TagNumber(25)
  $core.bool hasRecommendBook() => $_has(24);
  @$pb.TagNumber(25)
  void clearRecommendBook() => $_clearField(25);
  @$pb.TagNumber(25)
  $20.RecommendBook ensureRecommendBook() => $_ensure(24);

  @$pb.TagNumber(26)
  $21.AlaLiveInfo get alaInfo => $_getN(25);
  @$pb.TagNumber(26)
  set alaInfo($21.AlaLiveInfo value) => $_setField(26, value);
  @$pb.TagNumber(26)
  $core.bool hasAlaInfo() => $_has(25);
  @$pb.TagNumber(26)
  void clearAlaInfo() => $_clearField(26);
  @$pb.TagNumber(26)
  $21.AlaLiveInfo ensureAlaInfo() => $_ensure(25);

  @$pb.TagNumber(27)
  $22.ForumHeadlineImgInfo get forumHeadlineImgInfo => $_getN(26);
  @$pb.TagNumber(27)
  set forumHeadlineImgInfo($22.ForumHeadlineImgInfo value) =>
      $_setField(27, value);
  @$pb.TagNumber(27)
  $core.bool hasForumHeadlineImgInfo() => $_has(26);
  @$pb.TagNumber(27)
  void clearForumHeadlineImgInfo() => $_clearField(27);
  @$pb.TagNumber(27)
  $22.ForumHeadlineImgInfo ensureForumHeadlineImgInfo() => $_ensure(26);

  @$pb.TagNumber(28)
  $core.String get aspShownInfo => $_getSZ(27);
  @$pb.TagNumber(28)
  set aspShownInfo($core.String value) => $_setString(27, value);
  @$pb.TagNumber(28)
  $core.bool hasAspShownInfo() => $_has(27);
  @$pb.TagNumber(28)
  void clearAspShownInfo() => $_clearField(28);

  @$pb.TagNumber(29)
  $23.GuessLikeStruct get guessLike => $_getN(28);
  @$pb.TagNumber(29)
  set guessLike($23.GuessLikeStruct value) => $_setField(29, value);
  @$pb.TagNumber(29)
  $core.bool hasGuessLike() => $_has(28);
  @$pb.TagNumber(29)
  void clearGuessLike() => $_clearField(29);
  @$pb.TagNumber(29)
  $23.GuessLikeStruct ensureGuessLike() => $_ensure(28);

  @$pb.TagNumber(30)
  $pb.PbList<$6.ThreadInfo> get feedThreadList => $_getList(29);

  @$pb.TagNumber(31)
  $core.int get isFollowCurrentChannel => $_getIZ(30);
  @$pb.TagNumber(31)
  set isFollowCurrentChannel($core.int value) => $_setUnsignedInt32(30, value);
  @$pb.TagNumber(31)
  $core.bool hasIsFollowCurrentChannel() => $_has(30);
  @$pb.TagNumber(31)
  void clearIsFollowCurrentChannel() => $_clearField(31);

  @$pb.TagNumber(32)
  $core.int get switchReadOpen => $_getIZ(31);
  @$pb.TagNumber(32)
  set switchReadOpen($core.int value) => $_setSignedInt32(31, value);
  @$pb.TagNumber(32)
  $core.bool hasSwitchReadOpen() => $_has(31);
  @$pb.TagNumber(32)
  void clearSwitchReadOpen() => $_clearField(32);

  @$pb.TagNumber(33)
  $24.FeedExtInfo get feedInfo => $_getN(32);
  @$pb.TagNumber(33)
  set feedInfo($24.FeedExtInfo value) => $_setField(33, value);
  @$pb.TagNumber(33)
  $core.bool hasFeedInfo() => $_has(32);
  @$pb.TagNumber(33)
  void clearFeedInfo() => $_clearField(33);
  @$pb.TagNumber(33)
  $24.FeedExtInfo ensureFeedInfo() => $_ensure(32);

  @$pb.TagNumber(34)
  $25.PbTopAgreePost get topAgreePostList => $_getN(33);
  @$pb.TagNumber(34)
  set topAgreePostList($25.PbTopAgreePost value) => $_setField(34, value);
  @$pb.TagNumber(34)
  $core.bool hasTopAgreePostList() => $_has(33);
  @$pb.TagNumber(34)
  void clearTopAgreePostList() => $_clearField(34);
  @$pb.TagNumber(34)
  $25.PbTopAgreePost ensureTopAgreePostList() => $_ensure(33);

  @$pb.TagNumber(35)
  $pb.PbList<$1.SimpleForum> get repostRecommendForumList => $_getList(34);

  @$pb.TagNumber(36)
  $pb.PbList<$1.SimpleForum> get fromForumList => $_getList(35);

  @$pb.TagNumber(37)
  $fixnum.Int64 get threadFreqNum => $_getI64(36);
  @$pb.TagNumber(37)
  set threadFreqNum($fixnum.Int64 value) => $_setInt64(36, value);
  @$pb.TagNumber(37)
  $core.bool hasThreadFreqNum() => $_has(36);
  @$pb.TagNumber(37)
  void clearThreadFreqNum() => $_clearField(37);

  @$pb.TagNumber(38)
  $5.Post get firstFloorPost => $_getN(37);
  @$pb.TagNumber(38)
  set firstFloorPost($5.Post value) => $_setField(38, value);
  @$pb.TagNumber(38)
  $core.bool hasFirstFloorPost() => $_has(37);
  @$pb.TagNumber(38)
  void clearFirstFloorPost() => $_clearField(38);
  @$pb.TagNumber(38)
  $5.Post ensureFirstFloorPost() => $_ensure(37);

  @$pb.TagNumber(39)
  $1.SimpleForum get displayForum => $_getN(38);
  @$pb.TagNumber(39)
  set displayForum($1.SimpleForum value) => $_setField(39, value);
  @$pb.TagNumber(39)
  $core.bool hasDisplayForum() => $_has(38);
  @$pb.TagNumber(39)
  void clearDisplayForum() => $_clearField(39);
  @$pb.TagNumber(39)
  $1.SimpleForum ensureDisplayForum() => $_ensure(38);

  @$pb.TagNumber(40)
  $pb.PbList<$26.SimpleUser> get newAgreeUser => $_getList(39);

  @$pb.TagNumber(41)
  $core.String get partialVisibleToast => $_getSZ(40);
  @$pb.TagNumber(41)
  set partialVisibleToast($core.String value) => $_setString(40, value);
  @$pb.TagNumber(41)
  $core.bool hasPartialVisibleToast() => $_has(40);
  @$pb.TagNumber(41)
  void clearPartialVisibleToast() => $_clearField(41);

  @$pb.TagNumber(42)
  $27.NaGuide get naGuide => $_getN(41);
  @$pb.TagNumber(42)
  set naGuide($27.NaGuide value) => $_setField(42, value);
  @$pb.TagNumber(42)
  $core.bool hasNaGuide() => $_has(41);
  @$pb.TagNumber(42)
  void clearNaGuide() => $_clearField(42);
  @$pb.TagNumber(42)
  $27.NaGuide ensureNaGuide() => $_ensure(41);

  @$pb.TagNumber(43)
  $28.PbFollowTip get followTip => $_getN(42);
  @$pb.TagNumber(43)
  set followTip($28.PbFollowTip value) => $_setField(43, value);
  @$pb.TagNumber(43)
  $core.bool hasFollowTip() => $_has(42);
  @$pb.TagNumber(43)
  void clearFollowTip() => $_clearField(43);
  @$pb.TagNumber(43)
  $28.PbFollowTip ensureFollowTip() => $_ensure(42);

  @$pb.TagNumber(44)
  $core.String get foldTip => $_getSZ(43);
  @$pb.TagNumber(44)
  set foldTip($core.String value) => $_setString(43, value);
  @$pb.TagNumber(44)
  $core.bool hasFoldTip() => $_has(43);
  @$pb.TagNumber(44)
  void clearFoldTip() => $_clearField(44);

  @$pb.TagNumber(45)
  $core.int get expNewsToday => $_getIZ(44);
  @$pb.TagNumber(45)
  set expNewsToday($core.int value) => $_setSignedInt32(44, value);
  @$pb.TagNumber(45)
  $core.bool hasExpNewsToday() => $_has(44);
  @$pb.TagNumber(45)
  void clearExpNewsToday() => $_clearField(45);

  @$pb.TagNumber(46)
  $core.int get expGuideToday => $_getIZ(45);
  @$pb.TagNumber(46)
  set expGuideToday($core.int value) => $_setSignedInt32(45, value);
  @$pb.TagNumber(46)
  $core.bool hasExpGuideToday() => $_has(45);
  @$pb.TagNumber(46)
  void clearExpGuideToday() => $_clearField(46);

  @$pb.TagNumber(47)
  $core.String get multiForumText => $_getSZ(46);
  @$pb.TagNumber(47)
  set multiForumText($core.String value) => $_setString(46, value);
  @$pb.TagNumber(47)
  $core.bool hasMultiForumText() => $_has(46);
  @$pb.TagNumber(47)
  void clearMultiForumText() => $_clearField(47);

  @$pb.TagNumber(48)
  $pb.PbList<$29.RecomTopicList> get threadTopic => $_getList(47);

  @$pb.TagNumber(49)
  $pb.PbList<$30.PbSortType> get pbSortInfo => $_getList(48);

  @$pb.TagNumber(50)
  $core.int get sortType => $_getIZ(49);
  @$pb.TagNumber(50)
  set sortType($core.int value) => $_setSignedInt32(49, value);
  @$pb.TagNumber(50)
  $core.bool hasSortType() => $_has(49);
  @$pb.TagNumber(50)
  void clearSortType() => $_clearField(50);

  @$pb.TagNumber(51)
  $31.ManagerElection get managerElection => $_getN(50);
  @$pb.TagNumber(51)
  set managerElection($31.ManagerElection value) => $_setField(51, value);
  @$pb.TagNumber(51)
  $core.bool hasManagerElection() => $_has(50);
  @$pb.TagNumber(51)
  void clearManagerElection() => $_clearField(51);
  @$pb.TagNumber(51)
  $31.ManagerElection ensureManagerElection() => $_ensure(50);

  @$pb.TagNumber(52)
  $pb.PbList<$6.ThreadInfo> get bjhRecommend => $_getList(51);

  @$pb.TagNumber(53)
  $32.BusinessPromotInfo get businessPromotInfo => $_getN(52);
  @$pb.TagNumber(53)
  set businessPromotInfo($32.BusinessPromotInfo value) => $_setField(53, value);
  @$pb.TagNumber(53)
  $core.bool hasBusinessPromotInfo() => $_has(52);
  @$pb.TagNumber(53)
  void clearBusinessPromotInfo() => $_clearField(53);
  @$pb.TagNumber(53)
  $32.BusinessPromotInfo ensureBusinessPromotInfo() => $_ensure(52);

  @$pb.TagNumber(54)
  $33.Promotion get promotion => $_getN(53);
  @$pb.TagNumber(54)
  set promotion($33.Promotion value) => $_setField(54, value);
  @$pb.TagNumber(54)
  $core.bool hasPromotion() => $_has(53);
  @$pb.TagNumber(54)
  void clearPromotion() => $_clearField(54);
  @$pb.TagNumber(54)
  $33.Promotion ensurePromotion() => $_ensure(53);

  @$pb.TagNumber(55)
  $21.AlaLiveInfo get recomAlaInfo => $_getN(54);
  @$pb.TagNumber(55)
  set recomAlaInfo($21.AlaLiveInfo value) => $_setField(55, value);
  @$pb.TagNumber(55)
  $core.bool hasRecomAlaInfo() => $_has(54);
  @$pb.TagNumber(55)
  void clearRecomAlaInfo() => $_clearField(55);
  @$pb.TagNumber(55)
  $21.AlaLiveInfo ensureRecomAlaInfo() => $_ensure(54);

  @$pb.TagNumber(56)
  $core.int get jumptotab1 => $_getIZ(55);
  @$pb.TagNumber(56)
  set jumptotab1($core.int value) => $_setSignedInt32(55, value);
  @$pb.TagNumber(56)
  $core.bool hasJumptotab1() => $_has(55);
  @$pb.TagNumber(56)
  void clearJumptotab1() => $_clearField(56);

  @$pb.TagNumber(57)
  $core.String get jumptotab2 => $_getSZ(56);
  @$pb.TagNumber(57)
  set jumptotab2($core.String value) => $_setString(56, value);
  @$pb.TagNumber(57)
  $core.bool hasJumptotab2() => $_has(56);
  @$pb.TagNumber(57)
  void clearJumptotab2() => $_clearField(57);

  @$pb.TagNumber(58)
  $34.BusinessAccountInfo get businessAccountInfo => $_getN(57);
  @$pb.TagNumber(58)
  set businessAccountInfo($34.BusinessAccountInfo value) =>
      $_setField(58, value);
  @$pb.TagNumber(58)
  $core.bool hasBusinessAccountInfo() => $_has(57);
  @$pb.TagNumber(58)
  void clearBusinessAccountInfo() => $_clearField(58);
  @$pb.TagNumber(58)
  $34.BusinessAccountInfo ensureBusinessAccountInfo() => $_ensure(57);

  @$pb.TagNumber(59)
  $pb.PbList<$6.ThreadInfo> get recomThreadInfo => $_getList(58);

  @$pb.TagNumber(60)
  $35.ForumRuleStatus get forumRule => $_getN(59);
  @$pb.TagNumber(60)
  set forumRule($35.ForumRuleStatus value) => $_setField(60, value);
  @$pb.TagNumber(60)
  $core.bool hasForumRule() => $_has(59);
  @$pb.TagNumber(60)
  void clearForumRule() => $_clearField(60);
  @$pb.TagNumber(60)
  $35.ForumRuleStatus ensureForumRule() => $_ensure(59);

  @$pb.TagNumber(61)
  $core.int get showAdsense => $_getIZ(60);
  @$pb.TagNumber(61)
  set showAdsense($core.int value) => $_setSignedInt32(60, value);
  @$pb.TagNumber(61)
  $core.bool hasShowAdsense() => $_has(60);
  @$pb.TagNumber(61)
  void clearShowAdsense() => $_clearField(61);

  @$pb.TagNumber(62)
  $core.int get isBlackWhite => $_getIZ(61);
  @$pb.TagNumber(62)
  set isBlackWhite($core.int value) => $_setSignedInt32(61, value);
  @$pb.TagNumber(62)
  $core.bool hasIsBlackWhite() => $_has(61);
  @$pb.TagNumber(62)
  void clearIsBlackWhite() => $_clearField(62);

  @$pb.TagNumber(63)
  $core.int get isOfficialForum => $_getIZ(62);
  @$pb.TagNumber(63)
  set isOfficialForum($core.int value) => $_setSignedInt32(62, value);
  @$pb.TagNumber(63)
  $core.bool hasIsOfficialForum() => $_has(62);
  @$pb.TagNumber(63)
  void clearIsOfficialForum() => $_clearField(63);

  @$pb.TagNumber(64)
  $36.FloatingIcon get floatingIcon => $_getN(63);
  @$pb.TagNumber(64)
  set floatingIcon($36.FloatingIcon value) => $_setField(64, value);
  @$pb.TagNumber(64)
  $core.bool hasFloatingIcon() => $_has(63);
  @$pb.TagNumber(64)
  void clearFloatingIcon() => $_clearField(64);
  @$pb.TagNumber(64)
  $36.FloatingIcon ensureFloatingIcon() => $_ensure(63);

  @$pb.TagNumber(65)
  $core.int get isPurchase => $_getIZ(64);
  @$pb.TagNumber(65)
  set isPurchase($core.int value) => $_setSignedInt32(64, value);
  @$pb.TagNumber(65)
  $core.bool hasIsPurchase() => $_has(64);
  @$pb.TagNumber(65)
  void clearIsPurchase() => $_clearField(65);

  @$pb.TagNumber(66)
  $core.int get pbNoticeType => $_getIZ(65);
  @$pb.TagNumber(66)
  set pbNoticeType($core.int value) => $_setSignedInt32(65, value);
  @$pb.TagNumber(66)
  $core.bool hasPbNoticeType() => $_has(65);
  @$pb.TagNumber(66)
  void clearPbNoticeType() => $_clearField(66);

  @$pb.TagNumber(67)
  $core.String get pbNotice => $_getSZ(66);
  @$pb.TagNumber(67)
  set pbNotice($core.String value) => $_setString(66, value);
  @$pb.TagNumber(67)
  $core.bool hasPbNotice() => $_has(66);
  @$pb.TagNumber(67)
  void clearPbNotice() => $_clearField(67);

  @$pb.TagNumber(68)
  $core.int get hasFoldComment => $_getIZ(67);
  @$pb.TagNumber(68)
  set hasFoldComment($core.int value) => $_setSignedInt32(67, value);
  @$pb.TagNumber(68)
  $core.bool hasHasFoldComment() => $_has(67);
  @$pb.TagNumber(68)
  void clearHasFoldComment() => $_clearField(68);

  @$pb.TagNumber(70)
  $fixnum.Int64 get foldCommentNum => $_getI64(68);
  @$pb.TagNumber(70)
  set foldCommentNum($fixnum.Int64 value) => $_setInt64(68, value);
  @$pb.TagNumber(70)
  $core.bool hasFoldCommentNum() => $_has(68);
  @$pb.TagNumber(70)
  void clearFoldCommentNum() => $_clearField(70);

  @$pb.TagNumber(73)
  $5.Post get topAnswer => $_getN(69);
  @$pb.TagNumber(73)
  set topAnswer($5.Post value) => $_setField(73, value);
  @$pb.TagNumber(73)
  $core.bool hasTopAnswer() => $_has(69);
  @$pb.TagNumber(73)
  void clearTopAnswer() => $_clearField(73);
  @$pb.TagNumber(73)
  $5.Post ensureTopAnswer() => $_ensure(69);

  @$pb.TagNumber(81)
  $pb.PbList<$37.FeedKV> get logParam => $_getList(70);

  @$pb.TagNumber(84)
  $pb.PbList<$core.String> get limitDialogName => $_getList(71);

  @$pb.TagNumber(88)
  $core.int get adShowSelect => $_getIZ(72);
  @$pb.TagNumber(88)
  set adShowSelect($core.int value) => $_setSignedInt32(72, value);
  @$pb.TagNumber(88)
  $core.bool hasAdShowSelect() => $_has(72);
  @$pb.TagNumber(88)
  void clearAdShowSelect() => $_clearField(88);

  @$pb.TagNumber(92)
  $core.String get searchQuery => $_getSZ(73);
  @$pb.TagNumber(92)
  set searchQuery($core.String value) => $_setString(73, value);
  @$pb.TagNumber(92)
  $core.bool hasSearchQuery() => $_has(73);
  @$pb.TagNumber(92)
  void clearSearchQuery() => $_clearField(92);

  @$pb.TagNumber(96)
  $core.String get returnPage => $_getSZ(74);
  @$pb.TagNumber(96)
  set returnPage($core.String value) => $_setString(74, value);
  @$pb.TagNumber(96)
  $core.bool hasReturnPage() => $_has(74);
  @$pb.TagNumber(96)
  void clearReturnPage() => $_clearField(96);

  @$pb.TagNumber(97)
  $5.Post get firstFloor => $_getN(75);
  @$pb.TagNumber(97)
  set firstFloor($5.Post value) => $_setField(97, value);
  @$pb.TagNumber(97)
  $core.bool hasFirstFloor() => $_has(75);
  @$pb.TagNumber(97)
  void clearFirstFloor() => $_clearField(97);
  @$pb.TagNumber(97)
  $5.Post ensureFirstFloor() => $_ensure(75);

  @$pb.TagNumber(100)
  $core.int get scroll => $_getIZ(76);
  @$pb.TagNumber(100)
  set scroll($core.int value) => $_setUnsignedInt32(76, value);
  @$pb.TagNumber(100)
  $core.bool hasScroll() => $_has(76);
  @$pb.TagNumber(100)
  void clearScroll() => $_clearField(100);

  @$pb.TagNumber(101)
  $core.int get isTidWhite => $_getIZ(77);
  @$pb.TagNumber(101)
  set isTidWhite($core.int value) => $_setUnsignedInt32(77, value);
  @$pb.TagNumber(101)
  $core.bool hasIsTidWhite() => $_has(77);
  @$pb.TagNumber(101)
  void clearIsTidWhite() => $_clearField(101);

  @$pb.TagNumber(112)
  $core.int get useHybridPb => $_getIZ(78);
  @$pb.TagNumber(112)
  set useHybridPb($core.int value) => $_setSignedInt32(78, value);
  @$pb.TagNumber(112)
  $core.bool hasUseHybridPb() => $_has(78);
  @$pb.TagNumber(112)
  void clearUseHybridPb() => $_clearField(112);

  @$pb.TagNumber(113)
  $core.String get adInfo => $_getSZ(79);
  @$pb.TagNumber(113)
  set adInfo($core.String value) => $_setString(79, value);
  @$pb.TagNumber(113)
  $core.bool hasAdInfo() => $_has(79);
  @$pb.TagNumber(113)
  void clearAdInfo() => $_clearField(113);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
