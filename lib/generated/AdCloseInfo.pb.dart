// This is a generated file - do not edit.
//
// Generated from AdCloseInfo.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'ActionControl.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class AdCloseInfo extends $pb.GeneratedMessage {
  factory AdCloseInfo({
    $core.int? supportClose,
    $core.String? title,
    $core.Iterable<$core.String>? reasons,
    $core.String? confirmTitle,
    $0.ActionControl? actionControl,
  }) {
    final result = create();
    if (supportClose != null) result.supportClose = supportClose;
    if (title != null) result.title = title;
    if (reasons != null) result.reasons.addAll(reasons);
    if (confirmTitle != null) result.confirmTitle = confirmTitle;
    if (actionControl != null) result.actionControl = actionControl;
    return result;
  }

  AdCloseInfo._();

  factory AdCloseInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AdCloseInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AdCloseInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'supportClose')
    ..aOS(2, _omitFieldNames ? '' : 'title')
    ..pPS(3, _omitFieldNames ? '' : 'reasons')
    ..aOS(4, _omitFieldNames ? '' : 'confirmTitle')
    ..aOM<$0.ActionControl>(5, _omitFieldNames ? '' : 'actionControl',
        subBuilder: $0.ActionControl.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AdCloseInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AdCloseInfo copyWith(void Function(AdCloseInfo) updates) =>
      super.copyWith((message) => updates(message as AdCloseInfo))
          as AdCloseInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AdCloseInfo create() => AdCloseInfo._();
  @$core.override
  AdCloseInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AdCloseInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AdCloseInfo>(create);
  static AdCloseInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get supportClose => $_getIZ(0);
  @$pb.TagNumber(1)
  set supportClose($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSupportClose() => $_has(0);
  @$pb.TagNumber(1)
  void clearSupportClose() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => $_clearField(2);

  @$pb.TagNumber(3)
  $pb.PbList<$core.String> get reasons => $_getList(2);

  @$pb.TagNumber(4)
  $core.String get confirmTitle => $_getSZ(3);
  @$pb.TagNumber(4)
  set confirmTitle($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasConfirmTitle() => $_has(3);
  @$pb.TagNumber(4)
  void clearConfirmTitle() => $_clearField(4);

  @$pb.TagNumber(5)
  $0.ActionControl get actionControl => $_getN(4);
  @$pb.TagNumber(5)
  set actionControl($0.ActionControl value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasActionControl() => $_has(4);
  @$pb.TagNumber(5)
  void clearActionControl() => $_clearField(5);
  @$pb.TagNumber(5)
  $0.ActionControl ensureActionControl() => $_ensure(4);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
