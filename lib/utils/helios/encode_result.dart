import 'dart:typed_data';

/// 与 tiebalite EncodeResult.java 一致的位数组（固定 40-bit 优化实现）
///
/// 内部使用 5 字节存储，操作均为原位运算。
class EncodeResult {
  // 5 字节 = 40 bit
  static const int _byteLen = 5;
  final Uint8List _bytes;

  EncodeResult() : _bytes = Uint8List(_byteLen);

  /// 从现有字节数组创建（共享引用不变）
  EncodeResult.fromBytes(this._bytes);

  /// 从 long[] 创建（EncodeResult.a(long[]) 等价）
  /// 小端序提取每个 long 的所有字节，最多 5 字节
  factory EncodeResult.fromLongs(List<int> longs) {
    final bytes = Uint8List(_byteLen);
    int bitPos = 0;
    for (final v in longs) {
      for (int j = 0; j < 64 && bitPos < _byteLen * 8; j++, bitPos++) {
        if (((v >> j) & 1) != 0) {
          bytes[bitPos >> 3] |= 1 << (bitPos & 7);
        }
      }
    }
    return EncodeResult.fromBytes(bytes);
  }

  /// 获取字节表示（5 字节）
  Uint8List getBytes() => Uint8List.fromList(_bytes);

  /// 获取某一位（d(int)）
  bool getBit(int index) {
    return (_bytes[index >> 3] & (1 << (index & 7))) != 0;
  }

  /// 设置某一位（a(int, boolean)）
  void setBit(int index, bool value) {
    if (value) {
      _bytes[index >> 3] |= 1 << (index & 7);
    } else {
      _bytes[index >> 3] &= ~(1 << (index & 7));
    }
  }

  /// 翻转某一位（a(int)）
  void toggleBit(int index) {
    _bytes[index >> 3] ^= 1 << (index & 7);
  }

  /// 设置区间 [from, to) 所有位为 value（a(int, int, boolean)）
  void setRange(int from, int to, bool value) {
    for (int i = from; i < to; i++) {
      setBit(i, value);
    }
  }

  /// 提取子区间 [from, to)（d(int, int)）
  EncodeResult subrange(int from, int to) {
    final result = EncodeResult();
    final len = to - from;
    for (int i = 0; i < len; i++) {
      if (getBit(from + i)) {
        result.setBit(i, true);
      }
    }
    return result;
  }

  /// 按位 AND（b(EncodeResult)）
  void andWith(EncodeResult other) {
    for (int i = 0; i < _byteLen; i++) {
      _bytes[i] &= other._bytes[i];
    }
  }

  /// 按位 OR（c(EncodeResult)）
  void orWith(EncodeResult other) {
    for (int i = 0; i < _byteLen; i++) {
      _bytes[i] |= other._bytes[i];
    }
  }

  /// 按位 AND_NOT — (this & ~other)（e(EncodeResult)）
  void andNotWith(EncodeResult other) {
    for (int i = 0; i < _byteLen; i++) {
      _bytes[i] &= ~other._bytes[i];
    }
  }

  /// 按位 XOR（d(EncodeResult)）
  void xorWith(EncodeResult other) {
    for (int i = 0; i < _byteLen; i++) {
      _bytes[i] ^= other._bytes[i];
    }
  }

  @override
  int get hashCode {
    int h = 1234;
    for (int i = 0; i < _byteLen; i++) {
      h ^= _bytes[i] * (i + 1);
    }
    return h;
  }

  @override
  bool operator ==(Object other) {
    if (other is! EncodeResult) return false;
    for (int i = 0; i < _byteLen; i++) {
      if (_bytes[i] != other._bytes[i]) return false;
    }
    return true;
  }

  @override
  String toString() {
    final sb = StringBuffer('{');
    bool first = true;
    for (int i = 0; i < _byteLen * 8; i++) {
      if (getBit(i)) {
        if (!first) sb.write(', ');
        sb.write(i);
        first = false;
      }
    }
    sb.write('}');
    return sb.toString();
  }
}
