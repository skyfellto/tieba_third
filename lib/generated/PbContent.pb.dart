// This is a generated file - do not edit.
//
// Generated from PbContent.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'MemeInfo.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class PbContent extends $pb.GeneratedMessage {
  factory PbContent({
    $core.int? type,
    $core.String? text,
    $core.String? link,
    $core.String? src,
    $core.String? bsize,
    $core.String? bigSrc,
    $core.String? bigSize,
    $core.String? cdnSrc,
    $core.String? bigCdnSrc,
    $core.String? imgType,
    $core.String? c,
    $core.String? voiceMD5,
    $core.int? duringTime,
    $fixnum.Int64? uid,
    $core.String? dynamic,
    $core.String? static,
    $core.int? width,
    $core.int? height,
    $core.String? originSrc,
    $core.int? originSize,
    $core.String? mediaSubtitle,
    $core.int? urlType,
    $0.MemeInfo? memeInfo,
    $core.int? isLongPic,
    $core.int? showOriginalBtn,
    $core.String? cdnSrcActive,
  }) {
    final result = create();
    if (type != null) result.type = type;
    if (text != null) result.text = text;
    if (link != null) result.link = link;
    if (src != null) result.src = src;
    if (bsize != null) result.bsize = bsize;
    if (bigSrc != null) result.bigSrc = bigSrc;
    if (bigSize != null) result.bigSize = bigSize;
    if (cdnSrc != null) result.cdnSrc = cdnSrc;
    if (bigCdnSrc != null) result.bigCdnSrc = bigCdnSrc;
    if (imgType != null) result.imgType = imgType;
    if (c != null) result.c = c;
    if (voiceMD5 != null) result.voiceMD5 = voiceMD5;
    if (duringTime != null) result.duringTime = duringTime;
    if (uid != null) result.uid = uid;
    if (dynamic != null) result.dynamic = dynamic;
    if (static != null) result.static = static;
    if (width != null) result.width = width;
    if (height != null) result.height = height;
    if (originSrc != null) result.originSrc = originSrc;
    if (originSize != null) result.originSize = originSize;
    if (mediaSubtitle != null) result.mediaSubtitle = mediaSubtitle;
    if (urlType != null) result.urlType = urlType;
    if (memeInfo != null) result.memeInfo = memeInfo;
    if (isLongPic != null) result.isLongPic = isLongPic;
    if (showOriginalBtn != null) result.showOriginalBtn = showOriginalBtn;
    if (cdnSrcActive != null) result.cdnSrcActive = cdnSrcActive;
    return result;
  }

  PbContent._();

  factory PbContent.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PbContent.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PbContent',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'type')
    ..aOS(2, _omitFieldNames ? '' : 'text')
    ..aOS(3, _omitFieldNames ? '' : 'link')
    ..aOS(4, _omitFieldNames ? '' : 'src')
    ..aOS(5, _omitFieldNames ? '' : 'bsize')
    ..aOS(6, _omitFieldNames ? '' : 'bigSrc', protoName: 'bigSrc')
    ..aOS(7, _omitFieldNames ? '' : 'bigSize', protoName: 'bigSize')
    ..aOS(8, _omitFieldNames ? '' : 'cdnSrc', protoName: 'cdnSrc')
    ..aOS(9, _omitFieldNames ? '' : 'bigCdnSrc', protoName: 'bigCdnSrc')
    ..aOS(10, _omitFieldNames ? '' : 'imgType', protoName: 'imgType')
    ..aOS(11, _omitFieldNames ? '' : 'c')
    ..aOS(12, _omitFieldNames ? '' : 'voiceMD5', protoName: 'voiceMD5')
    ..aI(13, _omitFieldNames ? '' : 'duringTime',
        protoName: 'duringTime', fieldType: $pb.PbFieldType.OU3)
    ..aInt64(15, _omitFieldNames ? '' : 'uid')
    ..aOS(16, _omitFieldNames ? '' : 'dynamic')
    ..aOS(17, _omitFieldNames ? '' : 'Static')
    ..aI(18, _omitFieldNames ? '' : 'width', fieldType: $pb.PbFieldType.OU3)
    ..aI(19, _omitFieldNames ? '' : 'height', fieldType: $pb.PbFieldType.OU3)
    ..aOS(25, _omitFieldNames ? '' : 'originSrc', protoName: 'originSrc')
    ..aI(27, _omitFieldNames ? '' : 'originSize',
        protoName: 'originSize', fieldType: $pb.PbFieldType.OU3)
    ..aOS(31, _omitFieldNames ? '' : 'mediaSubtitle',
        protoName: 'mediaSubtitle')
    ..aI(32, _omitFieldNames ? '' : 'urlType', protoName: 'urlType')
    ..aOM<$0.MemeInfo>(33, _omitFieldNames ? '' : 'memeInfo',
        protoName: 'memeInfo', subBuilder: $0.MemeInfo.create)
    ..aI(34, _omitFieldNames ? '' : 'isLongPic',
        protoName: 'isLongPic', fieldType: $pb.PbFieldType.OU3)
    ..aI(35, _omitFieldNames ? '' : 'showOriginalBtn',
        protoName: 'showOriginalBtn', fieldType: $pb.PbFieldType.OU3)
    ..aOS(36, _omitFieldNames ? '' : 'cdnSrcActive', protoName: 'cdnSrcActive')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PbContent clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PbContent copyWith(void Function(PbContent) updates) =>
      super.copyWith((message) => updates(message as PbContent)) as PbContent;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PbContent create() => PbContent._();
  @$core.override
  PbContent createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PbContent getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PbContent>(create);
  static PbContent? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get type => $_getIZ(0);
  @$pb.TagNumber(1)
  set type($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get text => $_getSZ(1);
  @$pb.TagNumber(2)
  set text($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasText() => $_has(1);
  @$pb.TagNumber(2)
  void clearText() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get link => $_getSZ(2);
  @$pb.TagNumber(3)
  set link($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasLink() => $_has(2);
  @$pb.TagNumber(3)
  void clearLink() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get src => $_getSZ(3);
  @$pb.TagNumber(4)
  set src($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasSrc() => $_has(3);
  @$pb.TagNumber(4)
  void clearSrc() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get bsize => $_getSZ(4);
  @$pb.TagNumber(5)
  set bsize($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasBsize() => $_has(4);
  @$pb.TagNumber(5)
  void clearBsize() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get bigSrc => $_getSZ(5);
  @$pb.TagNumber(6)
  set bigSrc($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasBigSrc() => $_has(5);
  @$pb.TagNumber(6)
  void clearBigSrc() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get bigSize => $_getSZ(6);
  @$pb.TagNumber(7)
  set bigSize($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasBigSize() => $_has(6);
  @$pb.TagNumber(7)
  void clearBigSize() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.String get cdnSrc => $_getSZ(7);
  @$pb.TagNumber(8)
  set cdnSrc($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasCdnSrc() => $_has(7);
  @$pb.TagNumber(8)
  void clearCdnSrc() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.String get bigCdnSrc => $_getSZ(8);
  @$pb.TagNumber(9)
  set bigCdnSrc($core.String value) => $_setString(8, value);
  @$pb.TagNumber(9)
  $core.bool hasBigCdnSrc() => $_has(8);
  @$pb.TagNumber(9)
  void clearBigCdnSrc() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.String get imgType => $_getSZ(9);
  @$pb.TagNumber(10)
  set imgType($core.String value) => $_setString(9, value);
  @$pb.TagNumber(10)
  $core.bool hasImgType() => $_has(9);
  @$pb.TagNumber(10)
  void clearImgType() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.String get c => $_getSZ(10);
  @$pb.TagNumber(11)
  set c($core.String value) => $_setString(10, value);
  @$pb.TagNumber(11)
  $core.bool hasC() => $_has(10);
  @$pb.TagNumber(11)
  void clearC() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.String get voiceMD5 => $_getSZ(11);
  @$pb.TagNumber(12)
  set voiceMD5($core.String value) => $_setString(11, value);
  @$pb.TagNumber(12)
  $core.bool hasVoiceMD5() => $_has(11);
  @$pb.TagNumber(12)
  void clearVoiceMD5() => $_clearField(12);

  @$pb.TagNumber(13)
  $core.int get duringTime => $_getIZ(12);
  @$pb.TagNumber(13)
  set duringTime($core.int value) => $_setUnsignedInt32(12, value);
  @$pb.TagNumber(13)
  $core.bool hasDuringTime() => $_has(12);
  @$pb.TagNumber(13)
  void clearDuringTime() => $_clearField(13);

  @$pb.TagNumber(15)
  $fixnum.Int64 get uid => $_getI64(13);
  @$pb.TagNumber(15)
  set uid($fixnum.Int64 value) => $_setInt64(13, value);
  @$pb.TagNumber(15)
  $core.bool hasUid() => $_has(13);
  @$pb.TagNumber(15)
  void clearUid() => $_clearField(15);

  @$pb.TagNumber(16)
  $core.String get dynamic => $_getSZ(14);
  @$pb.TagNumber(16)
  set dynamic($core.String value) => $_setString(14, value);
  @$pb.TagNumber(16)
  $core.bool hasDynamic() => $_has(14);
  @$pb.TagNumber(16)
  void clearDynamic() => $_clearField(16);

  @$pb.TagNumber(17)
  $core.String get static => $_getSZ(15);
  @$pb.TagNumber(17)
  set static($core.String value) => $_setString(15, value);
  @$pb.TagNumber(17)
  $core.bool hasStatic() => $_has(15);
  @$pb.TagNumber(17)
  void clearStatic() => $_clearField(17);

  @$pb.TagNumber(18)
  $core.int get width => $_getIZ(16);
  @$pb.TagNumber(18)
  set width($core.int value) => $_setUnsignedInt32(16, value);
  @$pb.TagNumber(18)
  $core.bool hasWidth() => $_has(16);
  @$pb.TagNumber(18)
  void clearWidth() => $_clearField(18);

  @$pb.TagNumber(19)
  $core.int get height => $_getIZ(17);
  @$pb.TagNumber(19)
  set height($core.int value) => $_setUnsignedInt32(17, value);
  @$pb.TagNumber(19)
  $core.bool hasHeight() => $_has(17);
  @$pb.TagNumber(19)
  void clearHeight() => $_clearField(19);

  @$pb.TagNumber(25)
  $core.String get originSrc => $_getSZ(18);
  @$pb.TagNumber(25)
  set originSrc($core.String value) => $_setString(18, value);
  @$pb.TagNumber(25)
  $core.bool hasOriginSrc() => $_has(18);
  @$pb.TagNumber(25)
  void clearOriginSrc() => $_clearField(25);

  @$pb.TagNumber(27)
  $core.int get originSize => $_getIZ(19);
  @$pb.TagNumber(27)
  set originSize($core.int value) => $_setUnsignedInt32(19, value);
  @$pb.TagNumber(27)
  $core.bool hasOriginSize() => $_has(19);
  @$pb.TagNumber(27)
  void clearOriginSize() => $_clearField(27);

  @$pb.TagNumber(31)
  $core.String get mediaSubtitle => $_getSZ(20);
  @$pb.TagNumber(31)
  set mediaSubtitle($core.String value) => $_setString(20, value);
  @$pb.TagNumber(31)
  $core.bool hasMediaSubtitle() => $_has(20);
  @$pb.TagNumber(31)
  void clearMediaSubtitle() => $_clearField(31);

  @$pb.TagNumber(32)
  $core.int get urlType => $_getIZ(21);
  @$pb.TagNumber(32)
  set urlType($core.int value) => $_setSignedInt32(21, value);
  @$pb.TagNumber(32)
  $core.bool hasUrlType() => $_has(21);
  @$pb.TagNumber(32)
  void clearUrlType() => $_clearField(32);

  @$pb.TagNumber(33)
  $0.MemeInfo get memeInfo => $_getN(22);
  @$pb.TagNumber(33)
  set memeInfo($0.MemeInfo value) => $_setField(33, value);
  @$pb.TagNumber(33)
  $core.bool hasMemeInfo() => $_has(22);
  @$pb.TagNumber(33)
  void clearMemeInfo() => $_clearField(33);
  @$pb.TagNumber(33)
  $0.MemeInfo ensureMemeInfo() => $_ensure(22);

  @$pb.TagNumber(34)
  $core.int get isLongPic => $_getIZ(23);
  @$pb.TagNumber(34)
  set isLongPic($core.int value) => $_setUnsignedInt32(23, value);
  @$pb.TagNumber(34)
  $core.bool hasIsLongPic() => $_has(23);
  @$pb.TagNumber(34)
  void clearIsLongPic() => $_clearField(34);

  @$pb.TagNumber(35)
  $core.int get showOriginalBtn => $_getIZ(24);
  @$pb.TagNumber(35)
  set showOriginalBtn($core.int value) => $_setUnsignedInt32(24, value);
  @$pb.TagNumber(35)
  $core.bool hasShowOriginalBtn() => $_has(24);
  @$pb.TagNumber(35)
  void clearShowOriginalBtn() => $_clearField(35);

  @$pb.TagNumber(36)
  $core.String get cdnSrcActive => $_getSZ(25);
  @$pb.TagNumber(36)
  set cdnSrcActive($core.String value) => $_setString(25, value);
  @$pb.TagNumber(36)
  $core.bool hasCdnSrcActive() => $_has(25);
  @$pb.TagNumber(36)
  void clearCdnSrcActive() => $_clearField(36);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
