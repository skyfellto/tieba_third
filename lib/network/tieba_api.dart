import 'dart:convert';
import 'dart:math';
import 'package:fixnum/fixnum.dart';
import 'package:crypto/crypto.dart';
import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tieba_third/utils/device_info.dart';
import 'package:tieba_third/utils/sofire_utils.dart';
import 'package:tieba_third/utils/user_manager.dart';
import 'package:tieba_third/utils/personalization_manager.dart';
import '../models/post_item.dart';
import '../models/forum_item.dart';
import '../models/user_profile_data.dart';
import '../generated/CommonReq.pb.dart';
import '../generated/CommonRequest.pb.dart';
import '../generated/Personalized.pb.dart';
import '../generated/ForumGuide/ForumGuideRequest.pb.dart';
import '../generated/ForumGuide/ForumGuideRequestData.pb.dart';
import '../generated/ForumGuide/ForumGuideResponse.pb.dart';
import '../generated/PbPage/PbPageRequest.pb.dart';
import '../generated/PbPage/PbPageRequestData.pb.dart';
import '../generated/PbPage/PbPageResponse.pb.dart';
import '../generated/PbPage/PbPageResponseData.pb.dart';
import '../generated/PbPage/AdParam.pb.dart';
import '../generated/AppPosInfo.pb.dart';
import '../generated/PbFloor/PbFloorRequest.pb.dart';
import '../generated/PbFloor/PbFloorRequestData.pb.dart';
import '../generated/PbFloor/PbFloorResponse.pb.dart';
import '../generated/PbFloor/PbFloorResponseData.pb.dart';
import '../generated/GetForumDetail/GetForumDetailRequest.pb.dart';
import '../generated/GetForumDetail/GetForumDetailRequestData.pb.dart';
import '../generated/GetForumDetail/GetForumDetailResponse.pb.dart';
import '../generated/GetForumDetail/GetForumDetailResponseData.pb.dart';
import '../generated/GetLevelInfo/GetLevelInfoRequest.pb.dart';
import '../generated/GetLevelInfo/GetLevelInfoRequestData.pb.dart';
import '../generated/GetLevelInfo/GetLevelInfoResponse.pb.dart';
import '../generated/GetLevelInfo/GetLevelInfoResponseData.pb.dart';
import '../generated/FrsPage/FrsPage.pb.dart';
import '../generated/FrsPage/AdParam.pb.dart' as frs_ad_param;
import '../generated/ThreadList/ThreadList.pb.dart';
import '../generated/ThreadList/AdParam.pb.dart' as tl_ad_param;
import '../generated/Profile/ProfileRequest.pb.dart';
import '../generated/Profile/ProfileRequestData.pb.dart';
import '../generated/Profile/ProfileResponse.pb.dart';
import '../generated/UserPost/UserPostRequest.pb.dart';
import '../generated/UserPost/UserPostRequestData.pb.dart';
import '../generated/UserPost/UserPostResponse.pb.dart';
import '../generated/PostInfoList.pb.dart';
import '../generated/SearchSug/SearchSugRequest.pb.dart';
import '../generated/SearchSug/SearchSugRequestData.pb.dart';
import '../generated/SearchSug/SearchSugResponse.pb.dart';
import '../generated/SearchSug/SearchSugResponseData.pb.dart';
import '../generated/VoteRequest.pb.dart';
import '../generated/VoteResponse.pb.dart';
import '../generated/AgreeMe/AgreeMeReqIdl.pb.dart';
import '../generated/AgreeMe/AgreeMeResIdl.pb.dart';
import '../generated/AgreeMe/DataReq.pb.dart';
import '../generated/AgreeMe/DataRes.pb.dart';
import '../generated/ReplyMe/ReplyMeReqIdl.pb.dart';
import '../generated/ReplyMe/ReplyMeResIdl.pb.dart';
import '../generated/ReplyMe/DataReq.pb.dart' as reply_req;
import '../generated/ReplyMe/DataRes.pb.dart' as reply;

part 'tieba_api_shared.dart';
part 'tieba_api_auth.dart';
part 'tieba_api_feed.dart';
part 'tieba_api_post_detail.dart';
part 'tieba_api_forum.dart';
part 'tieba_api_search.dart';
part 'tieba_api_interact.dart';
part 'tieba_api_user.dart';
part 'tieba_api_agreeme.dart';
part 'tieba_api_replyme.dart';
part 'tieba_api_atme.dart';
part 'tieba_api_msgcount.dart';

