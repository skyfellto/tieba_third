// This is a generated file - do not edit.
//
// Generated from UserAttrIcon.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'UserIconExtAttr.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class UserAttrIcon extends $pb.GeneratedMessage {
  factory UserAttrIcon({
    $core.String? type,
    $core.String? subType,
    $core.String? comment,
    $core.String? imgSrc,
    $core.String? linkUrl,
    $core.int? height,
    $core.int? width,
    $core.Iterable<$0.UserIconExtAttr>? extAttr,
    $core.int? showType,
    $core.String? degradeImgSrc,
    $core.int? degradeHeight,
    $core.int? degradeWidth,
    $core.String? prefixImgSrc,
    $core.int? prefixHeight,
    $core.int? prefixWidth,
    $core.String? text,
  }) {
    final result = create();
    if (type != null) result.type = type;
    if (subType != null) result.subType = subType;
    if (comment != null) result.comment = comment;
    if (imgSrc != null) result.imgSrc = imgSrc;
    if (linkUrl != null) result.linkUrl = linkUrl;
    if (height != null) result.height = height;
    if (width != null) result.width = width;
    if (extAttr != null) result.extAttr.addAll(extAttr);
    if (showType != null) result.showType = showType;
    if (degradeImgSrc != null) result.degradeImgSrc = degradeImgSrc;
    if (degradeHeight != null) result.degradeHeight = degradeHeight;
    if (degradeWidth != null) result.degradeWidth = degradeWidth;
    if (prefixImgSrc != null) result.prefixImgSrc = prefixImgSrc;
    if (prefixHeight != null) result.prefixHeight = prefixHeight;
    if (prefixWidth != null) result.prefixWidth = prefixWidth;
    if (text != null) result.text = text;
    return result;
  }

  UserAttrIcon._();

  factory UserAttrIcon.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UserAttrIcon.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UserAttrIcon',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'type')
    ..aOS(2, _omitFieldNames ? '' : 'subType')
    ..aOS(3, _omitFieldNames ? '' : 'comment')
    ..aOS(4, _omitFieldNames ? '' : 'imgSrc')
    ..aOS(5, _omitFieldNames ? '' : 'linkUrl')
    ..aI(6, _omitFieldNames ? '' : 'height')
    ..aI(7, _omitFieldNames ? '' : 'width')
    ..pPM<$0.UserIconExtAttr>(8, _omitFieldNames ? '' : 'extAttr',
        subBuilder: $0.UserIconExtAttr.create)
    ..aI(9, _omitFieldNames ? '' : 'showType', fieldType: $pb.PbFieldType.OU3)
    ..aOS(11, _omitFieldNames ? '' : 'degradeImgSrc')
    ..aI(12, _omitFieldNames ? '' : 'degradeHeight')
    ..aI(13, _omitFieldNames ? '' : 'degradeWidth')
    ..aOS(14, _omitFieldNames ? '' : 'prefixImgSrc')
    ..aI(15, _omitFieldNames ? '' : 'prefixHeight')
    ..aI(16, _omitFieldNames ? '' : 'prefixWidth')
    ..aOS(17, _omitFieldNames ? '' : 'text')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UserAttrIcon clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UserAttrIcon copyWith(void Function(UserAttrIcon) updates) =>
      super.copyWith((message) => updates(message as UserAttrIcon))
          as UserAttrIcon;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserAttrIcon create() => UserAttrIcon._();
  @$core.override
  UserAttrIcon createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UserAttrIcon getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UserAttrIcon>(create);
  static UserAttrIcon? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get type => $_getSZ(0);
  @$pb.TagNumber(1)
  set type($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get subType => $_getSZ(1);
  @$pb.TagNumber(2)
  set subType($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSubType() => $_has(1);
  @$pb.TagNumber(2)
  void clearSubType() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get comment => $_getSZ(2);
  @$pb.TagNumber(3)
  set comment($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasComment() => $_has(2);
  @$pb.TagNumber(3)
  void clearComment() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get imgSrc => $_getSZ(3);
  @$pb.TagNumber(4)
  set imgSrc($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasImgSrc() => $_has(3);
  @$pb.TagNumber(4)
  void clearImgSrc() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get linkUrl => $_getSZ(4);
  @$pb.TagNumber(5)
  set linkUrl($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasLinkUrl() => $_has(4);
  @$pb.TagNumber(5)
  void clearLinkUrl() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get height => $_getIZ(5);
  @$pb.TagNumber(6)
  set height($core.int value) => $_setSignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasHeight() => $_has(5);
  @$pb.TagNumber(6)
  void clearHeight() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.int get width => $_getIZ(6);
  @$pb.TagNumber(7)
  set width($core.int value) => $_setSignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasWidth() => $_has(6);
  @$pb.TagNumber(7)
  void clearWidth() => $_clearField(7);

  @$pb.TagNumber(8)
  $pb.PbList<$0.UserIconExtAttr> get extAttr => $_getList(7);

  @$pb.TagNumber(9)
  $core.int get showType => $_getIZ(8);
  @$pb.TagNumber(9)
  set showType($core.int value) => $_setUnsignedInt32(8, value);
  @$pb.TagNumber(9)
  $core.bool hasShowType() => $_has(8);
  @$pb.TagNumber(9)
  void clearShowType() => $_clearField(9);

  @$pb.TagNumber(11)
  $core.String get degradeImgSrc => $_getSZ(9);
  @$pb.TagNumber(11)
  set degradeImgSrc($core.String value) => $_setString(9, value);
  @$pb.TagNumber(11)
  $core.bool hasDegradeImgSrc() => $_has(9);
  @$pb.TagNumber(11)
  void clearDegradeImgSrc() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.int get degradeHeight => $_getIZ(10);
  @$pb.TagNumber(12)
  set degradeHeight($core.int value) => $_setSignedInt32(10, value);
  @$pb.TagNumber(12)
  $core.bool hasDegradeHeight() => $_has(10);
  @$pb.TagNumber(12)
  void clearDegradeHeight() => $_clearField(12);

  @$pb.TagNumber(13)
  $core.int get degradeWidth => $_getIZ(11);
  @$pb.TagNumber(13)
  set degradeWidth($core.int value) => $_setSignedInt32(11, value);
  @$pb.TagNumber(13)
  $core.bool hasDegradeWidth() => $_has(11);
  @$pb.TagNumber(13)
  void clearDegradeWidth() => $_clearField(13);

  @$pb.TagNumber(14)
  $core.String get prefixImgSrc => $_getSZ(12);
  @$pb.TagNumber(14)
  set prefixImgSrc($core.String value) => $_setString(12, value);
  @$pb.TagNumber(14)
  $core.bool hasPrefixImgSrc() => $_has(12);
  @$pb.TagNumber(14)
  void clearPrefixImgSrc() => $_clearField(14);

  @$pb.TagNumber(15)
  $core.int get prefixHeight => $_getIZ(13);
  @$pb.TagNumber(15)
  set prefixHeight($core.int value) => $_setSignedInt32(13, value);
  @$pb.TagNumber(15)
  $core.bool hasPrefixHeight() => $_has(13);
  @$pb.TagNumber(15)
  void clearPrefixHeight() => $_clearField(15);

  @$pb.TagNumber(16)
  $core.int get prefixWidth => $_getIZ(14);
  @$pb.TagNumber(16)
  set prefixWidth($core.int value) => $_setSignedInt32(14, value);
  @$pb.TagNumber(16)
  $core.bool hasPrefixWidth() => $_has(14);
  @$pb.TagNumber(16)
  void clearPrefixWidth() => $_clearField(16);

  @$pb.TagNumber(17)
  $core.String get text => $_getSZ(15);
  @$pb.TagNumber(17)
  set text($core.String value) => $_setString(15, value);
  @$pb.TagNumber(17)
  $core.bool hasText() => $_has(15);
  @$pb.TagNumber(17)
  void clearText() => $_clearField(17);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
