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

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class Media extends $pb.GeneratedMessage {
  factory Media({
    $core.int? type,
    $core.String? bigPic,
    $core.String? srcPic,
    $core.int? width,
    $core.int? height,
    $core.String? originPic,
    $core.int? originSize,
    $fixnum.Int64? postId,
    $core.String? dynamicPic,
    $core.int? isLongPic,
    $core.int? showOriginalBtn,
  }) {
    final result = create();
    if (type != null) result.type = type;
    if (bigPic != null) result.bigPic = bigPic;
    if (srcPic != null) result.srcPic = srcPic;
    if (width != null) result.width = width;
    if (height != null) result.height = height;
    if (originPic != null) result.originPic = originPic;
    if (originSize != null) result.originSize = originSize;
    if (postId != null) result.postId = postId;
    if (dynamicPic != null) result.dynamicPic = dynamicPic;
    if (isLongPic != null) result.isLongPic = isLongPic;
    if (showOriginalBtn != null) result.showOriginalBtn = showOriginalBtn;
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
    ..aOS(3, _omitFieldNames ? '' : 'bigPic', protoName: 'bigPic')
    ..aOS(8, _omitFieldNames ? '' : 'srcPic', protoName: 'srcPic')
    ..aI(10, _omitFieldNames ? '' : 'width', fieldType: $pb.PbFieldType.OU3)
    ..aI(11, _omitFieldNames ? '' : 'height', fieldType: $pb.PbFieldType.OU3)
    ..aOS(15, _omitFieldNames ? '' : 'originPic', protoName: 'originPic')
    ..aI(16, _omitFieldNames ? '' : 'originSize',
        protoName: 'originSize', fieldType: $pb.PbFieldType.OU3)
    ..aInt64(17, _omitFieldNames ? '' : 'postId', protoName: 'postId')
    ..aOS(18, _omitFieldNames ? '' : 'dynamicPic', protoName: 'dynamicPic')
    ..aI(19, _omitFieldNames ? '' : 'isLongPic',
        protoName: 'isLongPic', fieldType: $pb.PbFieldType.OU3)
    ..aI(20, _omitFieldNames ? '' : 'showOriginalBtn',
        protoName: 'showOriginalBtn', fieldType: $pb.PbFieldType.OU3)
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

  @$pb.TagNumber(3)
  $core.String get bigPic => $_getSZ(1);
  @$pb.TagNumber(3)
  set bigPic($core.String value) => $_setString(1, value);
  @$pb.TagNumber(3)
  $core.bool hasBigPic() => $_has(1);
  @$pb.TagNumber(3)
  void clearBigPic() => $_clearField(3);

  @$pb.TagNumber(8)
  $core.String get srcPic => $_getSZ(2);
  @$pb.TagNumber(8)
  set srcPic($core.String value) => $_setString(2, value);
  @$pb.TagNumber(8)
  $core.bool hasSrcPic() => $_has(2);
  @$pb.TagNumber(8)
  void clearSrcPic() => $_clearField(8);

  @$pb.TagNumber(10)
  $core.int get width => $_getIZ(3);
  @$pb.TagNumber(10)
  set width($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(10)
  $core.bool hasWidth() => $_has(3);
  @$pb.TagNumber(10)
  void clearWidth() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.int get height => $_getIZ(4);
  @$pb.TagNumber(11)
  set height($core.int value) => $_setUnsignedInt32(4, value);
  @$pb.TagNumber(11)
  $core.bool hasHeight() => $_has(4);
  @$pb.TagNumber(11)
  void clearHeight() => $_clearField(11);

  @$pb.TagNumber(15)
  $core.String get originPic => $_getSZ(5);
  @$pb.TagNumber(15)
  set originPic($core.String value) => $_setString(5, value);
  @$pb.TagNumber(15)
  $core.bool hasOriginPic() => $_has(5);
  @$pb.TagNumber(15)
  void clearOriginPic() => $_clearField(15);

  @$pb.TagNumber(16)
  $core.int get originSize => $_getIZ(6);
  @$pb.TagNumber(16)
  set originSize($core.int value) => $_setUnsignedInt32(6, value);
  @$pb.TagNumber(16)
  $core.bool hasOriginSize() => $_has(6);
  @$pb.TagNumber(16)
  void clearOriginSize() => $_clearField(16);

  @$pb.TagNumber(17)
  $fixnum.Int64 get postId => $_getI64(7);
  @$pb.TagNumber(17)
  set postId($fixnum.Int64 value) => $_setInt64(7, value);
  @$pb.TagNumber(17)
  $core.bool hasPostId() => $_has(7);
  @$pb.TagNumber(17)
  void clearPostId() => $_clearField(17);

  @$pb.TagNumber(18)
  $core.String get dynamicPic => $_getSZ(8);
  @$pb.TagNumber(18)
  set dynamicPic($core.String value) => $_setString(8, value);
  @$pb.TagNumber(18)
  $core.bool hasDynamicPic() => $_has(8);
  @$pb.TagNumber(18)
  void clearDynamicPic() => $_clearField(18);

  @$pb.TagNumber(19)
  $core.int get isLongPic => $_getIZ(9);
  @$pb.TagNumber(19)
  set isLongPic($core.int value) => $_setUnsignedInt32(9, value);
  @$pb.TagNumber(19)
  $core.bool hasIsLongPic() => $_has(9);
  @$pb.TagNumber(19)
  void clearIsLongPic() => $_clearField(19);

  @$pb.TagNumber(20)
  $core.int get showOriginalBtn => $_getIZ(10);
  @$pb.TagNumber(20)
  set showOriginalBtn($core.int value) => $_setUnsignedInt32(10, value);
  @$pb.TagNumber(20)
  $core.bool hasShowOriginalBtn() => $_has(10);
  @$pb.TagNumber(20)
  void clearShowOriginalBtn() => $_clearField(20);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
