// This is a generated file - do not edit.
//
// Generated from TopicList/TopicList.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../CommonRequest.pb.dart' as $0;
import '../Error.pb.dart' as $3;
import '../Media.pb.dart' as $2;
import '../VideoInfo.pb.dart' as $1;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class TopicListRequestData extends $pb.GeneratedMessage {
  factory TopicListRequestData({
    $0.CommonRequest? common,
    $core.String? callFrom,
    $core.String? listType,
    $core.String? needTabList,
    $fixnum.Int64? fid,
  }) {
    final result = create();
    if (common != null) result.common = common;
    if (callFrom != null) result.callFrom = callFrom;
    if (listType != null) result.listType = listType;
    if (needTabList != null) result.needTabList = needTabList;
    if (fid != null) result.fid = fid;
    return result;
  }

  TopicListRequestData._();

  factory TopicListRequestData.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TopicListRequestData.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TopicListRequestData',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'tieba.topicList'),
      createEmptyInstance: create)
    ..aOM<$0.CommonRequest>(1, _omitFieldNames ? '' : 'common',
        subBuilder: $0.CommonRequest.create)
    ..aOS(2, _omitFieldNames ? '' : 'callFrom')
    ..aOS(3, _omitFieldNames ? '' : 'listType')
    ..aOS(4, _omitFieldNames ? '' : 'needTabList')
    ..aInt64(5, _omitFieldNames ? '' : 'fid')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TopicListRequestData clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TopicListRequestData copyWith(void Function(TopicListRequestData) updates) =>
      super.copyWith((message) => updates(message as TopicListRequestData))
          as TopicListRequestData;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TopicListRequestData create() => TopicListRequestData._();
  @$core.override
  TopicListRequestData createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TopicListRequestData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TopicListRequestData>(create);
  static TopicListRequestData? _defaultInstance;

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
  $core.String get callFrom => $_getSZ(1);
  @$pb.TagNumber(2)
  set callFrom($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCallFrom() => $_has(1);
  @$pb.TagNumber(2)
  void clearCallFrom() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get listType => $_getSZ(2);
  @$pb.TagNumber(3)
  set listType($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasListType() => $_has(2);
  @$pb.TagNumber(3)
  void clearListType() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get needTabList => $_getSZ(3);
  @$pb.TagNumber(4)
  set needTabList($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasNeedTabList() => $_has(3);
  @$pb.TagNumber(4)
  void clearNeedTabList() => $_clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get fid => $_getI64(4);
  @$pb.TagNumber(5)
  set fid($fixnum.Int64 value) => $_setInt64(4, value);
  @$pb.TagNumber(5)
  $core.bool hasFid() => $_has(4);
  @$pb.TagNumber(5)
  void clearFid() => $_clearField(5);
}

class TopicListRequest extends $pb.GeneratedMessage {
  factory TopicListRequest({
    TopicListRequestData? data,
  }) {
    final result = create();
    if (data != null) result.data = data;
    return result;
  }

  TopicListRequest._();

  factory TopicListRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TopicListRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TopicListRequest',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'tieba.topicList'),
      createEmptyInstance: create)
    ..aOM<TopicListRequestData>(1, _omitFieldNames ? '' : 'data',
        subBuilder: TopicListRequestData.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TopicListRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TopicListRequest copyWith(void Function(TopicListRequest) updates) =>
      super.copyWith((message) => updates(message as TopicListRequest))
          as TopicListRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TopicListRequest create() => TopicListRequest._();
  @$core.override
  TopicListRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TopicListRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TopicListRequest>(create);
  static TopicListRequest? _defaultInstance;

  @$pb.TagNumber(1)
  TopicListRequestData get data => $_getN(0);
  @$pb.TagNumber(1)
  set data(TopicListRequestData value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasData() => $_has(0);
  @$pb.TagNumber(1)
  void clearData() => $_clearField(1);
  @$pb.TagNumber(1)
  TopicListRequestData ensureData() => $_ensure(0);
}

class TopicListModule extends $pb.GeneratedMessage {
  factory TopicListModule({
    $core.String? moduleTitle,
    $core.Iterable<TopicList>? topicList,
    $core.String? tips,
    $core.String? ruleJumpUrl,
  }) {
    final result = create();
    if (moduleTitle != null) result.moduleTitle = moduleTitle;
    if (topicList != null) result.topicList.addAll(topicList);
    if (tips != null) result.tips = tips;
    if (ruleJumpUrl != null) result.ruleJumpUrl = ruleJumpUrl;
    return result;
  }

  TopicListModule._();

  factory TopicListModule.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TopicListModule.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TopicListModule',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'tieba.topicList'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'moduleTitle')
    ..pPM<TopicList>(2, _omitFieldNames ? '' : 'topicList',
        subBuilder: TopicList.create)
    ..aOS(3, _omitFieldNames ? '' : 'tips')
    ..aOS(4, _omitFieldNames ? '' : 'ruleJumpUrl')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TopicListModule clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TopicListModule copyWith(void Function(TopicListModule) updates) =>
      super.copyWith((message) => updates(message as TopicListModule))
          as TopicListModule;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TopicListModule create() => TopicListModule._();
  @$core.override
  TopicListModule createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TopicListModule getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TopicListModule>(create);
  static TopicListModule? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get moduleTitle => $_getSZ(0);
  @$pb.TagNumber(1)
  set moduleTitle($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasModuleTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearModuleTitle() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<TopicList> get topicList => $_getList(1);

  @$pb.TagNumber(3)
  $core.String get tips => $_getSZ(2);
  @$pb.TagNumber(3)
  set tips($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasTips() => $_has(2);
  @$pb.TagNumber(3)
  void clearTips() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get ruleJumpUrl => $_getSZ(3);
  @$pb.TagNumber(4)
  set ruleJumpUrl($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasRuleJumpUrl() => $_has(3);
  @$pb.TagNumber(4)
  void clearRuleJumpUrl() => $_clearField(4);
}

class MediaTopic extends $pb.GeneratedMessage {
  factory MediaTopic({
    $fixnum.Int64? topicId,
    $core.String? topicName,
    $1.VideoInfo? videoInfo,
    $core.String? picUrl,
  }) {
    final result = create();
    if (topicId != null) result.topicId = topicId;
    if (topicName != null) result.topicName = topicName;
    if (videoInfo != null) result.videoInfo = videoInfo;
    if (picUrl != null) result.picUrl = picUrl;
    return result;
  }

  MediaTopic._();

  factory MediaTopic.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MediaTopic.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MediaTopic',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'tieba.topicList'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'topicId', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(2, _omitFieldNames ? '' : 'topicName')
    ..aOM<$1.VideoInfo>(3, _omitFieldNames ? '' : 'videoInfo',
        subBuilder: $1.VideoInfo.create)
    ..aOS(4, _omitFieldNames ? '' : 'picUrl')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MediaTopic clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MediaTopic copyWith(void Function(MediaTopic) updates) =>
      super.copyWith((message) => updates(message as MediaTopic)) as MediaTopic;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MediaTopic create() => MediaTopic._();
  @$core.override
  MediaTopic createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MediaTopic getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MediaTopic>(create);
  static MediaTopic? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get topicId => $_getI64(0);
  @$pb.TagNumber(1)
  set topicId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTopicId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTopicId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get topicName => $_getSZ(1);
  @$pb.TagNumber(2)
  set topicName($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasTopicName() => $_has(1);
  @$pb.TagNumber(2)
  void clearTopicName() => $_clearField(2);

  @$pb.TagNumber(3)
  $1.VideoInfo get videoInfo => $_getN(2);
  @$pb.TagNumber(3)
  set videoInfo($1.VideoInfo value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasVideoInfo() => $_has(2);
  @$pb.TagNumber(3)
  void clearVideoInfo() => $_clearField(3);
  @$pb.TagNumber(3)
  $1.VideoInfo ensureVideoInfo() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.String get picUrl => $_getSZ(3);
  @$pb.TagNumber(4)
  set picUrl($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasPicUrl() => $_has(3);
  @$pb.TagNumber(4)
  void clearPicUrl() => $_clearField(4);
}

class TabList extends $pb.GeneratedMessage {
  factory TabList({
    $core.String? tabName,
    $core.String? tabType,
    $core.String? sharePic,
    $core.String? shareTitle,
    $core.String? shareDesc,
    $core.String? shareUrl,
  }) {
    final result = create();
    if (tabName != null) result.tabName = tabName;
    if (tabType != null) result.tabType = tabType;
    if (sharePic != null) result.sharePic = sharePic;
    if (shareTitle != null) result.shareTitle = shareTitle;
    if (shareDesc != null) result.shareDesc = shareDesc;
    if (shareUrl != null) result.shareUrl = shareUrl;
    return result;
  }

  TabList._();

  factory TabList.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TabList.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TabList',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'tieba.topicList'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'tabName')
    ..aOS(2, _omitFieldNames ? '' : 'tabType')
    ..aOS(3, _omitFieldNames ? '' : 'sharePic')
    ..aOS(4, _omitFieldNames ? '' : 'shareTitle')
    ..aOS(5, _omitFieldNames ? '' : 'shareDesc')
    ..aOS(6, _omitFieldNames ? '' : 'shareUrl')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TabList clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TabList copyWith(void Function(TabList) updates) =>
      super.copyWith((message) => updates(message as TabList)) as TabList;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TabList create() => TabList._();
  @$core.override
  TabList createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TabList getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TabList>(create);
  static TabList? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get tabName => $_getSZ(0);
  @$pb.TagNumber(1)
  set tabName($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTabName() => $_has(0);
  @$pb.TagNumber(1)
  void clearTabName() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get tabType => $_getSZ(1);
  @$pb.TagNumber(2)
  set tabType($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasTabType() => $_has(1);
  @$pb.TagNumber(2)
  void clearTabType() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get sharePic => $_getSZ(2);
  @$pb.TagNumber(3)
  set sharePic($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasSharePic() => $_has(2);
  @$pb.TagNumber(3)
  void clearSharePic() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get shareTitle => $_getSZ(3);
  @$pb.TagNumber(4)
  set shareTitle($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasShareTitle() => $_has(3);
  @$pb.TagNumber(4)
  void clearShareTitle() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get shareDesc => $_getSZ(4);
  @$pb.TagNumber(5)
  set shareDesc($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasShareDesc() => $_has(4);
  @$pb.TagNumber(5)
  void clearShareDesc() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get shareUrl => $_getSZ(5);
  @$pb.TagNumber(6)
  set shareUrl($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasShareUrl() => $_has(5);
  @$pb.TagNumber(6)
  void clearShareUrl() => $_clearField(6);
}

class TopicList extends $pb.GeneratedMessage {
  factory TopicList({
    $fixnum.Int64? topicId,
    $core.String? topicName,
    $fixnum.Int64? discussNum,
    $core.int? tag,
    $core.String? topicDesc,
    $core.String? topicPic,
    $fixnum.Int64? updateTime,
    $core.String? topicUserName,
    $core.Iterable<$2.Media>? media,
    $fixnum.Int64? topicTid,
    $core.String? topicH5Url,
    $1.VideoInfo? videoInfo,
    $core.int? topicThreadTypes,
  }) {
    final result = create();
    if (topicId != null) result.topicId = topicId;
    if (topicName != null) result.topicName = topicName;
    if (discussNum != null) result.discussNum = discussNum;
    if (tag != null) result.tag = tag;
    if (topicDesc != null) result.topicDesc = topicDesc;
    if (topicPic != null) result.topicPic = topicPic;
    if (updateTime != null) result.updateTime = updateTime;
    if (topicUserName != null) result.topicUserName = topicUserName;
    if (media != null) result.media.addAll(media);
    if (topicTid != null) result.topicTid = topicTid;
    if (topicH5Url != null) result.topicH5Url = topicH5Url;
    if (videoInfo != null) result.videoInfo = videoInfo;
    if (topicThreadTypes != null) result.topicThreadTypes = topicThreadTypes;
    return result;
  }

  TopicList._();

  factory TopicList.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TopicList.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TopicList',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'tieba.topicList'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'topicId', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(2, _omitFieldNames ? '' : 'topicName')
    ..a<$fixnum.Int64>(
        3, _omitFieldNames ? '' : 'discussNum', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aI(4, _omitFieldNames ? '' : 'tag')
    ..aOS(5, _omitFieldNames ? '' : 'topicDesc')
    ..aOS(6, _omitFieldNames ? '' : 'topicPic')
    ..aInt64(7, _omitFieldNames ? '' : 'updateTime')
    ..aOS(8, _omitFieldNames ? '' : 'topicUserName')
    ..pPM<$2.Media>(9, _omitFieldNames ? '' : 'media',
        subBuilder: $2.Media.create)
    ..aInt64(10, _omitFieldNames ? '' : 'topicTid')
    ..aOS(11, _omitFieldNames ? '' : 'topicH5Url')
    ..aOM<$1.VideoInfo>(12, _omitFieldNames ? '' : 'videoInfo',
        subBuilder: $1.VideoInfo.create)
    ..aI(13, _omitFieldNames ? '' : 'topicThreadTypes')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TopicList clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TopicList copyWith(void Function(TopicList) updates) =>
      super.copyWith((message) => updates(message as TopicList)) as TopicList;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TopicList create() => TopicList._();
  @$core.override
  TopicList createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TopicList getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TopicList>(create);
  static TopicList? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get topicId => $_getI64(0);
  @$pb.TagNumber(1)
  set topicId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTopicId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTopicId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get topicName => $_getSZ(1);
  @$pb.TagNumber(2)
  set topicName($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasTopicName() => $_has(1);
  @$pb.TagNumber(2)
  void clearTopicName() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get discussNum => $_getI64(2);
  @$pb.TagNumber(3)
  set discussNum($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasDiscussNum() => $_has(2);
  @$pb.TagNumber(3)
  void clearDiscussNum() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get tag => $_getIZ(3);
  @$pb.TagNumber(4)
  set tag($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasTag() => $_has(3);
  @$pb.TagNumber(4)
  void clearTag() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get topicDesc => $_getSZ(4);
  @$pb.TagNumber(5)
  set topicDesc($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasTopicDesc() => $_has(4);
  @$pb.TagNumber(5)
  void clearTopicDesc() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get topicPic => $_getSZ(5);
  @$pb.TagNumber(6)
  set topicPic($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasTopicPic() => $_has(5);
  @$pb.TagNumber(6)
  void clearTopicPic() => $_clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get updateTime => $_getI64(6);
  @$pb.TagNumber(7)
  set updateTime($fixnum.Int64 value) => $_setInt64(6, value);
  @$pb.TagNumber(7)
  $core.bool hasUpdateTime() => $_has(6);
  @$pb.TagNumber(7)
  void clearUpdateTime() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.String get topicUserName => $_getSZ(7);
  @$pb.TagNumber(8)
  set topicUserName($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasTopicUserName() => $_has(7);
  @$pb.TagNumber(8)
  void clearTopicUserName() => $_clearField(8);

  @$pb.TagNumber(9)
  $pb.PbList<$2.Media> get media => $_getList(8);

  @$pb.TagNumber(10)
  $fixnum.Int64 get topicTid => $_getI64(9);
  @$pb.TagNumber(10)
  set topicTid($fixnum.Int64 value) => $_setInt64(9, value);
  @$pb.TagNumber(10)
  $core.bool hasTopicTid() => $_has(9);
  @$pb.TagNumber(10)
  void clearTopicTid() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.String get topicH5Url => $_getSZ(10);
  @$pb.TagNumber(11)
  set topicH5Url($core.String value) => $_setString(10, value);
  @$pb.TagNumber(11)
  $core.bool hasTopicH5Url() => $_has(10);
  @$pb.TagNumber(11)
  void clearTopicH5Url() => $_clearField(11);

  @$pb.TagNumber(12)
  $1.VideoInfo get videoInfo => $_getN(11);
  @$pb.TagNumber(12)
  set videoInfo($1.VideoInfo value) => $_setField(12, value);
  @$pb.TagNumber(12)
  $core.bool hasVideoInfo() => $_has(11);
  @$pb.TagNumber(12)
  void clearVideoInfo() => $_clearField(12);
  @$pb.TagNumber(12)
  $1.VideoInfo ensureVideoInfo() => $_ensure(11);

  @$pb.TagNumber(13)
  $core.int get topicThreadTypes => $_getIZ(12);
  @$pb.TagNumber(13)
  set topicThreadTypes($core.int value) => $_setSignedInt32(12, value);
  @$pb.TagNumber(13)
  $core.bool hasTopicThreadTypes() => $_has(12);
  @$pb.TagNumber(13)
  void clearTopicThreadTypes() => $_clearField(13);
}

class NewTopicList extends $pb.GeneratedMessage {
  factory NewTopicList({
    $fixnum.Int64? topicId,
    $core.String? topicName,
    $core.String? topicDesc,
    $fixnum.Int64? discussNum,
    $core.String? topicImage,
    $core.int? topicTag,
  }) {
    final result = create();
    if (topicId != null) result.topicId = topicId;
    if (topicName != null) result.topicName = topicName;
    if (topicDesc != null) result.topicDesc = topicDesc;
    if (discussNum != null) result.discussNum = discussNum;
    if (topicImage != null) result.topicImage = topicImage;
    if (topicTag != null) result.topicTag = topicTag;
    return result;
  }

  NewTopicList._();

  factory NewTopicList.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory NewTopicList.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'NewTopicList',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'tieba.topicList'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'topicId')
    ..aOS(2, _omitFieldNames ? '' : 'topicName')
    ..aOS(3, _omitFieldNames ? '' : 'topicDesc')
    ..aInt64(4, _omitFieldNames ? '' : 'discussNum')
    ..aOS(5, _omitFieldNames ? '' : 'topicImage')
    ..aI(6, _omitFieldNames ? '' : 'topicTag')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NewTopicList clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NewTopicList copyWith(void Function(NewTopicList) updates) =>
      super.copyWith((message) => updates(message as NewTopicList))
          as NewTopicList;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NewTopicList create() => NewTopicList._();
  @$core.override
  NewTopicList createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static NewTopicList getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<NewTopicList>(create);
  static NewTopicList? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get topicId => $_getI64(0);
  @$pb.TagNumber(1)
  set topicId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTopicId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTopicId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get topicName => $_getSZ(1);
  @$pb.TagNumber(2)
  set topicName($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasTopicName() => $_has(1);
  @$pb.TagNumber(2)
  void clearTopicName() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get topicDesc => $_getSZ(2);
  @$pb.TagNumber(3)
  set topicDesc($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasTopicDesc() => $_has(2);
  @$pb.TagNumber(3)
  void clearTopicDesc() => $_clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get discussNum => $_getI64(3);
  @$pb.TagNumber(4)
  set discussNum($fixnum.Int64 value) => $_setInt64(3, value);
  @$pb.TagNumber(4)
  $core.bool hasDiscussNum() => $_has(3);
  @$pb.TagNumber(4)
  void clearDiscussNum() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get topicImage => $_getSZ(4);
  @$pb.TagNumber(5)
  set topicImage($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasTopicImage() => $_has(4);
  @$pb.TagNumber(5)
  void clearTopicImage() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get topicTag => $_getIZ(5);
  @$pb.TagNumber(6)
  set topicTag($core.int value) => $_setSignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasTopicTag() => $_has(5);
  @$pb.TagNumber(6)
  void clearTopicTag() => $_clearField(6);
}

class TopicListResponseData extends $pb.GeneratedMessage {
  factory TopicListResponseData({
    TopicListModule? topicBang,
    TopicListModule? topicManual,
    MediaTopic? mediaTopic,
    $core.Iterable<TabList>? tabList,
    $core.Iterable<TopicList>? frsTabTopic,
    $core.Iterable<NewTopicList>? topicList,
  }) {
    final result = create();
    if (topicBang != null) result.topicBang = topicBang;
    if (topicManual != null) result.topicManual = topicManual;
    if (mediaTopic != null) result.mediaTopic = mediaTopic;
    if (tabList != null) result.tabList.addAll(tabList);
    if (frsTabTopic != null) result.frsTabTopic.addAll(frsTabTopic);
    if (topicList != null) result.topicList.addAll(topicList);
    return result;
  }

  TopicListResponseData._();

  factory TopicListResponseData.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TopicListResponseData.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TopicListResponseData',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'tieba.topicList'),
      createEmptyInstance: create)
    ..aOM<TopicListModule>(1, _omitFieldNames ? '' : 'topicBang',
        subBuilder: TopicListModule.create)
    ..aOM<TopicListModule>(2, _omitFieldNames ? '' : 'topicManual',
        subBuilder: TopicListModule.create)
    ..aOM<MediaTopic>(3, _omitFieldNames ? '' : 'mediaTopic',
        subBuilder: MediaTopic.create)
    ..pPM<TabList>(6, _omitFieldNames ? '' : 'tabList',
        subBuilder: TabList.create)
    ..pPM<TopicList>(7, _omitFieldNames ? '' : 'frsTabTopic',
        subBuilder: TopicList.create)
    ..pPM<NewTopicList>(8, _omitFieldNames ? '' : 'topicList',
        subBuilder: NewTopicList.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TopicListResponseData clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TopicListResponseData copyWith(
          void Function(TopicListResponseData) updates) =>
      super.copyWith((message) => updates(message as TopicListResponseData))
          as TopicListResponseData;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TopicListResponseData create() => TopicListResponseData._();
  @$core.override
  TopicListResponseData createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TopicListResponseData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TopicListResponseData>(create);
  static TopicListResponseData? _defaultInstance;

  @$pb.TagNumber(1)
  TopicListModule get topicBang => $_getN(0);
  @$pb.TagNumber(1)
  set topicBang(TopicListModule value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasTopicBang() => $_has(0);
  @$pb.TagNumber(1)
  void clearTopicBang() => $_clearField(1);
  @$pb.TagNumber(1)
  TopicListModule ensureTopicBang() => $_ensure(0);

  @$pb.TagNumber(2)
  TopicListModule get topicManual => $_getN(1);
  @$pb.TagNumber(2)
  set topicManual(TopicListModule value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasTopicManual() => $_has(1);
  @$pb.TagNumber(2)
  void clearTopicManual() => $_clearField(2);
  @$pb.TagNumber(2)
  TopicListModule ensureTopicManual() => $_ensure(1);

  @$pb.TagNumber(3)
  MediaTopic get mediaTopic => $_getN(2);
  @$pb.TagNumber(3)
  set mediaTopic(MediaTopic value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasMediaTopic() => $_has(2);
  @$pb.TagNumber(3)
  void clearMediaTopic() => $_clearField(3);
  @$pb.TagNumber(3)
  MediaTopic ensureMediaTopic() => $_ensure(2);

  @$pb.TagNumber(6)
  $pb.PbList<TabList> get tabList => $_getList(3);

  @$pb.TagNumber(7)
  $pb.PbList<TopicList> get frsTabTopic => $_getList(4);

  @$pb.TagNumber(8)
  $pb.PbList<NewTopicList> get topicList => $_getList(5);
}

class TopicListResponse extends $pb.GeneratedMessage {
  factory TopicListResponse({
    $3.Error? error,
    TopicListResponseData? data,
  }) {
    final result = create();
    if (error != null) result.error = error;
    if (data != null) result.data = data;
    return result;
  }

  TopicListResponse._();

  factory TopicListResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TopicListResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TopicListResponse',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'tieba.topicList'),
      createEmptyInstance: create)
    ..aOM<$3.Error>(1, _omitFieldNames ? '' : 'error',
        subBuilder: $3.Error.create)
    ..aOM<TopicListResponseData>(2, _omitFieldNames ? '' : 'data',
        subBuilder: TopicListResponseData.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TopicListResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TopicListResponse copyWith(void Function(TopicListResponse) updates) =>
      super.copyWith((message) => updates(message as TopicListResponse))
          as TopicListResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TopicListResponse create() => TopicListResponse._();
  @$core.override
  TopicListResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TopicListResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TopicListResponse>(create);
  static TopicListResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $3.Error get error => $_getN(0);
  @$pb.TagNumber(1)
  set error($3.Error value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasError() => $_has(0);
  @$pb.TagNumber(1)
  void clearError() => $_clearField(1);
  @$pb.TagNumber(1)
  $3.Error ensureError() => $_ensure(0);

  @$pb.TagNumber(2)
  TopicListResponseData get data => $_getN(1);
  @$pb.TagNumber(2)
  set data(TopicListResponseData value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasData() => $_has(1);
  @$pb.TagNumber(2)
  void clearData() => $_clearField(2);
  @$pb.TagNumber(2)
  TopicListResponseData ensureData() => $_ensure(1);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
