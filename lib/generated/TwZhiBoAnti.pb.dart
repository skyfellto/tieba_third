// This is a generated file - do not edit.
//
// Generated from TwZhiBoAnti.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class TwZhiBoAnti extends $pb.GeneratedMessage {
  factory TwZhiBoAnti({
    $core.int? canAddLivePost,
    $core.int? canDelLivePost,
    $core.int? canShowPbHeadline,
  }) {
    final result = create();
    if (canAddLivePost != null) result.canAddLivePost = canAddLivePost;
    if (canDelLivePost != null) result.canDelLivePost = canDelLivePost;
    if (canShowPbHeadline != null) result.canShowPbHeadline = canShowPbHeadline;
    return result;
  }

  TwZhiBoAnti._();

  factory TwZhiBoAnti.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TwZhiBoAnti.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TwZhiBoAnti',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'canAddLivePost')
    ..aI(2, _omitFieldNames ? '' : 'canDelLivePost')
    ..aI(3, _omitFieldNames ? '' : 'canShowPbHeadline')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TwZhiBoAnti clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TwZhiBoAnti copyWith(void Function(TwZhiBoAnti) updates) =>
      super.copyWith((message) => updates(message as TwZhiBoAnti))
          as TwZhiBoAnti;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TwZhiBoAnti create() => TwZhiBoAnti._();
  @$core.override
  TwZhiBoAnti createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TwZhiBoAnti getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TwZhiBoAnti>(create);
  static TwZhiBoAnti? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get canAddLivePost => $_getIZ(0);
  @$pb.TagNumber(1)
  set canAddLivePost($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCanAddLivePost() => $_has(0);
  @$pb.TagNumber(1)
  void clearCanAddLivePost() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get canDelLivePost => $_getIZ(1);
  @$pb.TagNumber(2)
  set canDelLivePost($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCanDelLivePost() => $_has(1);
  @$pb.TagNumber(2)
  void clearCanDelLivePost() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get canShowPbHeadline => $_getIZ(2);
  @$pb.TagNumber(3)
  set canShowPbHeadline($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasCanShowPbHeadline() => $_has(2);
  @$pb.TagNumber(3)
  void clearCanShowPbHeadline() => $_clearField(3);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
