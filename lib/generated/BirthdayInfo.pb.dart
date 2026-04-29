// This is a generated file - do not edit.
//
// Generated from BirthdayInfo.proto.

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

class BirthdayInfo extends $pb.GeneratedMessage {
  factory BirthdayInfo({
    $fixnum.Int64? birthdayTime,
    $core.int? birthdayShowStatus,
    $core.String? constellation,
    $core.int? age,
  }) {
    final result = create();
    if (birthdayTime != null) result.birthdayTime = birthdayTime;
    if (birthdayShowStatus != null)
      result.birthdayShowStatus = birthdayShowStatus;
    if (constellation != null) result.constellation = constellation;
    if (age != null) result.age = age;
    return result;
  }

  BirthdayInfo._();

  factory BirthdayInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BirthdayInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BirthdayInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'birthdayTime')
    ..aI(2, _omitFieldNames ? '' : 'birthdayShowStatus',
        fieldType: $pb.PbFieldType.OU3)
    ..aOS(3, _omitFieldNames ? '' : 'constellation')
    ..aI(4, _omitFieldNames ? '' : 'age', fieldType: $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BirthdayInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BirthdayInfo copyWith(void Function(BirthdayInfo) updates) =>
      super.copyWith((message) => updates(message as BirthdayInfo))
          as BirthdayInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BirthdayInfo create() => BirthdayInfo._();
  @$core.override
  BirthdayInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BirthdayInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BirthdayInfo>(create);
  static BirthdayInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get birthdayTime => $_getI64(0);
  @$pb.TagNumber(1)
  set birthdayTime($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasBirthdayTime() => $_has(0);
  @$pb.TagNumber(1)
  void clearBirthdayTime() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get birthdayShowStatus => $_getIZ(1);
  @$pb.TagNumber(2)
  set birthdayShowStatus($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasBirthdayShowStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearBirthdayShowStatus() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get constellation => $_getSZ(2);
  @$pb.TagNumber(3)
  set constellation($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasConstellation() => $_has(2);
  @$pb.TagNumber(3)
  void clearConstellation() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get age => $_getIZ(3);
  @$pb.TagNumber(4)
  set age($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasAge() => $_has(3);
  @$pb.TagNumber(4)
  void clearAge() => $_clearField(4);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
