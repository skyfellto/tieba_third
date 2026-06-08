// This is a generated file - do not edit.
//
// Generated from FeedHeadIcon.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class FeedHeadIcon extends $pb.GeneratedMessage {
  factory FeedHeadIcon({
    $core.String? url,
    $core.int? width,
    $core.int? height,
    $core.int? priority,
    $core.int? canDegrade,
    $core.String? degradeUrl,
    $core.int? degradeWidth,
    $core.int? degradeHeight,
    $core.int? degradePriority,
  }) {
    final result = create();
    if (url != null) result.url = url;
    if (width != null) result.width = width;
    if (height != null) result.height = height;
    if (priority != null) result.priority = priority;
    if (canDegrade != null) result.canDegrade = canDegrade;
    if (degradeUrl != null) result.degradeUrl = degradeUrl;
    if (degradeWidth != null) result.degradeWidth = degradeWidth;
    if (degradeHeight != null) result.degradeHeight = degradeHeight;
    if (degradePriority != null) result.degradePriority = degradePriority;
    return result;
  }

  FeedHeadIcon._();

  factory FeedHeadIcon.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FeedHeadIcon.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FeedHeadIcon',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'url')
    ..aI(3, _omitFieldNames ? '' : 'width', fieldType: $pb.PbFieldType.OU3)
    ..aI(4, _omitFieldNames ? '' : 'height', fieldType: $pb.PbFieldType.OU3)
    ..aI(5, _omitFieldNames ? '' : 'priority')
    ..aI(6, _omitFieldNames ? '' : 'canDegrade', fieldType: $pb.PbFieldType.OU3)
    ..aOS(7, _omitFieldNames ? '' : 'degradeUrl')
    ..aI(8, _omitFieldNames ? '' : 'degradeWidth',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(9, _omitFieldNames ? '' : 'degradeHeight',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(10, _omitFieldNames ? '' : 'degradePriority')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FeedHeadIcon clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FeedHeadIcon copyWith(void Function(FeedHeadIcon) updates) =>
      super.copyWith((message) => updates(message as FeedHeadIcon))
          as FeedHeadIcon;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FeedHeadIcon create() => FeedHeadIcon._();
  @$core.override
  FeedHeadIcon createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FeedHeadIcon getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FeedHeadIcon>(create);
  static FeedHeadIcon? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get url => $_getSZ(0);
  @$pb.TagNumber(1)
  set url($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasUrl() => $_has(0);
  @$pb.TagNumber(1)
  void clearUrl() => $_clearField(1);

  @$pb.TagNumber(3)
  $core.int get width => $_getIZ(1);
  @$pb.TagNumber(3)
  set width($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(3)
  $core.bool hasWidth() => $_has(1);
  @$pb.TagNumber(3)
  void clearWidth() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get height => $_getIZ(2);
  @$pb.TagNumber(4)
  set height($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(4)
  $core.bool hasHeight() => $_has(2);
  @$pb.TagNumber(4)
  void clearHeight() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get priority => $_getIZ(3);
  @$pb.TagNumber(5)
  set priority($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(5)
  $core.bool hasPriority() => $_has(3);
  @$pb.TagNumber(5)
  void clearPriority() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get canDegrade => $_getIZ(4);
  @$pb.TagNumber(6)
  set canDegrade($core.int value) => $_setUnsignedInt32(4, value);
  @$pb.TagNumber(6)
  $core.bool hasCanDegrade() => $_has(4);
  @$pb.TagNumber(6)
  void clearCanDegrade() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get degradeUrl => $_getSZ(5);
  @$pb.TagNumber(7)
  set degradeUrl($core.String value) => $_setString(5, value);
  @$pb.TagNumber(7)
  $core.bool hasDegradeUrl() => $_has(5);
  @$pb.TagNumber(7)
  void clearDegradeUrl() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.int get degradeWidth => $_getIZ(6);
  @$pb.TagNumber(8)
  set degradeWidth($core.int value) => $_setUnsignedInt32(6, value);
  @$pb.TagNumber(8)
  $core.bool hasDegradeWidth() => $_has(6);
  @$pb.TagNumber(8)
  void clearDegradeWidth() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.int get degradeHeight => $_getIZ(7);
  @$pb.TagNumber(9)
  set degradeHeight($core.int value) => $_setUnsignedInt32(7, value);
  @$pb.TagNumber(9)
  $core.bool hasDegradeHeight() => $_has(7);
  @$pb.TagNumber(9)
  void clearDegradeHeight() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.int get degradePriority => $_getIZ(8);
  @$pb.TagNumber(10)
  set degradePriority($core.int value) => $_setSignedInt32(8, value);
  @$pb.TagNumber(10)
  $core.bool hasDegradePriority() => $_has(8);
  @$pb.TagNumber(10)
  void clearDegradePriority() => $_clearField(10);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
