// This is a generated file - do not edit.
//
// Generated from AddPost/AddPostRequestData.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../CommonRequest.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class AddPostRequestData extends $pb.GeneratedMessage {
  factory AddPostRequestData({
    $0.CommonRequest? common,
    $core.String? authsid,
    $core.String? sig,
    $core.String? tbs,
    $core.String? videoOther,
    $core.String? anonymous,
    $core.String? canNoForum,
    $core.String? isFeedback,
    $core.String? takephotoNum,
    $core.String? entranceType,
    $core.String? voiceMd5,
    $core.String? duringTime,
    $core.String? vcode,
    $core.String? vcodeMd5,
    $core.String? vcodeType,
    $core.String? vcodeTag,
    $core.String? topicId,
    $core.String? newVcode,
    $core.String? content,
    $core.String? replyUid,
    $core.String? memeText,
    $core.String? memeContSign,
    $core.String? itemId,
    $core.String? commentHead,
    $core.String? worksTag,
    $core.String? fid,
    $core.String? transformForums,
    $core.String? vFid,
    $core.String? vFname,
    $core.String? kw,
    $core.String? isBarrage,
    $core.String? barrageTime,
    $core.String? stParam,
    $core.String? ptype,
    $core.String? oriUgcNid,
    $core.String? oriUgcVid,
    $core.String? oriUgcTid,
    $core.String? oriUgcType,
    $core.String? isLocation,
    $core.String? lat,
    $core.String? lng,
    $core.String? name,
    $core.String? sn,
    $core.String? fromFourmId,
    $core.String? tid,
    $core.String? quoteId,
    $core.String? isTwzhiboThread,
    $core.String? floorNum,
    $core.String? repostid,
    $core.String? subPostId,
    $core.String? isAd,
    $core.String? isAddition,
    $core.String? isGiftpost,
    $core.String? stType,
    $core.String? postFrom,
    $core.String? realLat,
    $core.String? realLng,
    $core.String? nameShow,
    $core.String? isWorks,
    $core.String? isPictxt,
    $core.String? isStory,
    $core.String? jid,
    $core.String? jfrom,
    $core.int? showCustomFigure,
    $core.String? fromCategoryId,
    $core.String? toCategoryId,
    $core.int? isShowBless,
  }) {
    final result = create();
    if (common != null) result.common = common;
    if (authsid != null) result.authsid = authsid;
    if (sig != null) result.sig = sig;
    if (tbs != null) result.tbs = tbs;
    if (videoOther != null) result.videoOther = videoOther;
    if (anonymous != null) result.anonymous = anonymous;
    if (canNoForum != null) result.canNoForum = canNoForum;
    if (isFeedback != null) result.isFeedback = isFeedback;
    if (takephotoNum != null) result.takephotoNum = takephotoNum;
    if (entranceType != null) result.entranceType = entranceType;
    if (voiceMd5 != null) result.voiceMd5 = voiceMd5;
    if (duringTime != null) result.duringTime = duringTime;
    if (vcode != null) result.vcode = vcode;
    if (vcodeMd5 != null) result.vcodeMd5 = vcodeMd5;
    if (vcodeType != null) result.vcodeType = vcodeType;
    if (vcodeTag != null) result.vcodeTag = vcodeTag;
    if (topicId != null) result.topicId = topicId;
    if (newVcode != null) result.newVcode = newVcode;
    if (content != null) result.content = content;
    if (replyUid != null) result.replyUid = replyUid;
    if (memeText != null) result.memeText = memeText;
    if (memeContSign != null) result.memeContSign = memeContSign;
    if (itemId != null) result.itemId = itemId;
    if (commentHead != null) result.commentHead = commentHead;
    if (worksTag != null) result.worksTag = worksTag;
    if (fid != null) result.fid = fid;
    if (transformForums != null) result.transformForums = transformForums;
    if (vFid != null) result.vFid = vFid;
    if (vFname != null) result.vFname = vFname;
    if (kw != null) result.kw = kw;
    if (isBarrage != null) result.isBarrage = isBarrage;
    if (barrageTime != null) result.barrageTime = barrageTime;
    if (stParam != null) result.stParam = stParam;
    if (ptype != null) result.ptype = ptype;
    if (oriUgcNid != null) result.oriUgcNid = oriUgcNid;
    if (oriUgcVid != null) result.oriUgcVid = oriUgcVid;
    if (oriUgcTid != null) result.oriUgcTid = oriUgcTid;
    if (oriUgcType != null) result.oriUgcType = oriUgcType;
    if (isLocation != null) result.isLocation = isLocation;
    if (lat != null) result.lat = lat;
    if (lng != null) result.lng = lng;
    if (name != null) result.name = name;
    if (sn != null) result.sn = sn;
    if (fromFourmId != null) result.fromFourmId = fromFourmId;
    if (tid != null) result.tid = tid;
    if (quoteId != null) result.quoteId = quoteId;
    if (isTwzhiboThread != null) result.isTwzhiboThread = isTwzhiboThread;
    if (floorNum != null) result.floorNum = floorNum;
    if (repostid != null) result.repostid = repostid;
    if (subPostId != null) result.subPostId = subPostId;
    if (isAd != null) result.isAd = isAd;
    if (isAddition != null) result.isAddition = isAddition;
    if (isGiftpost != null) result.isGiftpost = isGiftpost;
    if (stType != null) result.stType = stType;
    if (postFrom != null) result.postFrom = postFrom;
    if (realLat != null) result.realLat = realLat;
    if (realLng != null) result.realLng = realLng;
    if (nameShow != null) result.nameShow = nameShow;
    if (isWorks != null) result.isWorks = isWorks;
    if (isPictxt != null) result.isPictxt = isPictxt;
    if (isStory != null) result.isStory = isStory;
    if (jid != null) result.jid = jid;
    if (jfrom != null) result.jfrom = jfrom;
    if (showCustomFigure != null) result.showCustomFigure = showCustomFigure;
    if (fromCategoryId != null) result.fromCategoryId = fromCategoryId;
    if (toCategoryId != null) result.toCategoryId = toCategoryId;
    if (isShowBless != null) result.isShowBless = isShowBless;
    return result;
  }

  AddPostRequestData._();

  factory AddPostRequestData.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AddPostRequestData.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AddPostRequestData',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba.addPost'),
      createEmptyInstance: create)
    ..aOM<$0.CommonRequest>(1, _omitFieldNames ? '' : 'common',
        subBuilder: $0.CommonRequest.create)
    ..aOS(2, _omitFieldNames ? '' : 'authsid')
    ..aOS(3, _omitFieldNames ? '' : 'sig')
    ..aOS(4, _omitFieldNames ? '' : 'tbs')
    ..aOS(5, _omitFieldNames ? '' : 'videoOther')
    ..aOS(6, _omitFieldNames ? '' : 'anonymous')
    ..aOS(7, _omitFieldNames ? '' : 'canNoForum')
    ..aOS(8, _omitFieldNames ? '' : 'isFeedback')
    ..aOS(9, _omitFieldNames ? '' : 'takephotoNum')
    ..aOS(10, _omitFieldNames ? '' : 'entranceType')
    ..aOS(11, _omitFieldNames ? '' : 'voiceMd5')
    ..aOS(12, _omitFieldNames ? '' : 'duringTime')
    ..aOS(13, _omitFieldNames ? '' : 'vcode')
    ..aOS(14, _omitFieldNames ? '' : 'vcodeMd5')
    ..aOS(15, _omitFieldNames ? '' : 'vcodeType')
    ..aOS(16, _omitFieldNames ? '' : 'vcodeTag')
    ..aOS(17, _omitFieldNames ? '' : 'topicId')
    ..aOS(18, _omitFieldNames ? '' : 'newVcode')
    ..aOS(19, _omitFieldNames ? '' : 'content')
    ..aOS(20, _omitFieldNames ? '' : 'replyUid')
    ..aOS(21, _omitFieldNames ? '' : 'memeText')
    ..aOS(22, _omitFieldNames ? '' : 'memeContSign')
    ..aOS(23, _omitFieldNames ? '' : 'itemId')
    ..aOS(24, _omitFieldNames ? '' : 'commentHead')
    ..aOS(25, _omitFieldNames ? '' : 'worksTag')
    ..aOS(26, _omitFieldNames ? '' : 'fid')
    ..aOS(27, _omitFieldNames ? '' : 'transformForums')
    ..aOS(28, _omitFieldNames ? '' : 'vFid')
    ..aOS(29, _omitFieldNames ? '' : 'vFname')
    ..aOS(30, _omitFieldNames ? '' : 'kw')
    ..aOS(31, _omitFieldNames ? '' : 'isBarrage')
    ..aOS(32, _omitFieldNames ? '' : 'barrageTime')
    ..aOS(33, _omitFieldNames ? '' : 'stParam')
    ..aOS(34, _omitFieldNames ? '' : 'ptype')
    ..aOS(35, _omitFieldNames ? '' : 'oriUgcNid')
    ..aOS(36, _omitFieldNames ? '' : 'oriUgcVid')
    ..aOS(37, _omitFieldNames ? '' : 'oriUgcTid')
    ..aOS(38, _omitFieldNames ? '' : 'oriUgcType')
    ..aOS(39, _omitFieldNames ? '' : 'isLocation')
    ..aOS(40, _omitFieldNames ? '' : 'lat')
    ..aOS(41, _omitFieldNames ? '' : 'lng')
    ..aOS(42, _omitFieldNames ? '' : 'name')
    ..aOS(43, _omitFieldNames ? '' : 'sn')
    ..aOS(44, _omitFieldNames ? '' : 'fromFourmId')
    ..aOS(45, _omitFieldNames ? '' : 'tid')
    ..aOS(46, _omitFieldNames ? '' : 'quoteId')
    ..aOS(47, _omitFieldNames ? '' : 'isTwzhiboThread')
    ..aOS(48, _omitFieldNames ? '' : 'floorNum')
    ..aOS(49, _omitFieldNames ? '' : 'repostid')
    ..aOS(50, _omitFieldNames ? '' : 'subPostId')
    ..aOS(51, _omitFieldNames ? '' : 'isAd')
    ..aOS(52, _omitFieldNames ? '' : 'isAddition')
    ..aOS(53, _omitFieldNames ? '' : 'isGiftpost')
    ..aOS(54, _omitFieldNames ? '' : 'stType')
    ..aOS(55, _omitFieldNames ? '' : 'postFrom')
    ..aOS(56, _omitFieldNames ? '' : 'realLat')
    ..aOS(57, _omitFieldNames ? '' : 'realLng')
    ..aOS(58, _omitFieldNames ? '' : 'nameShow')
    ..aOS(59, _omitFieldNames ? '' : 'isWorks')
    ..aOS(60, _omitFieldNames ? '' : 'isPictxt')
    ..aOS(61, _omitFieldNames ? '' : 'isStory')
    ..aOS(62, _omitFieldNames ? '' : 'jid')
    ..aOS(63, _omitFieldNames ? '' : 'jfrom')
    ..aI(64, _omitFieldNames ? '' : 'showCustomFigure')
    ..aOS(65, _omitFieldNames ? '' : 'fromCategoryId')
    ..aOS(66, _omitFieldNames ? '' : 'toCategoryId')
    ..aI(67, _omitFieldNames ? '' : 'isShowBless')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AddPostRequestData clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AddPostRequestData copyWith(void Function(AddPostRequestData) updates) =>
      super.copyWith((message) => updates(message as AddPostRequestData))
          as AddPostRequestData;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AddPostRequestData create() => AddPostRequestData._();
  @$core.override
  AddPostRequestData createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AddPostRequestData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AddPostRequestData>(create);
  static AddPostRequestData? _defaultInstance;

  @$pb.TagNumber(1)
  $0.CommonRequest get common => $_getN(0);
  @$pb.TagNumber(1)
  set common($0.CommonRequest value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasCommon() => $_has(0);
  @$pb.TagNumber(1)
  void clearCommon() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.CommonRequest ensureCommon() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get authsid => $_getSZ(1);
  @$pb.TagNumber(2)
  set authsid($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasAuthsid() => $_has(1);
  @$pb.TagNumber(2)
  void clearAuthsid() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get sig => $_getSZ(2);
  @$pb.TagNumber(3)
  set sig($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasSig() => $_has(2);
  @$pb.TagNumber(3)
  void clearSig() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get tbs => $_getSZ(3);
  @$pb.TagNumber(4)
  set tbs($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasTbs() => $_has(3);
  @$pb.TagNumber(4)
  void clearTbs() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get videoOther => $_getSZ(4);
  @$pb.TagNumber(5)
  set videoOther($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasVideoOther() => $_has(4);
  @$pb.TagNumber(5)
  void clearVideoOther() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get anonymous => $_getSZ(5);
  @$pb.TagNumber(6)
  set anonymous($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasAnonymous() => $_has(5);
  @$pb.TagNumber(6)
  void clearAnonymous() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get canNoForum => $_getSZ(6);
  @$pb.TagNumber(7)
  set canNoForum($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasCanNoForum() => $_has(6);
  @$pb.TagNumber(7)
  void clearCanNoForum() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.String get isFeedback => $_getSZ(7);
  @$pb.TagNumber(8)
  set isFeedback($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasIsFeedback() => $_has(7);
  @$pb.TagNumber(8)
  void clearIsFeedback() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.String get takephotoNum => $_getSZ(8);
  @$pb.TagNumber(9)
  set takephotoNum($core.String value) => $_setString(8, value);
  @$pb.TagNumber(9)
  $core.bool hasTakephotoNum() => $_has(8);
  @$pb.TagNumber(9)
  void clearTakephotoNum() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.String get entranceType => $_getSZ(9);
  @$pb.TagNumber(10)
  set entranceType($core.String value) => $_setString(9, value);
  @$pb.TagNumber(10)
  $core.bool hasEntranceType() => $_has(9);
  @$pb.TagNumber(10)
  void clearEntranceType() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.String get voiceMd5 => $_getSZ(10);
  @$pb.TagNumber(11)
  set voiceMd5($core.String value) => $_setString(10, value);
  @$pb.TagNumber(11)
  $core.bool hasVoiceMd5() => $_has(10);
  @$pb.TagNumber(11)
  void clearVoiceMd5() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.String get duringTime => $_getSZ(11);
  @$pb.TagNumber(12)
  set duringTime($core.String value) => $_setString(11, value);
  @$pb.TagNumber(12)
  $core.bool hasDuringTime() => $_has(11);
  @$pb.TagNumber(12)
  void clearDuringTime() => $_clearField(12);

  @$pb.TagNumber(13)
  $core.String get vcode => $_getSZ(12);
  @$pb.TagNumber(13)
  set vcode($core.String value) => $_setString(12, value);
  @$pb.TagNumber(13)
  $core.bool hasVcode() => $_has(12);
  @$pb.TagNumber(13)
  void clearVcode() => $_clearField(13);

  @$pb.TagNumber(14)
  $core.String get vcodeMd5 => $_getSZ(13);
  @$pb.TagNumber(14)
  set vcodeMd5($core.String value) => $_setString(13, value);
  @$pb.TagNumber(14)
  $core.bool hasVcodeMd5() => $_has(13);
  @$pb.TagNumber(14)
  void clearVcodeMd5() => $_clearField(14);

  @$pb.TagNumber(15)
  $core.String get vcodeType => $_getSZ(14);
  @$pb.TagNumber(15)
  set vcodeType($core.String value) => $_setString(14, value);
  @$pb.TagNumber(15)
  $core.bool hasVcodeType() => $_has(14);
  @$pb.TagNumber(15)
  void clearVcodeType() => $_clearField(15);

  @$pb.TagNumber(16)
  $core.String get vcodeTag => $_getSZ(15);
  @$pb.TagNumber(16)
  set vcodeTag($core.String value) => $_setString(15, value);
  @$pb.TagNumber(16)
  $core.bool hasVcodeTag() => $_has(15);
  @$pb.TagNumber(16)
  void clearVcodeTag() => $_clearField(16);

  @$pb.TagNumber(17)
  $core.String get topicId => $_getSZ(16);
  @$pb.TagNumber(17)
  set topicId($core.String value) => $_setString(16, value);
  @$pb.TagNumber(17)
  $core.bool hasTopicId() => $_has(16);
  @$pb.TagNumber(17)
  void clearTopicId() => $_clearField(17);

  @$pb.TagNumber(18)
  $core.String get newVcode => $_getSZ(17);
  @$pb.TagNumber(18)
  set newVcode($core.String value) => $_setString(17, value);
  @$pb.TagNumber(18)
  $core.bool hasNewVcode() => $_has(17);
  @$pb.TagNumber(18)
  void clearNewVcode() => $_clearField(18);

  @$pb.TagNumber(19)
  $core.String get content => $_getSZ(18);
  @$pb.TagNumber(19)
  set content($core.String value) => $_setString(18, value);
  @$pb.TagNumber(19)
  $core.bool hasContent() => $_has(18);
  @$pb.TagNumber(19)
  void clearContent() => $_clearField(19);

  @$pb.TagNumber(20)
  $core.String get replyUid => $_getSZ(19);
  @$pb.TagNumber(20)
  set replyUid($core.String value) => $_setString(19, value);
  @$pb.TagNumber(20)
  $core.bool hasReplyUid() => $_has(19);
  @$pb.TagNumber(20)
  void clearReplyUid() => $_clearField(20);

  @$pb.TagNumber(21)
  $core.String get memeText => $_getSZ(20);
  @$pb.TagNumber(21)
  set memeText($core.String value) => $_setString(20, value);
  @$pb.TagNumber(21)
  $core.bool hasMemeText() => $_has(20);
  @$pb.TagNumber(21)
  void clearMemeText() => $_clearField(21);

  @$pb.TagNumber(22)
  $core.String get memeContSign => $_getSZ(21);
  @$pb.TagNumber(22)
  set memeContSign($core.String value) => $_setString(21, value);
  @$pb.TagNumber(22)
  $core.bool hasMemeContSign() => $_has(21);
  @$pb.TagNumber(22)
  void clearMemeContSign() => $_clearField(22);

  @$pb.TagNumber(23)
  $core.String get itemId => $_getSZ(22);
  @$pb.TagNumber(23)
  set itemId($core.String value) => $_setString(22, value);
  @$pb.TagNumber(23)
  $core.bool hasItemId() => $_has(22);
  @$pb.TagNumber(23)
  void clearItemId() => $_clearField(23);

  @$pb.TagNumber(24)
  $core.String get commentHead => $_getSZ(23);
  @$pb.TagNumber(24)
  set commentHead($core.String value) => $_setString(23, value);
  @$pb.TagNumber(24)
  $core.bool hasCommentHead() => $_has(23);
  @$pb.TagNumber(24)
  void clearCommentHead() => $_clearField(24);

  @$pb.TagNumber(25)
  $core.String get worksTag => $_getSZ(24);
  @$pb.TagNumber(25)
  set worksTag($core.String value) => $_setString(24, value);
  @$pb.TagNumber(25)
  $core.bool hasWorksTag() => $_has(24);
  @$pb.TagNumber(25)
  void clearWorksTag() => $_clearField(25);

  @$pb.TagNumber(26)
  $core.String get fid => $_getSZ(25);
  @$pb.TagNumber(26)
  set fid($core.String value) => $_setString(25, value);
  @$pb.TagNumber(26)
  $core.bool hasFid() => $_has(25);
  @$pb.TagNumber(26)
  void clearFid() => $_clearField(26);

  @$pb.TagNumber(27)
  $core.String get transformForums => $_getSZ(26);
  @$pb.TagNumber(27)
  set transformForums($core.String value) => $_setString(26, value);
  @$pb.TagNumber(27)
  $core.bool hasTransformForums() => $_has(26);
  @$pb.TagNumber(27)
  void clearTransformForums() => $_clearField(27);

  @$pb.TagNumber(28)
  $core.String get vFid => $_getSZ(27);
  @$pb.TagNumber(28)
  set vFid($core.String value) => $_setString(27, value);
  @$pb.TagNumber(28)
  $core.bool hasVFid() => $_has(27);
  @$pb.TagNumber(28)
  void clearVFid() => $_clearField(28);

  @$pb.TagNumber(29)
  $core.String get vFname => $_getSZ(28);
  @$pb.TagNumber(29)
  set vFname($core.String value) => $_setString(28, value);
  @$pb.TagNumber(29)
  $core.bool hasVFname() => $_has(28);
  @$pb.TagNumber(29)
  void clearVFname() => $_clearField(29);

  @$pb.TagNumber(30)
  $core.String get kw => $_getSZ(29);
  @$pb.TagNumber(30)
  set kw($core.String value) => $_setString(29, value);
  @$pb.TagNumber(30)
  $core.bool hasKw() => $_has(29);
  @$pb.TagNumber(30)
  void clearKw() => $_clearField(30);

  @$pb.TagNumber(31)
  $core.String get isBarrage => $_getSZ(30);
  @$pb.TagNumber(31)
  set isBarrage($core.String value) => $_setString(30, value);
  @$pb.TagNumber(31)
  $core.bool hasIsBarrage() => $_has(30);
  @$pb.TagNumber(31)
  void clearIsBarrage() => $_clearField(31);

  @$pb.TagNumber(32)
  $core.String get barrageTime => $_getSZ(31);
  @$pb.TagNumber(32)
  set barrageTime($core.String value) => $_setString(31, value);
  @$pb.TagNumber(32)
  $core.bool hasBarrageTime() => $_has(31);
  @$pb.TagNumber(32)
  void clearBarrageTime() => $_clearField(32);

  @$pb.TagNumber(33)
  $core.String get stParam => $_getSZ(32);
  @$pb.TagNumber(33)
  set stParam($core.String value) => $_setString(32, value);
  @$pb.TagNumber(33)
  $core.bool hasStParam() => $_has(32);
  @$pb.TagNumber(33)
  void clearStParam() => $_clearField(33);

  @$pb.TagNumber(34)
  $core.String get ptype => $_getSZ(33);
  @$pb.TagNumber(34)
  set ptype($core.String value) => $_setString(33, value);
  @$pb.TagNumber(34)
  $core.bool hasPtype() => $_has(33);
  @$pb.TagNumber(34)
  void clearPtype() => $_clearField(34);

  @$pb.TagNumber(35)
  $core.String get oriUgcNid => $_getSZ(34);
  @$pb.TagNumber(35)
  set oriUgcNid($core.String value) => $_setString(34, value);
  @$pb.TagNumber(35)
  $core.bool hasOriUgcNid() => $_has(34);
  @$pb.TagNumber(35)
  void clearOriUgcNid() => $_clearField(35);

  @$pb.TagNumber(36)
  $core.String get oriUgcVid => $_getSZ(35);
  @$pb.TagNumber(36)
  set oriUgcVid($core.String value) => $_setString(35, value);
  @$pb.TagNumber(36)
  $core.bool hasOriUgcVid() => $_has(35);
  @$pb.TagNumber(36)
  void clearOriUgcVid() => $_clearField(36);

  @$pb.TagNumber(37)
  $core.String get oriUgcTid => $_getSZ(36);
  @$pb.TagNumber(37)
  set oriUgcTid($core.String value) => $_setString(36, value);
  @$pb.TagNumber(37)
  $core.bool hasOriUgcTid() => $_has(36);
  @$pb.TagNumber(37)
  void clearOriUgcTid() => $_clearField(37);

  @$pb.TagNumber(38)
  $core.String get oriUgcType => $_getSZ(37);
  @$pb.TagNumber(38)
  set oriUgcType($core.String value) => $_setString(37, value);
  @$pb.TagNumber(38)
  $core.bool hasOriUgcType() => $_has(37);
  @$pb.TagNumber(38)
  void clearOriUgcType() => $_clearField(38);

  @$pb.TagNumber(39)
  $core.String get isLocation => $_getSZ(38);
  @$pb.TagNumber(39)
  set isLocation($core.String value) => $_setString(38, value);
  @$pb.TagNumber(39)
  $core.bool hasIsLocation() => $_has(38);
  @$pb.TagNumber(39)
  void clearIsLocation() => $_clearField(39);

  @$pb.TagNumber(40)
  $core.String get lat => $_getSZ(39);
  @$pb.TagNumber(40)
  set lat($core.String value) => $_setString(39, value);
  @$pb.TagNumber(40)
  $core.bool hasLat() => $_has(39);
  @$pb.TagNumber(40)
  void clearLat() => $_clearField(40);

  @$pb.TagNumber(41)
  $core.String get lng => $_getSZ(40);
  @$pb.TagNumber(41)
  set lng($core.String value) => $_setString(40, value);
  @$pb.TagNumber(41)
  $core.bool hasLng() => $_has(40);
  @$pb.TagNumber(41)
  void clearLng() => $_clearField(41);

  @$pb.TagNumber(42)
  $core.String get name => $_getSZ(41);
  @$pb.TagNumber(42)
  set name($core.String value) => $_setString(41, value);
  @$pb.TagNumber(42)
  $core.bool hasName() => $_has(41);
  @$pb.TagNumber(42)
  void clearName() => $_clearField(42);

  @$pb.TagNumber(43)
  $core.String get sn => $_getSZ(42);
  @$pb.TagNumber(43)
  set sn($core.String value) => $_setString(42, value);
  @$pb.TagNumber(43)
  $core.bool hasSn() => $_has(42);
  @$pb.TagNumber(43)
  void clearSn() => $_clearField(43);

  @$pb.TagNumber(44)
  $core.String get fromFourmId => $_getSZ(43);
  @$pb.TagNumber(44)
  set fromFourmId($core.String value) => $_setString(43, value);
  @$pb.TagNumber(44)
  $core.bool hasFromFourmId() => $_has(43);
  @$pb.TagNumber(44)
  void clearFromFourmId() => $_clearField(44);

  @$pb.TagNumber(45)
  $core.String get tid => $_getSZ(44);
  @$pb.TagNumber(45)
  set tid($core.String value) => $_setString(44, value);
  @$pb.TagNumber(45)
  $core.bool hasTid() => $_has(44);
  @$pb.TagNumber(45)
  void clearTid() => $_clearField(45);

  @$pb.TagNumber(46)
  $core.String get quoteId => $_getSZ(45);
  @$pb.TagNumber(46)
  set quoteId($core.String value) => $_setString(45, value);
  @$pb.TagNumber(46)
  $core.bool hasQuoteId() => $_has(45);
  @$pb.TagNumber(46)
  void clearQuoteId() => $_clearField(46);

  @$pb.TagNumber(47)
  $core.String get isTwzhiboThread => $_getSZ(46);
  @$pb.TagNumber(47)
  set isTwzhiboThread($core.String value) => $_setString(46, value);
  @$pb.TagNumber(47)
  $core.bool hasIsTwzhiboThread() => $_has(46);
  @$pb.TagNumber(47)
  void clearIsTwzhiboThread() => $_clearField(47);

  @$pb.TagNumber(48)
  $core.String get floorNum => $_getSZ(47);
  @$pb.TagNumber(48)
  set floorNum($core.String value) => $_setString(47, value);
  @$pb.TagNumber(48)
  $core.bool hasFloorNum() => $_has(47);
  @$pb.TagNumber(48)
  void clearFloorNum() => $_clearField(48);

  @$pb.TagNumber(49)
  $core.String get repostid => $_getSZ(48);
  @$pb.TagNumber(49)
  set repostid($core.String value) => $_setString(48, value);
  @$pb.TagNumber(49)
  $core.bool hasRepostid() => $_has(48);
  @$pb.TagNumber(49)
  void clearRepostid() => $_clearField(49);

  @$pb.TagNumber(50)
  $core.String get subPostId => $_getSZ(49);
  @$pb.TagNumber(50)
  set subPostId($core.String value) => $_setString(49, value);
  @$pb.TagNumber(50)
  $core.bool hasSubPostId() => $_has(49);
  @$pb.TagNumber(50)
  void clearSubPostId() => $_clearField(50);

  @$pb.TagNumber(51)
  $core.String get isAd => $_getSZ(50);
  @$pb.TagNumber(51)
  set isAd($core.String value) => $_setString(50, value);
  @$pb.TagNumber(51)
  $core.bool hasIsAd() => $_has(50);
  @$pb.TagNumber(51)
  void clearIsAd() => $_clearField(51);

  @$pb.TagNumber(52)
  $core.String get isAddition => $_getSZ(51);
  @$pb.TagNumber(52)
  set isAddition($core.String value) => $_setString(51, value);
  @$pb.TagNumber(52)
  $core.bool hasIsAddition() => $_has(51);
  @$pb.TagNumber(52)
  void clearIsAddition() => $_clearField(52);

  @$pb.TagNumber(53)
  $core.String get isGiftpost => $_getSZ(52);
  @$pb.TagNumber(53)
  set isGiftpost($core.String value) => $_setString(52, value);
  @$pb.TagNumber(53)
  $core.bool hasIsGiftpost() => $_has(52);
  @$pb.TagNumber(53)
  void clearIsGiftpost() => $_clearField(53);

  @$pb.TagNumber(54)
  $core.String get stType => $_getSZ(53);
  @$pb.TagNumber(54)
  set stType($core.String value) => $_setString(53, value);
  @$pb.TagNumber(54)
  $core.bool hasStType() => $_has(53);
  @$pb.TagNumber(54)
  void clearStType() => $_clearField(54);

  @$pb.TagNumber(55)
  $core.String get postFrom => $_getSZ(54);
  @$pb.TagNumber(55)
  set postFrom($core.String value) => $_setString(54, value);
  @$pb.TagNumber(55)
  $core.bool hasPostFrom() => $_has(54);
  @$pb.TagNumber(55)
  void clearPostFrom() => $_clearField(55);

  @$pb.TagNumber(56)
  $core.String get realLat => $_getSZ(55);
  @$pb.TagNumber(56)
  set realLat($core.String value) => $_setString(55, value);
  @$pb.TagNumber(56)
  $core.bool hasRealLat() => $_has(55);
  @$pb.TagNumber(56)
  void clearRealLat() => $_clearField(56);

  @$pb.TagNumber(57)
  $core.String get realLng => $_getSZ(56);
  @$pb.TagNumber(57)
  set realLng($core.String value) => $_setString(56, value);
  @$pb.TagNumber(57)
  $core.bool hasRealLng() => $_has(56);
  @$pb.TagNumber(57)
  void clearRealLng() => $_clearField(57);

  @$pb.TagNumber(58)
  $core.String get nameShow => $_getSZ(57);
  @$pb.TagNumber(58)
  set nameShow($core.String value) => $_setString(57, value);
  @$pb.TagNumber(58)
  $core.bool hasNameShow() => $_has(57);
  @$pb.TagNumber(58)
  void clearNameShow() => $_clearField(58);

  @$pb.TagNumber(59)
  $core.String get isWorks => $_getSZ(58);
  @$pb.TagNumber(59)
  set isWorks($core.String value) => $_setString(58, value);
  @$pb.TagNumber(59)
  $core.bool hasIsWorks() => $_has(58);
  @$pb.TagNumber(59)
  void clearIsWorks() => $_clearField(59);

  @$pb.TagNumber(60)
  $core.String get isPictxt => $_getSZ(59);
  @$pb.TagNumber(60)
  set isPictxt($core.String value) => $_setString(59, value);
  @$pb.TagNumber(60)
  $core.bool hasIsPictxt() => $_has(59);
  @$pb.TagNumber(60)
  void clearIsPictxt() => $_clearField(60);

  @$pb.TagNumber(61)
  $core.String get isStory => $_getSZ(60);
  @$pb.TagNumber(61)
  set isStory($core.String value) => $_setString(60, value);
  @$pb.TagNumber(61)
  $core.bool hasIsStory() => $_has(60);
  @$pb.TagNumber(61)
  void clearIsStory() => $_clearField(61);

  @$pb.TagNumber(62)
  $core.String get jid => $_getSZ(61);
  @$pb.TagNumber(62)
  set jid($core.String value) => $_setString(61, value);
  @$pb.TagNumber(62)
  $core.bool hasJid() => $_has(61);
  @$pb.TagNumber(62)
  void clearJid() => $_clearField(62);

  @$pb.TagNumber(63)
  $core.String get jfrom => $_getSZ(62);
  @$pb.TagNumber(63)
  set jfrom($core.String value) => $_setString(62, value);
  @$pb.TagNumber(63)
  $core.bool hasJfrom() => $_has(62);
  @$pb.TagNumber(63)
  void clearJfrom() => $_clearField(63);

  @$pb.TagNumber(64)
  $core.int get showCustomFigure => $_getIZ(63);
  @$pb.TagNumber(64)
  set showCustomFigure($core.int value) => $_setSignedInt32(63, value);
  @$pb.TagNumber(64)
  $core.bool hasShowCustomFigure() => $_has(63);
  @$pb.TagNumber(64)
  void clearShowCustomFigure() => $_clearField(64);

  @$pb.TagNumber(65)
  $core.String get fromCategoryId => $_getSZ(64);
  @$pb.TagNumber(65)
  set fromCategoryId($core.String value) => $_setString(64, value);
  @$pb.TagNumber(65)
  $core.bool hasFromCategoryId() => $_has(64);
  @$pb.TagNumber(65)
  void clearFromCategoryId() => $_clearField(65);

  @$pb.TagNumber(66)
  $core.String get toCategoryId => $_getSZ(65);
  @$pb.TagNumber(66)
  set toCategoryId($core.String value) => $_setString(65, value);
  @$pb.TagNumber(66)
  $core.bool hasToCategoryId() => $_has(65);
  @$pb.TagNumber(66)
  void clearToCategoryId() => $_clearField(66);

  @$pb.TagNumber(67)
  $core.int get isShowBless => $_getIZ(66);
  @$pb.TagNumber(67)
  set isShowBless($core.int value) => $_setSignedInt32(66, value);
  @$pb.TagNumber(67)
  $core.bool hasIsShowBless() => $_has(66);
  @$pb.TagNumber(67)
  void clearIsShowBless() => $_clearField(67);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
