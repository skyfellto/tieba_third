// This is a generated file - do not edit.
//
// Generated from BookInfo.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'BookTag.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class BookInfo extends $pb.GeneratedMessage {
  factory BookInfo({
    $core.String? bookId,
    $core.String? title,
    $core.String? cover,
    $core.int? bookType,
    $core.int? classId,
    $core.String? className,
    $core.int? subClassId,
    $core.String? subClassName,
    $core.int? bookSize,
    $core.String? intro,
    $core.String? author,
    $core.String? authorIntro,
    $core.Iterable<$0.BookTag>? tags,
    $core.int? totalChapter,
    $core.int? words,
    $core.int? orignalPrice,
    $core.int? price,
    $core.String? discountRatio,
    $core.int? isFinish,
    $core.String? adCode,
    $core.int? isBuy,
    $core.String? freeInfo,
    $core.String? publisher,
    $core.String? isbn,
    $core.String? copyright,
    $core.String? publishText,
    $core.String? copyrightText,
    $core.String? publishTime,
    $core.String? publishType,
    $core.int? updateTime,
    $core.String? bigCover,
    $core.int? discountType,
    $core.String? discountIcon,
    $core.int? readCount,
    $core.int? totalPage,
    $core.String? bookVer,
    $core.String? chapterVer,
    $fixnum.Int64? forumId,
    $core.String? forumName,
    $core.String? discuss,
    $core.String? cpId,
    $core.String? paperPrice,
    $core.int? firstChapter,
    $core.int? chargeType,
    $core.int? memberShowType,
  }) {
    final result = create();
    if (bookId != null) result.bookId = bookId;
    if (title != null) result.title = title;
    if (cover != null) result.cover = cover;
    if (bookType != null) result.bookType = bookType;
    if (classId != null) result.classId = classId;
    if (className != null) result.className = className;
    if (subClassId != null) result.subClassId = subClassId;
    if (subClassName != null) result.subClassName = subClassName;
    if (bookSize != null) result.bookSize = bookSize;
    if (intro != null) result.intro = intro;
    if (author != null) result.author = author;
    if (authorIntro != null) result.authorIntro = authorIntro;
    if (tags != null) result.tags.addAll(tags);
    if (totalChapter != null) result.totalChapter = totalChapter;
    if (words != null) result.words = words;
    if (orignalPrice != null) result.orignalPrice = orignalPrice;
    if (price != null) result.price = price;
    if (discountRatio != null) result.discountRatio = discountRatio;
    if (isFinish != null) result.isFinish = isFinish;
    if (adCode != null) result.adCode = adCode;
    if (isBuy != null) result.isBuy = isBuy;
    if (freeInfo != null) result.freeInfo = freeInfo;
    if (publisher != null) result.publisher = publisher;
    if (isbn != null) result.isbn = isbn;
    if (copyright != null) result.copyright = copyright;
    if (publishText != null) result.publishText = publishText;
    if (copyrightText != null) result.copyrightText = copyrightText;
    if (publishTime != null) result.publishTime = publishTime;
    if (publishType != null) result.publishType = publishType;
    if (updateTime != null) result.updateTime = updateTime;
    if (bigCover != null) result.bigCover = bigCover;
    if (discountType != null) result.discountType = discountType;
    if (discountIcon != null) result.discountIcon = discountIcon;
    if (readCount != null) result.readCount = readCount;
    if (totalPage != null) result.totalPage = totalPage;
    if (bookVer != null) result.bookVer = bookVer;
    if (chapterVer != null) result.chapterVer = chapterVer;
    if (forumId != null) result.forumId = forumId;
    if (forumName != null) result.forumName = forumName;
    if (discuss != null) result.discuss = discuss;
    if (cpId != null) result.cpId = cpId;
    if (paperPrice != null) result.paperPrice = paperPrice;
    if (firstChapter != null) result.firstChapter = firstChapter;
    if (chargeType != null) result.chargeType = chargeType;
    if (memberShowType != null) result.memberShowType = memberShowType;
    return result;
  }

  BookInfo._();

  factory BookInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BookInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BookInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'bookId')
    ..aOS(2, _omitFieldNames ? '' : 'title')
    ..aOS(3, _omitFieldNames ? '' : 'cover')
    ..aI(4, _omitFieldNames ? '' : 'bookType', fieldType: $pb.PbFieldType.OU3)
    ..aI(5, _omitFieldNames ? '' : 'classId', fieldType: $pb.PbFieldType.OU3)
    ..aOS(6, _omitFieldNames ? '' : 'className')
    ..aI(7, _omitFieldNames ? '' : 'subClassId', fieldType: $pb.PbFieldType.OU3)
    ..aOS(8, _omitFieldNames ? '' : 'subClassName')
    ..aI(9, _omitFieldNames ? '' : 'bookSize', fieldType: $pb.PbFieldType.OU3)
    ..aOS(10, _omitFieldNames ? '' : 'intro')
    ..aOS(11, _omitFieldNames ? '' : 'author')
    ..aOS(12, _omitFieldNames ? '' : 'authorIntro')
    ..pPM<$0.BookTag>(13, _omitFieldNames ? '' : 'tags',
        subBuilder: $0.BookTag.create)
    ..aI(14, _omitFieldNames ? '' : 'totalChapter',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(15, _omitFieldNames ? '' : 'words', fieldType: $pb.PbFieldType.OU3)
    ..aI(16, _omitFieldNames ? '' : 'orignalPrice',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(17, _omitFieldNames ? '' : 'price', fieldType: $pb.PbFieldType.OU3)
    ..aOS(18, _omitFieldNames ? '' : 'discountRatio')
    ..aI(19, _omitFieldNames ? '' : 'isFinish', fieldType: $pb.PbFieldType.OU3)
    ..aOS(20, _omitFieldNames ? '' : 'adCode')
    ..aI(21, _omitFieldNames ? '' : 'isBuy', fieldType: $pb.PbFieldType.OU3)
    ..aOS(22, _omitFieldNames ? '' : 'freeInfo')
    ..aOS(23, _omitFieldNames ? '' : 'publisher')
    ..aOS(24, _omitFieldNames ? '' : 'isbn')
    ..aOS(25, _omitFieldNames ? '' : 'copyright')
    ..aOS(26, _omitFieldNames ? '' : 'publishText')
    ..aOS(27, _omitFieldNames ? '' : 'copyrightText')
    ..aOS(28, _omitFieldNames ? '' : 'publishTime')
    ..aOS(29, _omitFieldNames ? '' : 'publishType')
    ..aI(30, _omitFieldNames ? '' : 'updateTime',
        fieldType: $pb.PbFieldType.OU3)
    ..aOS(31, _omitFieldNames ? '' : 'bigCover')
    ..aI(32, _omitFieldNames ? '' : 'discountType',
        fieldType: $pb.PbFieldType.OU3)
    ..aOS(33, _omitFieldNames ? '' : 'discountIcon')
    ..aI(34, _omitFieldNames ? '' : 'readCount', fieldType: $pb.PbFieldType.OU3)
    ..aI(35, _omitFieldNames ? '' : 'totalPage', fieldType: $pb.PbFieldType.OU3)
    ..aOS(36, _omitFieldNames ? '' : 'bookVer')
    ..aOS(37, _omitFieldNames ? '' : 'chapterVer')
    ..a<$fixnum.Int64>(
        38, _omitFieldNames ? '' : 'forumId', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(39, _omitFieldNames ? '' : 'forumName')
    ..aOS(40, _omitFieldNames ? '' : 'discuss')
    ..aOS(41, _omitFieldNames ? '' : 'cpId')
    ..aOS(42, _omitFieldNames ? '' : 'paperPrice')
    ..aI(43, _omitFieldNames ? '' : 'firstChapter',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(44, _omitFieldNames ? '' : 'chargeType',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(45, _omitFieldNames ? '' : 'memberShowType',
        fieldType: $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BookInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BookInfo copyWith(void Function(BookInfo) updates) =>
      super.copyWith((message) => updates(message as BookInfo)) as BookInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BookInfo create() => BookInfo._();
  @$core.override
  BookInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BookInfo getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BookInfo>(create);
  static BookInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get bookId => $_getSZ(0);
  @$pb.TagNumber(1)
  set bookId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasBookId() => $_has(0);
  @$pb.TagNumber(1)
  void clearBookId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get cover => $_getSZ(2);
  @$pb.TagNumber(3)
  set cover($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasCover() => $_has(2);
  @$pb.TagNumber(3)
  void clearCover() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get bookType => $_getIZ(3);
  @$pb.TagNumber(4)
  set bookType($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasBookType() => $_has(3);
  @$pb.TagNumber(4)
  void clearBookType() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get classId => $_getIZ(4);
  @$pb.TagNumber(5)
  set classId($core.int value) => $_setUnsignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasClassId() => $_has(4);
  @$pb.TagNumber(5)
  void clearClassId() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get className => $_getSZ(5);
  @$pb.TagNumber(6)
  set className($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasClassName() => $_has(5);
  @$pb.TagNumber(6)
  void clearClassName() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.int get subClassId => $_getIZ(6);
  @$pb.TagNumber(7)
  set subClassId($core.int value) => $_setUnsignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasSubClassId() => $_has(6);
  @$pb.TagNumber(7)
  void clearSubClassId() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.String get subClassName => $_getSZ(7);
  @$pb.TagNumber(8)
  set subClassName($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasSubClassName() => $_has(7);
  @$pb.TagNumber(8)
  void clearSubClassName() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.int get bookSize => $_getIZ(8);
  @$pb.TagNumber(9)
  set bookSize($core.int value) => $_setUnsignedInt32(8, value);
  @$pb.TagNumber(9)
  $core.bool hasBookSize() => $_has(8);
  @$pb.TagNumber(9)
  void clearBookSize() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.String get intro => $_getSZ(9);
  @$pb.TagNumber(10)
  set intro($core.String value) => $_setString(9, value);
  @$pb.TagNumber(10)
  $core.bool hasIntro() => $_has(9);
  @$pb.TagNumber(10)
  void clearIntro() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.String get author => $_getSZ(10);
  @$pb.TagNumber(11)
  set author($core.String value) => $_setString(10, value);
  @$pb.TagNumber(11)
  $core.bool hasAuthor() => $_has(10);
  @$pb.TagNumber(11)
  void clearAuthor() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.String get authorIntro => $_getSZ(11);
  @$pb.TagNumber(12)
  set authorIntro($core.String value) => $_setString(11, value);
  @$pb.TagNumber(12)
  $core.bool hasAuthorIntro() => $_has(11);
  @$pb.TagNumber(12)
  void clearAuthorIntro() => $_clearField(12);

  @$pb.TagNumber(13)
  $pb.PbList<$0.BookTag> get tags => $_getList(12);

  @$pb.TagNumber(14)
  $core.int get totalChapter => $_getIZ(13);
  @$pb.TagNumber(14)
  set totalChapter($core.int value) => $_setUnsignedInt32(13, value);
  @$pb.TagNumber(14)
  $core.bool hasTotalChapter() => $_has(13);
  @$pb.TagNumber(14)
  void clearTotalChapter() => $_clearField(14);

  @$pb.TagNumber(15)
  $core.int get words => $_getIZ(14);
  @$pb.TagNumber(15)
  set words($core.int value) => $_setUnsignedInt32(14, value);
  @$pb.TagNumber(15)
  $core.bool hasWords() => $_has(14);
  @$pb.TagNumber(15)
  void clearWords() => $_clearField(15);

  @$pb.TagNumber(16)
  $core.int get orignalPrice => $_getIZ(15);
  @$pb.TagNumber(16)
  set orignalPrice($core.int value) => $_setUnsignedInt32(15, value);
  @$pb.TagNumber(16)
  $core.bool hasOrignalPrice() => $_has(15);
  @$pb.TagNumber(16)
  void clearOrignalPrice() => $_clearField(16);

  @$pb.TagNumber(17)
  $core.int get price => $_getIZ(16);
  @$pb.TagNumber(17)
  set price($core.int value) => $_setUnsignedInt32(16, value);
  @$pb.TagNumber(17)
  $core.bool hasPrice() => $_has(16);
  @$pb.TagNumber(17)
  void clearPrice() => $_clearField(17);

  @$pb.TagNumber(18)
  $core.String get discountRatio => $_getSZ(17);
  @$pb.TagNumber(18)
  set discountRatio($core.String value) => $_setString(17, value);
  @$pb.TagNumber(18)
  $core.bool hasDiscountRatio() => $_has(17);
  @$pb.TagNumber(18)
  void clearDiscountRatio() => $_clearField(18);

  @$pb.TagNumber(19)
  $core.int get isFinish => $_getIZ(18);
  @$pb.TagNumber(19)
  set isFinish($core.int value) => $_setUnsignedInt32(18, value);
  @$pb.TagNumber(19)
  $core.bool hasIsFinish() => $_has(18);
  @$pb.TagNumber(19)
  void clearIsFinish() => $_clearField(19);

  @$pb.TagNumber(20)
  $core.String get adCode => $_getSZ(19);
  @$pb.TagNumber(20)
  set adCode($core.String value) => $_setString(19, value);
  @$pb.TagNumber(20)
  $core.bool hasAdCode() => $_has(19);
  @$pb.TagNumber(20)
  void clearAdCode() => $_clearField(20);

  @$pb.TagNumber(21)
  $core.int get isBuy => $_getIZ(20);
  @$pb.TagNumber(21)
  set isBuy($core.int value) => $_setUnsignedInt32(20, value);
  @$pb.TagNumber(21)
  $core.bool hasIsBuy() => $_has(20);
  @$pb.TagNumber(21)
  void clearIsBuy() => $_clearField(21);

  @$pb.TagNumber(22)
  $core.String get freeInfo => $_getSZ(21);
  @$pb.TagNumber(22)
  set freeInfo($core.String value) => $_setString(21, value);
  @$pb.TagNumber(22)
  $core.bool hasFreeInfo() => $_has(21);
  @$pb.TagNumber(22)
  void clearFreeInfo() => $_clearField(22);

  @$pb.TagNumber(23)
  $core.String get publisher => $_getSZ(22);
  @$pb.TagNumber(23)
  set publisher($core.String value) => $_setString(22, value);
  @$pb.TagNumber(23)
  $core.bool hasPublisher() => $_has(22);
  @$pb.TagNumber(23)
  void clearPublisher() => $_clearField(23);

  @$pb.TagNumber(24)
  $core.String get isbn => $_getSZ(23);
  @$pb.TagNumber(24)
  set isbn($core.String value) => $_setString(23, value);
  @$pb.TagNumber(24)
  $core.bool hasIsbn() => $_has(23);
  @$pb.TagNumber(24)
  void clearIsbn() => $_clearField(24);

  @$pb.TagNumber(25)
  $core.String get copyright => $_getSZ(24);
  @$pb.TagNumber(25)
  set copyright($core.String value) => $_setString(24, value);
  @$pb.TagNumber(25)
  $core.bool hasCopyright() => $_has(24);
  @$pb.TagNumber(25)
  void clearCopyright() => $_clearField(25);

  @$pb.TagNumber(26)
  $core.String get publishText => $_getSZ(25);
  @$pb.TagNumber(26)
  set publishText($core.String value) => $_setString(25, value);
  @$pb.TagNumber(26)
  $core.bool hasPublishText() => $_has(25);
  @$pb.TagNumber(26)
  void clearPublishText() => $_clearField(26);

  @$pb.TagNumber(27)
  $core.String get copyrightText => $_getSZ(26);
  @$pb.TagNumber(27)
  set copyrightText($core.String value) => $_setString(26, value);
  @$pb.TagNumber(27)
  $core.bool hasCopyrightText() => $_has(26);
  @$pb.TagNumber(27)
  void clearCopyrightText() => $_clearField(27);

  @$pb.TagNumber(28)
  $core.String get publishTime => $_getSZ(27);
  @$pb.TagNumber(28)
  set publishTime($core.String value) => $_setString(27, value);
  @$pb.TagNumber(28)
  $core.bool hasPublishTime() => $_has(27);
  @$pb.TagNumber(28)
  void clearPublishTime() => $_clearField(28);

  @$pb.TagNumber(29)
  $core.String get publishType => $_getSZ(28);
  @$pb.TagNumber(29)
  set publishType($core.String value) => $_setString(28, value);
  @$pb.TagNumber(29)
  $core.bool hasPublishType() => $_has(28);
  @$pb.TagNumber(29)
  void clearPublishType() => $_clearField(29);

  @$pb.TagNumber(30)
  $core.int get updateTime => $_getIZ(29);
  @$pb.TagNumber(30)
  set updateTime($core.int value) => $_setUnsignedInt32(29, value);
  @$pb.TagNumber(30)
  $core.bool hasUpdateTime() => $_has(29);
  @$pb.TagNumber(30)
  void clearUpdateTime() => $_clearField(30);

  @$pb.TagNumber(31)
  $core.String get bigCover => $_getSZ(30);
  @$pb.TagNumber(31)
  set bigCover($core.String value) => $_setString(30, value);
  @$pb.TagNumber(31)
  $core.bool hasBigCover() => $_has(30);
  @$pb.TagNumber(31)
  void clearBigCover() => $_clearField(31);

  @$pb.TagNumber(32)
  $core.int get discountType => $_getIZ(31);
  @$pb.TagNumber(32)
  set discountType($core.int value) => $_setUnsignedInt32(31, value);
  @$pb.TagNumber(32)
  $core.bool hasDiscountType() => $_has(31);
  @$pb.TagNumber(32)
  void clearDiscountType() => $_clearField(32);

  @$pb.TagNumber(33)
  $core.String get discountIcon => $_getSZ(32);
  @$pb.TagNumber(33)
  set discountIcon($core.String value) => $_setString(32, value);
  @$pb.TagNumber(33)
  $core.bool hasDiscountIcon() => $_has(32);
  @$pb.TagNumber(33)
  void clearDiscountIcon() => $_clearField(33);

  @$pb.TagNumber(34)
  $core.int get readCount => $_getIZ(33);
  @$pb.TagNumber(34)
  set readCount($core.int value) => $_setUnsignedInt32(33, value);
  @$pb.TagNumber(34)
  $core.bool hasReadCount() => $_has(33);
  @$pb.TagNumber(34)
  void clearReadCount() => $_clearField(34);

  @$pb.TagNumber(35)
  $core.int get totalPage => $_getIZ(34);
  @$pb.TagNumber(35)
  set totalPage($core.int value) => $_setUnsignedInt32(34, value);
  @$pb.TagNumber(35)
  $core.bool hasTotalPage() => $_has(34);
  @$pb.TagNumber(35)
  void clearTotalPage() => $_clearField(35);

  @$pb.TagNumber(36)
  $core.String get bookVer => $_getSZ(35);
  @$pb.TagNumber(36)
  set bookVer($core.String value) => $_setString(35, value);
  @$pb.TagNumber(36)
  $core.bool hasBookVer() => $_has(35);
  @$pb.TagNumber(36)
  void clearBookVer() => $_clearField(36);

  @$pb.TagNumber(37)
  $core.String get chapterVer => $_getSZ(36);
  @$pb.TagNumber(37)
  set chapterVer($core.String value) => $_setString(36, value);
  @$pb.TagNumber(37)
  $core.bool hasChapterVer() => $_has(36);
  @$pb.TagNumber(37)
  void clearChapterVer() => $_clearField(37);

  @$pb.TagNumber(38)
  $fixnum.Int64 get forumId => $_getI64(37);
  @$pb.TagNumber(38)
  set forumId($fixnum.Int64 value) => $_setInt64(37, value);
  @$pb.TagNumber(38)
  $core.bool hasForumId() => $_has(37);
  @$pb.TagNumber(38)
  void clearForumId() => $_clearField(38);

  @$pb.TagNumber(39)
  $core.String get forumName => $_getSZ(38);
  @$pb.TagNumber(39)
  set forumName($core.String value) => $_setString(38, value);
  @$pb.TagNumber(39)
  $core.bool hasForumName() => $_has(38);
  @$pb.TagNumber(39)
  void clearForumName() => $_clearField(39);

  @$pb.TagNumber(40)
  $core.String get discuss => $_getSZ(39);
  @$pb.TagNumber(40)
  set discuss($core.String value) => $_setString(39, value);
  @$pb.TagNumber(40)
  $core.bool hasDiscuss() => $_has(39);
  @$pb.TagNumber(40)
  void clearDiscuss() => $_clearField(40);

  @$pb.TagNumber(41)
  $core.String get cpId => $_getSZ(40);
  @$pb.TagNumber(41)
  set cpId($core.String value) => $_setString(40, value);
  @$pb.TagNumber(41)
  $core.bool hasCpId() => $_has(40);
  @$pb.TagNumber(41)
  void clearCpId() => $_clearField(41);

  @$pb.TagNumber(42)
  $core.String get paperPrice => $_getSZ(41);
  @$pb.TagNumber(42)
  set paperPrice($core.String value) => $_setString(41, value);
  @$pb.TagNumber(42)
  $core.bool hasPaperPrice() => $_has(41);
  @$pb.TagNumber(42)
  void clearPaperPrice() => $_clearField(42);

  @$pb.TagNumber(43)
  $core.int get firstChapter => $_getIZ(42);
  @$pb.TagNumber(43)
  set firstChapter($core.int value) => $_setUnsignedInt32(42, value);
  @$pb.TagNumber(43)
  $core.bool hasFirstChapter() => $_has(42);
  @$pb.TagNumber(43)
  void clearFirstChapter() => $_clearField(43);

  @$pb.TagNumber(44)
  $core.int get chargeType => $_getIZ(43);
  @$pb.TagNumber(44)
  set chargeType($core.int value) => $_setUnsignedInt32(43, value);
  @$pb.TagNumber(44)
  $core.bool hasChargeType() => $_has(43);
  @$pb.TagNumber(44)
  void clearChargeType() => $_clearField(44);

  @$pb.TagNumber(45)
  $core.int get memberShowType => $_getIZ(44);
  @$pb.TagNumber(45)
  set memberShowType($core.int value) => $_setUnsignedInt32(44, value);
  @$pb.TagNumber(45)
  $core.bool hasMemberShowType() => $_has(44);
  @$pb.TagNumber(45)
  void clearMemberShowType() => $_clearField(45);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