class TiebaApi {
  static String get clientVersion => _clientVersion;
  static String? get syncSampleId => _syncSampleId;

  static Future<void> loadSyncData() => _loadSyncData();
  static Future<void> saveSyncData(String clientId, String sampleId) =>
      _saveSyncData(clientId, sampleId);
  static Future<bool> isLikeOnCooldown() => _isLikeOnCooldown();

  static Future<Map<String, dynamic>?> loginAndGetUserInfo({
    required String bduss,
    required String stoken,
    String? customCookie,
  }) => _AuthApi.loginAndGetUserInfo(
    bduss: bduss,
    stoken: stoken,
    customCookie: customCookie,
  );

  static Future<Map<String, String>?> fetchSync({
    required String bduss,
    required String stoken,
  }) => _AuthApi.fetchSync(bduss: bduss, stoken: stoken);

  static Future<List<PostItem>> fetchPersonalizedThreads({
    required String bduss,
    required String stoken,
    int page = 1,
    int loadType = 1,
  }) => _FeedApi.fetchPersonalizedThreads(
    bduss: bduss,
    stoken: stoken,
    page: page,
    loadType: loadType,
  );

  static Future<List<ForumItem>> fetchForumRecommend({
    required String bduss,
    required String stoken,
  }) => _FeedApi.fetchForumRecommend(bduss: bduss, stoken: stoken);

  static Future<int?> likeAgree({
    required String bduss,
    required String stoken,
    required String tbs,
    required String userId,
    required String threadId,
    String postId = '',
    String forumId = '',
    int objType = 3,
    int opType = 0,
    bool allowAlreadyLiked = false,
  }) => _InteractApi.likeAgree(
    bduss: bduss,
    stoken: stoken,
    tbs: tbs,
    userId: userId,
    threadId: threadId,
    postId: postId,
    forumId: forumId,
    objType: objType,
    opType: opType,
    allowAlreadyLiked: allowAlreadyLiked,
  );

  static Future<PbPageResponseData?> fetchPostDetail({
    required String bduss,
    required String stoken,
    required String tbs,
    required String threadId,
    int page = 1,
    String postId = '0',
    bool seeLz = false,
    int sortType = 0,
    String lastPid = '0',
    String forumId = '0',
    String stType = 'pb',
  }) => _PostDetailApi.fetchPostDetail(
    bduss: bduss,
    stoken: stoken,
    tbs: tbs,
    threadId: threadId,
    page: page,
    postId: postId,
    seeLz: seeLz,
    sortType: sortType,
    lastPid: lastPid,
    forumId: forumId,
    stType: stType,
  );

  static Future<PbFloorResponseData?> fetchSubReplies({
    required String bduss,
    required String stoken,
    required String threadId,
    required String postId,
    int page = 1,
    int requestTimes = 0,
  }) => _PostDetailApi.fetchSubReplies(
    bduss: bduss,
    stoken: stoken,
    threadId: threadId,
    postId: postId,
    page: page,
    requestTimes: requestTimes,
  );

  static Future<GetForumDetailResponseData?> fetchForumDetail({
    required String bduss,
    required String stoken,
    required String forumId,
    required String userId,
  }) => _ForumApi.fetchForumDetail(
    bduss: bduss,
    stoken: stoken,
    forumId: forumId,
    userId: userId,
  );

  static Future<GetLevelInfoResponseData?> fetchLevelInfo({
    required String bduss,
    required String stoken,
    required String forumId,
    required String userId,
  }) => _ForumApi.fetchLevelInfo(
    bduss: bduss,
    stoken: stoken,
    forumId: forumId,
    userId: userId,
  );

  static Future<FrsPageResponseData?> fetchFrsPage({
    required String bduss,
    required String stoken,
    required String forumName,
    required String userId,
    int page = 1,
    int loadType = 1,
    int sortType = 0,
    int isGood = 0,
  }) => _ForumApi.fetchFrsPage(
    bduss: bduss,
    stoken: stoken,
    forumName: forumName,
    userId: userId,
    page: page,
    loadType: loadType,
    sortType: sortType,
    isGood: isGood,
  );

  static Future<ThreadListResponseData?> fetchThreadList({
    required String bduss,
    required String stoken,
    required String forumName,
    required String forumId,
    required String userId,
    required String threadIds,
    int sortType = 0,
    int page = 1,
  }) => _ForumApi.fetchThreadList(
    bduss: bduss,
    stoken: stoken,
    forumName: forumName,
    forumId: forumId,
    userId: userId,
    threadIds: threadIds,
    sortType: sortType,
    page: page,
  );

