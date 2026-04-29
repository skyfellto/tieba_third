// This is a generated file - do not edit.
//
// Generated from ServiceArea.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'SmartApp.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class ServiceArea extends $pb.GeneratedMessage {
  factory ServiceArea({
    $core.String? servicename,
    $core.String? picurl,
    $core.String? serviceurl,
    $core.String? version,
    $core.String? serviceType,
    $0.SmartApp? areaSmartApp,
    $core.String? schema,
    $core.Iterable<$core.String>? thirdStatisticsUrl,
  }) {
    final result = create();
    if (servicename != null) result.servicename = servicename;
    if (picurl != null) result.picurl = picurl;
    if (serviceurl != null) result.serviceurl = serviceurl;
    if (version != null) result.version = version;
    if (serviceType != null) result.serviceType = serviceType;
    if (areaSmartApp != null) result.areaSmartApp = areaSmartApp;
    if (schema != null) result.schema = schema;
    if (thirdStatisticsUrl != null)
      result.thirdStatisticsUrl.addAll(thirdStatisticsUrl);
    return result;
  }

  ServiceArea._();

  factory ServiceArea.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ServiceArea.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ServiceArea',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'servicename')
    ..aOS(2, _omitFieldNames ? '' : 'picurl')
    ..aOS(3, _omitFieldNames ? '' : 'serviceurl')
    ..aOS(4, _omitFieldNames ? '' : 'version')
    ..aOS(5, _omitFieldNames ? '' : 'serviceType')
    ..aOM<$0.SmartApp>(6, _omitFieldNames ? '' : 'areaSmartApp',
        subBuilder: $0.SmartApp.create)
    ..aOS(7, _omitFieldNames ? '' : 'schema')
    ..pPS(8, _omitFieldNames ? '' : 'thirdStatisticsUrl')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ServiceArea clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ServiceArea copyWith(void Function(ServiceArea) updates) =>
      super.copyWith((message) => updates(message as ServiceArea))
          as ServiceArea;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ServiceArea create() => ServiceArea._();
  @$core.override
  ServiceArea createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ServiceArea getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ServiceArea>(create);
  static ServiceArea? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get servicename => $_getSZ(0);
  @$pb.TagNumber(1)
  set servicename($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasServicename() => $_has(0);
  @$pb.TagNumber(1)
  void clearServicename() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get picurl => $_getSZ(1);
  @$pb.TagNumber(2)
  set picurl($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPicurl() => $_has(1);
  @$pb.TagNumber(2)
  void clearPicurl() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get serviceurl => $_getSZ(2);
  @$pb.TagNumber(3)
  set serviceurl($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasServiceurl() => $_has(2);
  @$pb.TagNumber(3)
  void clearServiceurl() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get version => $_getSZ(3);
  @$pb.TagNumber(4)
  set version($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasVersion() => $_has(3);
  @$pb.TagNumber(4)
  void clearVersion() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get serviceType => $_getSZ(4);
  @$pb.TagNumber(5)
  set serviceType($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasServiceType() => $_has(4);
  @$pb.TagNumber(5)
  void clearServiceType() => $_clearField(5);

  @$pb.TagNumber(6)
  $0.SmartApp get areaSmartApp => $_getN(5);
  @$pb.TagNumber(6)
  set areaSmartApp($0.SmartApp value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasAreaSmartApp() => $_has(5);
  @$pb.TagNumber(6)
  void clearAreaSmartApp() => $_clearField(6);
  @$pb.TagNumber(6)
  $0.SmartApp ensureAreaSmartApp() => $_ensure(5);

  @$pb.TagNumber(7)
  $core.String get schema => $_getSZ(6);
  @$pb.TagNumber(7)
  set schema($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasSchema() => $_has(6);
  @$pb.TagNumber(7)
  void clearSchema() => $_clearField(7);

  @$pb.TagNumber(8)
  $pb.PbList<$core.String> get thirdStatisticsUrl => $_getList(7);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
