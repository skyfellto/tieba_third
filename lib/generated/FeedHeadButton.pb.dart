// This is a generated file - do not edit.
//
// Generated from FeedHeadButton.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'FeedKV.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class FeedHeadButton extends $pb.GeneratedMessage {
  factory FeedHeadButton({
    $core.int? type,
    $core.Iterable<$0.FeedKV>? businessInfo,
  }) {
    final result = create();
    if (type != null) result.type = type;
    if (businessInfo != null) result.businessInfo.addAll(businessInfo);
    return result;
  }

  FeedHeadButton._();

  factory FeedHeadButton.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FeedHeadButton.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FeedHeadButton',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'type', fieldType: $pb.PbFieldType.OU3)
    ..pPM<$0.FeedKV>(2, _omitFieldNames ? '' : 'businessInfo',
        subBuilder: $0.FeedKV.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FeedHeadButton clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FeedHeadButton copyWith(void Function(FeedHeadButton) updates) =>
      super.copyWith((message) => updates(message as FeedHeadButton))
          as FeedHeadButton;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FeedHeadButton create() => FeedHeadButton._();
  @$core.override
  FeedHeadButton createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FeedHeadButton getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FeedHeadButton>(create);
  static FeedHeadButton? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get type => $_getIZ(0);
  @$pb.TagNumber(1)
  set type($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<$0.FeedKV> get businessInfo => $_getList(1);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
