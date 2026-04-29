// This is a generated file - do not edit.
//
// Generated from Profile/ProfileResponseData.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../AlaLiveInfo.pb.dart' as $15;
import '../Anti.pb.dart' as $1;
import '../BannerImage.pb.dart' as $18;
import '../BubbleInfo.pb.dart' as $27;
import '../CustomGrid.pb.dart' as $30;
import '../DealWindow.pb.dart' as $7;
import '../DynamicInfo.pb.dart' as $11;
import '../Feedback.pb.dart' as $9;
import '../ForumDynamic.pb.dart' as $12;
import '../GoodsWin.pb.dart' as $22;
import '../Highlist.pb.dart' as $6;
import '../HotUserRankEntry.pb.dart' as $23;
import '../ModuleInfo.pb.dart' as $14;
import '../NamoaixudEntry.pb.dart' as $26;
import '../PostInfoList.pb.dart' as $3;
import '../SmartApp.pb.dart' as $19;
import '../TbBookrack.pb.dart' as $8;
import '../ThreadInfo.pb.dart' as $21;
import '../UcCard.pb.dart' as $5;
import '../UcCardInfo.pb.dart' as $29;
import '../User.pb.dart' as $0;
import '../UserManChannelInfo.pb.dart' as $10;
import '../UserMap.pb.dart' as $17;
import 'FinanceTab.pb.dart' as $24;
import 'MemberBlockInfo.pb.dart' as $25;
import 'Namoaixud.pb.dart' as $20;
import 'NicknameInfo.pb.dart' as $16;
import 'TAInfo.pb.dart' as $2;
import 'UserAgreeInfo.pb.dart' as $13;
import 'UserGodInfo.pb.dart' as $4;
import 'VipBanner.pb.dart' as $28;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class ProfileResponseData extends $pb.GeneratedMessage {
  factory ProfileResponseData({
    $0.User? user,
    $1.Anti? antiStat,
    $2.TAInfo? tainfo,
    $core.Iterable<$3.PostInfoList>? postList,
    $4.UserGodInfo? userGodInfo,
    $5.UcCard? ucCard,
    $6.Highlist? highs,
    $7.DealWindow? window,
    $8.TbBookrack? tbbookrack,
    $9.Feedback? feedback,
    $10.UserManChannelInfo? videoChannelInfo,
    $core.Iterable<$11.DynamicInfo>? dynamicList,
    $core.Iterable<$12.ForumDynamic>? concernedForumList,
    $13.UserAgreeInfo? userAgreeInfo,
    $14.ModuleInfo? moduleInfo,
    $15.AlaLiveInfo? alaLiveInfo,
    $16.NicknameInfo? nicknameInfo,
    $core.Iterable<$15.AlaLiveInfo>? alaLiveRecord,
    $core.Iterable<$17.UserMap>? urlMap,
    $core.Iterable<$18.BannerImage>? banner,
    $core.Iterable<$19.SmartApp>? recomNawsList,
    $20.Namoaixud? namoaixud,
    $core.Iterable<$21.ThreadInfo>? newestDynamicList,
    $22.GoodsWin? goodsWin,
    $23.HotUserRankEntry? newGodRankinfo,
    $core.String? uk,
    $core.int? isBlackWhite,
    $core.int? workTabId,
    $24.FinanceTab? financeTab,
    $25.MemberBlockInfo? blockInfo,
    $26.NamoaixudEntry? namoaixudEntry,
    $27.BubbleInfo? bubbleInfo,
    $28.VipBanner? vipBanner,
    $core.Iterable<$29.UcCardInfo>? commonCard,
    $core.Iterable<$30.CustomGrid>? customGrid,
    $core.Iterable<$30.CustomGrid>? moreGrid,
  }) {
    final result = create();
    if (user != null) result.user = user;
    if (antiStat != null) result.antiStat = antiStat;
    if (tainfo != null) result.tainfo = tainfo;
    if (postList != null) result.postList.addAll(postList);
    if (userGodInfo != null) result.userGodInfo = userGodInfo;
    if (ucCard != null) result.ucCard = ucCard;
    if (highs != null) result.highs = highs;
    if (window != null) result.window = window;
    if (tbbookrack != null) result.tbbookrack = tbbookrack;
    if (feedback != null) result.feedback = feedback;
    if (videoChannelInfo != null) result.videoChannelInfo = videoChannelInfo;
    if (dynamicList != null) result.dynamicList.addAll(dynamicList);
    if (concernedForumList != null)
      result.concernedForumList.addAll(concernedForumList);
    if (userAgreeInfo != null) result.userAgreeInfo = userAgreeInfo;
    if (moduleInfo != null) result.moduleInfo = moduleInfo;
    if (alaLiveInfo != null) result.alaLiveInfo = alaLiveInfo;
    if (nicknameInfo != null) result.nicknameInfo = nicknameInfo;
    if (alaLiveRecord != null) result.alaLiveRecord.addAll(alaLiveRecord);
    if (urlMap != null) result.urlMap.addAll(urlMap);
    if (banner != null) result.banner.addAll(banner);
    if (recomNawsList != null) result.recomNawsList.addAll(recomNawsList);
    if (namoaixud != null) result.namoaixud = namoaixud;
    if (newestDynamicList != null)
      result.newestDynamicList.addAll(newestDynamicList);
    if (goodsWin != null) result.goodsWin = goodsWin;
    if (newGodRankinfo != null) result.newGodRankinfo = newGodRankinfo;
    if (uk != null) result.uk = uk;
    if (isBlackWhite != null) result.isBlackWhite = isBlackWhite;
    if (workTabId != null) result.workTabId = workTabId;
    if (financeTab != null) result.financeTab = financeTab;
    if (blockInfo != null) result.blockInfo = blockInfo;
    if (namoaixudEntry != null) result.namoaixudEntry = namoaixudEntry;
    if (bubbleInfo != null) result.bubbleInfo = bubbleInfo;
    if (vipBanner != null) result.vipBanner = vipBanner;
    if (commonCard != null) result.commonCard.addAll(commonCard);
    if (customGrid != null) result.customGrid.addAll(customGrid);
    if (moreGrid != null) result.moreGrid.addAll(moreGrid);
    return result;
  }

  ProfileResponseData._();

  factory ProfileResponseData.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ProfileResponseData.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ProfileResponseData',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba.profile'),
      createEmptyInstance: create)
    ..aOM<$0.User>(1, _omitFieldNames ? '' : 'user', subBuilder: $0.User.create)
    ..aOM<$1.Anti>(2, _omitFieldNames ? '' : 'antiStat',
        subBuilder: $1.Anti.create)
    ..aOM<$2.TAInfo>(3, _omitFieldNames ? '' : 'tainfo',
        subBuilder: $2.TAInfo.create)
    ..pPM<$3.PostInfoList>(4, _omitFieldNames ? '' : 'postList',
        subBuilder: $3.PostInfoList.create)
    ..aOM<$4.UserGodInfo>(5, _omitFieldNames ? '' : 'userGodInfo',
        subBuilder: $4.UserGodInfo.create)
    ..aOM<$5.UcCard>(6, _omitFieldNames ? '' : 'ucCard',
        subBuilder: $5.UcCard.create)
    ..aOM<$6.Highlist>(7, _omitFieldNames ? '' : 'highs',
        subBuilder: $6.Highlist.create)
    ..aOM<$7.DealWindow>(8, _omitFieldNames ? '' : 'window',
        subBuilder: $7.DealWindow.create)
    ..aOM<$8.TbBookrack>(9, _omitFieldNames ? '' : 'tbbookrack',
        subBuilder: $8.TbBookrack.create)
    ..aOM<$9.Feedback>(10, _omitFieldNames ? '' : 'feedback',
        subBuilder: $9.Feedback.create)
    ..aOM<$10.UserManChannelInfo>(11, _omitFieldNames ? '' : 'videoChannelInfo',
        subBuilder: $10.UserManChannelInfo.create)
    ..pPM<$11.DynamicInfo>(12, _omitFieldNames ? '' : 'dynamicList',
        subBuilder: $11.DynamicInfo.create)
    ..pPM<$12.ForumDynamic>(13, _omitFieldNames ? '' : 'concernedForumList',
        subBuilder: $12.ForumDynamic.create)
    ..aOM<$13.UserAgreeInfo>(14, _omitFieldNames ? '' : 'userAgreeInfo',
        subBuilder: $13.UserAgreeInfo.create)
    ..aOM<$14.ModuleInfo>(15, _omitFieldNames ? '' : 'moduleInfo',
        subBuilder: $14.ModuleInfo.create)
    ..aOM<$15.AlaLiveInfo>(16, _omitFieldNames ? '' : 'alaLiveInfo',
        subBuilder: $15.AlaLiveInfo.create)
    ..aOM<$16.NicknameInfo>(17, _omitFieldNames ? '' : 'nicknameInfo',
        subBuilder: $16.NicknameInfo.create)
    ..pPM<$15.AlaLiveInfo>(19, _omitFieldNames ? '' : 'alaLiveRecord',
        subBuilder: $15.AlaLiveInfo.create)
    ..pPM<$17.UserMap>(20, _omitFieldNames ? '' : 'urlMap',
        subBuilder: $17.UserMap.create)
    ..pPM<$18.BannerImage>(22, _omitFieldNames ? '' : 'banner',
        subBuilder: $18.BannerImage.create)
    ..pPM<$19.SmartApp>(23, _omitFieldNames ? '' : 'recomNawsList',
        subBuilder: $19.SmartApp.create)
    ..aOM<$20.Namoaixud>(24, _omitFieldNames ? '' : 'namoaixud',
        subBuilder: $20.Namoaixud.create)
    ..pPM<$21.ThreadInfo>(25, _omitFieldNames ? '' : 'newestDynamicList',
        subBuilder: $21.ThreadInfo.create)
    ..aOM<$22.GoodsWin>(26, _omitFieldNames ? '' : 'goodsWin',
        subBuilder: $22.GoodsWin.create)
    ..aOM<$23.HotUserRankEntry>(27, _omitFieldNames ? '' : 'newGodRankinfo',
        subBuilder: $23.HotUserRankEntry.create)
    ..aOS(28, _omitFieldNames ? '' : 'uk')
    ..aI(29, _omitFieldNames ? '' : 'isBlackWhite')
    ..aI(34, _omitFieldNames ? '' : 'workTabId', fieldType: $pb.PbFieldType.OU3)
    ..aOM<$24.FinanceTab>(35, _omitFieldNames ? '' : 'financeTab',
        subBuilder: $24.FinanceTab.create)
    ..aOM<$25.MemberBlockInfo>(36, _omitFieldNames ? '' : 'blockInfo',
        subBuilder: $25.MemberBlockInfo.create)
    ..aOM<$26.NamoaixudEntry>(37, _omitFieldNames ? '' : 'namoaixudEntry',
        subBuilder: $26.NamoaixudEntry.create)
    ..aOM<$27.BubbleInfo>(38, _omitFieldNames ? '' : 'bubbleInfo',
        subBuilder: $27.BubbleInfo.create)
    ..aOM<$28.VipBanner>(39, _omitFieldNames ? '' : 'vipBanner',
        subBuilder: $28.VipBanner.create)
    ..pPM<$29.UcCardInfo>(40, _omitFieldNames ? '' : 'commonCard',
        subBuilder: $29.UcCardInfo.create)
    ..pPM<$30.CustomGrid>(41, _omitFieldNames ? '' : 'customGrid',
        subBuilder: $30.CustomGrid.create)
    ..pPM<$30.CustomGrid>(42, _omitFieldNames ? '' : 'moreGrid',
        subBuilder: $30.CustomGrid.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ProfileResponseData clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ProfileResponseData copyWith(void Function(ProfileResponseData) updates) =>
      super.copyWith((message) => updates(message as ProfileResponseData))
          as ProfileResponseData;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProfileResponseData create() => ProfileResponseData._();
  @$core.override
  ProfileResponseData createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ProfileResponseData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ProfileResponseData>(create);
  static ProfileResponseData? _defaultInstance;

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
  $1.Anti get antiStat => $_getN(1);
  @$pb.TagNumber(2)
  set antiStat($1.Anti value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasAntiStat() => $_has(1);
  @$pb.TagNumber(2)
  void clearAntiStat() => $_clearField(2);
  @$pb.TagNumber(2)
  $1.Anti ensureAntiStat() => $_ensure(1);

  @$pb.TagNumber(3)
  $2.TAInfo get tainfo => $_getN(2);
  @$pb.TagNumber(3)
  set tainfo($2.TAInfo value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasTainfo() => $_has(2);
  @$pb.TagNumber(3)
  void clearTainfo() => $_clearField(3);
  @$pb.TagNumber(3)
  $2.TAInfo ensureTainfo() => $_ensure(2);

  @$pb.TagNumber(4)
  $pb.PbList<$3.PostInfoList> get postList => $_getList(3);

  @$pb.TagNumber(5)
  $4.UserGodInfo get userGodInfo => $_getN(4);
  @$pb.TagNumber(5)
  set userGodInfo($4.UserGodInfo value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasUserGodInfo() => $_has(4);
  @$pb.TagNumber(5)
  void clearUserGodInfo() => $_clearField(5);
  @$pb.TagNumber(5)
  $4.UserGodInfo ensureUserGodInfo() => $_ensure(4);

  @$pb.TagNumber(6)
  $5.UcCard get ucCard => $_getN(5);
  @$pb.TagNumber(6)
  set ucCard($5.UcCard value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasUcCard() => $_has(5);
  @$pb.TagNumber(6)
  void clearUcCard() => $_clearField(6);
  @$pb.TagNumber(6)
  $5.UcCard ensureUcCard() => $_ensure(5);

  @$pb.TagNumber(7)
  $6.Highlist get highs => $_getN(6);
  @$pb.TagNumber(7)
  set highs($6.Highlist value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasHighs() => $_has(6);
  @$pb.TagNumber(7)
  void clearHighs() => $_clearField(7);
  @$pb.TagNumber(7)
  $6.Highlist ensureHighs() => $_ensure(6);

  @$pb.TagNumber(8)
  $7.DealWindow get window => $_getN(7);
  @$pb.TagNumber(8)
  set window($7.DealWindow value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasWindow() => $_has(7);
  @$pb.TagNumber(8)
  void clearWindow() => $_clearField(8);
  @$pb.TagNumber(8)
  $7.DealWindow ensureWindow() => $_ensure(7);

  @$pb.TagNumber(9)
  $8.TbBookrack get tbbookrack => $_getN(8);
  @$pb.TagNumber(9)
  set tbbookrack($8.TbBookrack value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasTbbookrack() => $_has(8);
  @$pb.TagNumber(9)
  void clearTbbookrack() => $_clearField(9);
  @$pb.TagNumber(9)
  $8.TbBookrack ensureTbbookrack() => $_ensure(8);

  @$pb.TagNumber(10)
  $9.Feedback get feedback => $_getN(9);
  @$pb.TagNumber(10)
  set feedback($9.Feedback value) => $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasFeedback() => $_has(9);
  @$pb.TagNumber(10)
  void clearFeedback() => $_clearField(10);
  @$pb.TagNumber(10)
  $9.Feedback ensureFeedback() => $_ensure(9);

  @$pb.TagNumber(11)
  $10.UserManChannelInfo get videoChannelInfo => $_getN(10);
  @$pb.TagNumber(11)
  set videoChannelInfo($10.UserManChannelInfo value) => $_setField(11, value);
  @$pb.TagNumber(11)
  $core.bool hasVideoChannelInfo() => $_has(10);
  @$pb.TagNumber(11)
  void clearVideoChannelInfo() => $_clearField(11);
  @$pb.TagNumber(11)
  $10.UserManChannelInfo ensureVideoChannelInfo() => $_ensure(10);

  @$pb.TagNumber(12)
  $pb.PbList<$11.DynamicInfo> get dynamicList => $_getList(11);

  @$pb.TagNumber(13)
  $pb.PbList<$12.ForumDynamic> get concernedForumList => $_getList(12);

  @$pb.TagNumber(14)
  $13.UserAgreeInfo get userAgreeInfo => $_getN(13);
  @$pb.TagNumber(14)
  set userAgreeInfo($13.UserAgreeInfo value) => $_setField(14, value);
  @$pb.TagNumber(14)
  $core.bool hasUserAgreeInfo() => $_has(13);
  @$pb.TagNumber(14)
  void clearUserAgreeInfo() => $_clearField(14);
  @$pb.TagNumber(14)
  $13.UserAgreeInfo ensureUserAgreeInfo() => $_ensure(13);

  @$pb.TagNumber(15)
  $14.ModuleInfo get moduleInfo => $_getN(14);
  @$pb.TagNumber(15)
  set moduleInfo($14.ModuleInfo value) => $_setField(15, value);
  @$pb.TagNumber(15)
  $core.bool hasModuleInfo() => $_has(14);
  @$pb.TagNumber(15)
  void clearModuleInfo() => $_clearField(15);
  @$pb.TagNumber(15)
  $14.ModuleInfo ensureModuleInfo() => $_ensure(14);

  @$pb.TagNumber(16)
  $15.AlaLiveInfo get alaLiveInfo => $_getN(15);
  @$pb.TagNumber(16)
  set alaLiveInfo($15.AlaLiveInfo value) => $_setField(16, value);
  @$pb.TagNumber(16)
  $core.bool hasAlaLiveInfo() => $_has(15);
  @$pb.TagNumber(16)
  void clearAlaLiveInfo() => $_clearField(16);
  @$pb.TagNumber(16)
  $15.AlaLiveInfo ensureAlaLiveInfo() => $_ensure(15);

  @$pb.TagNumber(17)
  $16.NicknameInfo get nicknameInfo => $_getN(16);
  @$pb.TagNumber(17)
  set nicknameInfo($16.NicknameInfo value) => $_setField(17, value);
  @$pb.TagNumber(17)
  $core.bool hasNicknameInfo() => $_has(16);
  @$pb.TagNumber(17)
  void clearNicknameInfo() => $_clearField(17);
  @$pb.TagNumber(17)
  $16.NicknameInfo ensureNicknameInfo() => $_ensure(16);

  @$pb.TagNumber(19)
  $pb.PbList<$15.AlaLiveInfo> get alaLiveRecord => $_getList(17);

  @$pb.TagNumber(20)
  $pb.PbList<$17.UserMap> get urlMap => $_getList(18);

  @$pb.TagNumber(22)
  $pb.PbList<$18.BannerImage> get banner => $_getList(19);

  @$pb.TagNumber(23)
  $pb.PbList<$19.SmartApp> get recomNawsList => $_getList(20);

  @$pb.TagNumber(24)
  $20.Namoaixud get namoaixud => $_getN(21);
  @$pb.TagNumber(24)
  set namoaixud($20.Namoaixud value) => $_setField(24, value);
  @$pb.TagNumber(24)
  $core.bool hasNamoaixud() => $_has(21);
  @$pb.TagNumber(24)
  void clearNamoaixud() => $_clearField(24);
  @$pb.TagNumber(24)
  $20.Namoaixud ensureNamoaixud() => $_ensure(21);

  @$pb.TagNumber(25)
  $pb.PbList<$21.ThreadInfo> get newestDynamicList => $_getList(22);

  @$pb.TagNumber(26)
  $22.GoodsWin get goodsWin => $_getN(23);
  @$pb.TagNumber(26)
  set goodsWin($22.GoodsWin value) => $_setField(26, value);
  @$pb.TagNumber(26)
  $core.bool hasGoodsWin() => $_has(23);
  @$pb.TagNumber(26)
  void clearGoodsWin() => $_clearField(26);
  @$pb.TagNumber(26)
  $22.GoodsWin ensureGoodsWin() => $_ensure(23);

  @$pb.TagNumber(27)
  $23.HotUserRankEntry get newGodRankinfo => $_getN(24);
  @$pb.TagNumber(27)
  set newGodRankinfo($23.HotUserRankEntry value) => $_setField(27, value);
  @$pb.TagNumber(27)
  $core.bool hasNewGodRankinfo() => $_has(24);
  @$pb.TagNumber(27)
  void clearNewGodRankinfo() => $_clearField(27);
  @$pb.TagNumber(27)
  $23.HotUserRankEntry ensureNewGodRankinfo() => $_ensure(24);

  @$pb.TagNumber(28)
  $core.String get uk => $_getSZ(25);
  @$pb.TagNumber(28)
  set uk($core.String value) => $_setString(25, value);
  @$pb.TagNumber(28)
  $core.bool hasUk() => $_has(25);
  @$pb.TagNumber(28)
  void clearUk() => $_clearField(28);

  @$pb.TagNumber(29)
  $core.int get isBlackWhite => $_getIZ(26);
  @$pb.TagNumber(29)
  set isBlackWhite($core.int value) => $_setSignedInt32(26, value);
  @$pb.TagNumber(29)
  $core.bool hasIsBlackWhite() => $_has(26);
  @$pb.TagNumber(29)
  void clearIsBlackWhite() => $_clearField(29);

  @$pb.TagNumber(34)
  $core.int get workTabId => $_getIZ(27);
  @$pb.TagNumber(34)
  set workTabId($core.int value) => $_setUnsignedInt32(27, value);
  @$pb.TagNumber(34)
  $core.bool hasWorkTabId() => $_has(27);
  @$pb.TagNumber(34)
  void clearWorkTabId() => $_clearField(34);

  @$pb.TagNumber(35)
  $24.FinanceTab get financeTab => $_getN(28);
  @$pb.TagNumber(35)
  set financeTab($24.FinanceTab value) => $_setField(35, value);
  @$pb.TagNumber(35)
  $core.bool hasFinanceTab() => $_has(28);
  @$pb.TagNumber(35)
  void clearFinanceTab() => $_clearField(35);
  @$pb.TagNumber(35)
  $24.FinanceTab ensureFinanceTab() => $_ensure(28);

  @$pb.TagNumber(36)
  $25.MemberBlockInfo get blockInfo => $_getN(29);
  @$pb.TagNumber(36)
  set blockInfo($25.MemberBlockInfo value) => $_setField(36, value);
  @$pb.TagNumber(36)
  $core.bool hasBlockInfo() => $_has(29);
  @$pb.TagNumber(36)
  void clearBlockInfo() => $_clearField(36);
  @$pb.TagNumber(36)
  $25.MemberBlockInfo ensureBlockInfo() => $_ensure(29);

  @$pb.TagNumber(37)
  $26.NamoaixudEntry get namoaixudEntry => $_getN(30);
  @$pb.TagNumber(37)
  set namoaixudEntry($26.NamoaixudEntry value) => $_setField(37, value);
  @$pb.TagNumber(37)
  $core.bool hasNamoaixudEntry() => $_has(30);
  @$pb.TagNumber(37)
  void clearNamoaixudEntry() => $_clearField(37);
  @$pb.TagNumber(37)
  $26.NamoaixudEntry ensureNamoaixudEntry() => $_ensure(30);

  @$pb.TagNumber(38)
  $27.BubbleInfo get bubbleInfo => $_getN(31);
  @$pb.TagNumber(38)
  set bubbleInfo($27.BubbleInfo value) => $_setField(38, value);
  @$pb.TagNumber(38)
  $core.bool hasBubbleInfo() => $_has(31);
  @$pb.TagNumber(38)
  void clearBubbleInfo() => $_clearField(38);
  @$pb.TagNumber(38)
  $27.BubbleInfo ensureBubbleInfo() => $_ensure(31);

  @$pb.TagNumber(39)
  $28.VipBanner get vipBanner => $_getN(32);
  @$pb.TagNumber(39)
  set vipBanner($28.VipBanner value) => $_setField(39, value);
  @$pb.TagNumber(39)
  $core.bool hasVipBanner() => $_has(32);
  @$pb.TagNumber(39)
  void clearVipBanner() => $_clearField(39);
  @$pb.TagNumber(39)
  $28.VipBanner ensureVipBanner() => $_ensure(32);

  @$pb.TagNumber(40)
  $pb.PbList<$29.UcCardInfo> get commonCard => $_getList(33);

  @$pb.TagNumber(41)
  $pb.PbList<$30.CustomGrid> get customGrid => $_getList(34);

  @$pb.TagNumber(42)
  $pb.PbList<$30.CustomGrid> get moreGrid => $_getList(35);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
