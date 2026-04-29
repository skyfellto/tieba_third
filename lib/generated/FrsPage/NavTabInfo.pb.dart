// This is a generated file - do not edit.
//
// Generated from FrsPage/NavTabInfo.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../FrsTabInfo.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class NavTabInfo extends $pb.GeneratedMessage {
  factory NavTabInfo({
    $core.Iterable<$0.FrsTabInfo>? tab,
    $core.Iterable<$0.FrsTabInfo>? menu,
    $core.Iterable<$0.FrsTabInfo>? head,
  }) {
    final result = create();
    if (tab != null) result.tab.addAll(tab);
    if (menu != null) result.menu.addAll(menu);
    if (head != null) result.head.addAll(head);
    return result;
  }

  NavTabInfo._();

  factory NavTabInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory NavTabInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'NavTabInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba.frsPage'),
      createEmptyInstance: create)
    ..pPM<$0.FrsTabInfo>(1, _omitFieldNames ? '' : 'tab',
        subBuilder: $0.FrsTabInfo.create)
    ..pPM<$0.FrsTabInfo>(2, _omitFieldNames ? '' : 'menu',
        subBuilder: $0.FrsTabInfo.create)
    ..pPM<$0.FrsTabInfo>(3, _omitFieldNames ? '' : 'head',
        subBuilder: $0.FrsTabInfo.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NavTabInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NavTabInfo copyWith(void Function(NavTabInfo) updates) =>
      super.copyWith((message) => updates(message as NavTabInfo)) as NavTabInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NavTabInfo create() => NavTabInfo._();
  @$core.override
  NavTabInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static NavTabInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<NavTabInfo>(create);
  static NavTabInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$0.FrsTabInfo> get tab => $_getList(0);

  @$pb.TagNumber(2)
  $pb.PbList<$0.FrsTabInfo> get menu => $_getList(1);

  @$pb.TagNumber(3)
  $pb.PbList<$0.FrsTabInfo> get head => $_getList(2);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
