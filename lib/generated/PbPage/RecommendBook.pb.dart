// This is a generated file - do not edit.
//
// Generated from PbPage/RecommendBook.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class RecommendBook extends $pb.GeneratedMessage {
  factory RecommendBook({
    $core.String? recommendText,
    $core.String? suggestText,
    $core.String? suggestUrl,
    $core.String? bookId,
    $core.int? bookType,
    $core.String? bookCover,
    $core.String? bookTitle,
    $core.Iterable<$core.String>? bookTips,
    $core.String? bottonText,
    $core.String? subscriptIcon,
  }) {
    final result = create();
    if (recommendText != null) result.recommendText = recommendText;
    if (suggestText != null) result.suggestText = suggestText;
    if (suggestUrl != null) result.suggestUrl = suggestUrl;
    if (bookId != null) result.bookId = bookId;
    if (bookType != null) result.bookType = bookType;
    if (bookCover != null) result.bookCover = bookCover;
    if (bookTitle != null) result.bookTitle = bookTitle;
    if (bookTips != null) result.bookTips.addAll(bookTips);
    if (bottonText != null) result.bottonText = bottonText;
    if (subscriptIcon != null) result.subscriptIcon = subscriptIcon;
    return result;
  }

  RecommendBook._();

  factory RecommendBook.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RecommendBook.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RecommendBook',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba.pbPage'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'recommendText')
    ..aOS(2, _omitFieldNames ? '' : 'suggestText')
    ..aOS(3, _omitFieldNames ? '' : 'suggestUrl')
    ..aOS(4, _omitFieldNames ? '' : 'bookId')
    ..aI(5, _omitFieldNames ? '' : 'bookType', fieldType: $pb.PbFieldType.OU3)
    ..aOS(6, _omitFieldNames ? '' : 'bookCover')
    ..aOS(7, _omitFieldNames ? '' : 'bookTitle')
    ..pPS(8, _omitFieldNames ? '' : 'bookTips')
    ..aOS(9, _omitFieldNames ? '' : 'bottonText')
    ..aOS(10, _omitFieldNames ? '' : 'subscriptIcon')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RecommendBook clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RecommendBook copyWith(void Function(RecommendBook) updates) =>
      super.copyWith((message) => updates(message as RecommendBook))
          as RecommendBook;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RecommendBook create() => RecommendBook._();
  @$core.override
  RecommendBook createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RecommendBook getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RecommendBook>(create);
  static RecommendBook? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get recommendText => $_getSZ(0);
  @$pb.TagNumber(1)
  set recommendText($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasRecommendText() => $_has(0);
  @$pb.TagNumber(1)
  void clearRecommendText() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get suggestText => $_getSZ(1);
  @$pb.TagNumber(2)
  set suggestText($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSuggestText() => $_has(1);
  @$pb.TagNumber(2)
  void clearSuggestText() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get suggestUrl => $_getSZ(2);
  @$pb.TagNumber(3)
  set suggestUrl($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasSuggestUrl() => $_has(2);
  @$pb.TagNumber(3)
  void clearSuggestUrl() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get bookId => $_getSZ(3);
  @$pb.TagNumber(4)
  set bookId($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasBookId() => $_has(3);
  @$pb.TagNumber(4)
  void clearBookId() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get bookType => $_getIZ(4);
  @$pb.TagNumber(5)
  set bookType($core.int value) => $_setUnsignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasBookType() => $_has(4);
  @$pb.TagNumber(5)
  void clearBookType() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get bookCover => $_getSZ(5);
  @$pb.TagNumber(6)
  set bookCover($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasBookCover() => $_has(5);
  @$pb.TagNumber(6)
  void clearBookCover() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get bookTitle => $_getSZ(6);
  @$pb.TagNumber(7)
  set bookTitle($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasBookTitle() => $_has(6);
  @$pb.TagNumber(7)
  void clearBookTitle() => $_clearField(7);

  @$pb.TagNumber(8)
  $pb.PbList<$core.String> get bookTips => $_getList(7);

  @$pb.TagNumber(9)
  $core.String get bottonText => $_getSZ(8);
  @$pb.TagNumber(9)
  set bottonText($core.String value) => $_setString(8, value);
  @$pb.TagNumber(9)
  $core.bool hasBottonText() => $_has(8);
  @$pb.TagNumber(9)
  void clearBottonText() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.String get subscriptIcon => $_getSZ(9);
  @$pb.TagNumber(10)
  set subscriptIcon($core.String value) => $_setString(9, value);
  @$pb.TagNumber(10)
  $core.bool hasSubscriptIcon() => $_has(9);
  @$pb.TagNumber(10)
  void clearSubscriptIcon() => $_clearField(10);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