  static Future<Map<String, dynamic>?> signForum({
    required String bduss,
    required String stoken,
    required String tbs,
    required String forumId,
    required String forumName,
  }) => _ForumApi.signForum(
    bduss: bduss,
    stoken: stoken,
    tbs: tbs,
    forumId: forumId,
    forumName: forumName,
  );

  static Future<Map<String, dynamic>?> likeForum({
    required String bduss,
    required String stoken,
    required String tbs,
    required String forumId,
    required String forumName,
  }) => _ForumApi.likeForum(
    bduss: bduss,
    stoken: stoken,
    tbs: tbs,
    forumId: forumId,
    forumName: forumName,
  );

  static Future<bool> unlikeForum({
    required String bduss,
    required String stoken,
    required String tbs,
    required String forumId,
    required String forumName,
  }) => _ForumApi.unlikeForum(
    bduss: bduss,
    stoken: stoken,
    tbs: tbs,
    forumId: forumId,
    forumName: forumName,
  );

  static Future<Map<String, dynamic>?> mSign({
    required String bduss,
    required String stoken,
    required String tbs,
    required String forumIds,
    required String userId,
    required String baiduId,
  }) => _ForumApi.mSign(
    bduss: bduss,
    stoken: stoken,
    tbs: tbs,
    forumIds: forumIds,
    userId: userId,
    baiduId: baiduId,
  );

  static Future<SearchSugResponseData?> fetchSearchSug({
    required String bduss,
    required String stoken,
    required String word,
    String isforum = '0',
  }) => _ForumApi.fetchSearchSug(
    bduss: bduss,
    stoken: stoken,
    word: word,
    isforum: isforum,
  );

  static Future<Map<String, dynamic>?> fetchBawuList({
    required String bduss,
    required String stoken,
    required String fid,
  }) => _ForumApi.fetchBawuList(bduss: bduss, stoken: stoken, fid: fid);

  static Future<Map<String, dynamic>?> searchForum(
    String keyword, {
    String? bduss,
  }) => _SearchApi.searchForum(keyword, bduss: bduss);

  static Future<Map<String, dynamic>?> searchThread({
    required String keyword,
    int page = 1,
    String? bduss,
  }) => _SearchApi.searchThread(keyword: keyword, page: page, bduss: bduss);

  static Future<Map<String, dynamic>?> searchUser(
    String keyword, {
    String? bduss,
  }) => _SearchApi.searchUser(keyword, bduss: bduss);

  static Future<Map<String, dynamic>?> searchForumThreads({
    required String keyword,
    required String fname,
    int page = 1,
    int rn = 20,
    int st = 1,
    int tt = 2,
    String? bduss,
  }) => _SearchApi.searchForumThreads(
    keyword: keyword,
    fname: fname,
    page: page,
    rn: rn,
    st: st,
    tt: tt,
    bduss: bduss,
  );

  static Future<bool> addStore({
    required String bduss,
    required String stoken,
    required String threadId,
    required String userId,
    required String tbs,
    required String postId,
    required String baiduid,
  }) => _InteractApi.addStore(
    bduss: bduss,
    stoken: stoken,
    threadId: threadId,
    userId: userId,
    tbs: tbs,
    postId: postId,
    baiduid: baiduid,
  );

  static Future<bool> removeStore({
    required String bduss,
    required String stoken,
    required String threadId,
    required String userId,
    required String tbs,
    required String baiduid,
    String forumId = 'null',
  }) => _InteractApi.removeStore(
    bduss: bduss,
    stoken: stoken,
    threadId: threadId,
    userId: userId,
    tbs: tbs,
    forumId: forumId,
    baiduid: baiduid,
  );

  static Future<List<Map<String, dynamic>>> fetchThreadStore({
    required String bduss,
    required String stoken,
    required String baiduid,
    int rn = 20,
    int offset = 0,
    String userId = '',
  }) => _InteractApi.fetchThreadStore(
    bduss: bduss,
    stoken: stoken,
    rn: rn,
    offset: offset,
    userId: userId,
    baiduid: baiduid,
  );

  static Future<bool> voteSubmit({
    required String bduss,
    required String stoken,
    required String tid,
    required String optionIds,
    required String fid,
    String? userId = "7019922344",
  }) => _InteractApi.voteSubmit(
    bduss: bduss,
    stoken: stoken,
    tid: tid,
    optionIds: optionIds,
    fid: fid,
    userId: userId,
  );

