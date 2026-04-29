// This is a generated file - do not edit.
//
// Generated from App.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'GoodsInfo.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class App extends $pb.GeneratedMessage {
  factory App({
    $core.int? type,
    $core.int? pos,
    $core.String? iconUrl,
    $core.String? iconLink,
    $core.String? appName,
    $core.String? appDesc,
    $core.String? pName,
    $core.String? pUrl,
    $core.String? imgUrl,
    $core.int? appTime,
    $core.String? webUrl,
    $core.String? adId,
    $core.String? id,
    $core.String? name,
    $core.int? urlType,
    $core.String? url,
    $core.String? iosUrl,
    $core.String? apkUrl,
    $core.String? apkName,
    $core.String? posName,
    $core.String? firstName,
    $core.String? secondName,
    $core.int? cpid,
    $core.String? abtest,
    $core.int? planId,
    $core.String? userId,
    $core.String? price,
    $core.String? verify,
    $core.String? extInfo,
    $core.Iterable<$0.GoodsInfo>? goodsInfo,
    $core.String? locCode,
    $core.String? deepUrl,
  }) {
    final result = create();
    if (type != null) result.type = type;
    if (pos != null) result.pos = pos;
    if (iconUrl != null) result.iconUrl = iconUrl;
    if (iconLink != null) result.iconLink = iconLink;
    if (appName != null) result.appName = appName;
    if (appDesc != null) result.appDesc = appDesc;
    if (pName != null) result.pName = pName;
    if (pUrl != null) result.pUrl = pUrl;
    if (imgUrl != null) result.imgUrl = imgUrl;
    if (appTime != null) result.appTime = appTime;
    if (webUrl != null) result.webUrl = webUrl;
    if (adId != null) result.adId = adId;
    if (id != null) result.id = id;
    if (name != null) result.name = name;
    if (urlType != null) result.urlType = urlType;
    if (url != null) result.url = url;
    if (iosUrl != null) result.iosUrl = iosUrl;
    if (apkUrl != null) result.apkUrl = apkUrl;
    if (apkName != null) result.apkName = apkName;
    if (posName != null) result.posName = posName;
    if (firstName != null) result.firstName = firstName;
    if (secondName != null) result.secondName = secondName;
    if (cpid != null) result.cpid = cpid;
    if (abtest != null) result.abtest = abtest;
    if (planId != null) result.planId = planId;
    if (userId != null) result.userId = userId;
    if (price != null) result.price = price;
    if (verify != null) result.verify = verify;
    if (extInfo != null) result.extInfo = extInfo;
    if (goodsInfo != null) result.goodsInfo.addAll(goodsInfo);
    if (locCode != null) result.locCode = locCode;
    if (deepUrl != null) result.deepUrl = deepUrl;
    return result;
  }

  App._();

  factory App.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory App.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'App',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'type')
    ..aI(2, _omitFieldNames ? '' : 'pos')
    ..aOS(3, _omitFieldNames ? '' : 'iconUrl')
    ..aOS(4, _omitFieldNames ? '' : 'iconLink')
    ..aOS(5, _omitFieldNames ? '' : 'appName')
    ..aOS(6, _omitFieldNames ? '' : 'appDesc')
    ..aOS(7, _omitFieldNames ? '' : 'pName')
    ..aOS(8, _omitFieldNames ? '' : 'pUrl')
    ..aOS(9, _omitFieldNames ? '' : 'imgUrl')
    ..aI(10, _omitFieldNames ? '' : 'appTime')
    ..aOS(11, _omitFieldNames ? '' : 'webUrl')
    ..aOS(12, _omitFieldNames ? '' : 'adId')
    ..aOS(13, _omitFieldNames ? '' : 'id')
    ..aOS(14, _omitFieldNames ? '' : 'name')
    ..aI(15, _omitFieldNames ? '' : 'urlType')
    ..aOS(16, _omitFieldNames ? '' : 'url')
    ..aOS(17, _omitFieldNames ? '' : 'iosUrl')
    ..aOS(18, _omitFieldNames ? '' : 'apkUrl')
    ..aOS(19, _omitFieldNames ? '' : 'apkName')
    ..aOS(20, _omitFieldNames ? '' : 'posName')
    ..aOS(21, _omitFieldNames ? '' : 'firstName')
    ..aOS(22, _omitFieldNames ? '' : 'secondName')
    ..aI(23, _omitFieldNames ? '' : 'cpid')
    ..aOS(24, _omitFieldNames ? '' : 'abtest')
    ..aI(25, _omitFieldNames ? '' : 'planId')
    ..aOS(26, _omitFieldNames ? '' : 'userId')
    ..aOS(27, _omitFieldNames ? '' : 'price')
    ..aOS(28, _omitFieldNames ? '' : 'verify')
    ..aOS(29, _omitFieldNames ? '' : 'extInfo')
    ..pPM<$0.GoodsInfo>(30, _omitFieldNames ? '' : 'goodsInfo',
        subBuilder: $0.GoodsInfo.create)
    ..aOS(31, _omitFieldNames ? '' : 'locCode')
    ..aOS(32, _omitFieldNames ? '' : 'deepUrl')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  App clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  App copyWith(void Function(App) updates) =>
      super.copyWith((message) => updates(message as App)) as App;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static App create() => App._();
  @$core.override
  App createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static App getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<App>(create);
  static App? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get type => $_getIZ(0);
  @$pb.TagNumber(1)
  set type($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get pos => $_getIZ(1);
  @$pb.TagNumber(2)
  set pos($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPos() => $_has(1);
  @$pb.TagNumber(2)
  void clearPos() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get iconUrl => $_getSZ(2);
  @$pb.TagNumber(3)
  set iconUrl($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasIconUrl() => $_has(2);
  @$pb.TagNumber(3)
  void clearIconUrl() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get iconLink => $_getSZ(3);
  @$pb.TagNumber(4)
  set iconLink($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasIconLink() => $_has(3);
  @$pb.TagNumber(4)
  void clearIconLink() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get appName => $_getSZ(4);
  @$pb.TagNumber(5)
  set appName($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasAppName() => $_has(4);
  @$pb.TagNumber(5)
  void clearAppName() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get appDesc => $_getSZ(5);
  @$pb.TagNumber(6)
  set appDesc($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasAppDesc() => $_has(5);
  @$pb.TagNumber(6)
  void clearAppDesc() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get pName => $_getSZ(6);
  @$pb.TagNumber(7)
  set pName($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasPName() => $_has(6);
  @$pb.TagNumber(7)
  void clearPName() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.String get pUrl => $_getSZ(7);
  @$pb.TagNumber(8)
  set pUrl($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasPUrl() => $_has(7);
  @$pb.TagNumber(8)
  void clearPUrl() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.String get imgUrl => $_getSZ(8);
  @$pb.TagNumber(9)
  set imgUrl($core.String value) => $_setString(8, value);
  @$pb.TagNumber(9)
  $core.bool hasImgUrl() => $_has(8);
  @$pb.TagNumber(9)
  void clearImgUrl() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.int get appTime => $_getIZ(9);
  @$pb.TagNumber(10)
  set appTime($core.int value) => $_setSignedInt32(9, value);
  @$pb.TagNumber(10)
  $core.bool hasAppTime() => $_has(9);
  @$pb.TagNumber(10)
  void clearAppTime() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.String get webUrl => $_getSZ(10);
  @$pb.TagNumber(11)
  set webUrl($core.String value) => $_setString(10, value);
  @$pb.TagNumber(11)
  $core.bool hasWebUrl() => $_has(10);
  @$pb.TagNumber(11)
  void clearWebUrl() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.String get adId => $_getSZ(11);
  @$pb.TagNumber(12)
  set adId($core.String value) => $_setString(11, value);
  @$pb.TagNumber(12)
  $core.bool hasAdId() => $_has(11);
  @$pb.TagNumber(12)
  void clearAdId() => $_clearField(12);

  @$pb.TagNumber(13)
  $core.String get id => $_getSZ(12);
  @$pb.TagNumber(13)
  set id($core.String value) => $_setString(12, value);
  @$pb.TagNumber(13)
  $core.bool hasId() => $_has(12);
  @$pb.TagNumber(13)
  void clearId() => $_clearField(13);

  @$pb.TagNumber(14)
  $core.String get name => $_getSZ(13);
  @$pb.TagNumber(14)
  set name($core.String value) => $_setString(13, value);
  @$pb.TagNumber(14)
  $core.bool hasName() => $_has(13);
  @$pb.TagNumber(14)
  void clearName() => $_clearField(14);

  @$pb.TagNumber(15)
  $core.int get urlType => $_getIZ(14);
  @$pb.TagNumber(15)
  set urlType($core.int value) => $_setSignedInt32(14, value);
  @$pb.TagNumber(15)
  $core.bool hasUrlType() => $_has(14);
  @$pb.TagNumber(15)
  void clearUrlType() => $_clearField(15);

  @$pb.TagNumber(16)
  $core.String get url => $_getSZ(15);
  @$pb.TagNumber(16)
  set url($core.String value) => $_setString(15, value);
  @$pb.TagNumber(16)
  $core.bool hasUrl() => $_has(15);
  @$pb.TagNumber(16)
  void clearUrl() => $_clearField(16);

  @$pb.TagNumber(17)
  $core.String get iosUrl => $_getSZ(16);
  @$pb.TagNumber(17)
  set iosUrl($core.String value) => $_setString(16, value);
  @$pb.TagNumber(17)
  $core.bool hasIosUrl() => $_has(16);
  @$pb.TagNumber(17)
  void clearIosUrl() => $_clearField(17);

  @$pb.TagNumber(18)
  $core.String get apkUrl => $_getSZ(17);
  @$pb.TagNumber(18)
  set apkUrl($core.String value) => $_setString(17, value);
  @$pb.TagNumber(18)
  $core.bool hasApkUrl() => $_has(17);
  @$pb.TagNumber(18)
  void clearApkUrl() => $_clearField(18);

  @$pb.TagNumber(19)
  $core.String get apkName => $_getSZ(18);
  @$pb.TagNumber(19)
  set apkName($core.String value) => $_setString(18, value);
  @$pb.TagNumber(19)
  $core.bool hasApkName() => $_has(18);
  @$pb.TagNumber(19)
  void clearApkName() => $_clearField(19);

  @$pb.TagNumber(20)
  $core.String get posName => $_getSZ(19);
  @$pb.TagNumber(20)
  set posName($core.String value) => $_setString(19, value);
  @$pb.TagNumber(20)
  $core.bool hasPosName() => $_has(19);
  @$pb.TagNumber(20)
  void clearPosName() => $_clearField(20);

  @$pb.TagNumber(21)
  $core.String get firstName => $_getSZ(20);
  @$pb.TagNumber(21)
  set firstName($core.String value) => $_setString(20, value);
  @$pb.TagNumber(21)
  $core.bool hasFirstName() => $_has(20);
  @$pb.TagNumber(21)
  void clearFirstName() => $_clearField(21);

  @$pb.TagNumber(22)
  $core.String get secondName => $_getSZ(21);
  @$pb.TagNumber(22)
  set secondName($core.String value) => $_setString(21, value);
  @$pb.TagNumber(22)
  $core.bool hasSecondName() => $_has(21);
  @$pb.TagNumber(22)
  void clearSecondName() => $_clearField(22);

  @$pb.TagNumber(23)
  $core.int get cpid => $_getIZ(22);
  @$pb.TagNumber(23)
  set cpid($core.int value) => $_setSignedInt32(22, value);
  @$pb.TagNumber(23)
  $core.bool hasCpid() => $_has(22);
  @$pb.TagNumber(23)
  void clearCpid() => $_clearField(23);

  @$pb.TagNumber(24)
  $core.String get abtest => $_getSZ(23);
  @$pb.TagNumber(24)
  set abtest($core.String value) => $_setString(23, value);
  @$pb.TagNumber(24)
  $core.bool hasAbtest() => $_has(23);
  @$pb.TagNumber(24)
  void clearAbtest() => $_clearField(24);

  @$pb.TagNumber(25)
  $core.int get planId => $_getIZ(24);
  @$pb.TagNumber(25)
  set planId($core.int value) => $_setSignedInt32(24, value);
  @$pb.TagNumber(25)
  $core.bool hasPlanId() => $_has(24);
  @$pb.TagNumber(25)
  void clearPlanId() => $_clearField(25);

  @$pb.TagNumber(26)
  $core.String get userId => $_getSZ(25);
  @$pb.TagNumber(26)
  set userId($core.String value) => $_setString(25, value);
  @$pb.TagNumber(26)
  $core.bool hasUserId() => $_has(25);
  @$pb.TagNumber(26)
  void clearUserId() => $_clearField(26);

  @$pb.TagNumber(27)
  $core.String get price => $_getSZ(26);
  @$pb.TagNumber(27)
  set price($core.String value) => $_setString(26, value);
  @$pb.TagNumber(27)
  $core.bool hasPrice() => $_has(26);
  @$pb.TagNumber(27)
  void clearPrice() => $_clearField(27);

  @$pb.TagNumber(28)
  $core.String get verify => $_getSZ(27);
  @$pb.TagNumber(28)
  set verify($core.String value) => $_setString(27, value);
  @$pb.TagNumber(28)
  $core.bool hasVerify() => $_has(27);
  @$pb.TagNumber(28)
  void clearVerify() => $_clearField(28);

  @$pb.TagNumber(29)
  $core.String get extInfo => $_getSZ(28);
  @$pb.TagNumber(29)
  set extInfo($core.String value) => $_setString(28, value);
  @$pb.TagNumber(29)
  $core.bool hasExtInfo() => $_has(28);
  @$pb.TagNumber(29)
  void clearExtInfo() => $_clearField(29);

  @$pb.TagNumber(30)
  $pb.PbList<$0.GoodsInfo> get goodsInfo => $_getList(29);

  @$pb.TagNumber(31)
  $core.String get locCode => $_getSZ(30);
  @$pb.TagNumber(31)
  set locCode($core.String value) => $_setString(30, value);
  @$pb.TagNumber(31)
  $core.bool hasLocCode() => $_has(30);
  @$pb.TagNumber(31)
  void clearLocCode() => $_clearField(31);

  @$pb.TagNumber(32)
  $core.String get deepUrl => $_getSZ(31);
  @$pb.TagNumber(32)
  set deepUrl($core.String value) => $_setString(31, value);
  @$pb.TagNumber(32)
  $core.bool hasDeepUrl() => $_has(31);
  @$pb.TagNumber(32)
  void clearDeepUrl() => $_clearField(32);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
