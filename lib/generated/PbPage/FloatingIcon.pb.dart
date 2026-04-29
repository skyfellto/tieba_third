// This is a generated file - do not edit.
//
// Generated from PbPage/FloatingIcon.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'FloatingIconItem.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class FloatingIcon extends $pb.GeneratedMessage {
  factory FloatingIcon({
    $0.FloatingIconItem? pbpage,
  }) {
    final result = create();
    if (pbpage != null) result.pbpage = pbpage;
    return result;
  }

  FloatingIcon._();

  factory FloatingIcon.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FloatingIcon.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FloatingIcon',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba.pbPage'),
      createEmptyInstance: create)
    ..aOM<$0.FloatingIconItem>(1, _omitFieldNames ? '' : 'pbpage',
        subBuilder: $0.FloatingIconItem.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FloatingIcon clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FloatingIcon copyWith(void Function(FloatingIcon) updates) =>
      super.copyWith((message) => updates(message as FloatingIcon))
          as FloatingIcon;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FloatingIcon create() => FloatingIcon._();
  @$core.override
  FloatingIcon createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FloatingIcon getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FloatingIcon>(create);
  static FloatingIcon? _defaultInstance;

  @$pb.TagNumber(1)
  $0.FloatingIconItem get pbpage => $_getN(0);
  @$pb.TagNumber(1)
  set pbpage($0.FloatingIconItem value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasPbpage() => $_has(0);
  @$pb.TagNumber(1)
  void clearPbpage() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.FloatingIconItem ensurePbpage() => $_ensure(0);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
