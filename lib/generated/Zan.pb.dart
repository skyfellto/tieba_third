// This is a generated file - do not edit.
//
// Generated from Zan.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'User.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class Zan extends $pb.GeneratedMessage {
  factory Zan({
    $core.int? num,
    $core.Iterable<$0.User>? likerList,
    $core.int? isLiked,
    $core.int? lastTime,
    $core.Iterable<$fixnum.Int64>? likerId,
    $core.int? consentType,
  }) {
    final result = create();
    if (num != null) result.num = num;
    if (likerList != null) result.likerList.addAll(likerList);
    if (isLiked != null) result.isLiked = isLiked;
    if (lastTime != null) result.lastTime = lastTime;
    if (likerId != null) result.likerId.addAll(likerId);
    if (consentType != null) result.consentType = consentType;
    return result;
  }

  Zan._();

  factory Zan.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Zan.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Zan',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'num')
    ..pPM<$0.User>(2, _omitFieldNames ? '' : 'likerList',
        subBuilder: $0.User.create)
    ..aI(3, _omitFieldNames ? '' : 'isLiked')
    ..aI(4, _omitFieldNames ? '' : 'lastTime')
    ..p<$fixnum.Int64>(5, _omitFieldNames ? '' : 'likerId', $pb.PbFieldType.K6)
    ..aI(6, _omitFieldNames ? '' : 'consentType')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Zan clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Zan copyWith(void Function(Zan) updates) =>
      super.copyWith((message) => updates(message as Zan)) as Zan;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Zan create() => Zan._();
  @$core.override
  Zan createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Zan getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Zan>(create);
  static Zan? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get num => $_getIZ(0);
  @$pb.TagNumber(1)
  set num($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasNum() => $_has(0);
  @$pb.TagNumber(1)
  void clearNum() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<$0.User> get likerList => $_getList(1);

  @$pb.TagNumber(3)
  $core.int get isLiked => $_getIZ(2);
  @$pb.TagNumber(3)
  set isLiked($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasIsLiked() => $_has(2);
  @$pb.TagNumber(3)
  void clearIsLiked() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get lastTime => $_getIZ(3);
  @$pb.TagNumber(4)
  set lastTime($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasLastTime() => $_has(3);
  @$pb.TagNumber(4)
  void clearLastTime() => $_clearField(4);

  @$pb.TagNumber(5)
  $pb.PbList<$fixnum.Int64> get likerId => $_getList(4);

  @$pb.TagNumber(6)
  $core.int get consentType => $_getIZ(5);
  @$pb.TagNumber(6)
  set consentType($core.int value) => $_setSignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasConsentType() => $_has(5);
  @$pb.TagNumber(6)
  void clearConsentType() => $_clearField(6);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
