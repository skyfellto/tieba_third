// This is a generated file - do not edit.
//
// Generated from BannerList.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'App.pb.dart' as $0;
import 'FeedForumInfo.pb.dart' as $1;
import 'RecomTopicInfo.pb.dart' as $2;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class BannerList extends $pb.GeneratedMessage {
  factory BannerList({
    $core.Iterable<$0.App>? app,
    $core.Iterable<$1.FeedForumInfo>? feedForum,
    $2.RecomTopicInfo? hotTopic,
    $core.String? applist,
    $0.App? pbBannerAd,
    $core.Iterable<$0.App>? videoRecommendAd,
  }) {
    final result = create();
    if (app != null) result.app.addAll(app);
    if (feedForum != null) result.feedForum.addAll(feedForum);
    if (hotTopic != null) result.hotTopic = hotTopic;
    if (applist != null) result.applist = applist;
    if (pbBannerAd != null) result.pbBannerAd = pbBannerAd;
    if (videoRecommendAd != null)
      result.videoRecommendAd.addAll(videoRecommendAd);
    return result;
  }

  BannerList._();

  factory BannerList.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BannerList.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BannerList',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..pPM<$0.App>(1, _omitFieldNames ? '' : 'app', subBuilder: $0.App.create)
    ..pPM<$1.FeedForumInfo>(2, _omitFieldNames ? '' : 'feedForum',
        subBuilder: $1.FeedForumInfo.create)
    ..aOM<$2.RecomTopicInfo>(3, _omitFieldNames ? '' : 'hotTopic',
        subBuilder: $2.RecomTopicInfo.create)
    ..aOS(4, _omitFieldNames ? '' : 'applist')
    ..aOM<$0.App>(5, _omitFieldNames ? '' : 'pbBannerAd',
        subBuilder: $0.App.create)
    ..pPM<$0.App>(6, _omitFieldNames ? '' : 'videoRecommendAd',
        subBuilder: $0.App.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BannerList clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BannerList copyWith(void Function(BannerList) updates) =>
      super.copyWith((message) => updates(message as BannerList)) as BannerList;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BannerList create() => BannerList._();
  @$core.override
  BannerList createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BannerList getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BannerList>(create);
  static BannerList? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$0.App> get app => $_getList(0);

  @$pb.TagNumber(2)
  $pb.PbList<$1.FeedForumInfo> get feedForum => $_getList(1);

  @$pb.TagNumber(3)
  $2.RecomTopicInfo get hotTopic => $_getN(2);
  @$pb.TagNumber(3)
  set hotTopic($2.RecomTopicInfo value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasHotTopic() => $_has(2);
  @$pb.TagNumber(3)
  void clearHotTopic() => $_clearField(3);
  @$pb.TagNumber(3)
  $2.RecomTopicInfo ensureHotTopic() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.String get applist => $_getSZ(3);
  @$pb.TagNumber(4)
  set applist($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasApplist() => $_has(3);
  @$pb.TagNumber(4)
  void clearApplist() => $_clearField(4);

  @$pb.TagNumber(5)
  $0.App get pbBannerAd => $_getN(4);
  @$pb.TagNumber(5)
  set pbBannerAd($0.App value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasPbBannerAd() => $_has(4);
  @$pb.TagNumber(5)
  void clearPbBannerAd() => $_clearField(5);
  @$pb.TagNumber(5)
  $0.App ensurePbBannerAd() => $_ensure(4);

  @$pb.TagNumber(6)
  $pb.PbList<$0.App> get videoRecommendAd => $_getList(5);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
