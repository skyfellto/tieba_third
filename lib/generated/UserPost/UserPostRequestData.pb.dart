// This is a generated file - do not edit.
//
// Generated from UserPost/UserPostRequestData.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../CommonRequest.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class UserPostRequestData extends $pb.GeneratedMessage {
  factory UserPostRequestData({
    $fixnum.Int64? uid,
    $core.int? rn,
    $core.int? offset,
    $core.int? isThread,
    $core.int? needContent,
    $fixnum.Int64? forumId,
    $core.int? beginTime,
    $core.int? endTime,
    $core.int? subtype,
    $core.int? checkLogin,
    $core.String? ipStr,
    $core.int? ipInt,
    $core.String? moduleName,
    $core.int? stType,
    $core.int? stParam,
    $core.int? smileGrade,
    $core.int? supportNoun,
    $core.int? login,
    $fixnum.Int64? userId,
    $core.String? userName,
    $core.int? noUn,
    $core.String? portrait,
    $core.String? mobile,
    $core.String? email,
    $core.String? cookie,
    $core.int? pn,
    $0.CommonRequest? common,
    $core.int? isTwzhibo,
    $core.int? scrW,
    $core.int? scrH,
    $core.double? scrDip,
    $core.int? qType,
    $core.int? isViewCard,
    $core.int? lastThreadTime,
    $core.int? workTabId,
    $core.int? type,
    $core.int? fromType,
    $fixnum.Int64? beginThreadId,
  }) {
    final result = create();
    if (uid != null) result.uid = uid;
    if (rn != null) result.rn = rn;
    if (offset != null) result.offset = offset;
    if (isThread != null) result.isThread = isThread;
    if (needContent != null) result.needContent = needContent;
    if (forumId != null) result.forumId = forumId;
    if (beginTime != null) result.beginTime = beginTime;
    if (endTime != null) result.endTime = endTime;
    if (subtype != null) result.subtype = subtype;
    if (checkLogin != null) result.checkLogin = checkLogin;
    if (ipStr != null) result.ipStr = ipStr;
    if (ipInt != null) result.ipInt = ipInt;
    if (moduleName != null) result.moduleName = moduleName;
    if (stType != null) result.stType = stType;
    if (stParam != null) result.stParam = stParam;
    if (smileGrade != null) result.smileGrade = smileGrade;
    if (supportNoun != null) result.supportNoun = supportNoun;
    if (login != null) result.login = login;
    if (userId != null) result.userId = userId;
    if (userName != null) result.userName = userName;
    if (noUn != null) result.noUn = noUn;
    if (portrait != null) result.portrait = portrait;
    if (mobile != null) result.mobile = mobile;
    if (email != null) result.email = email;
    if (cookie != null) result.cookie = cookie;
    if (pn != null) result.pn = pn;
    if (common != null) result.common = common;
    if (isTwzhibo != null) result.isTwzhibo = isTwzhibo;
    if (scrW != null) result.scrW = scrW;
    if (scrH != null) result.scrH = scrH;
    if (scrDip != null) result.scrDip = scrDip;
    if (qType != null) result.qType = qType;
    if (isViewCard != null) result.isViewCard = isViewCard;
    if (lastThreadTime != null) result.lastThreadTime = lastThreadTime;
    if (workTabId != null) result.workTabId = workTabId;
    if (type != null) result.type = type;
    if (fromType != null) result.fromType = fromType;
    if (beginThreadId != null) result.beginThreadId = beginThreadId;
    return result;
  }

  UserPostRequestData._();

  factory UserPostRequestData.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UserPostRequestData.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UserPostRequestData',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba.userPost'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'uid')
    ..aI(2, _omitFieldNames ? '' : 'rn', fieldType: $pb.PbFieldType.OU3)
    ..aI(3, _omitFieldNames ? '' : 'offset', fieldType: $pb.PbFieldType.OU3)
    ..aI(4, _omitFieldNames ? '' : 'isThread', fieldType: $pb.PbFieldType.OU3)
    ..aI(5, _omitFieldNames ? '' : 'needContent',
        fieldType: $pb.PbFieldType.OU3)
    ..a<$fixnum.Int64>(6, _omitFieldNames ? '' : 'forumId', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aI(7, _omitFieldNames ? '' : 'beginTime', fieldType: $pb.PbFieldType.OU3)
    ..aI(8, _omitFieldNames ? '' : 'endTime', fieldType: $pb.PbFieldType.OU3)
    ..aI(9, _omitFieldNames ? '' : 'subtype', fieldType: $pb.PbFieldType.OU3)
    ..aI(10, _omitFieldNames ? '' : 'checkLogin',
        fieldType: $pb.PbFieldType.OU3)
    ..aOS(11, _omitFieldNames ? '' : 'ipStr')
    ..aI(12, _omitFieldNames ? '' : 'ipInt', fieldType: $pb.PbFieldType.OU3)
    ..aOS(13, _omitFieldNames ? '' : 'moduleName')
    ..aI(14, _omitFieldNames ? '' : 'stType', fieldType: $pb.PbFieldType.OU3)
    ..aI(15, _omitFieldNames ? '' : 'stParam', fieldType: $pb.PbFieldType.OU3)
    ..aI(16, _omitFieldNames ? '' : 'smileGrade',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(17, _omitFieldNames ? '' : 'supportNoun',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(18, _omitFieldNames ? '' : 'login', fieldType: $pb.PbFieldType.OU3)
    ..aInt64(19, _omitFieldNames ? '' : 'userId')
    ..aOS(20, _omitFieldNames ? '' : 'userName')
    ..aI(21, _omitFieldNames ? '' : 'noUn', fieldType: $pb.PbFieldType.OU3)
    ..aOS(22, _omitFieldNames ? '' : 'portrait')
    ..aOS(23, _omitFieldNames ? '' : 'mobile')
    ..aOS(24, _omitFieldNames ? '' : 'email')
    ..aOS(25, _omitFieldNames ? '' : 'cookie')
    ..aI(26, _omitFieldNames ? '' : 'pn', fieldType: $pb.PbFieldType.OU3)
    ..aOM<$0.CommonRequest>(27, _omitFieldNames ? '' : 'common',
        subBuilder: $0.CommonRequest.create)
    ..aI(28, _omitFieldNames ? '' : 'isTwzhibo', fieldType: $pb.PbFieldType.OU3)
    ..aI(29, _omitFieldNames ? '' : 'scrW')
    ..aI(30, _omitFieldNames ? '' : 'scrH')
    ..aD(31, _omitFieldNames ? '' : 'scrDip')
    ..aI(32, _omitFieldNames ? '' : 'qType')
    ..aI(33, _omitFieldNames ? '' : 'isViewCard')
    ..aI(34, _omitFieldNames ? '' : 'lastThreadTime',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(35, _omitFieldNames ? '' : 'workTabId', fieldType: $pb.PbFieldType.OU3)
    ..aI(36, _omitFieldNames ? '' : 'type', fieldType: $pb.PbFieldType.OU3)
    ..aI(37, _omitFieldNames ? '' : 'fromType', fieldType: $pb.PbFieldType.OU3)
    ..a<$fixnum.Int64>(
        38, _omitFieldNames ? '' : 'beginThreadId', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UserPostRequestData clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UserPostRequestData copyWith(void Function(UserPostRequestData) updates) =>
      super.copyWith((message) => updates(message as UserPostRequestData))
          as UserPostRequestData;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserPostRequestData create() => UserPostRequestData._();
  @$core.override
  UserPostRequestData createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UserPostRequestData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UserPostRequestData>(create);
  static UserPostRequestData? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get uid => $_getI64(0);
  @$pb.TagNumber(1)
  set uid($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasUid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUid() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get rn => $_getIZ(1);
  @$pb.TagNumber(2)
  set rn($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasRn() => $_has(1);
  @$pb.TagNumber(2)
  void clearRn() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get offset => $_getIZ(2);
  @$pb.TagNumber(3)
  set offset($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasOffset() => $_has(2);
  @$pb.TagNumber(3)
  void clearOffset() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get isThread => $_getIZ(3);
  @$pb.TagNumber(4)
  set isThread($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasIsThread() => $_has(3);
  @$pb.TagNumber(4)
  void clearIsThread() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get needContent => $_getIZ(4);
  @$pb.TagNumber(5)
  set needContent($core.int value) => $_setUnsignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasNeedContent() => $_has(4);
  @$pb.TagNumber(5)
  void clearNeedContent() => $_clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get forumId => $_getI64(5);
  @$pb.TagNumber(6)
  set forumId($fixnum.Int64 value) => $_setInt64(5, value);
  @$pb.TagNumber(6)
  $core.bool hasForumId() => $_has(5);
  @$pb.TagNumber(6)
  void clearForumId() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.int get beginTime => $_getIZ(6);
  @$pb.TagNumber(7)
  set beginTime($core.int value) => $_setUnsignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasBeginTime() => $_has(6);
  @$pb.TagNumber(7)
  void clearBeginTime() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.int get endTime => $_getIZ(7);
  @$pb.TagNumber(8)
  set endTime($core.int value) => $_setUnsignedInt32(7, value);
  @$pb.TagNumber(8)
  $core.bool hasEndTime() => $_has(7);
  @$pb.TagNumber(8)
  void clearEndTime() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.int get subtype => $_getIZ(8);
  @$pb.TagNumber(9)
  set subtype($core.int value) => $_setUnsignedInt32(8, value);
  @$pb.TagNumber(9)
  $core.bool hasSubtype() => $_has(8);
  @$pb.TagNumber(9)
  void clearSubtype() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.int get checkLogin => $_getIZ(9);
  @$pb.TagNumber(10)
  set checkLogin($core.int value) => $_setUnsignedInt32(9, value);
  @$pb.TagNumber(10)
  $core.bool hasCheckLogin() => $_has(9);
  @$pb.TagNumber(10)
  void clearCheckLogin() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.String get ipStr => $_getSZ(10);
  @$pb.TagNumber(11)
  set ipStr($core.String value) => $_setString(10, value);
  @$pb.TagNumber(11)
  $core.bool hasIpStr() => $_has(10);
  @$pb.TagNumber(11)
  void clearIpStr() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.int get ipInt => $_getIZ(11);
  @$pb.TagNumber(12)
  set ipInt($core.int value) => $_setUnsignedInt32(11, value);
  @$pb.TagNumber(12)
  $core.bool hasIpInt() => $_has(11);
  @$pb.TagNumber(12)
  void clearIpInt() => $_clearField(12);

  @$pb.TagNumber(13)
  $core.String get moduleName => $_getSZ(12);
  @$pb.TagNumber(13)
  set moduleName($core.String value) => $_setString(12, value);
  @$pb.TagNumber(13)
  $core.bool hasModuleName() => $_has(12);
  @$pb.TagNumber(13)
  void clearModuleName() => $_clearField(13);

  @$pb.TagNumber(14)
  $core.int get stType => $_getIZ(13);
  @$pb.TagNumber(14)
  set stType($core.int value) => $_setUnsignedInt32(13, value);
  @$pb.TagNumber(14)
  $core.bool hasStType() => $_has(13);
  @$pb.TagNumber(14)
  void clearStType() => $_clearField(14);

  @$pb.TagNumber(15)
  $core.int get stParam => $_getIZ(14);
  @$pb.TagNumber(15)
  set stParam($core.int value) => $_setUnsignedInt32(14, value);
  @$pb.TagNumber(15)
  $core.bool hasStParam() => $_has(14);
  @$pb.TagNumber(15)
  void clearStParam() => $_clearField(15);

  @$pb.TagNumber(16)
  $core.int get smileGrade => $_getIZ(15);
  @$pb.TagNumber(16)
  set smileGrade($core.int value) => $_setUnsignedInt32(15, value);
  @$pb.TagNumber(16)
  $core.bool hasSmileGrade() => $_has(15);
  @$pb.TagNumber(16)
  void clearSmileGrade() => $_clearField(16);

  @$pb.TagNumber(17)
  $core.int get supportNoun => $_getIZ(16);
  @$pb.TagNumber(17)
  set supportNoun($core.int value) => $_setUnsignedInt32(16, value);
  @$pb.TagNumber(17)
  $core.bool hasSupportNoun() => $_has(16);
  @$pb.TagNumber(17)
  void clearSupportNoun() => $_clearField(17);

  @$pb.TagNumber(18)
  $core.int get login => $_getIZ(17);
  @$pb.TagNumber(18)
  set login($core.int value) => $_setUnsignedInt32(17, value);
  @$pb.TagNumber(18)
  $core.bool hasLogin() => $_has(17);
  @$pb.TagNumber(18)
  void clearLogin() => $_clearField(18);

  @$pb.TagNumber(19)
  $fixnum.Int64 get userId => $_getI64(18);
  @$pb.TagNumber(19)
  set userId($fixnum.Int64 value) => $_setInt64(18, value);
  @$pb.TagNumber(19)
  $core.bool hasUserId() => $_has(18);
  @$pb.TagNumber(19)
  void clearUserId() => $_clearField(19);

  @$pb.TagNumber(20)
  $core.String get userName => $_getSZ(19);
  @$pb.TagNumber(20)
  set userName($core.String value) => $_setString(19, value);
  @$pb.TagNumber(20)
  $core.bool hasUserName() => $_has(19);
  @$pb.TagNumber(20)
  void clearUserName() => $_clearField(20);

  @$pb.TagNumber(21)
  $core.int get noUn => $_getIZ(20);
  @$pb.TagNumber(21)
  set noUn($core.int value) => $_setUnsignedInt32(20, value);
  @$pb.TagNumber(21)
  $core.bool hasNoUn() => $_has(20);
  @$pb.TagNumber(21)
  void clearNoUn() => $_clearField(21);

  @$pb.TagNumber(22)
  $core.String get portrait => $_getSZ(21);
  @$pb.TagNumber(22)
  set portrait($core.String value) => $_setString(21, value);
  @$pb.TagNumber(22)
  $core.bool hasPortrait() => $_has(21);
  @$pb.TagNumber(22)
  void clearPortrait() => $_clearField(22);

  @$pb.TagNumber(23)
  $core.String get mobile => $_getSZ(22);
  @$pb.TagNumber(23)
  set mobile($core.String value) => $_setString(22, value);
  @$pb.TagNumber(23)
  $core.bool hasMobile() => $_has(22);
  @$pb.TagNumber(23)
  void clearMobile() => $_clearField(23);

  @$pb.TagNumber(24)
  $core.String get email => $_getSZ(23);
  @$pb.TagNumber(24)
  set email($core.String value) => $_setString(23, value);
  @$pb.TagNumber(24)
  $core.bool hasEmail() => $_has(23);
  @$pb.TagNumber(24)
  void clearEmail() => $_clearField(24);

  @$pb.TagNumber(25)
  $core.String get cookie => $_getSZ(24);
  @$pb.TagNumber(25)
  set cookie($core.String value) => $_setString(24, value);
  @$pb.TagNumber(25)
  $core.bool hasCookie() => $_has(24);
  @$pb.TagNumber(25)
  void clearCookie() => $_clearField(25);

  @$pb.TagNumber(26)
  $core.int get pn => $_getIZ(25);
  @$pb.TagNumber(26)
  set pn($core.int value) => $_setUnsignedInt32(25, value);
  @$pb.TagNumber(26)
  $core.bool hasPn() => $_has(25);
  @$pb.TagNumber(26)
  void clearPn() => $_clearField(26);

  @$pb.TagNumber(27)
  $0.CommonRequest get common => $_getN(26);
  @$pb.TagNumber(27)
  set common($0.CommonRequest value) => $_setField(27, value);
  @$pb.TagNumber(27)
  $core.bool hasCommon() => $_has(26);
  @$pb.TagNumber(27)
  void clearCommon() => $_clearField(27);
  @$pb.TagNumber(27)
  $0.CommonRequest ensureCommon() => $_ensure(26);

  @$pb.TagNumber(28)
  $core.int get isTwzhibo => $_getIZ(27);
  @$pb.TagNumber(28)
  set isTwzhibo($core.int value) => $_setUnsignedInt32(27, value);
  @$pb.TagNumber(28)
  $core.bool hasIsTwzhibo() => $_has(27);
  @$pb.TagNumber(28)
  void clearIsTwzhibo() => $_clearField(28);

  @$pb.TagNumber(29)
  $core.int get scrW => $_getIZ(28);
  @$pb.TagNumber(29)
  set scrW($core.int value) => $_setSignedInt32(28, value);
  @$pb.TagNumber(29)
  $core.bool hasScrW() => $_has(28);
  @$pb.TagNumber(29)
  void clearScrW() => $_clearField(29);

  @$pb.TagNumber(30)
  $core.int get scrH => $_getIZ(29);
  @$pb.TagNumber(30)
  set scrH($core.int value) => $_setSignedInt32(29, value);
  @$pb.TagNumber(30)
  $core.bool hasScrH() => $_has(29);
  @$pb.TagNumber(30)
  void clearScrH() => $_clearField(30);

  @$pb.TagNumber(31)
  $core.double get scrDip => $_getN(30);
  @$pb.TagNumber(31)
  set scrDip($core.double value) => $_setDouble(30, value);
  @$pb.TagNumber(31)
  $core.bool hasScrDip() => $_has(30);
  @$pb.TagNumber(31)
  void clearScrDip() => $_clearField(31);

  @$pb.TagNumber(32)
  $core.int get qType => $_getIZ(31);
  @$pb.TagNumber(32)
  set qType($core.int value) => $_setSignedInt32(31, value);
  @$pb.TagNumber(32)
  $core.bool hasQType() => $_has(31);
  @$pb.TagNumber(32)
  void clearQType() => $_clearField(32);

  @$pb.TagNumber(33)
  $core.int get isViewCard => $_getIZ(32);
  @$pb.TagNumber(33)
  set isViewCard($core.int value) => $_setSignedInt32(32, value);
  @$pb.TagNumber(33)
  $core.bool hasIsViewCard() => $_has(32);
  @$pb.TagNumber(33)
  void clearIsViewCard() => $_clearField(33);

  @$pb.TagNumber(34)
  $core.int get lastThreadTime => $_getIZ(33);
  @$pb.TagNumber(34)
  set lastThreadTime($core.int value) => $_setUnsignedInt32(33, value);
  @$pb.TagNumber(34)
  $core.bool hasLastThreadTime() => $_has(33);
  @$pb.TagNumber(34)
  void clearLastThreadTime() => $_clearField(34);

  @$pb.TagNumber(35)
  $core.int get workTabId => $_getIZ(34);
  @$pb.TagNumber(35)
  set workTabId($core.int value) => $_setUnsignedInt32(34, value);
  @$pb.TagNumber(35)
  $core.bool hasWorkTabId() => $_has(34);
  @$pb.TagNumber(35)
  void clearWorkTabId() => $_clearField(35);

  @$pb.TagNumber(36)
  $core.int get type => $_getIZ(35);
  @$pb.TagNumber(36)
  set type($core.int value) => $_setUnsignedInt32(35, value);
  @$pb.TagNumber(36)
  $core.bool hasType() => $_has(35);
  @$pb.TagNumber(36)
  void clearType() => $_clearField(36);

  @$pb.TagNumber(37)
  $core.int get fromType => $_getIZ(36);
  @$pb.TagNumber(37)
  set fromType($core.int value) => $_setUnsignedInt32(36, value);
  @$pb.TagNumber(37)
  $core.bool hasFromType() => $_has(36);
  @$pb.TagNumber(37)
  void clearFromType() => $_clearField(37);

  @$pb.TagNumber(38)
  $fixnum.Int64 get beginThreadId => $_getI64(37);
  @$pb.TagNumber(38)
  set beginThreadId($fixnum.Int64 value) => $_setInt64(37, value);
  @$pb.TagNumber(38)
  $core.bool hasBeginThreadId() => $_has(37);
  @$pb.TagNumber(38)
  void clearBeginThreadId() => $_clearField(38);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
