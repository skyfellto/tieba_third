// This is a generated file - do not edit.
//
// Generated from CommonRequest.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports
// ignore_for_file: unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use commonRequestDescriptor instead')
const CommonRequest$json = {
  '1': 'CommonRequest',
  '2': [
    {'1': '_client_type', '3': 1, '4': 1, '5': 5, '10': 'ClientType'},
    {'1': '_client_version', '3': 2, '4': 1, '5': 9, '10': 'ClientVersion'},
    {'1': '_client_id', '3': 3, '4': 1, '5': 9, '10': 'ClientId'},
    {'1': '_phone_imei', '3': 5, '4': 1, '5': 9, '10': 'PhoneImei'},
    {'1': 'from', '3': 6, '4': 1, '5': 9, '10': 'from'},
    {'1': 'cuid', '3': 7, '4': 1, '5': 9, '10': 'cuid'},
    {'1': '_timestamp', '3': 8, '4': 1, '5': 3, '10': 'Timestamp'},
    {'1': 'model', '3': 9, '4': 1, '5': 9, '10': 'model'},
    {'1': 'BDUSS', '3': 10, '4': 1, '5': 9, '9': 0, '10': 'BDUSS', '17': true},
    {'1': 'tbs', '3': 11, '4': 1, '5': 9, '9': 1, '10': 'tbs', '17': true},
    {'1': 'net_type', '3': 12, '4': 1, '5': 5, '10': 'netType'},
    {'1': '_phone_newimei', '3': 14, '4': 1, '5': 9, '10': 'PhoneNewimei'},
    {'1': 'sign', '3': 23, '4': 1, '5': 9, '9': 2, '10': 'sign', '17': true},
    {'1': 'pversion', '3': 24, '4': 1, '5': 9, '10': 'pversion'},
    {'1': '_os_version', '3': 25, '4': 1, '5': 9, '10': 'OsVersion'},
    {'1': 'brand', '3': 26, '4': 1, '5': 9, '10': 'brand'},
    {'1': 'lego_lib_version', '3': 28, '4': 1, '5': 9, '10': 'legoLibVersion'},
    {
      '1': 'applist',
      '3': 29,
      '4': 1,
      '5': 9,
      '9': 3,
      '10': 'applist',
      '17': true
    },
    {
      '1': 'stoken',
      '3': 30,
      '4': 1,
      '5': 9,
      '9': 4,
      '10': 'stoken',
      '17': true
    },
    {'1': 'z_id', '3': 31, '4': 1, '5': 9, '9': 5, '10': 'zId', '17': true},
    {'1': 'cuid_galaxy2', '3': 32, '4': 1, '5': 9, '10': 'cuidGalaxy2'},
    {
      '1': 'cuid_gid',
      '3': 33,
      '4': 1,
      '5': 9,
      '9': 6,
      '10': 'cuidGid',
      '17': true
    },
    {'1': 'oaid', '3': 34, '4': 1, '5': 9, '9': 7, '10': 'oaid', '17': true},
    {'1': 'c3_aid', '3': 35, '4': 1, '5': 9, '10': 'c3Aid'},
    {
      '1': 'sample_id',
      '3': 36,
      '4': 1,
      '5': 9,
      '9': 8,
      '10': 'sampleId',
      '17': true
    },
    {'1': 'scr_w', '3': 37, '4': 1, '5': 5, '10': 'scrW'},
    {'1': 'scr_h', '3': 38, '4': 1, '5': 5, '10': 'scrH'},
    {'1': 'scr_dip', '3': 39, '4': 1, '5': 1, '10': 'scrDip'},
    {'1': 'q_type', '3': 40, '4': 1, '5': 5, '9': 9, '10': 'qType', '17': true},
    {
      '1': 'is_teenager',
      '3': 41,
      '4': 1,
      '5': 5,
      '9': 10,
      '10': 'isTeenager',
      '17': true
    },
    {'1': 'sdk_ver', '3': 42, '4': 1, '5': 9, '10': 'sdkVer'},
    {'1': 'framework_ver', '3': 43, '4': 1, '5': 9, '10': 'frameworkVer'},
    {'1': 'swan_game_ver', '3': 44, '4': 1, '5': 9, '10': 'swanGameVer'},
    {'1': 'active_timestamp', '3': 49, '4': 1, '5': 3, '10': 'activeTimestamp'},
    {
      '1': 'first_install_time',
      '3': 50,
      '4': 1,
      '5': 3,
      '10': 'firstInstallTime'
    },
    {'1': 'last_update_time', '3': 51, '4': 1, '5': 3, '10': 'lastUpdateTime'},
    {'1': 'event_day', '3': 53, '4': 1, '5': 9, '10': 'eventDay'},
    {'1': 'android_id', '3': 54, '4': 1, '5': 9, '10': 'androidId'},
    {'1': 'cmode', '3': 55, '4': 1, '5': 5, '10': 'cmode'},
    {
      '1': 'start_scheme',
      '3': 56,
      '4': 1,
      '5': 9,
      '9': 11,
      '10': 'startScheme',
      '17': true
    },
    {'1': 'start_type', '3': 57, '4': 1, '5': 5, '10': 'startType'},
    {'1': 'extra', '3': 61, '4': 1, '5': 9, '9': 12, '10': 'extra', '17': true},
    {'1': 'user_agent', '3': 62, '4': 1, '5': 9, '10': 'userAgent'},
    {
      '1': 'personalized_rec_switch',
      '3': 63,
      '4': 1,
      '5': 5,
      '10': 'personalizedRecSwitch'
    },
    {'1': 'device_score', '3': 70, '4': 1, '5': 9, '10': 'deviceScore'},
  ],
  '8': [
    {'1': '_BDUSS'},
    {'1': '_tbs'},
    {'1': '_sign'},
    {'1': '_applist'},
    {'1': '_stoken'},
    {'1': '_z_id'},
    {'1': '_cuid_gid'},
    {'1': '_oaid'},
    {'1': '_sample_id'},
    {'1': '_q_type'},
    {'1': '_is_teenager'},
    {'1': '_start_scheme'},
    {'1': '_extra'},
  ],
};

