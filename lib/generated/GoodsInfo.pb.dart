// This is a generated file - do not edit.
//
// Generated from GoodsInfo.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'AdCloseInfo.pb.dart' as $2;
import 'ThreadPicList.pb.dart' as $0;
import 'VideoInfo.pb.dart' as $1;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class GoodsInfo extends $pb.GeneratedMessage {
  factory GoodsInfo({
    $core.int? id,
    $core.String? userName,
    $core.String? userPortrait,
    $core.String? threadTitle,
    $core.String? threadPic,
    $core.String? popWindowText,
    $core.int? goodsStyle,
    $core.Iterable<$0.ThreadPicList>? threadPicList,
    $core.int? labelVisible,
    $core.String? labelText,
    $core.int? rankLevel,
    $core.String? threadType,
    $core.String? buttonText,
    $core.String? cardDesc,
    $core.String? cardTag,
    $core.int? width,
    $core.int? height,
    $core.int? labelMeasure,
    $core.String? threadContent,
    $core.String? legoCard,
    $1.VideoInfo? videoInfo,
    $core.String? tagName,
    $core.String? buttonUrl,
    $core.String? adSource,
    $core.String? tagNameUrl,
    $core.String? tagNameWh,
    $core.String? brandIcon,
    $core.String? brandIconWh,
    $2.AdCloseInfo? closeInfo,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (userName != null) result.userName = userName;
    if (userPortrait != null) result.userPortrait = userPortrait;
    if (threadTitle != null) result.threadTitle = threadTitle;
    if (threadPic != null) result.threadPic = threadPic;
    if (popWindowText != null) result.popWindowText = popWindowText;
    if (goodsStyle != null) result.goodsStyle = goodsStyle;
    if (threadPicList != null) result.threadPicList.addAll(threadPicList);
    if (labelVisible != null) result.labelVisible = labelVisible;
    if (labelText != null) result.labelText = labelText;
    if (rankLevel != null) result.rankLevel = rankLevel;
    if (threadType != null) result.threadType = threadType;
    if (buttonText != null) result.buttonText = buttonText;
    if (cardDesc != null) result.cardDesc = cardDesc;
    if (cardTag != null) result.cardTag = cardTag;
    if (width != null) result.width = width;
    if (height != null) result.height = height;
    if (labelMeasure != null) result.labelMeasure = labelMeasure;
    if (threadContent != null) result.threadContent = threadContent;
    if (legoCard != null) result.legoCard = legoCard;
    if (videoInfo != null) result.videoInfo = videoInfo;
    if (tagName != null) result.tagName = tagName;
    if (buttonUrl != null) result.buttonUrl = buttonUrl;
    if (adSource != null) result.adSource = adSource;
    if (tagNameUrl != null) result.tagNameUrl = tagNameUrl;
    if (tagNameWh != null) result.tagNameWh = tagNameWh;
    if (brandIcon != null) result.brandIcon = brandIcon;
    if (brandIconWh != null) result.brandIconWh = brandIconWh;
    if (closeInfo != null) result.closeInfo = closeInfo;
    return result;
  }

  GoodsInfo._();

  factory GoodsInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GoodsInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GoodsInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'userName')
    ..aOS(3, _omitFieldNames ? '' : 'userPortrait')
    ..aOS(4, _omitFieldNames ? '' : 'threadTitle')
    ..aOS(5, _omitFieldNames ? '' : 'threadPic')
    ..aOS(6, _omitFieldNames ? '' : 'popWindowText')
    ..aI(7, _omitFieldNames ? '' : 'goodsStyle')
    ..pPM<$0.ThreadPicList>(8, _omitFieldNames ? '' : 'threadPicList',
        subBuilder: $0.ThreadPicList.create)
    ..aI(9, _omitFieldNames ? '' : 'labelVisible')
    ..aOS(10, _omitFieldNames ? '' : 'labelText')
    ..aI(11, _omitFieldNames ? '' : 'rankLevel')
    ..aOS(12, _omitFieldNames ? '' : 'threadType')
    ..aOS(13, _omitFieldNames ? '' : 'buttonText')
    ..aOS(14, _omitFieldNames ? '' : 'cardDesc')
    ..aOS(15, _omitFieldNames ? '' : 'cardTag')
    ..aI(16, _omitFieldNames ? '' : 'width')
    ..aI(17, _omitFieldNames ? '' : 'height')
    ..aI(18, _omitFieldNames ? '' : 'labelMeasure')
    ..aOS(19, _omitFieldNames ? '' : 'threadContent')
    ..aOS(20, _omitFieldNames ? '' : 'legoCard')
    ..aOM<$1.VideoInfo>(21, _omitFieldNames ? '' : 'videoInfo',
        subBuilder: $1.VideoInfo.create)
    ..aOS(22, _omitFieldNames ? '' : 'tagName')
    ..aOS(23, _omitFieldNames ? '' : 'buttonUrl')
    ..aOS(24, _omitFieldNames ? '' : 'adSource')
    ..aOS(25, _omitFieldNames ? '' : 'tagNameUrl')
    ..aOS(26, _omitFieldNames ? '' : 'tagNameWh')
    ..aOS(27, _omitFieldNames ? '' : 'brandIcon')
    ..aOS(28, _omitFieldNames ? '' : 'brandIconWh')
    ..aOM<$2.AdCloseInfo>(29, _omitFieldNames ? '' : 'closeInfo',
        subBuilder: $2.AdCloseInfo.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GoodsInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GoodsInfo copyWith(void Function(GoodsInfo) updates) =>
      super.copyWith((message) => updates(message as GoodsInfo)) as GoodsInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GoodsInfo create() => GoodsInfo._();
  @$core.override
  GoodsInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GoodsInfo getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GoodsInfo>(create);
  static GoodsInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get userName => $_getSZ(1);
  @$pb.TagNumber(2)
  set userName($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasUserName() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserName() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get userPortrait => $_getSZ(2);
  @$pb.TagNumber(3)
  set userPortrait($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasUserPortrait() => $_has(2);
  @$pb.TagNumber(3)
  void clearUserPortrait() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get threadTitle => $_getSZ(3);
  @$pb.TagNumber(4)
  set threadTitle($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasThreadTitle() => $_has(3);
  @$pb.TagNumber(4)
  void clearThreadTitle() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get threadPic => $_getSZ(4);
  @$pb.TagNumber(5)
  set threadPic($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasThreadPic() => $_has(4);
  @$pb.TagNumber(5)
  void clearThreadPic() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get popWindowText => $_getSZ(5);
  @$pb.TagNumber(6)
  set popWindowText($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasPopWindowText() => $_has(5);
  @$pb.TagNumber(6)
  void clearPopWindowText() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.int get goodsStyle => $_getIZ(6);
  @$pb.TagNumber(7)
  set goodsStyle($core.int value) => $_setSignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasGoodsStyle() => $_has(6);
  @$pb.TagNumber(7)
  void clearGoodsStyle() => $_clearField(7);

  @$pb.TagNumber(8)
  $pb.PbList<$0.ThreadPicList> get threadPicList => $_getList(7);

  @$pb.TagNumber(9)
  $core.int get labelVisible => $_getIZ(8);
  @$pb.TagNumber(9)
  set labelVisible($core.int value) => $_setSignedInt32(8, value);
  @$pb.TagNumber(9)
  $core.bool hasLabelVisible() => $_has(8);
  @$pb.TagNumber(9)
  void clearLabelVisible() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.String get labelText => $_getSZ(9);
  @$pb.TagNumber(10)
  set labelText($core.String value) => $_setString(9, value);
  @$pb.TagNumber(10)
  $core.bool hasLabelText() => $_has(9);
  @$pb.TagNumber(10)
  void clearLabelText() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.int get rankLevel => $_getIZ(10);
  @$pb.TagNumber(11)
  set rankLevel($core.int value) => $_setSignedInt32(10, value);
  @$pb.TagNumber(11)
  $core.bool hasRankLevel() => $_has(10);
  @$pb.TagNumber(11)
  void clearRankLevel() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.String get threadType => $_getSZ(11);
  @$pb.TagNumber(12)
  set threadType($core.String value) => $_setString(11, value);
  @$pb.TagNumber(12)
  $core.bool hasThreadType() => $_has(11);
  @$pb.TagNumber(12)
  void clearThreadType() => $_clearField(12);

  @$pb.TagNumber(13)
  $core.String get buttonText => $_getSZ(12);
  @$pb.TagNumber(13)
  set buttonText($core.String value) => $_setString(12, value);
  @$pb.TagNumber(13)
  $core.bool hasButtonText() => $_has(12);
  @$pb.TagNumber(13)
  void clearButtonText() => $_clearField(13);

  @$pb.TagNumber(14)
  $core.String get cardDesc => $_getSZ(13);
  @$pb.TagNumber(14)
  set cardDesc($core.String value) => $_setString(13, value);
  @$pb.TagNumber(14)
  $core.bool hasCardDesc() => $_has(13);
  @$pb.TagNumber(14)
  void clearCardDesc() => $_clearField(14);

  @$pb.TagNumber(15)
  $core.String get cardTag => $_getSZ(14);
  @$pb.TagNumber(15)
  set cardTag($core.String value) => $_setString(14, value);
  @$pb.TagNumber(15)
  $core.bool hasCardTag() => $_has(14);
  @$pb.TagNumber(15)
  void clearCardTag() => $_clearField(15);

  @$pb.TagNumber(16)
  $core.int get width => $_getIZ(15);
  @$pb.TagNumber(16)
  set width($core.int value) => $_setSignedInt32(15, value);
  @$pb.TagNumber(16)
  $core.bool hasWidth() => $_has(15);
  @$pb.TagNumber(16)
  void clearWidth() => $_clearField(16);

  @$pb.TagNumber(17)
  $core.int get height => $_getIZ(16);
  @$pb.TagNumber(17)
  set height($core.int value) => $_setSignedInt32(16, value);
  @$pb.TagNumber(17)
  $core.bool hasHeight() => $_has(16);
  @$pb.TagNumber(17)
  void clearHeight() => $_clearField(17);

  @$pb.TagNumber(18)
  $core.int get labelMeasure => $_getIZ(17);
  @$pb.TagNumber(18)
  set labelMeasure($core.int value) => $_setSignedInt32(17, value);
  @$pb.TagNumber(18)
  $core.bool hasLabelMeasure() => $_has(17);
  @$pb.TagNumber(18)
  void clearLabelMeasure() => $_clearField(18);

  @$pb.TagNumber(19)
  $core.String get threadContent => $_getSZ(18);
  @$pb.TagNumber(19)
  set threadContent($core.String value) => $_setString(18, value);
  @$pb.TagNumber(19)
  $core.bool hasThreadContent() => $_has(18);
  @$pb.TagNumber(19)
  void clearThreadContent() => $_clearField(19);

  @$pb.TagNumber(20)
  $core.String get legoCard => $_getSZ(19);
  @$pb.TagNumber(20)
  set legoCard($core.String value) => $_setString(19, value);
  @$pb.TagNumber(20)
  $core.bool hasLegoCard() => $_has(19);
  @$pb.TagNumber(20)
  void clearLegoCard() => $_clearField(20);

  @$pb.TagNumber(21)
  $1.VideoInfo get videoInfo => $_getN(20);
  @$pb.TagNumber(21)
  set videoInfo($1.VideoInfo value) => $_setField(21, value);
  @$pb.TagNumber(21)
  $core.bool hasVideoInfo() => $_has(20);
  @$pb.TagNumber(21)
  void clearVideoInfo() => $_clearField(21);
  @$pb.TagNumber(21)
  $1.VideoInfo ensureVideoInfo() => $_ensure(20);

  @$pb.TagNumber(22)
  $core.String get tagName => $_getSZ(21);
  @$pb.TagNumber(22)
  set tagName($core.String value) => $_setString(21, value);
  @$pb.TagNumber(22)
  $core.bool hasTagName() => $_has(21);
  @$pb.TagNumber(22)
  void clearTagName() => $_clearField(22);

  @$pb.TagNumber(23)
  $core.String get buttonUrl => $_getSZ(22);
  @$pb.TagNumber(23)
  set buttonUrl($core.String value) => $_setString(22, value);
  @$pb.TagNumber(23)
  $core.bool hasButtonUrl() => $_has(22);
  @$pb.TagNumber(23)
  void clearButtonUrl() => $_clearField(23);

  @$pb.TagNumber(24)
  $core.String get adSource => $_getSZ(23);
  @$pb.TagNumber(24)
  set adSource($core.String value) => $_setString(23, value);
  @$pb.TagNumber(24)
  $core.bool hasAdSource() => $_has(23);
  @$pb.TagNumber(24)
  void clearAdSource() => $_clearField(24);

  @$pb.TagNumber(25)
  $core.String get tagNameUrl => $_getSZ(24);
  @$pb.TagNumber(25)
  set tagNameUrl($core.String value) => $_setString(24, value);
  @$pb.TagNumber(25)
  $core.bool hasTagNameUrl() => $_has(24);
  @$pb.TagNumber(25)
  void clearTagNameUrl() => $_clearField(25);

  @$pb.TagNumber(26)
  $core.String get tagNameWh => $_getSZ(25);
  @$pb.TagNumber(26)
  set tagNameWh($core.String value) => $_setString(25, value);
  @$pb.TagNumber(26)
  $core.bool hasTagNameWh() => $_has(25);
  @$pb.TagNumber(26)
  void clearTagNameWh() => $_clearField(26);

  @$pb.TagNumber(27)
  $core.String get brandIcon => $_getSZ(26);
  @$pb.TagNumber(27)
  set brandIcon($core.String value) => $_setString(26, value);
  @$pb.TagNumber(27)
  $core.bool hasBrandIcon() => $_has(26);
  @$pb.TagNumber(27)
  void clearBrandIcon() => $_clearField(27);

  @$pb.TagNumber(28)
  $core.String get brandIconWh => $_getSZ(27);
  @$pb.TagNumber(28)
  set brandIconWh($core.String value) => $_setString(27, value);
  @$pb.TagNumber(28)
  $core.bool hasBrandIconWh() => $_has(27);
  @$pb.TagNumber(28)
  void clearBrandIconWh() => $_clearField(28);

  @$pb.TagNumber(29)
  $2.AdCloseInfo get closeInfo => $_getN(28);
  @$pb.TagNumber(29)
  set closeInfo($2.AdCloseInfo value) => $_setField(29, value);
  @$pb.TagNumber(29)
  $core.bool hasCloseInfo() => $_has(28);
  @$pb.TagNumber(29)
  void clearCloseInfo() => $_clearField(29);
  @$pb.TagNumber(29)
  $2.AdCloseInfo ensureCloseInfo() => $_ensure(28);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
