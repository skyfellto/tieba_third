// This is a generated file - do not edit.
//
// Generated from FrsPage/SignUser.proto.

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

@$core.Deprecated('Use signUserDescriptor instead')
const SignUser$json = {
  '1': 'SignUser',
  '2': [
    {'1': 'user_id', '3': 1, '4': 1, '5': 3, '10': 'userId'},
    {'1': 'is_sign_in', '3': 2, '4': 1, '5': 5, '10': 'isSignIn'},
    {'1': 'user_sign_rank', '3': 3, '4': 1, '5': 5, '10': 'userSignRank'},
    {'1': 'sign_time', '3': 4, '4': 1, '5': 5, '10': 'signTime'},
    {'1': 'cont_sign_num', '3': 5, '4': 1, '5': 5, '10': 'contSignNum'},
    {
      '1': 'cout_total_sign_num',
      '3': 6,
      '4': 1,
      '5': 5,
      '10': 'coutTotalSignNum'
    },
    {'1': 'is_org_disabled', '3': 7, '4': 1, '5': 5, '10': 'isOrgDisabled'},
    {'1': 'c_sign_num', '3': 8, '4': 1, '5': 5, '10': 'cSignNum'},
    {'1': 'hun_sign_num', '3': 9, '4': 1, '5': 5, '10': 'hunSignNum'},
    {'1': 'total_resign_num', '3': 10, '4': 1, '5': 5, '10': 'totalResignNum'},
    {'1': 'miss_sign_num', '3': 11, '4': 1, '5': 5, '10': 'missSignNum'},
  ],
};

/// Descriptor for `SignUser`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List signUserDescriptor = $convert.base64Decode(
    'CghTaWduVXNlchIXCgd1c2VyX2lkGAEgASgDUgZ1c2VySWQSHAoKaXNfc2lnbl9pbhgCIAEoBV'
    'IIaXNTaWduSW4SJAoOdXNlcl9zaWduX3JhbmsYAyABKAVSDHVzZXJTaWduUmFuaxIbCglzaWdu'
    'X3RpbWUYBCABKAVSCHNpZ25UaW1lEiIKDWNvbnRfc2lnbl9udW0YBSABKAVSC2NvbnRTaWduTn'
    'VtEi0KE2NvdXRfdG90YWxfc2lnbl9udW0YBiABKAVSEGNvdXRUb3RhbFNpZ25OdW0SJgoPaXNf'
    'b3JnX2Rpc2FibGVkGAcgASgFUg1pc09yZ0Rpc2FibGVkEhwKCmNfc2lnbl9udW0YCCABKAVSCG'
    'NTaWduTnVtEiAKDGh1bl9zaWduX251bRgJIAEoBVIKaHVuU2lnbk51bRIoChB0b3RhbF9yZXNp'
    'Z25fbnVtGAogASgFUg50b3RhbFJlc2lnbk51bRIiCg1taXNzX3NpZ25fbnVtGAsgASgFUgttaX'
    'NzU2lnbk51bQ==');
