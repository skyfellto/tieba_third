// This is a generated file - do not edit.
//
// Generated from BusinessAccountInfo.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class BusinessAccountInfo extends $pb.GeneratedMessage {
  factory BusinessAccountInfo({
    $core.int? isBusinessAccount,
    $core.int? isForumBusinessAccount,
    $core.String? businessName,
    $core.String? identifiExplain,
  }) {
    final result = create();
    if (isBusinessAccount != null) result.isBusinessAccount = isBusinessAccount;
    if (isForumBusinessAccount != null)
      result.isForumBusinessAccount = isForumBusinessAccount;
    if (businessName != null) result.businessName = businessName;
    if (identifiExplain != null) result.identifiExplain = identifiExplain;
    return result;
  }

  BusinessAccountInfo._();

  factory BusinessAccountInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BusinessAccountInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BusinessAccountInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'isBusinessAccount')
    ..aI(2, _omitFieldNames ? '' : 'isForumBusinessAccount')
    ..aOS(3, _omitFieldNames ? '' : 'businessName')
    ..aOS(4, _omitFieldNames ? '' : 'identifiExplain')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BusinessAccountInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BusinessAccountInfo copyWith(void Function(BusinessAccountInfo) updates) =>
      super.copyWith((message) => updates(message as BusinessAccountInfo))
          as BusinessAccountInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BusinessAccountInfo create() => BusinessAccountInfo._();
  @$core.override
  BusinessAccountInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BusinessAccountInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BusinessAccountInfo>(create);
  static BusinessAccountInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get isBusinessAccount => $_getIZ(0);
  @$pb.TagNumber(1)
  set isBusinessAccount($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasIsBusinessAccount() => $_has(0);
  @$pb.TagNumber(1)
  void clearIsBusinessAccount() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get isForumBusinessAccount => $_getIZ(1);
  @$pb.TagNumber(2)
  set isForumBusinessAccount($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasIsForumBusinessAccount() => $_has(1);
  @$pb.TagNumber(2)
  void clearIsForumBusinessAccount() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get businessName => $_getSZ(2);
  @$pb.TagNumber(3)
  set businessName($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasBusinessName() => $_has(2);
  @$pb.TagNumber(3)
  void clearBusinessName() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get identifiExplain => $_getSZ(3);
  @$pb.TagNumber(4)
  set identifiExplain($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasIdentifiExplain() => $_has(3);
  @$pb.TagNumber(4)
  void clearIdentifiExplain() => $_clearField(4);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
