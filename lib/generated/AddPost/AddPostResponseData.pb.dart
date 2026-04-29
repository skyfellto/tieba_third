// This is a generated file - do not edit.
//
// Generated from AddPost/AddPostResponseData.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../Advertisement.pb.dart' as $4;
import '../Anti.pb.dart' as $7;
import '../ContriInfo.pb.dart' as $2;
import '../IconStampInfo.pb.dart' as $5;
import '../PostAntiInfo.pb.dart' as $6;
import '../ReplyExp.pb.dart' as $1;
import '../TbInteraction.pb.dart' as $8;
import '../ThreadEasterEgg.pb.dart' as $3;
import '../Toast.pb.dart' as $10;
import '../VcodeInfo.pb.dart' as $9;
import '../ZhiBoInfoTW.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class AddPostResponseData extends $pb.GeneratedMessage {
  factory AddPostResponseData({
    $core.String? opgroup,
    $core.String? tid,
    $core.String? pid,
    $core.String? videoId,
    $core.String? msg,
    $core.String? preMsg,
    $core.String? colorMsg,
    $0.ZhiBoInfoTW? twzhiboInfo,
    $1.ReplyExp? exp,
    $2.ContriInfo? contriInfo,
    $3.ThreadEasterEgg? starInfo,
    $4.Advertisement? advertisement,
    $5.IconStampInfo? iconStampInfo,
    $6.PostAntiInfo? info,
    $7.Anti? antiStat,
    $8.TbInteraction? tbHudong,
    $9.VcodeInfo? anti,
    $core.String? extMsg,
    $10.Toast? toast,
  }) {
    final result = create();
    if (opgroup != null) result.opgroup = opgroup;
    if (tid != null) result.tid = tid;
    if (pid != null) result.pid = pid;
    if (videoId != null) result.videoId = videoId;
    if (msg != null) result.msg = msg;
    if (preMsg != null) result.preMsg = preMsg;
    if (colorMsg != null) result.colorMsg = colorMsg;
    if (twzhiboInfo != null) result.twzhiboInfo = twzhiboInfo;
    if (exp != null) result.exp = exp;
    if (contriInfo != null) result.contriInfo = contriInfo;
    if (starInfo != null) result.starInfo = starInfo;
    if (advertisement != null) result.advertisement = advertisement;
    if (iconStampInfo != null) result.iconStampInfo = iconStampInfo;
    if (info != null) result.info = info;
    if (antiStat != null) result.antiStat = antiStat;
    if (tbHudong != null) result.tbHudong = tbHudong;
    if (anti != null) result.anti = anti;
    if (extMsg != null) result.extMsg = extMsg;
    if (toast != null) result.toast = toast;
    return result;
  }

  AddPostResponseData._();

  factory AddPostResponseData.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AddPostResponseData.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AddPostResponseData',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba.addPost'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'opgroup')
    ..aOS(2, _omitFieldNames ? '' : 'tid')
    ..aOS(3, _omitFieldNames ? '' : 'pid')
    ..aOS(4, _omitFieldNames ? '' : 'videoId')
    ..aOS(5, _omitFieldNames ? '' : 'msg')
    ..aOS(6, _omitFieldNames ? '' : 'preMsg')
    ..aOS(7, _omitFieldNames ? '' : 'colorMsg')
    ..aOM<$0.ZhiBoInfoTW>(8, _omitFieldNames ? '' : 'twzhiboInfo',
        subBuilder: $0.ZhiBoInfoTW.create)
    ..aOM<$1.ReplyExp>(9, _omitFieldNames ? '' : 'exp',
        subBuilder: $1.ReplyExp.create)
    ..aOM<$2.ContriInfo>(10, _omitFieldNames ? '' : 'contriInfo',
        subBuilder: $2.ContriInfo.create)
    ..aOM<$3.ThreadEasterEgg>(11, _omitFieldNames ? '' : 'starInfo',
        subBuilder: $3.ThreadEasterEgg.create)
    ..aOM<$4.Advertisement>(12, _omitFieldNames ? '' : 'advertisement',
        subBuilder: $4.Advertisement.create)
    ..aOM<$5.IconStampInfo>(13, _omitFieldNames ? '' : 'iconStampInfo',
        subBuilder: $5.IconStampInfo.create)
    ..aOM<$6.PostAntiInfo>(14, _omitFieldNames ? '' : 'info',
        subBuilder: $6.PostAntiInfo.create)
    ..aOM<$7.Anti>(15, _omitFieldNames ? '' : 'antiStat',
        subBuilder: $7.Anti.create)
    ..aOM<$8.TbInteraction>(16, _omitFieldNames ? '' : 'tbHudong',
        subBuilder: $8.TbInteraction.create)
    ..aOM<$9.VcodeInfo>(17, _omitFieldNames ? '' : 'anti',
        subBuilder: $9.VcodeInfo.create)
    ..aOS(18, _omitFieldNames ? '' : 'extMsg')
    ..aOM<$10.Toast>(19, _omitFieldNames ? '' : 'toast',
        subBuilder: $10.Toast.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AddPostResponseData clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AddPostResponseData copyWith(void Function(AddPostResponseData) updates) =>
      super.copyWith((message) => updates(message as AddPostResponseData))
          as AddPostResponseData;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AddPostResponseData create() => AddPostResponseData._();
  @$core.override
  AddPostResponseData createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AddPostResponseData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AddPostResponseData>(create);
  static AddPostResponseData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get opgroup => $_getSZ(0);
  @$pb.TagNumber(1)
  set opgroup($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasOpgroup() => $_has(0);
  @$pb.TagNumber(1)
  void clearOpgroup() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get tid => $_getSZ(1);
  @$pb.TagNumber(2)
  set tid($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasTid() => $_has(1);
  @$pb.TagNumber(2)
  void clearTid() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get pid => $_getSZ(2);
  @$pb.TagNumber(3)
  set pid($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasPid() => $_has(2);
  @$pb.TagNumber(3)
  void clearPid() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get videoId => $_getSZ(3);
  @$pb.TagNumber(4)
  set videoId($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasVideoId() => $_has(3);
  @$pb.TagNumber(4)
  void clearVideoId() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get msg => $_getSZ(4);
  @$pb.TagNumber(5)
  set msg($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasMsg() => $_has(4);
  @$pb.TagNumber(5)
  void clearMsg() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get preMsg => $_getSZ(5);
  @$pb.TagNumber(6)
  set preMsg($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasPreMsg() => $_has(5);
  @$pb.TagNumber(6)
  void clearPreMsg() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get colorMsg => $_getSZ(6);
  @$pb.TagNumber(7)
  set colorMsg($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasColorMsg() => $_has(6);
  @$pb.TagNumber(7)
  void clearColorMsg() => $_clearField(7);

  @$pb.TagNumber(8)
  $0.ZhiBoInfoTW get twzhiboInfo => $_getN(7);
  @$pb.TagNumber(8)
  set twzhiboInfo($0.ZhiBoInfoTW value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasTwzhiboInfo() => $_has(7);
  @$pb.TagNumber(8)
  void clearTwzhiboInfo() => $_clearField(8);
  @$pb.TagNumber(8)
  $0.ZhiBoInfoTW ensureTwzhiboInfo() => $_ensure(7);

  @$pb.TagNumber(9)
  $1.ReplyExp get exp => $_getN(8);
  @$pb.TagNumber(9)
  set exp($1.ReplyExp value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasExp() => $_has(8);
  @$pb.TagNumber(9)
  void clearExp() => $_clearField(9);
  @$pb.TagNumber(9)
  $1.ReplyExp ensureExp() => $_ensure(8);

  @$pb.TagNumber(10)
  $2.ContriInfo get contriInfo => $_getN(9);
  @$pb.TagNumber(10)
  set contriInfo($2.ContriInfo value) => $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasContriInfo() => $_has(9);
  @$pb.TagNumber(10)
  void clearContriInfo() => $_clearField(10);
  @$pb.TagNumber(10)
  $2.ContriInfo ensureContriInfo() => $_ensure(9);

  @$pb.TagNumber(11)
  $3.ThreadEasterEgg get starInfo => $_getN(10);
  @$pb.TagNumber(11)
  set starInfo($3.ThreadEasterEgg value) => $_setField(11, value);
  @$pb.TagNumber(11)
  $core.bool hasStarInfo() => $_has(10);
  @$pb.TagNumber(11)
  void clearStarInfo() => $_clearField(11);
  @$pb.TagNumber(11)
  $3.ThreadEasterEgg ensureStarInfo() => $_ensure(10);

  @$pb.TagNumber(12)
  $4.Advertisement get advertisement => $_getN(11);
  @$pb.TagNumber(12)
  set advertisement($4.Advertisement value) => $_setField(12, value);
  @$pb.TagNumber(12)
  $core.bool hasAdvertisement() => $_has(11);
  @$pb.TagNumber(12)
  void clearAdvertisement() => $_clearField(12);
  @$pb.TagNumber(12)
  $4.Advertisement ensureAdvertisement() => $_ensure(11);

  @$pb.TagNumber(13)
  $5.IconStampInfo get iconStampInfo => $_getN(12);
  @$pb.TagNumber(13)
  set iconStampInfo($5.IconStampInfo value) => $_setField(13, value);
  @$pb.TagNumber(13)
  $core.bool hasIconStampInfo() => $_has(12);
  @$pb.TagNumber(13)
  void clearIconStampInfo() => $_clearField(13);
  @$pb.TagNumber(13)
  $5.IconStampInfo ensureIconStampInfo() => $_ensure(12);

  @$pb.TagNumber(14)
  $6.PostAntiInfo get info => $_getN(13);
  @$pb.TagNumber(14)
  set info($6.PostAntiInfo value) => $_setField(14, value);
  @$pb.TagNumber(14)
  $core.bool hasInfo() => $_has(13);
  @$pb.TagNumber(14)
  void clearInfo() => $_clearField(14);
  @$pb.TagNumber(14)
  $6.PostAntiInfo ensureInfo() => $_ensure(13);

  @$pb.TagNumber(15)
  $7.Anti get antiStat => $_getN(14);
  @$pb.TagNumber(15)
  set antiStat($7.Anti value) => $_setField(15, value);
  @$pb.TagNumber(15)
  $core.bool hasAntiStat() => $_has(14);
  @$pb.TagNumber(15)
  void clearAntiStat() => $_clearField(15);
  @$pb.TagNumber(15)
  $7.Anti ensureAntiStat() => $_ensure(14);

  @$pb.TagNumber(16)
  $8.TbInteraction get tbHudong => $_getN(15);
  @$pb.TagNumber(16)
  set tbHudong($8.TbInteraction value) => $_setField(16, value);
  @$pb.TagNumber(16)
  $core.bool hasTbHudong() => $_has(15);
  @$pb.TagNumber(16)
  void clearTbHudong() => $_clearField(16);
  @$pb.TagNumber(16)
  $8.TbInteraction ensureTbHudong() => $_ensure(15);

  @$pb.TagNumber(17)
  $9.VcodeInfo get anti => $_getN(16);
  @$pb.TagNumber(17)
  set anti($9.VcodeInfo value) => $_setField(17, value);
  @$pb.TagNumber(17)
  $core.bool hasAnti() => $_has(16);
  @$pb.TagNumber(17)
  void clearAnti() => $_clearField(17);
  @$pb.TagNumber(17)
  $9.VcodeInfo ensureAnti() => $_ensure(16);

  @$pb.TagNumber(18)
  $core.String get extMsg => $_getSZ(17);
  @$pb.TagNumber(18)
  set extMsg($core.String value) => $_setString(17, value);
  @$pb.TagNumber(18)
  $core.bool hasExtMsg() => $_has(17);
  @$pb.TagNumber(18)
  void clearExtMsg() => $_clearField(18);

  @$pb.TagNumber(19)
  $10.Toast get toast => $_getN(18);
  @$pb.TagNumber(19)
  set toast($10.Toast value) => $_setField(19, value);
  @$pb.TagNumber(19)
  $core.bool hasToast() => $_has(18);
  @$pb.TagNumber(19)
  void clearToast() => $_clearField(19);
  @$pb.TagNumber(19)
  $10.Toast ensureToast() => $_ensure(18);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
