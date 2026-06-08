// This is a generated file - do not edit.
//
// Generated from FeedHeadComponent.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'FeedHeadButton.pb.dart' as $2;
import 'FeedHeadImg.pb.dart' as $0;
import 'FeedHeadSymbol.pb.dart' as $1;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class FeedHeadComponent extends $pb.GeneratedMessage {
  factory FeedHeadComponent({
    $0.FeedHeadImg? imageData,
    $core.Iterable<$1.FeedHeadSymbol>? mainData,
    $core.Iterable<$1.FeedHeadSymbol>? extraData,
    $core.String? schema,
    $2.FeedHeadButton? button,
    $core.Iterable<$1.FeedHeadSymbol>? altExtraData,
  }) {
    final result = create();
    if (imageData != null) result.imageData = imageData;
    if (mainData != null) result.mainData.addAll(mainData);
    if (extraData != null) result.extraData.addAll(extraData);
    if (schema != null) result.schema = schema;
    if (button != null) result.button = button;
    if (altExtraData != null) result.altExtraData.addAll(altExtraData);
    return result;
  }

  FeedHeadComponent._();

  factory FeedHeadComponent.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FeedHeadComponent.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FeedHeadComponent',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aOM<$0.FeedHeadImg>(1, _omitFieldNames ? '' : 'imageData',
        subBuilder: $0.FeedHeadImg.create)
    ..pPM<$1.FeedHeadSymbol>(2, _omitFieldNames ? '' : 'mainData',
        subBuilder: $1.FeedHeadSymbol.create)
    ..pPM<$1.FeedHeadSymbol>(3, _omitFieldNames ? '' : 'extraData',
        subBuilder: $1.FeedHeadSymbol.create)
    ..aOS(4, _omitFieldNames ? '' : 'schema')
    ..aOM<$2.FeedHeadButton>(5, _omitFieldNames ? '' : 'button',
        subBuilder: $2.FeedHeadButton.create)
    ..pPM<$1.FeedHeadSymbol>(6, _omitFieldNames ? '' : 'altExtraData',
        subBuilder: $1.FeedHeadSymbol.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FeedHeadComponent clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FeedHeadComponent copyWith(void Function(FeedHeadComponent) updates) =>
      super.copyWith((message) => updates(message as FeedHeadComponent))
          as FeedHeadComponent;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FeedHeadComponent create() => FeedHeadComponent._();
  @$core.override
  FeedHeadComponent createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FeedHeadComponent getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FeedHeadComponent>(create);
  static FeedHeadComponent? _defaultInstance;

  @$pb.TagNumber(1)
  $0.FeedHeadImg get imageData => $_getN(0);
  @$pb.TagNumber(1)
  set imageData($0.FeedHeadImg value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasImageData() => $_has(0);
  @$pb.TagNumber(1)
  void clearImageData() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.FeedHeadImg ensureImageData() => $_ensure(0);

  @$pb.TagNumber(2)
  $pb.PbList<$1.FeedHeadSymbol> get mainData => $_getList(1);

  @$pb.TagNumber(3)
  $pb.PbList<$1.FeedHeadSymbol> get extraData => $_getList(2);

  @$pb.TagNumber(4)
  $core.String get schema => $_getSZ(3);
  @$pb.TagNumber(4)
  set schema($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasSchema() => $_has(3);
  @$pb.TagNumber(4)
  void clearSchema() => $_clearField(4);

  @$pb.TagNumber(5)
  $2.FeedHeadButton get button => $_getN(4);
  @$pb.TagNumber(5)
  set button($2.FeedHeadButton value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasButton() => $_has(4);
  @$pb.TagNumber(5)
  void clearButton() => $_clearField(5);
  @$pb.TagNumber(5)
  $2.FeedHeadButton ensureButton() => $_ensure(4);

  @$pb.TagNumber(6)
  $pb.PbList<$1.FeedHeadSymbol> get altExtraData => $_getList(5);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
