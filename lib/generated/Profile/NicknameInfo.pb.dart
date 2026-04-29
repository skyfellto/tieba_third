// This is a generated file - do not edit.
//
// Generated from Profile/NicknameInfo.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class NicknameInfo extends $pb.GeneratedMessage {
  factory NicknameInfo({
    $core.int? leftDays,
  }) {
    final result = create();
    if (leftDays != null) result.leftDays = leftDays;
    return result;
  }

  NicknameInfo._();

  factory NicknameInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory NicknameInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'NicknameInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba.profile'),
      createEmptyInstance: create)
    ..aI(2, _omitFieldNames ? '' : 'leftDays')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NicknameInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NicknameInfo copyWith(void Function(NicknameInfo) updates) =>
      super.copyWith((message) => updates(message as NicknameInfo))
          as NicknameInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NicknameInfo create() => NicknameInfo._();
  @$core.override
  NicknameInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static NicknameInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<NicknameInfo>(create);
  static NicknameInfo? _defaultInstance;

  @$pb.TagNumber(2)
  $core.int get leftDays => $_getIZ(0);
  @$pb.TagNumber(2)
  set leftDays($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(2)
  $core.bool hasLeftDays() => $_has(0);
  @$pb.TagNumber(2)
  void clearLeftDays() => $_clearField(2);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
