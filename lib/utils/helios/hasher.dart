import 'dart:typed_data';
import 'encode_result.dart';
import 'xxhash.dart';
import 'byte_array_utils.dart';

// ===== IEncoder =====

abstract class IEncoder {
  final int length = 32;
  int start = 0;
  int flag = 0;

  IEncoder();

  EncodeResult encode(Uint8List bytes, int off, int len);
}

// ===== CRC32Encoder =====

class CRC32Encoder extends IEncoder {
  CRC32Encoder(int start, int flag) {
    this.start = start;
    this.flag = flag;
  }

  @override
  EncodeResult encode(Uint8List bytes, int off, int len) {
    int crc = _crc32(bytes, off, len);
    return EncodeResult.fromLongs([crc & 0xFFFFFFFF]);
  }

  /// 标准 PKZIP CRC-32
  static int _crc32(Uint8List data, int off, int len) {
    const poly = 0xEDB88320;
    int crc = 0xFFFFFFFF;
    for (int i = off; i < off + len && i < data.length; i++) {
      crc ^= data[i];
      for (int j = 0; j < 8; j++) {
        if ((crc & 1) != 0) {
          crc = (crc >>> 1) ^ poly;
        } else {
          crc >>>= 1;
        }
      }
    }
    return (crc ^ 0xFFFFFFFF) & 0xFFFFFFFF;
  }
}

// ===== XXHashEncoder =====

class XXHashEncoder extends IEncoder {
  XXHashEncoder(int start, int flag) {
    this.start = start;
    this.flag = flag;
  }

  @override
  EncodeResult encode(Uint8List bytes, int off, int len) {
    final xx = XXHash();
    xx.update(bytes, off, len);
    return EncodeResult.fromLongs([xx.getValue()]);
  }
}

// ===== HashResult =====

class HashResult {
  static const int bits = 40;
  final EncodeResult _result;

  HashResult() : _result = EncodeResult() {
    _result.setRange(0, bits, true);
  }

  void update(EncodeResult input, int start, int length, int flag) {
    final slice = _result.subrange(start, start + length);
    switch (flag) {
      case 0:
        slice.andWith(input);
        break;
      case 2:
        slice.andNotWith(input);
        break;
      case 3:
        slice.orWith(input);
        break;
      case 1:
      default:
        slice.xorWith(input);
        break;
    }
    for (int i = 0; i < length; i++) {
      _result.setBit(start + i, slice.getBit(i));
    }
  }

  Uint8List getValue() {
    return _result.getBytes();
  }
}

// ===== Hasher =====

final _encoders = <IEncoder>[
  CRC32Encoder(8, 0),
  XXHashEncoder(0, 1),
  XXHashEncoder(1, 1),
  CRC32Encoder(7, 1),
];

Uint8List heliosHash(Uint8List input) {
  final result = HashResult();
  var newBytes = ByteArrayUtils.copyArray(input, input.length + (_encoders.length + 1) * 5);
  ByteArrayUtils.copyInto(newBytes, result.getValue(), input.length);

  for (int i = 0; i < _encoders.length; i++) {
    final encoder = _encoders[i];
    final len = input.length + (i + 1) * 5;
    final encoded = encoder.encode(newBytes, 0, len);
    result.update(encoded, encoder.start, encoder.length, encoder.flag);
    ByteArrayUtils.copyInto(newBytes, result.getValue(), len);
  }

  return result.getValue();
}
