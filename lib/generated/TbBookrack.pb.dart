// This is a generated file - do not edit.
//
// Generated from TbBookrack.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'BookInfo.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class TbBookrack extends $pb.GeneratedMessage {
  factory TbBookrack({
    $core.String? booktown,
    $core.int? num,
    $core.Iterable<$0.BookInfo>? bookList,
    $core.String? title,
    $core.String? icon,
    $core.String? tip,
  }) {
    final result = create();
    if (booktown != null) result.booktown = booktown;
    if (num != null) result.num = num;
    if (bookList != null) result.bookList.addAll(bookList);
    if (title != null) result.title = title;
    if (icon != null) result.icon = icon;
    if (tip != null) result.tip = tip;
    return result;
  }

  TbBookrack._();

  factory TbBookrack.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TbBookrack.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TbBookrack',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'booktown')
    ..aI(2, _omitFieldNames ? '' : 'num', fieldType: $pb.PbFieldType.OU3)
    ..pPM<$0.BookInfo>(3, _omitFieldNames ? '' : 'bookList',
        subBuilder: $0.BookInfo.create)
    ..aOS(4, _omitFieldNames ? '' : 'title')
    ..aOS(5, _omitFieldNames ? '' : 'icon')
    ..aOS(6, _omitFieldNames ? '' : 'tip')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TbBookrack clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TbBookrack copyWith(void Function(TbBookrack) updates) =>
      super.copyWith((message) => updates(message as TbBookrack)) as TbBookrack;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TbBookrack create() => TbBookrack._();
  @$core.override
  TbBookrack createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TbBookrack getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TbBookrack>(create);
  static TbBookrack? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get booktown => $_getSZ(0);
  @$pb.TagNumber(1)
  set booktown($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasBooktown() => $_has(0);
  @$pb.TagNumber(1)
  void clearBooktown() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get num => $_getIZ(1);
  @$pb.TagNumber(2)
  set num($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasNum() => $_has(1);
  @$pb.TagNumber(2)
  void clearNum() => $_clearField(2);

  @$pb.TagNumber(3)
  $pb.PbList<$0.BookInfo> get bookList => $_getList(2);

  @$pb.TagNumber(4)
  $core.String get title => $_getSZ(3);
  @$pb.TagNumber(4)
  set title($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasTitle() => $_has(3);
  @$pb.TagNumber(4)
  void clearTitle() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get icon => $_getSZ(4);
  @$pb.TagNumber(5)
  set icon($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasIcon() => $_has(4);
  @$pb.TagNumber(5)
  void clearIcon() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get tip => $_getSZ(5);
  @$pb.TagNumber(6)
  set tip($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasTip() => $_has(5);
  @$pb.TagNumber(6)
  void clearTip() => $_clearField(6);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
