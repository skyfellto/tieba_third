// This is a generated file - do not edit.
//
// Generated from Post.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'ActPost.pb.dart' as $9;
import 'AddPostList.pb.dart' as $3;
import 'Advertisement.pb.dart' as $21;
import 'Agree.pb.dart' as $16;
import 'DealInfo.pb.dart' as $15;
import 'HeadItem.pb.dart' as $19;
import 'Item.pb.dart' as $20;
import 'Lbs.pb.dart' as $1;
import 'NovelInfo.pb.dart' as $22;
import 'OriginThreadInfo.pb.dart' as $18;
import 'PbContent.pb.dart' as $0;
import 'PbPostZan.pb.dart' as $12;
import 'PbPresent.pb.dart' as $10;
import 'SignatureData.pb.dart' as $4;
import 'SimpleForum.pb.dart' as $17;
import 'SkinInfo.pb.dart' as $14;
import 'SubPost.pb.dart' as $2;
import 'TPointPost.pb.dart' as $8;
import 'TailInfo.pb.dart' as $5;
import 'TogetherHi.pb.dart' as $13;
import 'User.pb.dart' as $6;
import 'VideoInfo.pb.dart' as $11;
import 'Zan.pb.dart' as $7;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class Post extends $pb.GeneratedMessage {
  factory Post({
    $fixnum.Int64? id,
    $core.String? title,
    $core.int? floor,
    $core.int? time,
    $core.Iterable<$0.PbContent>? content,
    $core.Iterable<$core.String>? arrVideo,
    $1.Lbs? lbsInfo,
    $core.int? isVote,
    $core.int? isVoice,
    $core.int? isNtitle,
    $core.int? isBub,
    $core.String? voteCrypt,
    $core.int? subPostNumber,
    $core.String? timeEx,
    $2.SubPost? subPostList,
    $3.AddPostList? addPostList,
    $core.String? bimgUrl,
    $core.String? iosBimgFormat,
    $fixnum.Int64? authorId,
    $core.int? addPostNumber,
    $4.SignatureData? signature,
    $5.TailInfo? tailInfo,
    $6.User? author,
    $7.Zan? zan,
    $core.int? storecount,
    $8.TPointPost? tpointPost,
    $9.ActPost? actPost,
    $10.PbPresent? present,
    $11.VideoInfo? videoInfo,
    $12.PbPostZan? postZan,
    $core.int? isHotPost,
    $core.Iterable<$5.TailInfo>? extTails,
    $13.TogetherHi? highTogether,
    $14.SkinInfo? skinInfo,
    $15.DealInfo? pbDealInfo,
    $core.String? legoCard,
    $16.Agree? agree,
    $17.SimpleForum? fromForum,
    $core.int? isPostVisible,
    $core.int? needLog,
    $core.int? imgNumAbtest,
    $18.OriginThreadInfo? originThreadInfo,
    $core.int? isFold,
    $core.String? foldTip,
    $core.int? isTopAgreePost,
    $fixnum.Int64? tid,
    $core.int? showSquared,
    $core.int? isBjh,
    $core.String? quoteId,
    $core.int? isWonderfulPost,
    $core.Iterable<$19.HeadItem>? itemStar,
    $20.Item? item,
    $20.Item? outerItem,
    $21.Advertisement? advertisement,
    $core.int? foldCommentStatus,
    $core.String? foldCommentApplyUrl,
    $22.NovelInfo? novelInfo,
    $core.String? dynamicUrl,
    $core.String? rumorSourceImg,
    $core.int? shieldIcon,
    $core.String? iconUrl,
    $core.String? toutiaoCardTag,
    $core.String? toutiaoCardTagColor,
    $core.int? isBotReply,
    $core.String? botReplyContent,
    $core.Iterable<$0.PbContent>? picContent,
    $core.Iterable<$0.PbContent>? noPicContent,
    $core.String? iosBUrl,
    $core.String? footer,
    $core.int? bdtUserAdopt,
    $core.String? tmoney,
    $core.int? adoptStatus,
    $core.int? isAdThreadPost,
    $core.String? contentStatement,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (title != null) result.title = title;
    if (floor != null) result.floor = floor;
    if (time != null) result.time = time;
    if (content != null) result.content.addAll(content);
    if (arrVideo != null) result.arrVideo.addAll(arrVideo);
    if (lbsInfo != null) result.lbsInfo = lbsInfo;
    if (isVote != null) result.isVote = isVote;
    if (isVoice != null) result.isVoice = isVoice;
    if (isNtitle != null) result.isNtitle = isNtitle;
    if (isBub != null) result.isBub = isBub;
    if (voteCrypt != null) result.voteCrypt = voteCrypt;
    if (subPostNumber != null) result.subPostNumber = subPostNumber;
    if (timeEx != null) result.timeEx = timeEx;
    if (subPostList != null) result.subPostList = subPostList;
    if (addPostList != null) result.addPostList = addPostList;
    if (bimgUrl != null) result.bimgUrl = bimgUrl;
    if (iosBimgFormat != null) result.iosBimgFormat = iosBimgFormat;
    if (authorId != null) result.authorId = authorId;
    if (addPostNumber != null) result.addPostNumber = addPostNumber;
    if (signature != null) result.signature = signature;
    if (tailInfo != null) result.tailInfo = tailInfo;
    if (author != null) result.author = author;
    if (zan != null) result.zan = zan;
    if (storecount != null) result.storecount = storecount;
    if (tpointPost != null) result.tpointPost = tpointPost;
    if (actPost != null) result.actPost = actPost;
    if (present != null) result.present = present;
    if (videoInfo != null) result.videoInfo = videoInfo;
    if (postZan != null) result.postZan = postZan;
    if (isHotPost != null) result.isHotPost = isHotPost;
    if (extTails != null) result.extTails.addAll(extTails);
    if (highTogether != null) result.highTogether = highTogether;
    if (skinInfo != null) result.skinInfo = skinInfo;
    if (pbDealInfo != null) result.pbDealInfo = pbDealInfo;
    if (legoCard != null) result.legoCard = legoCard;
    if (agree != null) result.agree = agree;
    if (fromForum != null) result.fromForum = fromForum;
    if (isPostVisible != null) result.isPostVisible = isPostVisible;
    if (needLog != null) result.needLog = needLog;
    if (imgNumAbtest != null) result.imgNumAbtest = imgNumAbtest;
    if (originThreadInfo != null) result.originThreadInfo = originThreadInfo;
    if (isFold != null) result.isFold = isFold;
    if (foldTip != null) result.foldTip = foldTip;
    if (isTopAgreePost != null) result.isTopAgreePost = isTopAgreePost;
    if (tid != null) result.tid = tid;
    if (showSquared != null) result.showSquared = showSquared;
    if (isBjh != null) result.isBjh = isBjh;
    if (quoteId != null) result.quoteId = quoteId;
    if (isWonderfulPost != null) result.isWonderfulPost = isWonderfulPost;
    if (itemStar != null) result.itemStar.addAll(itemStar);
    if (item != null) result.item = item;
    if (outerItem != null) result.outerItem = outerItem;
    if (advertisement != null) result.advertisement = advertisement;
    if (foldCommentStatus != null) result.foldCommentStatus = foldCommentStatus;
    if (foldCommentApplyUrl != null)
      result.foldCommentApplyUrl = foldCommentApplyUrl;
    if (novelInfo != null) result.novelInfo = novelInfo;
    if (dynamicUrl != null) result.dynamicUrl = dynamicUrl;
    if (rumorSourceImg != null) result.rumorSourceImg = rumorSourceImg;
    if (shieldIcon != null) result.shieldIcon = shieldIcon;
    if (iconUrl != null) result.iconUrl = iconUrl;
    if (toutiaoCardTag != null) result.toutiaoCardTag = toutiaoCardTag;
    if (toutiaoCardTagColor != null)
      result.toutiaoCardTagColor = toutiaoCardTagColor;
    if (isBotReply != null) result.isBotReply = isBotReply;
    if (botReplyContent != null) result.botReplyContent = botReplyContent;
    if (picContent != null) result.picContent.addAll(picContent);
    if (noPicContent != null) result.noPicContent.addAll(noPicContent);
    if (iosBUrl != null) result.iosBUrl = iosBUrl;
    if (footer != null) result.footer = footer;
    if (bdtUserAdopt != null) result.bdtUserAdopt = bdtUserAdopt;
    if (tmoney != null) result.tmoney = tmoney;
    if (adoptStatus != null) result.adoptStatus = adoptStatus;
    if (isAdThreadPost != null) result.isAdThreadPost = isAdThreadPost;
    if (contentStatement != null) result.contentStatement = contentStatement;
    return result;
  }

  Post._();

  factory Post.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Post.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Post',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(2, _omitFieldNames ? '' : 'title')
    ..aI(3, _omitFieldNames ? '' : 'floor', fieldType: $pb.PbFieldType.OU3)
    ..aI(4, _omitFieldNames ? '' : 'time', fieldType: $pb.PbFieldType.OU3)
    ..pPM<$0.PbContent>(5, _omitFieldNames ? '' : 'content',
        subBuilder: $0.PbContent.create)
    ..pPS(6, _omitFieldNames ? '' : 'arrVideo')
    ..aOM<$1.Lbs>(7, _omitFieldNames ? '' : 'lbsInfo',
        subBuilder: $1.Lbs.create)
    ..aI(8, _omitFieldNames ? '' : 'isVote', fieldType: $pb.PbFieldType.OU3)
    ..aI(9, _omitFieldNames ? '' : 'isVoice', fieldType: $pb.PbFieldType.OU3)
    ..aI(10, _omitFieldNames ? '' : 'isNtitle', fieldType: $pb.PbFieldType.OU3)
    ..aI(11, _omitFieldNames ? '' : 'isBub', fieldType: $pb.PbFieldType.OU3)
    ..aOS(12, _omitFieldNames ? '' : 'voteCrypt')
    ..aI(13, _omitFieldNames ? '' : 'subPostNumber',
        fieldType: $pb.PbFieldType.OU3)
    ..aOS(14, _omitFieldNames ? '' : 'timeEx')
    ..aOM<$2.SubPost>(15, _omitFieldNames ? '' : 'subPostList',
        subBuilder: $2.SubPost.create)
    ..aOM<$3.AddPostList>(16, _omitFieldNames ? '' : 'addPostList',
        subBuilder: $3.AddPostList.create)
    ..aOS(17, _omitFieldNames ? '' : 'bimgUrl')
    ..aOS(18, _omitFieldNames ? '' : 'iosBimgFormat')
    ..aInt64(19, _omitFieldNames ? '' : 'authorId')
    ..aI(20, _omitFieldNames ? '' : 'addPostNumber',
        fieldType: $pb.PbFieldType.OU3)
    ..aOM<$4.SignatureData>(21, _omitFieldNames ? '' : 'signature',
        subBuilder: $4.SignatureData.create)
    ..aOM<$5.TailInfo>(22, _omitFieldNames ? '' : 'tailInfo',
        subBuilder: $5.TailInfo.create)
    ..aOM<$6.User>(23, _omitFieldNames ? '' : 'author',
        subBuilder: $6.User.create)
    ..aOM<$7.Zan>(24, _omitFieldNames ? '' : 'zan', subBuilder: $7.Zan.create)
    ..aI(25, _omitFieldNames ? '' : 'storecount')
    ..aOM<$8.TPointPost>(26, _omitFieldNames ? '' : 'tpointPost',
        subBuilder: $8.TPointPost.create)
    ..aOM<$9.ActPost>(27, _omitFieldNames ? '' : 'actPost',
        subBuilder: $9.ActPost.create)
    ..aOM<$10.PbPresent>(28, _omitFieldNames ? '' : 'present',
        subBuilder: $10.PbPresent.create)
    ..aOM<$11.VideoInfo>(29, _omitFieldNames ? '' : 'videoInfo',
        subBuilder: $11.VideoInfo.create)
    ..aOM<$12.PbPostZan>(30, _omitFieldNames ? '' : 'postZan',
        subBuilder: $12.PbPostZan.create)
    ..aI(31, _omitFieldNames ? '' : 'isHotPost')
    ..pPM<$5.TailInfo>(32, _omitFieldNames ? '' : 'extTails',
        subBuilder: $5.TailInfo.create)
    ..aOM<$13.TogetherHi>(33, _omitFieldNames ? '' : 'highTogether',
        subBuilder: $13.TogetherHi.create)
    ..aOM<$14.SkinInfo>(34, _omitFieldNames ? '' : 'skinInfo',
        subBuilder: $14.SkinInfo.create)
    ..aOM<$15.DealInfo>(35, _omitFieldNames ? '' : 'pbDealInfo',
        subBuilder: $15.DealInfo.create)
    ..aOS(36, _omitFieldNames ? '' : 'legoCard')
    ..aOM<$16.Agree>(37, _omitFieldNames ? '' : 'agree',
        subBuilder: $16.Agree.create)
    ..aOM<$17.SimpleForum>(38, _omitFieldNames ? '' : 'fromForum',
        subBuilder: $17.SimpleForum.create)
    ..aI(39, _omitFieldNames ? '' : 'isPostVisible')
    ..aI(40, _omitFieldNames ? '' : 'needLog')
    ..aI(41, _omitFieldNames ? '' : 'imgNumAbtest')
    ..aOM<$18.OriginThreadInfo>(42, _omitFieldNames ? '' : 'originThreadInfo',
        subBuilder: $18.OriginThreadInfo.create)
    ..aI(43, _omitFieldNames ? '' : 'isFold')
    ..aOS(44, _omitFieldNames ? '' : 'foldTip')
    ..aI(45, _omitFieldNames ? '' : 'isTopAgreePost')
    ..aInt64(46, _omitFieldNames ? '' : 'tid')
    ..aI(47, _omitFieldNames ? '' : 'showSquared')
    ..aI(48, _omitFieldNames ? '' : 'isBjh')
    ..aOS(50, _omitFieldNames ? '' : 'quoteId')
    ..aI(51, _omitFieldNames ? '' : 'isWonderfulPost')
    ..pPM<$19.HeadItem>(52, _omitFieldNames ? '' : 'itemStar',
        subBuilder: $19.HeadItem.create)
    ..aOM<$20.Item>(53, _omitFieldNames ? '' : 'item',
        subBuilder: $20.Item.create)
    ..aOM<$20.Item>(54, _omitFieldNames ? '' : 'outerItem',
        subBuilder: $20.Item.create)
    ..aOM<$21.Advertisement>(55, _omitFieldNames ? '' : 'advertisement',
        subBuilder: $21.Advertisement.create)
    ..aI(56, _omitFieldNames ? '' : 'foldCommentStatus')
    ..aOS(57, _omitFieldNames ? '' : 'foldCommentApplyUrl')
    ..aOM<$22.NovelInfo>(58, _omitFieldNames ? '' : 'novelInfo',
        subBuilder: $22.NovelInfo.create)
    ..aOS(63, _omitFieldNames ? '' : 'dynamicUrl')
    ..aOS(65, _omitFieldNames ? '' : 'rumorSourceImg')
    ..aI(68, _omitFieldNames ? '' : 'shieldIcon')
    ..aOS(69, _omitFieldNames ? '' : 'iconUrl')
    ..aOS(70, _omitFieldNames ? '' : 'toutiaoCardTag')
    ..aOS(71, _omitFieldNames ? '' : 'toutiaoCardTagColor')
    ..aI(73, _omitFieldNames ? '' : 'isBotReply')
    ..aOS(74, _omitFieldNames ? '' : 'botReplyContent')
    ..pPM<$0.PbContent>(84, _omitFieldNames ? '' : 'picContent',
        subBuilder: $0.PbContent.create)
    ..pPM<$0.PbContent>(85, _omitFieldNames ? '' : 'noPicContent',
        subBuilder: $0.PbContent.create)
    ..aOS(87, _omitFieldNames ? '' : 'iosBUrl')
    ..aOS(89, _omitFieldNames ? '' : 'footer')
    ..aI(91, _omitFieldNames ? '' : 'bdtUserAdopt')
    ..aOS(92, _omitFieldNames ? '' : 'tmoney')
    ..aI(93, _omitFieldNames ? '' : 'adoptStatus')
    ..aI(96, _omitFieldNames ? '' : 'isAdThreadPost')
    ..aOS(97, _omitFieldNames ? '' : 'contentStatement')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Post clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Post copyWith(void Function(Post) updates) =>
      super.copyWith((message) => updates(message as Post)) as Post;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Post create() => Post._();
  @$core.override
  Post createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Post getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Post>(create);
  static Post? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get floor => $_getIZ(2);
  @$pb.TagNumber(3)
  set floor($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasFloor() => $_has(2);
  @$pb.TagNumber(3)
  void clearFloor() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get time => $_getIZ(3);
  @$pb.TagNumber(4)
  set time($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasTime() => $_has(3);
  @$pb.TagNumber(4)
  void clearTime() => $_clearField(4);

  @$pb.TagNumber(5)
  $pb.PbList<$0.PbContent> get content => $_getList(4);

  @$pb.TagNumber(6)
  $pb.PbList<$core.String> get arrVideo => $_getList(5);

  @$pb.TagNumber(7)
  $1.Lbs get lbsInfo => $_getN(6);
  @$pb.TagNumber(7)
  set lbsInfo($1.Lbs value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasLbsInfo() => $_has(6);
  @$pb.TagNumber(7)
  void clearLbsInfo() => $_clearField(7);
  @$pb.TagNumber(7)
  $1.Lbs ensureLbsInfo() => $_ensure(6);

  @$pb.TagNumber(8)
  $core.int get isVote => $_getIZ(7);
  @$pb.TagNumber(8)
  set isVote($core.int value) => $_setUnsignedInt32(7, value);
  @$pb.TagNumber(8)
  $core.bool hasIsVote() => $_has(7);
  @$pb.TagNumber(8)
  void clearIsVote() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.int get isVoice => $_getIZ(8);
  @$pb.TagNumber(9)
  set isVoice($core.int value) => $_setUnsignedInt32(8, value);
  @$pb.TagNumber(9)
  $core.bool hasIsVoice() => $_has(8);
  @$pb.TagNumber(9)
  void clearIsVoice() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.int get isNtitle => $_getIZ(9);
  @$pb.TagNumber(10)
  set isNtitle($core.int value) => $_setUnsignedInt32(9, value);
  @$pb.TagNumber(10)
  $core.bool hasIsNtitle() => $_has(9);
  @$pb.TagNumber(10)
  void clearIsNtitle() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.int get isBub => $_getIZ(10);
  @$pb.TagNumber(11)
  set isBub($core.int value) => $_setUnsignedInt32(10, value);
  @$pb.TagNumber(11)
  $core.bool hasIsBub() => $_has(10);
  @$pb.TagNumber(11)
  void clearIsBub() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.String get voteCrypt => $_getSZ(11);
  @$pb.TagNumber(12)
  set voteCrypt($core.String value) => $_setString(11, value);
  @$pb.TagNumber(12)
  $core.bool hasVoteCrypt() => $_has(11);
  @$pb.TagNumber(12)
  void clearVoteCrypt() => $_clearField(12);

  @$pb.TagNumber(13)
  $core.int get subPostNumber => $_getIZ(12);
  @$pb.TagNumber(13)
  set subPostNumber($core.int value) => $_setUnsignedInt32(12, value);
  @$pb.TagNumber(13)
  $core.bool hasSubPostNumber() => $_has(12);
  @$pb.TagNumber(13)
  void clearSubPostNumber() => $_clearField(13);

  @$pb.TagNumber(14)
  $core.String get timeEx => $_getSZ(13);
  @$pb.TagNumber(14)
  set timeEx($core.String value) => $_setString(13, value);
  @$pb.TagNumber(14)
  $core.bool hasTimeEx() => $_has(13);
  @$pb.TagNumber(14)
  void clearTimeEx() => $_clearField(14);

  @$pb.TagNumber(15)
  $2.SubPost get subPostList => $_getN(14);
  @$pb.TagNumber(15)
  set subPostList($2.SubPost value) => $_setField(15, value);
  @$pb.TagNumber(15)
  $core.bool hasSubPostList() => $_has(14);
  @$pb.TagNumber(15)
  void clearSubPostList() => $_clearField(15);
  @$pb.TagNumber(15)
  $2.SubPost ensureSubPostList() => $_ensure(14);

  @$pb.TagNumber(16)
  $3.AddPostList get addPostList => $_getN(15);
  @$pb.TagNumber(16)
  set addPostList($3.AddPostList value) => $_setField(16, value);
  @$pb.TagNumber(16)
  $core.bool hasAddPostList() => $_has(15);
  @$pb.TagNumber(16)
  void clearAddPostList() => $_clearField(16);
  @$pb.TagNumber(16)
  $3.AddPostList ensureAddPostList() => $_ensure(15);

  @$pb.TagNumber(17)
  $core.String get bimgUrl => $_getSZ(16);
  @$pb.TagNumber(17)
  set bimgUrl($core.String value) => $_setString(16, value);
  @$pb.TagNumber(17)
  $core.bool hasBimgUrl() => $_has(16);
  @$pb.TagNumber(17)
  void clearBimgUrl() => $_clearField(17);

  @$pb.TagNumber(18)
  $core.String get iosBimgFormat => $_getSZ(17);
  @$pb.TagNumber(18)
  set iosBimgFormat($core.String value) => $_setString(17, value);
  @$pb.TagNumber(18)
  $core.bool hasIosBimgFormat() => $_has(17);
  @$pb.TagNumber(18)
  void clearIosBimgFormat() => $_clearField(18);

  @$pb.TagNumber(19)
  $fixnum.Int64 get authorId => $_getI64(18);
  @$pb.TagNumber(19)
  set authorId($fixnum.Int64 value) => $_setInt64(18, value);
  @$pb.TagNumber(19)
  $core.bool hasAuthorId() => $_has(18);
  @$pb.TagNumber(19)
  void clearAuthorId() => $_clearField(19);

  @$pb.TagNumber(20)
  $core.int get addPostNumber => $_getIZ(19);
  @$pb.TagNumber(20)
  set addPostNumber($core.int value) => $_setUnsignedInt32(19, value);
  @$pb.TagNumber(20)
  $core.bool hasAddPostNumber() => $_has(19);
  @$pb.TagNumber(20)
  void clearAddPostNumber() => $_clearField(20);

  @$pb.TagNumber(21)
  $4.SignatureData get signature => $_getN(20);
  @$pb.TagNumber(21)
  set signature($4.SignatureData value) => $_setField(21, value);
  @$pb.TagNumber(21)
  $core.bool hasSignature() => $_has(20);
  @$pb.TagNumber(21)
  void clearSignature() => $_clearField(21);
  @$pb.TagNumber(21)
  $4.SignatureData ensureSignature() => $_ensure(20);

  @$pb.TagNumber(22)
  $5.TailInfo get tailInfo => $_getN(21);
  @$pb.TagNumber(22)
  set tailInfo($5.TailInfo value) => $_setField(22, value);
  @$pb.TagNumber(22)
  $core.bool hasTailInfo() => $_has(21);
  @$pb.TagNumber(22)
  void clearTailInfo() => $_clearField(22);
  @$pb.TagNumber(22)
  $5.TailInfo ensureTailInfo() => $_ensure(21);

  @$pb.TagNumber(23)
  $6.User get author => $_getN(22);
  @$pb.TagNumber(23)
  set author($6.User value) => $_setField(23, value);
  @$pb.TagNumber(23)
  $core.bool hasAuthor() => $_has(22);
  @$pb.TagNumber(23)
  void clearAuthor() => $_clearField(23);
  @$pb.TagNumber(23)
  $6.User ensureAuthor() => $_ensure(22);

  @$pb.TagNumber(24)
  $7.Zan get zan => $_getN(23);
  @$pb.TagNumber(24)
  set zan($7.Zan value) => $_setField(24, value);
  @$pb.TagNumber(24)
  $core.bool hasZan() => $_has(23);
  @$pb.TagNumber(24)
  void clearZan() => $_clearField(24);
  @$pb.TagNumber(24)
  $7.Zan ensureZan() => $_ensure(23);

  @$pb.TagNumber(25)
  $core.int get storecount => $_getIZ(24);
  @$pb.TagNumber(25)
  set storecount($core.int value) => $_setSignedInt32(24, value);
  @$pb.TagNumber(25)
  $core.bool hasStorecount() => $_has(24);
  @$pb.TagNumber(25)
  void clearStorecount() => $_clearField(25);

  @$pb.TagNumber(26)
  $8.TPointPost get tpointPost => $_getN(25);
  @$pb.TagNumber(26)
  set tpointPost($8.TPointPost value) => $_setField(26, value);
  @$pb.TagNumber(26)
  $core.bool hasTpointPost() => $_has(25);
  @$pb.TagNumber(26)
  void clearTpointPost() => $_clearField(26);
  @$pb.TagNumber(26)
  $8.TPointPost ensureTpointPost() => $_ensure(25);

  @$pb.TagNumber(27)
  $9.ActPost get actPost => $_getN(26);
  @$pb.TagNumber(27)
  set actPost($9.ActPost value) => $_setField(27, value);
  @$pb.TagNumber(27)
  $core.bool hasActPost() => $_has(26);
  @$pb.TagNumber(27)
  void clearActPost() => $_clearField(27);
  @$pb.TagNumber(27)
  $9.ActPost ensureActPost() => $_ensure(26);

  @$pb.TagNumber(28)
  $10.PbPresent get present => $_getN(27);
  @$pb.TagNumber(28)
  set present($10.PbPresent value) => $_setField(28, value);
  @$pb.TagNumber(28)
  $core.bool hasPresent() => $_has(27);
  @$pb.TagNumber(28)
  void clearPresent() => $_clearField(28);
  @$pb.TagNumber(28)
  $10.PbPresent ensurePresent() => $_ensure(27);

  @$pb.TagNumber(29)
  $11.VideoInfo get videoInfo => $_getN(28);
  @$pb.TagNumber(29)
  set videoInfo($11.VideoInfo value) => $_setField(29, value);
  @$pb.TagNumber(29)
  $core.bool hasVideoInfo() => $_has(28);
  @$pb.TagNumber(29)
  void clearVideoInfo() => $_clearField(29);
  @$pb.TagNumber(29)
  $11.VideoInfo ensureVideoInfo() => $_ensure(28);

  @$pb.TagNumber(30)
  $12.PbPostZan get postZan => $_getN(29);
  @$pb.TagNumber(30)
  set postZan($12.PbPostZan value) => $_setField(30, value);
  @$pb.TagNumber(30)
  $core.bool hasPostZan() => $_has(29);
  @$pb.TagNumber(30)
  void clearPostZan() => $_clearField(30);
  @$pb.TagNumber(30)
  $12.PbPostZan ensurePostZan() => $_ensure(29);

  @$pb.TagNumber(31)
  $core.int get isHotPost => $_getIZ(30);
  @$pb.TagNumber(31)
  set isHotPost($core.int value) => $_setSignedInt32(30, value);
  @$pb.TagNumber(31)
  $core.bool hasIsHotPost() => $_has(30);
  @$pb.TagNumber(31)
  void clearIsHotPost() => $_clearField(31);

  @$pb.TagNumber(32)
  $pb.PbList<$5.TailInfo> get extTails => $_getList(31);

  @$pb.TagNumber(33)
  $13.TogetherHi get highTogether => $_getN(32);
  @$pb.TagNumber(33)
  set highTogether($13.TogetherHi value) => $_setField(33, value);
  @$pb.TagNumber(33)
  $core.bool hasHighTogether() => $_has(32);
  @$pb.TagNumber(33)
  void clearHighTogether() => $_clearField(33);
  @$pb.TagNumber(33)
  $13.TogetherHi ensureHighTogether() => $_ensure(32);

  @$pb.TagNumber(34)
  $14.SkinInfo get skinInfo => $_getN(33);
  @$pb.TagNumber(34)
  set skinInfo($14.SkinInfo value) => $_setField(34, value);
  @$pb.TagNumber(34)
  $core.bool hasSkinInfo() => $_has(33);
  @$pb.TagNumber(34)
  void clearSkinInfo() => $_clearField(34);
  @$pb.TagNumber(34)
  $14.SkinInfo ensureSkinInfo() => $_ensure(33);

  @$pb.TagNumber(35)
  $15.DealInfo get pbDealInfo => $_getN(34);
  @$pb.TagNumber(35)
  set pbDealInfo($15.DealInfo value) => $_setField(35, value);
  @$pb.TagNumber(35)
  $core.bool hasPbDealInfo() => $_has(34);
  @$pb.TagNumber(35)
  void clearPbDealInfo() => $_clearField(35);
  @$pb.TagNumber(35)
  $15.DealInfo ensurePbDealInfo() => $_ensure(34);

  @$pb.TagNumber(36)
  $core.String get legoCard => $_getSZ(35);
  @$pb.TagNumber(36)
  set legoCard($core.String value) => $_setString(35, value);
  @$pb.TagNumber(36)
  $core.bool hasLegoCard() => $_has(35);
  @$pb.TagNumber(36)
  void clearLegoCard() => $_clearField(36);

  @$pb.TagNumber(37)
  $16.Agree get agree => $_getN(36);
  @$pb.TagNumber(37)
  set agree($16.Agree value) => $_setField(37, value);
  @$pb.TagNumber(37)
  $core.bool hasAgree() => $_has(36);
  @$pb.TagNumber(37)
  void clearAgree() => $_clearField(37);
  @$pb.TagNumber(37)
  $16.Agree ensureAgree() => $_ensure(36);

  @$pb.TagNumber(38)
  $17.SimpleForum get fromForum => $_getN(37);
  @$pb.TagNumber(38)
  set fromForum($17.SimpleForum value) => $_setField(38, value);
  @$pb.TagNumber(38)
  $core.bool hasFromForum() => $_has(37);
  @$pb.TagNumber(38)
  void clearFromForum() => $_clearField(38);
  @$pb.TagNumber(38)
  $17.SimpleForum ensureFromForum() => $_ensure(37);

  @$pb.TagNumber(39)
  $core.int get isPostVisible => $_getIZ(38);
  @$pb.TagNumber(39)
  set isPostVisible($core.int value) => $_setSignedInt32(38, value);
  @$pb.TagNumber(39)
  $core.bool hasIsPostVisible() => $_has(38);
  @$pb.TagNumber(39)
  void clearIsPostVisible() => $_clearField(39);

  @$pb.TagNumber(40)
  $core.int get needLog => $_getIZ(39);
  @$pb.TagNumber(40)
  set needLog($core.int value) => $_setSignedInt32(39, value);
  @$pb.TagNumber(40)
  $core.bool hasNeedLog() => $_has(39);
  @$pb.TagNumber(40)
  void clearNeedLog() => $_clearField(40);

  @$pb.TagNumber(41)
  $core.int get imgNumAbtest => $_getIZ(40);
  @$pb.TagNumber(41)
  set imgNumAbtest($core.int value) => $_setSignedInt32(40, value);
  @$pb.TagNumber(41)
  $core.bool hasImgNumAbtest() => $_has(40);
  @$pb.TagNumber(41)
  void clearImgNumAbtest() => $_clearField(41);

  @$pb.TagNumber(42)
  $18.OriginThreadInfo get originThreadInfo => $_getN(41);
  @$pb.TagNumber(42)
  set originThreadInfo($18.OriginThreadInfo value) => $_setField(42, value);
  @$pb.TagNumber(42)
  $core.bool hasOriginThreadInfo() => $_has(41);
  @$pb.TagNumber(42)
  void clearOriginThreadInfo() => $_clearField(42);
  @$pb.TagNumber(42)
  $18.OriginThreadInfo ensureOriginThreadInfo() => $_ensure(41);

  @$pb.TagNumber(43)
  $core.int get isFold => $_getIZ(42);
  @$pb.TagNumber(43)
  set isFold($core.int value) => $_setSignedInt32(42, value);
  @$pb.TagNumber(43)
  $core.bool hasIsFold() => $_has(42);
  @$pb.TagNumber(43)
  void clearIsFold() => $_clearField(43);

  @$pb.TagNumber(44)
  $core.String get foldTip => $_getSZ(43);
  @$pb.TagNumber(44)
  set foldTip($core.String value) => $_setString(43, value);
  @$pb.TagNumber(44)
  $core.bool hasFoldTip() => $_has(43);
  @$pb.TagNumber(44)
  void clearFoldTip() => $_clearField(44);

  @$pb.TagNumber(45)
  $core.int get isTopAgreePost => $_getIZ(44);
  @$pb.TagNumber(45)
  set isTopAgreePost($core.int value) => $_setSignedInt32(44, value);
  @$pb.TagNumber(45)
  $core.bool hasIsTopAgreePost() => $_has(44);
  @$pb.TagNumber(45)
  void clearIsTopAgreePost() => $_clearField(45);

  @$pb.TagNumber(46)
  $fixnum.Int64 get tid => $_getI64(45);
  @$pb.TagNumber(46)
  set tid($fixnum.Int64 value) => $_setInt64(45, value);
  @$pb.TagNumber(46)
  $core.bool hasTid() => $_has(45);
  @$pb.TagNumber(46)
  void clearTid() => $_clearField(46);

  @$pb.TagNumber(47)
  $core.int get showSquared => $_getIZ(46);
  @$pb.TagNumber(47)
  set showSquared($core.int value) => $_setSignedInt32(46, value);
  @$pb.TagNumber(47)
  $core.bool hasShowSquared() => $_has(46);
  @$pb.TagNumber(47)
  void clearShowSquared() => $_clearField(47);

  @$pb.TagNumber(48)
  $core.int get isBjh => $_getIZ(47);
  @$pb.TagNumber(48)
  set isBjh($core.int value) => $_setSignedInt32(47, value);
  @$pb.TagNumber(48)
  $core.bool hasIsBjh() => $_has(47);
  @$pb.TagNumber(48)
  void clearIsBjh() => $_clearField(48);

  @$pb.TagNumber(50)
  $core.String get quoteId => $_getSZ(48);
  @$pb.TagNumber(50)
  set quoteId($core.String value) => $_setString(48, value);
  @$pb.TagNumber(50)
  $core.bool hasQuoteId() => $_has(48);
  @$pb.TagNumber(50)
  void clearQuoteId() => $_clearField(50);

  @$pb.TagNumber(51)
  $core.int get isWonderfulPost => $_getIZ(49);
  @$pb.TagNumber(51)
  set isWonderfulPost($core.int value) => $_setSignedInt32(49, value);
  @$pb.TagNumber(51)
  $core.bool hasIsWonderfulPost() => $_has(49);
  @$pb.TagNumber(51)
  void clearIsWonderfulPost() => $_clearField(51);

  @$pb.TagNumber(52)
  $pb.PbList<$19.HeadItem> get itemStar => $_getList(50);

  @$pb.TagNumber(53)
  $20.Item get item => $_getN(51);
  @$pb.TagNumber(53)
  set item($20.Item value) => $_setField(53, value);
  @$pb.TagNumber(53)
  $core.bool hasItem() => $_has(51);
  @$pb.TagNumber(53)
  void clearItem() => $_clearField(53);
  @$pb.TagNumber(53)
  $20.Item ensureItem() => $_ensure(51);

  @$pb.TagNumber(54)
  $20.Item get outerItem => $_getN(52);
  @$pb.TagNumber(54)
  set outerItem($20.Item value) => $_setField(54, value);
  @$pb.TagNumber(54)
  $core.bool hasOuterItem() => $_has(52);
  @$pb.TagNumber(54)
  void clearOuterItem() => $_clearField(54);
  @$pb.TagNumber(54)
  $20.Item ensureOuterItem() => $_ensure(52);

  @$pb.TagNumber(55)
  $21.Advertisement get advertisement => $_getN(53);
  @$pb.TagNumber(55)
  set advertisement($21.Advertisement value) => $_setField(55, value);
  @$pb.TagNumber(55)
  $core.bool hasAdvertisement() => $_has(53);
  @$pb.TagNumber(55)
  void clearAdvertisement() => $_clearField(55);
  @$pb.TagNumber(55)
  $21.Advertisement ensureAdvertisement() => $_ensure(53);

  @$pb.TagNumber(56)
  $core.int get foldCommentStatus => $_getIZ(54);
  @$pb.TagNumber(56)
  set foldCommentStatus($core.int value) => $_setSignedInt32(54, value);
  @$pb.TagNumber(56)
  $core.bool hasFoldCommentStatus() => $_has(54);
  @$pb.TagNumber(56)
  void clearFoldCommentStatus() => $_clearField(56);

  @$pb.TagNumber(57)
  $core.String get foldCommentApplyUrl => $_getSZ(55);
  @$pb.TagNumber(57)
  set foldCommentApplyUrl($core.String value) => $_setString(55, value);
  @$pb.TagNumber(57)
  $core.bool hasFoldCommentApplyUrl() => $_has(55);
  @$pb.TagNumber(57)
  void clearFoldCommentApplyUrl() => $_clearField(57);

  @$pb.TagNumber(58)
  $22.NovelInfo get novelInfo => $_getN(56);
  @$pb.TagNumber(58)
  set novelInfo($22.NovelInfo value) => $_setField(58, value);
  @$pb.TagNumber(58)
  $core.bool hasNovelInfo() => $_has(56);
  @$pb.TagNumber(58)
  void clearNovelInfo() => $_clearField(58);
  @$pb.TagNumber(58)
  $22.NovelInfo ensureNovelInfo() => $_ensure(56);

  @$pb.TagNumber(63)
  $core.String get dynamicUrl => $_getSZ(57);
  @$pb.TagNumber(63)
  set dynamicUrl($core.String value) => $_setString(57, value);
  @$pb.TagNumber(63)
  $core.bool hasDynamicUrl() => $_has(57);
  @$pb.TagNumber(63)
  void clearDynamicUrl() => $_clearField(63);

  @$pb.TagNumber(65)
  $core.String get rumorSourceImg => $_getSZ(58);
  @$pb.TagNumber(65)
  set rumorSourceImg($core.String value) => $_setString(58, value);
  @$pb.TagNumber(65)
  $core.bool hasRumorSourceImg() => $_has(58);
  @$pb.TagNumber(65)
  void clearRumorSourceImg() => $_clearField(65);

  @$pb.TagNumber(68)
  $core.int get shieldIcon => $_getIZ(59);
  @$pb.TagNumber(68)
  set shieldIcon($core.int value) => $_setSignedInt32(59, value);
  @$pb.TagNumber(68)
  $core.bool hasShieldIcon() => $_has(59);
  @$pb.TagNumber(68)
  void clearShieldIcon() => $_clearField(68);

  @$pb.TagNumber(69)
  $core.String get iconUrl => $_getSZ(60);
  @$pb.TagNumber(69)
  set iconUrl($core.String value) => $_setString(60, value);
  @$pb.TagNumber(69)
  $core.bool hasIconUrl() => $_has(60);
  @$pb.TagNumber(69)
  void clearIconUrl() => $_clearField(69);

  @$pb.TagNumber(70)
  $core.String get toutiaoCardTag => $_getSZ(61);
  @$pb.TagNumber(70)
  set toutiaoCardTag($core.String value) => $_setString(61, value);
  @$pb.TagNumber(70)
  $core.bool hasToutiaoCardTag() => $_has(61);
  @$pb.TagNumber(70)
  void clearToutiaoCardTag() => $_clearField(70);

  @$pb.TagNumber(71)
  $core.String get toutiaoCardTagColor => $_getSZ(62);
  @$pb.TagNumber(71)
  set toutiaoCardTagColor($core.String value) => $_setString(62, value);
  @$pb.TagNumber(71)
  $core.bool hasToutiaoCardTagColor() => $_has(62);
  @$pb.TagNumber(71)
  void clearToutiaoCardTagColor() => $_clearField(71);

  @$pb.TagNumber(73)
  $core.int get isBotReply => $_getIZ(63);
  @$pb.TagNumber(73)
  set isBotReply($core.int value) => $_setSignedInt32(63, value);
  @$pb.TagNumber(73)
  $core.bool hasIsBotReply() => $_has(63);
  @$pb.TagNumber(73)
  void clearIsBotReply() => $_clearField(73);

  @$pb.TagNumber(74)
  $core.String get botReplyContent => $_getSZ(64);
  @$pb.TagNumber(74)
  set botReplyContent($core.String value) => $_setString(64, value);
  @$pb.TagNumber(74)
  $core.bool hasBotReplyContent() => $_has(64);
  @$pb.TagNumber(74)
  void clearBotReplyContent() => $_clearField(74);

  @$pb.TagNumber(84)
  $pb.PbList<$0.PbContent> get picContent => $_getList(65);

  @$pb.TagNumber(85)
  $pb.PbList<$0.PbContent> get noPicContent => $_getList(66);

  @$pb.TagNumber(87)
  $core.String get iosBUrl => $_getSZ(67);
  @$pb.TagNumber(87)
  set iosBUrl($core.String value) => $_setString(67, value);
  @$pb.TagNumber(87)
  $core.bool hasIosBUrl() => $_has(67);
  @$pb.TagNumber(87)
  void clearIosBUrl() => $_clearField(87);

  @$pb.TagNumber(89)
  $core.String get footer => $_getSZ(68);
  @$pb.TagNumber(89)
  set footer($core.String value) => $_setString(68, value);
  @$pb.TagNumber(89)
  $core.bool hasFooter() => $_has(68);
  @$pb.TagNumber(89)
  void clearFooter() => $_clearField(89);

  @$pb.TagNumber(91)
  $core.int get bdtUserAdopt => $_getIZ(69);
  @$pb.TagNumber(91)
  set bdtUserAdopt($core.int value) => $_setSignedInt32(69, value);
  @$pb.TagNumber(91)
  $core.bool hasBdtUserAdopt() => $_has(69);
  @$pb.TagNumber(91)
  void clearBdtUserAdopt() => $_clearField(91);

  @$pb.TagNumber(92)
  $core.String get tmoney => $_getSZ(70);
  @$pb.TagNumber(92)
  set tmoney($core.String value) => $_setString(70, value);
  @$pb.TagNumber(92)
  $core.bool hasTmoney() => $_has(70);
  @$pb.TagNumber(92)
  void clearTmoney() => $_clearField(92);

  @$pb.TagNumber(93)
  $core.int get adoptStatus => $_getIZ(71);
  @$pb.TagNumber(93)
  set adoptStatus($core.int value) => $_setSignedInt32(71, value);
  @$pb.TagNumber(93)
  $core.bool hasAdoptStatus() => $_has(71);
  @$pb.TagNumber(93)
  void clearAdoptStatus() => $_clearField(93);

  @$pb.TagNumber(96)
  $core.int get isAdThreadPost => $_getIZ(72);
  @$pb.TagNumber(96)
  set isAdThreadPost($core.int value) => $_setSignedInt32(72, value);
  @$pb.TagNumber(96)
  $core.bool hasIsAdThreadPost() => $_has(72);
  @$pb.TagNumber(96)
  void clearIsAdThreadPost() => $_clearField(96);

  @$pb.TagNumber(97)
  $core.String get contentStatement => $_getSZ(73);
  @$pb.TagNumber(97)
  set contentStatement($core.String value) => $_setString(73, value);
  @$pb.TagNumber(97)
  $core.bool hasContentStatement() => $_has(73);
  @$pb.TagNumber(97)
  void clearContentStatement() => $_clearField(97);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
