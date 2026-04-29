// This is a generated file - do not edit.
//
// Generated from OriginThreadInfo.proto.

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
import 'Agree.pb.dart' as $8;
import 'AlaLiveInfo.pb.dart' as $2;
import 'Baijiahao.pb.dart' as $3;
import 'HeadItem.pb.dart' as $11;
import 'Item.pb.dart' as $10;
import 'Media.pb.dart' as $0;
import 'PbContent.pb.dart' as $6;
import 'PbLinkInfo.pb.dart' as $12;
import 'PollInfo.pb.dart' as $9;
import 'User.pb.dart' as $7;
import 'VideoInfo.pb.dart' as $5;
import 'Voice.pb.dart' as $4;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class OriginThreadInfo extends $pb.GeneratedMessage {
  factory OriginThreadInfo({
    $core.String? title,
    $core.Iterable<$0.Media>? media,
    $core.Iterable<$1.Abstract>? abstract,
    $core.String? fname,
    $core.String? tid,
    $2.AlaLiveInfo? alaInfo,
    $fixnum.Int64? fid,
    $core.int? threadType,
    $core.int? isDeleted,
    $core.int? isUgc,
    $3.Baijiahao? oriUgcInfo,
    $core.Iterable<$4.Voice>? voiceInfo,
    $5.VideoInfo? videoInfo,
    $core.Iterable<$6.PbContent>? content,
    $core.int? isNewStyle,
    $core.int? replyNum,
    $7.User? author,
    $8.Agree? agree,
    $core.int? sharedNum,
    $9.PollInfo? pollInfo,
    $10.Item? item,
    $core.Iterable<$11.HeadItem>? itemStar,
    $core.Iterable<$12.PbLinkInfo>? pbLinkInfo,
    $fixnum.Int64? pid,
    $core.int? goodTypes,
    $core.int? topTypes,
    $core.int? isFrsMask,
  }) {
    final result = create();
    if (title != null) result.title = title;
    if (media != null) result.media.addAll(media);
    if (abstract != null) result.abstract.addAll(abstract);
    if (fname != null) result.fname = fname;
    if (tid != null) result.tid = tid;
    if (alaInfo != null) result.alaInfo = alaInfo;
    if (fid != null) result.fid = fid;
    if (threadType != null) result.threadType = threadType;
    if (isDeleted != null) result.isDeleted = isDeleted;
    if (isUgc != null) result.isUgc = isUgc;
    if (oriUgcInfo != null) result.oriUgcInfo = oriUgcInfo;
    if (voiceInfo != null) result.voiceInfo.addAll(voiceInfo);
    if (videoInfo != null) result.videoInfo = videoInfo;
    if (content != null) result.content.addAll(content);
    if (isNewStyle != null) result.isNewStyle = isNewStyle;
    if (replyNum != null) result.replyNum = replyNum;
    if (author != null) result.author = author;
    if (agree != null) result.agree = agree;
    if (sharedNum != null) result.sharedNum = sharedNum;
    if (pollInfo != null) result.pollInfo = pollInfo;
    if (item != null) result.item = item;
    if (itemStar != null) result.itemStar.addAll(itemStar);
    if (pbLinkInfo != null) result.pbLinkInfo.addAll(pbLinkInfo);
    if (pid != null) result.pid = pid;
    if (goodTypes != null) result.goodTypes = goodTypes;
    if (topTypes != null) result.topTypes = topTypes;
    if (isFrsMask != null) result.isFrsMask = isFrsMask;
    return result;
  }

  OriginThreadInfo._();

  factory OriginThreadInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory OriginThreadInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'OriginThreadInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'title')
    ..pPM<$0.Media>(2, _omitFieldNames ? '' : 'media',
        subBuilder: $0.Media.create)
    ..pPM<$1.Abstract>(3, _omitFieldNames ? '' : 'Abstract',
        subBuilder: $1.Abstract.create)
    ..aOS(4, _omitFieldNames ? '' : 'fname')
    ..aOS(5, _omitFieldNames ? '' : 'tid')
    ..aOM<$2.AlaLiveInfo>(6, _omitFieldNames ? '' : 'alaInfo',
        subBuilder: $2.AlaLiveInfo.create)
    ..aInt64(7, _omitFieldNames ? '' : 'fid')
    ..aI(8, _omitFieldNames ? '' : 'threadType')
    ..aI(9, _omitFieldNames ? '' : 'isDeleted')
    ..aI(10, _omitFieldNames ? '' : 'isUgc')
    ..aOM<$3.Baijiahao>(11, _omitFieldNames ? '' : 'oriUgcInfo',
        subBuilder: $3.Baijiahao.create)
    ..pPM<$4.Voice>(12, _omitFieldNames ? '' : 'voiceInfo',
        subBuilder: $4.Voice.create)
    ..aOM<$5.VideoInfo>(13, _omitFieldNames ? '' : 'videoInfo',
        subBuilder: $5.VideoInfo.create)
    ..pPM<$6.PbContent>(14, _omitFieldNames ? '' : 'content',
        subBuilder: $6.PbContent.create)
    ..aI(15, _omitFieldNames ? '' : 'isNewStyle')
    ..aI(16, _omitFieldNames ? '' : 'replyNum')
    ..aOM<$7.User>(18, _omitFieldNames ? '' : 'author',
        subBuilder: $7.User.create)
    ..aOM<$8.Agree>(19, _omitFieldNames ? '' : 'agree',
        subBuilder: $8.Agree.create)
    ..aI(20, _omitFieldNames ? '' : 'sharedNum')
    ..aOM<$9.PollInfo>(21, _omitFieldNames ? '' : 'pollInfo',
        subBuilder: $9.PollInfo.create)
    ..aOM<$10.Item>(22, _omitFieldNames ? '' : 'item',
        subBuilder: $10.Item.create)
    ..pPM<$11.HeadItem>(23, _omitFieldNames ? '' : 'itemStar',
        subBuilder: $11.HeadItem.create)
    ..pPM<$12.PbLinkInfo>(24, _omitFieldNames ? '' : 'pbLinkInfo',
        subBuilder: $12.PbLinkInfo.create)
    ..aInt64(25, _omitFieldNames ? '' : 'pid')
    ..aI(26, _omitFieldNames ? '' : 'goodTypes')
    ..aI(27, _omitFieldNames ? '' : 'topTypes')
    ..aI(28, _omitFieldNames ? '' : 'isFrsMask')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  OriginThreadInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  OriginThreadInfo copyWith(void Function(OriginThreadInfo) updates) =>
      super.copyWith((message) => updates(message as OriginThreadInfo))
          as OriginThreadInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static OriginThreadInfo create() => OriginThreadInfo._();
  @$core.override
  OriginThreadInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static OriginThreadInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<OriginThreadInfo>(create);
  static OriginThreadInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<$0.Media> get media => $_getList(1);

  @$pb.TagNumber(3)
  $pb.PbList<$1.Abstract> get abstract => $_getList(2);

  @$pb.TagNumber(4)
  $core.String get fname => $_getSZ(3);
  @$pb.TagNumber(4)
  set fname($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasFname() => $_has(3);
  @$pb.TagNumber(4)
  void clearFname() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get tid => $_getSZ(4);
  @$pb.TagNumber(5)
  set tid($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasTid() => $_has(4);
  @$pb.TagNumber(5)
  void clearTid() => $_clearField(5);

  @$pb.TagNumber(6)
  $2.AlaLiveInfo get alaInfo => $_getN(5);
  @$pb.TagNumber(6)
  set alaInfo($2.AlaLiveInfo value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasAlaInfo() => $_has(5);
  @$pb.TagNumber(6)
  void clearAlaInfo() => $_clearField(6);
  @$pb.TagNumber(6)
  $2.AlaLiveInfo ensureAlaInfo() => $_ensure(5);

  @$pb.TagNumber(7)
  $fixnum.Int64 get fid => $_getI64(6);
  @$pb.TagNumber(7)
  set fid($fixnum.Int64 value) => $_setInt64(6, value);
  @$pb.TagNumber(7)
  $core.bool hasFid() => $_has(6);
  @$pb.TagNumber(7)
  void clearFid() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.int get threadType => $_getIZ(7);
  @$pb.TagNumber(8)
  set threadType($core.int value) => $_setSignedInt32(7, value);
  @$pb.TagNumber(8)
  $core.bool hasThreadType() => $_has(7);
  @$pb.TagNumber(8)
  void clearThreadType() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.int get isDeleted => $_getIZ(8);
  @$pb.TagNumber(9)
  set isDeleted($core.int value) => $_setSignedInt32(8, value);
  @$pb.TagNumber(9)
  $core.bool hasIsDeleted() => $_has(8);
  @$pb.TagNumber(9)
  void clearIsDeleted() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.int get isUgc => $_getIZ(9);
  @$pb.TagNumber(10)
  set isUgc($core.int value) => $_setSignedInt32(9, value);
  @$pb.TagNumber(10)
  $core.bool hasIsUgc() => $_has(9);
  @$pb.TagNumber(10)
  void clearIsUgc() => $_clearField(10);

  @$pb.TagNumber(11)
  $3.Baijiahao get oriUgcInfo => $_getN(10);
  @$pb.TagNumber(11)
  set oriUgcInfo($3.Baijiahao value) => $_setField(11, value);
  @$pb.TagNumber(11)
  $core.bool hasOriUgcInfo() => $_has(10);
  @$pb.TagNumber(11)
  void clearOriUgcInfo() => $_clearField(11);
  @$pb.TagNumber(11)
  $3.Baijiahao ensureOriUgcInfo() => $_ensure(10);

  @$pb.TagNumber(12)
  $pb.PbList<$4.Voice> get voiceInfo => $_getList(11);

  @$pb.TagNumber(13)
  $5.VideoInfo get videoInfo => $_getN(12);
  @$pb.TagNumber(13)
  set videoInfo($5.VideoInfo value) => $_setField(13, value);
  @$pb.TagNumber(13)
  $core.bool hasVideoInfo() => $_has(12);
  @$pb.TagNumber(13)
  void clearVideoInfo() => $_clearField(13);
  @$pb.TagNumber(13)
  $5.VideoInfo ensureVideoInfo() => $_ensure(12);

  @$pb.TagNumber(14)
  $pb.PbList<$6.PbContent> get content => $_getList(13);

  @$pb.TagNumber(15)
  $core.int get isNewStyle => $_getIZ(14);
  @$pb.TagNumber(15)
  set isNewStyle($core.int value) => $_setSignedInt32(14, value);
  @$pb.TagNumber(15)
  $core.bool hasIsNewStyle() => $_has(14);
  @$pb.TagNumber(15)
  void clearIsNewStyle() => $_clearField(15);

  @$pb.TagNumber(16)
  $core.int get replyNum => $_getIZ(15);
  @$pb.TagNumber(16)
  set replyNum($core.int value) => $_setSignedInt32(15, value);
  @$pb.TagNumber(16)
  $core.bool hasReplyNum() => $_has(15);
  @$pb.TagNumber(16)
  void clearReplyNum() => $_clearField(16);

  @$pb.TagNumber(18)
  $7.User get author => $_getN(16);
  @$pb.TagNumber(18)
  set author($7.User value) => $_setField(18, value);
  @$pb.TagNumber(18)
  $core.bool hasAuthor() => $_has(16);
  @$pb.TagNumber(18)
  void clearAuthor() => $_clearField(18);
  @$pb.TagNumber(18)
  $7.User ensureAuthor() => $_ensure(16);

  @$pb.TagNumber(19)
  $8.Agree get agree => $_getN(17);
  @$pb.TagNumber(19)
  set agree($8.Agree value) => $_setField(19, value);
  @$pb.TagNumber(19)
  $core.bool hasAgree() => $_has(17);
  @$pb.TagNumber(19)
  void clearAgree() => $_clearField(19);
  @$pb.TagNumber(19)
  $8.Agree ensureAgree() => $_ensure(17);

  @$pb.TagNumber(20)
  $core.int get sharedNum => $_getIZ(18);
  @$pb.TagNumber(20)
  set sharedNum($core.int value) => $_setSignedInt32(18, value);
  @$pb.TagNumber(20)
  $core.bool hasSharedNum() => $_has(18);
  @$pb.TagNumber(20)
  void clearSharedNum() => $_clearField(20);

  @$pb.TagNumber(21)
  $9.PollInfo get pollInfo => $_getN(19);
  @$pb.TagNumber(21)
  set pollInfo($9.PollInfo value) => $_setField(21, value);
  @$pb.TagNumber(21)
  $core.bool hasPollInfo() => $_has(19);
  @$pb.TagNumber(21)
  void clearPollInfo() => $_clearField(21);
  @$pb.TagNumber(21)
  $9.PollInfo ensurePollInfo() => $_ensure(19);

  @$pb.TagNumber(22)
  $10.Item get item => $_getN(20);
  @$pb.TagNumber(22)
  set item($10.Item value) => $_setField(22, value);
  @$pb.TagNumber(22)
  $core.bool hasItem() => $_has(20);
  @$pb.TagNumber(22)
  void clearItem() => $_clearField(22);
  @$pb.TagNumber(22)
  $10.Item ensureItem() => $_ensure(20);

  @$pb.TagNumber(23)
  $pb.PbList<$11.HeadItem> get itemStar => $_getList(21);

  @$pb.TagNumber(24)
  $pb.PbList<$12.PbLinkInfo> get pbLinkInfo => $_getList(22);

  @$pb.TagNumber(25)
  $fixnum.Int64 get pid => $_getI64(23);
  @$pb.TagNumber(25)
  set pid($fixnum.Int64 value) => $_setInt64(23, value);
  @$pb.TagNumber(25)
  $core.bool hasPid() => $_has(23);
  @$pb.TagNumber(25)
  void clearPid() => $_clearField(25);

  @$pb.TagNumber(26)
  $core.int get goodTypes => $_getIZ(24);
  @$pb.TagNumber(26)
  set goodTypes($core.int value) => $_setSignedInt32(24, value);
  @$pb.TagNumber(26)
  $core.bool hasGoodTypes() => $_has(24);
  @$pb.TagNumber(26)
  void clearGoodTypes() => $_clearField(26);

  @$pb.TagNumber(27)
  $core.int get topTypes => $_getIZ(25);
  @$pb.TagNumber(27)
  set topTypes($core.int value) => $_setSignedInt32(25, value);
  @$pb.TagNumber(27)
  $core.bool hasTopTypes() => $_has(25);
  @$pb.TagNumber(27)
  void clearTopTypes() => $_clearField(27);

  @$pb.TagNumber(28)
  $core.int get isFrsMask => $_getIZ(26);
  @$pb.TagNumber(28)
  set isFrsMask($core.int value) => $_setSignedInt32(26, value);
  @$pb.TagNumber(28)
  $core.bool hasIsFrsMask() => $_has(26);
  @$pb.TagNumber(28)
  void clearIsFrsMask() => $_clearField(28);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
