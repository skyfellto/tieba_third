// This is a generated file - do not edit.
//
// Generated from DealMedia.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class DealMedia extends $pb.GeneratedMessage {
  factory DealMedia({
    $core.int? type,
    $core.String? smallPic,
    $core.String? bigPic,
    $core.String? waterPic,
  }) {
    final result = create();
    if (type != null) result.type = type;
    if (smallPic != null) result.smallPic = smallPic;
    if (bigPic != null) result.bigPic = bigPic;
    if (waterPic != null) result.waterPic = waterPic;
    return result;
  }

  DealMedia._();

  factory DealMedia.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DealMedia.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DealMedia',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'tieba'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'type')
    ..aOS(2, _omitFieldNames ? '' : 'smallPic')
    ..aOS(3, _omitFieldNames ? '' : 'bigPic')
    ..aOS(4, _omitFieldNames ? '' : 'waterPic')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DealMedia clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DealMedia copyWith(void Function(DealMedia) updates) =>
      super.copyWith((message) => updates(message as DealMedia)) as DealMedia;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DealMedia create() => DealMedia._();
  @$core.override
  DealMedia createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DealMedia getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DealMedia>(create);
  static DealMedia? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get type => $_getIZ(0);
  @$pb.TagNumber(1)
  set type($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get smallPic => $_getSZ(1);
  @$pb.TagNumber(2)
  set smallPic($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSmallPic() => $_has(1);
  @$pb.TagNumber(2)
  void clearSmallPic() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get bigPic => $_getSZ(2);
  @$pb.TagNumber(3)
  set bigPic($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasBigPic() => $_has(2);
  @$pb.TagNumber(3)
  void clearBigPic() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get waterPic => $_getSZ(3);
  @$pb.TagNumber(4)
  set waterPic($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasWaterPic() => $_has(3);
  @$pb.TagNumber(4)
  void clearWaterPic() => $_clearField(4);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
