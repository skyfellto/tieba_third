// This is a generated file - do not edit.
//
// Generated from ActHot.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class ActHot extends $pb.GeneratedMessage {
  factory ActHot({
    $core.String? bsize,
    $core.String? imgSrc,
    $core.String? link,
    $core.String? authorName,
    $core.String? imgDes,
    $core.int? imgType,
  }) {
    final result = create();
    if (bsize != null) result.bsize = bsize;
    if (imgSrc != null) result.imgSrc = imgSrc;
    if (link != null) result.link = link;
    if (authorName != null) result.authorName = authorName;
    if (imgDes != null) result.imgDes = imgDes;
    if (imgType != null) result.imgType = imgType;
    return result;
  }

  ActHot._();

  factory ActHot.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ActHot.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ActHot',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'bsize')
    ..aOS(2, _omitFieldNames ? '' : 'imgSrc')
    ..aOS(3, _omitFieldNames ? '' : 'link')
    ..aOS(4, _omitFieldNames ? '' : 'authorName')
    ..aOS(5, _omitFieldNames ? '' : 'imgDes')
    ..aI(6, _omitFieldNames ? '' : 'imgType')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ActHot clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ActHot copyWith(void Function(ActHot) updates) =>
      super.copyWith((message) => updates(message as ActHot)) as ActHot;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ActHot create() => ActHot._();
  @$core.override
  ActHot createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ActHot getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ActHot>(create);
  static ActHot? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get bsize => $_getSZ(0);
  @$pb.TagNumber(1)
  set bsize($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasBsize() => $_has(0);
  @$pb.TagNumber(1)
  void clearBsize() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get imgSrc => $_getSZ(1);
  @$pb.TagNumber(2)
  set imgSrc($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasImgSrc() => $_has(1);
  @$pb.TagNumber(2)
  void clearImgSrc() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get link => $_getSZ(2);
  @$pb.TagNumber(3)
  set link($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasLink() => $_has(2);
  @$pb.TagNumber(3)
  void clearLink() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get authorName => $_getSZ(3);
  @$pb.TagNumber(4)
  set authorName($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasAuthorName() => $_has(3);
  @$pb.TagNumber(4)
  void clearAuthorName() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get imgDes => $_getSZ(4);
  @$pb.TagNumber(5)
  set imgDes($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasImgDes() => $_has(4);
  @$pb.TagNumber(5)
  void clearImgDes() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get imgType => $_getIZ(5);
  @$pb.TagNumber(6)
  set imgType($core.int value) => $_setSignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasImgType() => $_has(5);
  @$pb.TagNumber(6)
  void clearImgType() => $_clearField(6);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
