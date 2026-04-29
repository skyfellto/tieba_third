// This is a generated file - do not edit.
//
// Generated from GetForumDetail/BzApplySwitch.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class BzApplySwitch extends $pb.GeneratedMessage {
  factory BzApplySwitch() => create();

  BzApplySwitch._();

  factory BzApplySwitch.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BzApplySwitch.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BzApplySwitch',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'tieba.getForumDetail'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BzApplySwitch clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BzApplySwitch copyWith(void Function(BzApplySwitch) updates) =>
      super.copyWith((message) => updates(message as BzApplySwitch))
          as BzApplySwitch;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BzApplySwitch create() => BzApplySwitch._();
  @$core.override
  BzApplySwitch createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BzApplySwitch getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BzApplySwitch>(create);
  static BzApplySwitch? _defaultInstance;
}

const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