  static Future<List<PostItem>> fetchUserPosts({
    required String bduss,
    required String stoken,
    required String uid,
    int page = 1,
    int isThread = 1,
    int rn = 20,
  }) => _UserApi.fetchUserPosts(
    bduss: bduss,
    stoken: stoken,
    uid: uid,
    page: page,
    isThread: isThread,
    rn: rn,
  );

  static Future<(UserProfileData?, List<ForumItem>)> fetchUserProfilePb({
    required String bduss,
    required String stoken,
    required String uid,
  }) => _UserApi.fetchUserProfilePb(bduss: bduss, stoken: stoken, uid: uid);

  static Future<List<PostItem>> fetchUserPostsPb({
    required String bduss,
    required String stoken,
    required String uid,
    int page = 1,
    int rn = 20,
    int isThread = 1,
    Map<String, String>? forumAvatarMap,
  }) => _UserApi.fetchUserPostsPb(
    bduss: bduss,
    stoken: stoken,
    uid: uid,
    page: page,
    rn: rn,
    isThread: isThread,
    forumAvatarMap: forumAvatarMap,
  );

  static Future<List<PostInfoList>> fetchUserRepliesPb({
    required String bduss,
    required String stoken,
    required String uid,
    int page = 1,
    int rn = 20,
  }) => _UserApi.fetchUserRepliesPb(
    bduss: bduss,
    stoken: stoken,
    uid: uid,
    page: page,
    rn: rn,
  );

  static Future<List<ForumItem>> fetchUserLikeForums({
    required String bduss,
    required String stoken,
    required String uid,
    required String baiduid,
    String? friendUid,
    int pageNo = 1,
    int pageSize = 50,
  }) => _UserApi.fetchUserLikeForums(
    bduss: bduss,
    stoken: stoken,
    uid: uid,
    friendUid: friendUid,
    pageNo: pageNo,
    pageSize: pageSize,
    baiduid: baiduid,
  );

  static Future<Map<String, dynamic>?> fetchLikedPosts({
    required String bduss,
    required String stoken,
    required String tbs,
    required int tabId,
    required int page,
    int rn = 20,
  }) => _UserApi.fetchLikedPosts(
    bduss: bduss,
    stoken: stoken,
    tbs: tbs,
    tabId: tabId,
    page: page,
    rn: rn,
  );

  static Future<Map<String, dynamic>?> fetchFansList({
    required String bduss,
    required String stoken,
    required String tbs,
    required String uid,
    int pn = 1,
  }) => _UserApi.fetchFansList(
    bduss: bduss,
    stoken: stoken,
    tbs: tbs,
    uid: uid,
    pn: pn,
  );

  static Future<Map<String, dynamic>?> fetchFollowList({
    required String bduss,
    required String stoken,
    required String tbs,
    required String uid,
    int pn = 1,
  }) => _UserApi.fetchFollowList(
    bduss: bduss,
    stoken: stoken,
    tbs: tbs,
    uid: uid,
    pn: pn,
  );

  /// 获取点赞消息列表
  static Future<DataRes?> fetchAgreeMe({
    required String bduss,
    required String stoken,
    required String userId,
    Int64 id = Int64.ZERO,
    int rn = 20,
  }) => _AgreeMeApi.fetchAgreeMe(
    bduss: bduss,
    stoken: stoken,
    userId: userId,
    id: id,
    rn: rn,
  );

  /// 获取回复消息列表
  static Future<reply.DataRes?> fetchReplyMe({
    required String bduss,
    required String stoken,
    required String userId,
    int pn = 1,
    String ids = '0',
    int isFirst = 1,
  }) => _ReplyMeApi.fetchReplyMe(
    bduss: bduss,
    stoken: stoken,
    userId: userId,
    pn: pn,
    ids: ids,
    isFirst: isFirst,
  );

  /// 获取@我的消息列表
  static Future<Map<String, dynamic>?> fetchAtMe({
    required String bduss,
    required String stoken,
    required String uid,
    int pn = 1,
    String tid = '0',
  }) => _AtMeApi.fetchAtMe(
    bduss: bduss,
    stoken: stoken,
    uid: uid,
    pn: pn,
    tid: tid,
  );

  /// 获取用户消息未读数
  static Future<Map<String, dynamic>?> fetchMessageCounts({
    required String bduss,
    required String stoken,
  }) => _MsgCountApi.fetchMessageCounts(
    bduss: bduss,
    stoken: stoken,
  );
}
