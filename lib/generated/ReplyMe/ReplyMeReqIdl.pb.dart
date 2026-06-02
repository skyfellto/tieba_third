// This is a generated file - do not edit.
//
// Generated from ReplyMe/ReplyMeReqIdl.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'DataReq.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class ReplyMeReqIdl extends $pb.GeneratedMessage {
  factory ReplyMeReqIdl({
    $0.DataReq? data,
  }) {
    final result = create();
    if (data != null) result.data = data;
    return result;
  }

  ReplyMeReqIdl._();

  factory ReplyMeReqIdl.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ReplyMeReqIdl.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ReplyMeReqIdl',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aOM<$0.DataReq>(1, _omitFieldNames ? '' : 'data',
        subBuilder: $0.DataReq.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReplyMeReqIdl clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReplyMeReqIdl copyWith(void Function(ReplyMeReqIdl) updates) =>
      super.copyWith((message) => updates(message as ReplyMeReqIdl))
          as ReplyMeReqIdl;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReplyMeReqIdl create() => ReplyMeReqIdl._();
  @$core.override
  ReplyMeReqIdl createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ReplyMeReqIdl getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ReplyMeReqIdl>(create);
  static ReplyMeReqIdl? _defaultInstance;

  @$pb.TagNumber(1)
  $0.DataReq get data => $_getN(0);
  @$pb.TagNumber(1)
  set data($0.DataReq value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasData() => $_has(0);
  @$pb.TagNumber(1)
  void clearData() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.DataReq ensureData() => $_ensure(0);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
