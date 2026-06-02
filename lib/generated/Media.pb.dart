// This is a generated file - do not edit.
//
// Generated from Media.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'MaskColor.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class Media extends $pb.GeneratedMessage {
  factory Media({
    $core.int? type,
    $core.String? smallPic,
    $core.String? bigPic,
    $core.String? waterPic,
    $core.String? vpic,
    $core.String? vsrc,
    $core.String? vhsrc,
    $core.String? srcPic,
    $core.String? text,
    $core.int? width,
    $core.int? height,
    $core.String? bsize,
    $core.int? duringTime,
    $core.int? eType,
    $core.String? originPic,
    $core.int? originSize,
    $fixnum.Int64? postId,
    $core.String? dynamicPic,
    $core.int? isLongPic,
    $core.int? showOriginalBtn,
    $core.int? isBlockedPic,
    $core.double? wthMidLoc,
    $core.double? hthMidLoc,
    $core.String? jumpUrl,
    $core.String? guideText,
    $core.int? lottieType,
    $0.MaskColor? maskColor,
    $core.int? isFull,
    $fixnum.Int64? picId,
    $core.String? id,
  }) {
    final result = create();
    if (type != null) result.type = type;
    if (smallPic != null) result.smallPic = smallPic;
    if (bigPic != null) result.bigPic = bigPic;
    if (waterPic != null) result.waterPic = waterPic;
    if (vpic != null) result.vpic = vpic;
    if (vsrc != null) result.vsrc = vsrc;
    if (vhsrc != null) result.vhsrc = vhsrc;
    if (srcPic != null) result.srcPic = srcPic;
    if (text != null) result.text = text;
    if (width != null) result.width = width;
    if (height != null) result.height = height;
    if (bsize != null) result.bsize = bsize;
    if (duringTime != null) result.duringTime = duringTime;
    if (eType != null) result.eType = eType;
    if (originPic != null) result.originPic = originPic;
    if (originSize != null) result.originSize = originSize;
    if (postId != null) result.postId = postId;
    if (dynamicPic != null) result.dynamicPic = dynamicPic;
    if (isLongPic != null) result.isLongPic = isLongPic;
    if (showOriginalBtn != null) result.showOriginalBtn = showOriginalBtn;
    if (isBlockedPic != null) result.isBlockedPic = isBlockedPic;
    if (wthMidLoc != null) result.wthMidLoc = wthMidLoc;
    if (hthMidLoc != null) result.hthMidLoc = hthMidLoc;
    if (jumpUrl != null) result.jumpUrl = jumpUrl;
    if (guideText != null) result.guideText = guideText;
    if (lottieType != null) result.lottieType = lottieType;
    if (maskColor != null) result.maskColor = maskColor;
    if (isFull != null) result.isFull = isFull;
    if (picId != null) result.picId = picId;
    if (id != null) result.id = id;
    return result;
  }

  Media._();

  factory Media.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Media.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Media',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'type')
    ..aOS(2, _omitFieldNames ? '' : 'smallPic')
    ..aOS(3, _omitFieldNames ? '' : 'bigPic')
    ..aOS(4, _omitFieldNames ? '' : 'waterPic')
    ..aOS(5, _omitFieldNames ? '' : 'vpic')
    ..aOS(6, _omitFieldNames ? '' : 'vsrc')
    ..aOS(7, _omitFieldNames ? '' : 'vhsrc')
    ..aOS(8, _omitFieldNames ? '' : 'srcPic')
    ..aOS(9, _omitFieldNames ? '' : 'text')
    ..aI(10, _omitFieldNames ? '' : 'width', fieldType: $pb.PbFieldType.OU3)
    ..aI(11, _omitFieldNames ? '' : 'height', fieldType: $pb.PbFieldType.OU3)
    ..aOS(12, _omitFieldNames ? '' : 'bsize')
    ..aI(13, _omitFieldNames ? '' : 'duringTime',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(14, _omitFieldNames ? '' : 'eType', fieldType: $pb.PbFieldType.OU3)
    ..aOS(15, _omitFieldNames ? '' : 'originPic')
    ..aI(16, _omitFieldNames ? '' : 'originSize',
        fieldType: $pb.PbFieldType.OU3)
    ..aInt64(17, _omitFieldNames ? '' : 'postId')
    ..aOS(18, _omitFieldNames ? '' : 'dynamicPic')
    ..aI(19, _omitFieldNames ? '' : 'isLongPic', fieldType: $pb.PbFieldType.OU3)
    ..aI(20, _omitFieldNames ? '' : 'showOriginalBtn',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(21, _omitFieldNames ? '' : 'isBlockedPic',
        fieldType: $pb.PbFieldType.OU3)
    ..aD(22, _omitFieldNames ? '' : 'wthMidLoc')
    ..aD(23, _omitFieldNames ? '' : 'hthMidLoc')
    ..aOS(24, _omitFieldNames ? '' : 'jumpUrl')
    ..aOS(25, _omitFieldNames ? '' : 'guideText')
    ..aI(26, _omitFieldNames ? '' : 'lottieType')
    ..aOM<$0.MaskColor>(27, _omitFieldNames ? '' : 'maskColor',
        subBuilder: $0.MaskColor.create)
    ..aI(28, _omitFieldNames ? '' : 'isFull')
    ..a<$fixnum.Int64>(29, _omitFieldNames ? '' : 'picId', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(30, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Media clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Media copyWith(void Function(Media) updates) =>
      super.copyWith((message) => updates(message as Media)) as Media;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Media create() => Media._();
  @$core.override
  Media createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Media getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Media>(create);
  static Media? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get type => $_getIZ(0);
  @$pb.TagNumber(1)
  set type($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get smallPic => $_getSZ(1);
  @$pb.TagNumber(2)
  set smallPic($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSmallPic() => $_has(1);
  @$pb.TagNumber(2)
  void clearSmallPic() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get bigPic => $_getSZ(2);
  @$pb.TagNumber(3)
  set bigPic($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasBigPic() => $_has(2);
  @$pb.TagNumber(3)
  void clearBigPic() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get waterPic => $_getSZ(3);
  @$pb.TagNumber(4)
  set waterPic($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasWaterPic() => $_has(3);
  @$pb.TagNumber(4)
  void clearWaterPic() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get vpic => $_getSZ(4);
  @$pb.TagNumber(5)
  set vpic($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasVpic() => $_has(4);
  @$pb.TagNumber(5)
  void clearVpic() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get vsrc => $_getSZ(5);
  @$pb.TagNumber(6)
  set vsrc($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasVsrc() => $_has(5);
  @$pb.TagNumber(6)
  void clearVsrc() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get vhsrc => $_getSZ(6);
  @$pb.TagNumber(7)
  set vhsrc($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasVhsrc() => $_has(6);
  @$pb.TagNumber(7)
  void clearVhsrc() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.String get srcPic => $_getSZ(7);
  @$pb.TagNumber(8)
  set srcPic($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasSrcPic() => $_has(7);
  @$pb.TagNumber(8)
  void clearSrcPic() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.String get text => $_getSZ(8);
  @$pb.TagNumber(9)
  set text($core.String value) => $_setString(8, value);
  @$pb.TagNumber(9)
  $core.bool hasText() => $_has(8);
  @$pb.TagNumber(9)
  void clearText() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.int get width => $_getIZ(9);
  @$pb.TagNumber(10)
  set width($core.int value) => $_setUnsignedInt32(9, value);
  @$pb.TagNumber(10)
  $core.bool hasWidth() => $_has(9);
  @$pb.TagNumber(10)
  void clearWidth() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.int get height => $_getIZ(10);
  @$pb.TagNumber(11)
  set height($core.int value) => $_setUnsignedInt32(10, value);
  @$pb.TagNumber(11)
  $core.bool hasHeight() => $_has(10);
  @$pb.TagNumber(11)
  void clearHeight() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.String get bsize => $_getSZ(11);
  @$pb.TagNumber(12)
  set bsize($core.String value) => $_setString(11, value);
  @$pb.TagNumber(12)
  $core.bool hasBsize() => $_has(11);
  @$pb.TagNumber(12)
  void clearBsize() => $_clearField(12);

  @$pb.TagNumber(13)
  $core.int get duringTime => $_getIZ(12);
  @$pb.TagNumber(13)
  set duringTime($core.int value) => $_setUnsignedInt32(12, value);
  @$pb.TagNumber(13)
  $core.bool hasDuringTime() => $_has(12);
  @$pb.TagNumber(13)
  void clearDuringTime() => $_clearField(13);

  @$pb.TagNumber(14)
  $core.int get eType => $_getIZ(13);
  @$pb.TagNumber(14)
  set eType($core.int value) => $_setUnsignedInt32(13, value);
  @$pb.TagNumber(14)
  $core.bool hasEType() => $_has(13);
  @$pb.TagNumber(14)
  void clearEType() => $_clearField(14);

  @$pb.TagNumber(15)
  $core.String get originPic => $_getSZ(14);
  @$pb.TagNumber(15)
  set originPic($core.String value) => $_setString(14, value);
  @$pb.TagNumber(15)
  $core.bool hasOriginPic() => $_has(14);
  @$pb.TagNumber(15)
  void clearOriginPic() => $_clearField(15);

  @$pb.TagNumber(16)
  $core.int get originSize => $_getIZ(15);
  @$pb.TagNumber(16)
  set originSize($core.int value) => $_setUnsignedInt32(15, value);
  @$pb.TagNumber(16)
  $core.bool hasOriginSize() => $_has(15);
  @$pb.TagNumber(16)
  void clearOriginSize() => $_clearField(16);

  @$pb.TagNumber(17)
  $fixnum.Int64 get postId => $_getI64(16);
  @$pb.TagNumber(17)
  set postId($fixnum.Int64 value) => $_setInt64(16, value);
  @$pb.TagNumber(17)
  $core.bool hasPostId() => $_has(16);
  @$pb.TagNumber(17)
  void clearPostId() => $_clearField(17);

  @$pb.TagNumber(18)
  $core.String get dynamicPic => $_getSZ(17);
  @$pb.TagNumber(18)
  set dynamicPic($core.String value) => $_setString(17, value);
  @$pb.TagNumber(18)
  $core.bool hasDynamicPic() => $_has(17);
  @$pb.TagNumber(18)
  void clearDynamicPic() => $_clearField(18);

  @$pb.TagNumber(19)
  $core.int get isLongPic => $_getIZ(18);
  @$pb.TagNumber(19)
  set isLongPic($core.int value) => $_setUnsignedInt32(18, value);
  @$pb.TagNumber(19)
  $core.bool hasIsLongPic() => $_has(18);
  @$pb.TagNumber(19)
  void clearIsLongPic() => $_clearField(19);

  @$pb.TagNumber(20)
  $core.int get showOriginalBtn => $_getIZ(19);
  @$pb.TagNumber(20)
  set showOriginalBtn($core.int value) => $_setUnsignedInt32(19, value);
  @$pb.TagNumber(20)
  $core.bool hasShowOriginalBtn() => $_has(19);
  @$pb.TagNumber(20)
  void clearShowOriginalBtn() => $_clearField(20);

  @$pb.TagNumber(21)
  $core.int get isBlockedPic => $_getIZ(20);
  @$pb.TagNumber(21)
  set isBlockedPic($core.int value) => $_setUnsignedInt32(20, value);
  @$pb.TagNumber(21)
  $core.bool hasIsBlockedPic() => $_has(20);
  @$pb.TagNumber(21)
  void clearIsBlockedPic() => $_clearField(21);

  @$pb.TagNumber(22)
  $core.double get wthMidLoc => $_getN(21);
  @$pb.TagNumber(22)
  set wthMidLoc($core.double value) => $_setDouble(21, value);
  @$pb.TagNumber(22)
  $core.bool hasWthMidLoc() => $_has(21);
  @$pb.TagNumber(22)
  void clearWthMidLoc() => $_clearField(22);

  @$pb.TagNumber(23)
  $core.double get hthMidLoc => $_getN(22);
  @$pb.TagNumber(23)
  set hthMidLoc($core.double value) => $_setDouble(22, value);
  @$pb.TagNumber(23)
  $core.bool hasHthMidLoc() => $_has(22);
  @$pb.TagNumber(23)
  void clearHthMidLoc() => $_clearField(23);

  @$pb.TagNumber(24)
  $core.String get jumpUrl => $_getSZ(23);
  @$pb.TagNumber(24)
  set jumpUrl($core.String value) => $_setString(23, value);
  @$pb.TagNumber(24)
  $core.bool hasJumpUrl() => $_has(23);
  @$pb.TagNumber(24)
  void clearJumpUrl() => $_clearField(24);

  @$pb.TagNumber(25)
  $core.String get guideText => $_getSZ(24);
  @$pb.TagNumber(25)
  set guideText($core.String value) => $_setString(24, value);
  @$pb.TagNumber(25)
  $core.bool hasGuideText() => $_has(24);
  @$pb.TagNumber(25)
  void clearGuideText() => $_clearField(25);

  @$pb.TagNumber(26)
  $core.int get lottieType => $_getIZ(25);
  @$pb.TagNumber(26)
  set lottieType($core.int value) => $_setSignedInt32(25, value);
  @$pb.TagNumber(26)
  $core.bool hasLottieType() => $_has(25);
  @$pb.TagNumber(26)
  void clearLottieType() => $_clearField(26);

  @$pb.TagNumber(27)
  $0.MaskColor get maskColor => $_getN(26);
  @$pb.TagNumber(27)
  set maskColor($0.MaskColor value) => $_setField(27, value);
  @$pb.TagNumber(27)
  $core.bool hasMaskColor() => $_has(26);
  @$pb.TagNumber(27)
  void clearMaskColor() => $_clearField(27);
  @$pb.TagNumber(27)
  $0.MaskColor ensureMaskColor() => $_ensure(26);

  @$pb.TagNumber(28)
  $core.int get isFull => $_getIZ(27);
  @$pb.TagNumber(28)
  set isFull($core.int value) => $_setSignedInt32(27, value);
  @$pb.TagNumber(28)
  $core.bool hasIsFull() => $_has(27);
  @$pb.TagNumber(28)
  void clearIsFull() => $_clearField(28);

  @$pb.TagNumber(29)
  $fixnum.Int64 get picId => $_getI64(28);
  @$pb.TagNumber(29)
  set picId($fixnum.Int64 value) => $_setInt64(28, value);
  @$pb.TagNumber(29)
  $core.bool hasPicId() => $_has(28);
  @$pb.TagNumber(29)
  void clearPicId() => $_clearField(29);

  @$pb.TagNumber(30)
  $core.String get id => $_getSZ(29);
  @$pb.TagNumber(30)
  set id($core.String value) => $_setString(29, value);
  @$pb.TagNumber(30)
  $core.bool hasId() => $_has(29);
  @$pb.TagNumber(30)
  void clearId() => $_clearField(30);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
