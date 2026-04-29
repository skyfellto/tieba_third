// This is a generated file - do not edit.
//
// Generated from FrsPage/HeadImgs.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'CoverImageColor.pb.dart' as $0;
import 'VideoImageColor.pb.dart' as $1;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class HeadImgs extends $pb.GeneratedMessage {
  factory HeadImgs({
    $core.String? imgUrl,
    $core.String? pcUrl,
    $core.String? title,
    $core.String? subtitle,
    $core.String? btnText,
    $core.String? tagNameUrl,
    $core.String? tagNameWh,
    $core.String? schema,
    $core.Iterable<$core.String>? thirdStatisticsUrl,
    $core.int? hasSecondPage,
    $core.String? packageName,
    $core.int? downloadIsThirdpage,
    $core.String? downloadAppname,
    $core.String? downloadDeveloper,
    $core.String? downloadPackageSize,
    $core.String? downloadUrl,
    $core.String? downloadImg,
    $core.String? downloadVersion,
    $core.String? downloadUserPower,
    $core.String? downloadPrivacyPolicy,
    $core.String? downloadPackageName,
    $core.int? downloadItemId,
    $core.String? downloadAppid,
    $core.String? coverUrl,
    $core.String? playUrl,
    $0.CoverImageColor? coverImageColor,
    $core.Iterable<$1.VideoImageColor>? videoImageColor,
  }) {
    final result = create();
    if (imgUrl != null) result.imgUrl = imgUrl;
    if (pcUrl != null) result.pcUrl = pcUrl;
    if (title != null) result.title = title;
    if (subtitle != null) result.subtitle = subtitle;
    if (btnText != null) result.btnText = btnText;
    if (tagNameUrl != null) result.tagNameUrl = tagNameUrl;
    if (tagNameWh != null) result.tagNameWh = tagNameWh;
    if (schema != null) result.schema = schema;
    if (thirdStatisticsUrl != null)
      result.thirdStatisticsUrl.addAll(thirdStatisticsUrl);
    if (hasSecondPage != null) result.hasSecondPage = hasSecondPage;
    if (packageName != null) result.packageName = packageName;
    if (downloadIsThirdpage != null)
      result.downloadIsThirdpage = downloadIsThirdpage;
    if (downloadAppname != null) result.downloadAppname = downloadAppname;
    if (downloadDeveloper != null) result.downloadDeveloper = downloadDeveloper;
    if (downloadPackageSize != null)
      result.downloadPackageSize = downloadPackageSize;
    if (downloadUrl != null) result.downloadUrl = downloadUrl;
    if (downloadImg != null) result.downloadImg = downloadImg;
    if (downloadVersion != null) result.downloadVersion = downloadVersion;
    if (downloadUserPower != null) result.downloadUserPower = downloadUserPower;
    if (downloadPrivacyPolicy != null)
      result.downloadPrivacyPolicy = downloadPrivacyPolicy;
    if (downloadPackageName != null)
      result.downloadPackageName = downloadPackageName;
    if (downloadItemId != null) result.downloadItemId = downloadItemId;
    if (downloadAppid != null) result.downloadAppid = downloadAppid;
    if (coverUrl != null) result.coverUrl = coverUrl;
    if (playUrl != null) result.playUrl = playUrl;
    if (coverImageColor != null) result.coverImageColor = coverImageColor;
    if (videoImageColor != null) result.videoImageColor.addAll(videoImageColor);
    return result;
  }

  HeadImgs._();

  factory HeadImgs.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory HeadImgs.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'HeadImgs',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba.frsPage'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'imgUrl')
    ..aOS(2, _omitFieldNames ? '' : 'pcUrl')
    ..aOS(3, _omitFieldNames ? '' : 'title')
    ..aOS(4, _omitFieldNames ? '' : 'subtitle')
    ..aOS(5, _omitFieldNames ? '' : 'btnText')
    ..aOS(6, _omitFieldNames ? '' : 'tagNameUrl')
    ..aOS(7, _omitFieldNames ? '' : 'tagNameWh')
    ..aOS(8, _omitFieldNames ? '' : 'schema')
    ..pPS(9, _omitFieldNames ? '' : 'thirdStatisticsUrl')
    ..aI(10, _omitFieldNames ? '' : 'hasSecondPage',
        fieldType: $pb.PbFieldType.OU3)
    ..aOS(11, _omitFieldNames ? '' : 'packageName')
    ..aI(12, _omitFieldNames ? '' : 'downloadIsThirdpage')
    ..aOS(13, _omitFieldNames ? '' : 'downloadAppname')
    ..aOS(14, _omitFieldNames ? '' : 'downloadDeveloper')
    ..aOS(15, _omitFieldNames ? '' : 'downloadPackageSize')
    ..aOS(16, _omitFieldNames ? '' : 'downloadUrl')
    ..aOS(17, _omitFieldNames ? '' : 'downloadImg')
    ..aOS(18, _omitFieldNames ? '' : 'downloadVersion')
    ..aOS(19, _omitFieldNames ? '' : 'downloadUserPower')
    ..aOS(20, _omitFieldNames ? '' : 'downloadPrivacyPolicy')
    ..aOS(21, _omitFieldNames ? '' : 'downloadPackageName')
    ..aI(22, _omitFieldNames ? '' : 'downloadItemId')
    ..aOS(23, _omitFieldNames ? '' : 'downloadAppid')
    ..aOS(24, _omitFieldNames ? '' : 'coverUrl')
    ..aOS(25, _omitFieldNames ? '' : 'playUrl')
    ..aOM<$0.CoverImageColor>(26, _omitFieldNames ? '' : 'coverImageColor',
        subBuilder: $0.CoverImageColor.create)
    ..pPM<$1.VideoImageColor>(27, _omitFieldNames ? '' : 'videoImageColor',
        subBuilder: $1.VideoImageColor.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HeadImgs clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HeadImgs copyWith(void Function(HeadImgs) updates) =>
      super.copyWith((message) => updates(message as HeadImgs)) as HeadImgs;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HeadImgs create() => HeadImgs._();
  @$core.override
  HeadImgs createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static HeadImgs getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HeadImgs>(create);
  static HeadImgs? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get imgUrl => $_getSZ(0);
  @$pb.TagNumber(1)
  set imgUrl($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasImgUrl() => $_has(0);
  @$pb.TagNumber(1)
  void clearImgUrl() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get pcUrl => $_getSZ(1);
  @$pb.TagNumber(2)
  set pcUrl($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPcUrl() => $_has(1);
  @$pb.TagNumber(2)
  void clearPcUrl() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get title => $_getSZ(2);
  @$pb.TagNumber(3)
  set title($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasTitle() => $_has(2);
  @$pb.TagNumber(3)
  void clearTitle() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get subtitle => $_getSZ(3);
  @$pb.TagNumber(4)
  set subtitle($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasSubtitle() => $_has(3);
  @$pb.TagNumber(4)
  void clearSubtitle() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get btnText => $_getSZ(4);
  @$pb.TagNumber(5)
  set btnText($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasBtnText() => $_has(4);
  @$pb.TagNumber(5)
  void clearBtnText() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get tagNameUrl => $_getSZ(5);
  @$pb.TagNumber(6)
  set tagNameUrl($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasTagNameUrl() => $_has(5);
  @$pb.TagNumber(6)
  void clearTagNameUrl() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get tagNameWh => $_getSZ(6);
  @$pb.TagNumber(7)
  set tagNameWh($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasTagNameWh() => $_has(6);
  @$pb.TagNumber(7)
  void clearTagNameWh() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.String get schema => $_getSZ(7);
  @$pb.TagNumber(8)
  set schema($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasSchema() => $_has(7);
  @$pb.TagNumber(8)
  void clearSchema() => $_clearField(8);

  @$pb.TagNumber(9)
  $pb.PbList<$core.String> get thirdStatisticsUrl => $_getList(8);

  @$pb.TagNumber(10)
  $core.int get hasSecondPage => $_getIZ(9);
  @$pb.TagNumber(10)
  set hasSecondPage($core.int value) => $_setUnsignedInt32(9, value);
  @$pb.TagNumber(10)
  $core.bool hasHasSecondPage() => $_has(9);
  @$pb.TagNumber(10)
  void clearHasSecondPage() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.String get packageName => $_getSZ(10);
  @$pb.TagNumber(11)
  set packageName($core.String value) => $_setString(10, value);
  @$pb.TagNumber(11)
  $core.bool hasPackageName() => $_has(10);
  @$pb.TagNumber(11)
  void clearPackageName() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.int get downloadIsThirdpage => $_getIZ(11);
  @$pb.TagNumber(12)
  set downloadIsThirdpage($core.int value) => $_setSignedInt32(11, value);
  @$pb.TagNumber(12)
  $core.bool hasDownloadIsThirdpage() => $_has(11);
  @$pb.TagNumber(12)
  void clearDownloadIsThirdpage() => $_clearField(12);

  @$pb.TagNumber(13)
  $core.String get downloadAppname => $_getSZ(12);
  @$pb.TagNumber(13)
  set downloadAppname($core.String value) => $_setString(12, value);
  @$pb.TagNumber(13)
  $core.bool hasDownloadAppname() => $_has(12);
  @$pb.TagNumber(13)
  void clearDownloadAppname() => $_clearField(13);

  @$pb.TagNumber(14)
  $core.String get downloadDeveloper => $_getSZ(13);
  @$pb.TagNumber(14)
  set downloadDeveloper($core.String value) => $_setString(13, value);
  @$pb.TagNumber(14)
  $core.bool hasDownloadDeveloper() => $_has(13);
  @$pb.TagNumber(14)
  void clearDownloadDeveloper() => $_clearField(14);

  @$pb.TagNumber(15)
  $core.String get downloadPackageSize => $_getSZ(14);
  @$pb.TagNumber(15)
  set downloadPackageSize($core.String value) => $_setString(14, value);
  @$pb.TagNumber(15)
  $core.bool hasDownloadPackageSize() => $_has(14);
  @$pb.TagNumber(15)
  void clearDownloadPackageSize() => $_clearField(15);

  @$pb.TagNumber(16)
  $core.String get downloadUrl => $_getSZ(15);
  @$pb.TagNumber(16)
  set downloadUrl($core.String value) => $_setString(15, value);
  @$pb.TagNumber(16)
  $core.bool hasDownloadUrl() => $_has(15);
  @$pb.TagNumber(16)
  void clearDownloadUrl() => $_clearField(16);

  @$pb.TagNumber(17)
  $core.String get downloadImg => $_getSZ(16);
  @$pb.TagNumber(17)
  set downloadImg($core.String value) => $_setString(16, value);
  @$pb.TagNumber(17)
  $core.bool hasDownloadImg() => $_has(16);
  @$pb.TagNumber(17)
  void clearDownloadImg() => $_clearField(17);

  @$pb.TagNumber(18)
  $core.String get downloadVersion => $_getSZ(17);
  @$pb.TagNumber(18)
  set downloadVersion($core.String value) => $_setString(17, value);
  @$pb.TagNumber(18)
  $core.bool hasDownloadVersion() => $_has(17);
  @$pb.TagNumber(18)
  void clearDownloadVersion() => $_clearField(18);

  @$pb.TagNumber(19)
  $core.String get downloadUserPower => $_getSZ(18);
  @$pb.TagNumber(19)
  set downloadUserPower($core.String value) => $_setString(18, value);
  @$pb.TagNumber(19)
  $core.bool hasDownloadUserPower() => $_has(18);
  @$pb.TagNumber(19)
  void clearDownloadUserPower() => $_clearField(19);

  @$pb.TagNumber(20)
  $core.String get downloadPrivacyPolicy => $_getSZ(19);
  @$pb.TagNumber(20)
  set downloadPrivacyPolicy($core.String value) => $_setString(19, value);
  @$pb.TagNumber(20)
  $core.bool hasDownloadPrivacyPolicy() => $_has(19);
  @$pb.TagNumber(20)
  void clearDownloadPrivacyPolicy() => $_clearField(20);

  @$pb.TagNumber(21)
  $core.String get downloadPackageName => $_getSZ(20);
  @$pb.TagNumber(21)
  set downloadPackageName($core.String value) => $_setString(20, value);
  @$pb.TagNumber(21)
  $core.bool hasDownloadPackageName() => $_has(20);
  @$pb.TagNumber(21)
  void clearDownloadPackageName() => $_clearField(21);

  @$pb.TagNumber(22)
  $core.int get downloadItemId => $_getIZ(21);
  @$pb.TagNumber(22)
  set downloadItemId($core.int value) => $_setSignedInt32(21, value);
  @$pb.TagNumber(22)
  $core.bool hasDownloadItemId() => $_has(21);
  @$pb.TagNumber(22)
  void clearDownloadItemId() => $_clearField(22);

  @$pb.TagNumber(23)
  $core.String get downloadAppid => $_getSZ(22);
  @$pb.TagNumber(23)
  set downloadAppid($core.String value) => $_setString(22, value);
  @$pb.TagNumber(23)
  $core.bool hasDownloadAppid() => $_has(22);
  @$pb.TagNumber(23)
  void clearDownloadAppid() => $_clearField(23);

  @$pb.TagNumber(24)
  $core.String get coverUrl => $_getSZ(23);
  @$pb.TagNumber(24)
  set coverUrl($core.String value) => $_setString(23, value);
  @$pb.TagNumber(24)
  $core.bool hasCoverUrl() => $_has(23);
  @$pb.TagNumber(24)
  void clearCoverUrl() => $_clearField(24);

  @$pb.TagNumber(25)
  $core.String get playUrl => $_getSZ(24);
  @$pb.TagNumber(25)
  set playUrl($core.String value) => $_setString(24, value);
  @$pb.TagNumber(25)
  $core.bool hasPlayUrl() => $_has(24);
  @$pb.TagNumber(25)
  void clearPlayUrl() => $_clearField(25);

  @$pb.TagNumber(26)
  $0.CoverImageColor get coverImageColor => $_getN(25);
  @$pb.TagNumber(26)
  set coverImageColor($0.CoverImageColor value) => $_setField(26, value);
  @$pb.TagNumber(26)
  $core.bool hasCoverImageColor() => $_has(25);
  @$pb.TagNumber(26)
  void clearCoverImageColor() => $_clearField(26);
  @$pb.TagNumber(26)
  $0.CoverImageColor ensureCoverImageColor() => $_ensure(25);

  @$pb.TagNumber(27)
  $pb.PbList<$1.VideoImageColor> get videoImageColor => $_getList(26);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
