// This is a generated file - do not edit.
//
// Generated from BubbleInfo.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class BubbleInfo extends $pb.GeneratedMessage {
  factory BubbleInfo({
    $core.int? bubbleId,
    $core.String? bubbleText,
    $core.String? bubblePic,
  }) {
    final result = create();
    if (bubbleId != null) result.bubbleId = bubbleId;
    if (bubbleText != null) result.bubbleText = bubbleText;
    if (bubblePic != null) result.bubblePic = bubblePic;
    return result;
  }

  BubbleInfo._();

  factory BubbleInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BubbleInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BubbleInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'bubbleId')
    ..aOS(2, _omitFieldNames ? '' : 'bubbleText')
    ..aOS(3, _omitFieldNames ? '' : 'bubblePic')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BubbleInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BubbleInfo copyWith(void Function(BubbleInfo) updates) =>
      super.copyWith((message) => updates(message as BubbleInfo)) as BubbleInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BubbleInfo create() => BubbleInfo._();
  @$core.override
  BubbleInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BubbleInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BubbleInfo>(create);
  static BubbleInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get bubbleId => $_getIZ(0);
  @$pb.TagNumber(1)
  set bubbleId($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasBubbleId() => $_has(0);
  @$pb.TagNumber(1)
  void clearBubbleId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get bubbleText => $_getSZ(1);
  @$pb.TagNumber(2)
  set bubbleText($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasBubbleText() => $_has(1);
  @$pb.TagNumber(2)
  void clearBubbleText() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get bubblePic => $_getSZ(2);
  @$pb.TagNumber(3)
  set bubblePic($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasBubblePic() => $_has(2);
  @$pb.TagNumber(3)
  void clearBubblePic() => $_clearField(3);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
