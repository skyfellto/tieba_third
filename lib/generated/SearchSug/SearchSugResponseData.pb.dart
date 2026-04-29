// This is a generated file - do not edit.
//
// Generated from SearchSug/SearchSugResponseData.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../ForumInfo.pb.dart' as $0;
import '../Item.pb.dart' as $2;
import '../RecommendForumInfo.pb.dart' as $1;
import '../SugLiveInfo.pb.dart' as $3;
import '../SugRankingInfo.pb.dart' as $4;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class SearchSugResponseData extends $pb.GeneratedMessage {
  factory SearchSugResponseData({
    $core.int? forumLoc,
    $core.Iterable<$core.String>? list,
    $core.Iterable<$0.ForumInfo>? forumList,
    $1.RecommendForumInfo? forumCard,
    $2.Item? itemCard,
    $core.Iterable<$3.SugLiveInfo>? liveCard,
    $4.SugRankingInfo? rankingCard,
  }) {
    final result = create();
    if (forumLoc != null) result.forumLoc = forumLoc;
    if (list != null) result.list.addAll(list);
    if (forumList != null) result.forumList.addAll(forumList);
    if (forumCard != null) result.forumCard = forumCard;
    if (itemCard != null) result.itemCard = itemCard;
    if (liveCard != null) result.liveCard.addAll(liveCard);
    if (rankingCard != null) result.rankingCard = rankingCard;
    return result;
  }

  SearchSugResponseData._();

  factory SearchSugResponseData.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SearchSugResponseData.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SearchSugResponseData',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'tieba.searchSug'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'forumLoc')
    ..pPS(2, _omitFieldNames ? '' : 'list')
    ..pPM<$0.ForumInfo>(3, _omitFieldNames ? '' : 'forumList',
        subBuilder: $0.ForumInfo.create)
    ..aOM<$1.RecommendForumInfo>(4, _omitFieldNames ? '' : 'forumCard',
        subBuilder: $1.RecommendForumInfo.create)
    ..aOM<$2.Item>(5, _omitFieldNames ? '' : 'itemCard',
        subBuilder: $2.Item.create)
    ..pPM<$3.SugLiveInfo>(6, _omitFieldNames ? '' : 'liveCard',
        subBuilder: $3.SugLiveInfo.create)
    ..aOM<$4.SugRankingInfo>(7, _omitFieldNames ? '' : 'rankingCard',
        subBuilder: $4.SugRankingInfo.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SearchSugResponseData clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SearchSugResponseData copyWith(
          void Function(SearchSugResponseData) updates) =>
      super.copyWith((message) => updates(message as SearchSugResponseData))
          as SearchSugResponseData;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SearchSugResponseData create() => SearchSugResponseData._();
  @$core.override
  SearchSugResponseData createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SearchSugResponseData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SearchSugResponseData>(create);
  static SearchSugResponseData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get forumLoc => $_getIZ(0);
  @$pb.TagNumber(1)
  set forumLoc($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasForumLoc() => $_has(0);
  @$pb.TagNumber(1)
  void clearForumLoc() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<$core.String> get list => $_getList(1);

  @$pb.TagNumber(3)
  $pb.PbList<$0.ForumInfo> get forumList => $_getList(2);

  @$pb.TagNumber(4)
  $1.RecommendForumInfo get forumCard => $_getN(3);
  @$pb.TagNumber(4)
  set forumCard($1.RecommendForumInfo value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasForumCard() => $_has(3);
  @$pb.TagNumber(4)
  void clearForumCard() => $_clearField(4);
  @$pb.TagNumber(4)
  $1.RecommendForumInfo ensureForumCard() => $_ensure(3);

  @$pb.TagNumber(5)
  $2.Item get itemCard => $_getN(4);
  @$pb.TagNumber(5)
  set itemCard($2.Item value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasItemCard() => $_has(4);
  @$pb.TagNumber(5)
  void clearItemCard() => $_clearField(5);
  @$pb.TagNumber(5)
  $2.Item ensureItemCard() => $_ensure(4);

  @$pb.TagNumber(6)
  $pb.PbList<$3.SugLiveInfo> get liveCard => $_getList(5);

  @$pb.TagNumber(7)
  $4.SugRankingInfo get rankingCard => $_getN(6);
  @$pb.TagNumber(7)
  set rankingCard($4.SugRankingInfo value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasRankingCard() => $_has(6);
  @$pb.TagNumber(7)
  void clearRankingCard() => $_clearField(7);
  @$pb.TagNumber(7)
  $4.SugRankingInfo ensureRankingCard() => $_ensure(6);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