/// Descriptor for `CommonRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commonRequestDescriptor = $convert.base64Decode(
    'Cg1Db21tb25SZXF1ZXN0EiAKDF9jbGllbnRfdHlwZRgBIAEoBVIKQ2xpZW50VHlwZRImCg9fY2'
    'xpZW50X3ZlcnNpb24YAiABKAlSDUNsaWVudFZlcnNpb24SHAoKX2NsaWVudF9pZBgDIAEoCVII'
    'Q2xpZW50SWQSHgoLX3Bob25lX2ltZWkYBSABKAlSCVBob25lSW1laRISCgRmcm9tGAYgASgJUg'
    'Rmcm9tEhIKBGN1aWQYByABKAlSBGN1aWQSHQoKX3RpbWVzdGFtcBgIIAEoA1IJVGltZXN0YW1w'
    'EhQKBW1vZGVsGAkgASgJUgVtb2RlbBIZCgVCRFVTUxgKIAEoCUgAUgVCRFVTU4gBARIVCgN0Yn'
    'MYCyABKAlIAVIDdGJziAEBEhkKCG5ldF90eXBlGAwgASgFUgduZXRUeXBlEiQKDl9waG9uZV9u'
    'ZXdpbWVpGA4gASgJUgxQaG9uZU5ld2ltZWkSFwoEc2lnbhgXIAEoCUgCUgRzaWduiAEBEhoKCH'
    'B2ZXJzaW9uGBggASgJUghwdmVyc2lvbhIeCgtfb3NfdmVyc2lvbhgZIAEoCVIJT3NWZXJzaW9u'
    'EhQKBWJyYW5kGBogASgJUgVicmFuZBIoChBsZWdvX2xpYl92ZXJzaW9uGBwgASgJUg5sZWdvTG'
    'liVmVyc2lvbhIdCgdhcHBsaXN0GB0gASgJSANSB2FwcGxpc3SIAQESGwoGc3Rva2VuGB4gASgJ'
    'SARSBnN0b2tlbogBARIWCgR6X2lkGB8gASgJSAVSA3pJZIgBARIhCgxjdWlkX2dhbGF4eTIYIC'
    'ABKAlSC2N1aWRHYWxheHkyEh4KCGN1aWRfZ2lkGCEgASgJSAZSB2N1aWRHaWSIAQESFwoEb2Fp'
    'ZBgiIAEoCUgHUgRvYWlkiAEBEhUKBmMzX2FpZBgjIAEoCVIFYzNBaWQSIAoJc2FtcGxlX2lkGC'
    'QgASgJSAhSCHNhbXBsZUlkiAEBEhMKBXNjcl93GCUgASgFUgRzY3JXEhMKBXNjcl9oGCYgASgF'
    'UgRzY3JIEhcKB3Njcl9kaXAYJyABKAFSBnNjckRpcBIaCgZxX3R5cGUYKCABKAVICVIFcVR5cG'
    'WIAQESJAoLaXNfdGVlbmFnZXIYKSABKAVIClIKaXNUZWVuYWdlcogBARIXCgdzZGtfdmVyGCog'
    'ASgJUgZzZGtWZXISIwoNZnJhbWV3b3JrX3ZlchgrIAEoCVIMZnJhbWV3b3JrVmVyEiIKDXN3YW'
    '5fZ2FtZV92ZXIYLCABKAlSC3N3YW5HYW1lVmVyEikKEGFjdGl2ZV90aW1lc3RhbXAYMSABKANS'
    'D2FjdGl2ZVRpbWVzdGFtcBIsChJmaXJzdF9pbnN0YWxsX3RpbWUYMiABKANSEGZpcnN0SW5zdG'
    'FsbFRpbWUSKAoQbGFzdF91cGRhdGVfdGltZRgzIAEoA1IObGFzdFVwZGF0ZVRpbWUSGwoJZXZl'
    'bnRfZGF5GDUgASgJUghldmVudERheRIdCgphbmRyb2lkX2lkGDYgASgJUglhbmRyb2lkSWQSFA'
    'oFY21vZGUYNyABKAVSBWNtb2RlEiYKDHN0YXJ0X3NjaGVtZRg4IAEoCUgLUgtzdGFydFNjaGVt'
    'ZYgBARIdCgpzdGFydF90eXBlGDkgASgFUglzdGFydFR5cGUSGQoFZXh0cmEYPSABKAlIDFIFZX'
    'h0cmGIAQESHQoKdXNlcl9hZ2VudBg+IAEoCVIJdXNlckFnZW50EjYKF3BlcnNvbmFsaXplZF9y'
    'ZWNfc3dpdGNoGD8gASgFUhVwZXJzb25hbGl6ZWRSZWNTd2l0Y2gSIQoMZGV2aWNlX3Njb3JlGE'
    'YgASgJUgtkZXZpY2VTY29yZUIICgZfQkRVU1NCBgoEX3Ric0IHCgVfc2lnbkIKCghfYXBwbGlz'
    'dEIJCgdfc3Rva2VuQgcKBV96X2lkQgsKCV9jdWlkX2dpZEIHCgVfb2FpZEIMCgpfc2FtcGxlX2'
    'lkQgkKB19xX3R5cGVCDgoMX2lzX3RlZW5hZ2VyQg8KDV9zdGFydF9zY2hlbWVCCAoGX2V4dHJh');
