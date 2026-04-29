// This is a generated file - do not edit.
//
// Generated from SignatureData.proto.

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

@$core.Deprecated('Use signatureDataDescriptor instead')
const SignatureData$json = {
  '1': 'SignatureData',
  '2': [
    {'1': 'signature_id', '3': 1, '4': 1, '5': 5, '10': 'signatureId'},
    {'1': 'fontKeyName', '3': 2, '4': 1, '5': 9, '10': 'fontKeyName'},
    {'1': 'fontColor', '3': 3, '4': 1, '5': 9, '10': 'fontColor'},
    {
      '1': 'content',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.tieba.SignatureContent',
      '10': 'content'
    },
  ],
};

/// Descriptor for `SignatureData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List signatureDataDescriptor = $convert.base64Decode(
    'Cg1TaWduYXR1cmVEYXRhEiEKDHNpZ25hdHVyZV9pZBgBIAEoBVILc2lnbmF0dXJlSWQSIAoLZm'
    '9udEtleU5hbWUYAiABKAlSC2ZvbnRLZXlOYW1lEhwKCWZvbnRDb2xvchgDIAEoCVIJZm9udENv'
    'bG9yEjEKB2NvbnRlbnQYBCADKAsyFy50aWViYS5TaWduYXR1cmVDb250ZW50Ugdjb250ZW50');
