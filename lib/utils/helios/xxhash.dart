/// 与 tiebalite XXHash.java 一致的 XXHash 实现
///
/// 精确模拟 Java 32-bit 有符号整数溢出。
class XXHash {
  final List<int> _state = List<int>.filled(4, 0);
  final List<int> _buffer = List<int>.filled(16, 0);
  final int _seed;
  int _totalLen = 0;
  int _bufferLen = 0;

  XXHash([this._seed = 0]) {
    _init();
  }

  // ---- 32-bit 有符号整数运算辅助 ----

  /// 掩码到 32-bit（取低 32 位）
  static int _u32(int x) => x & 0xFFFFFFFF;

  /// 32-bit 循环左移
  static int _rotl32(int x, int r) {
    return ((x << r) | (x >>> (32 - r))) & 0xFFFFFFFF;
  }

  /// 将 unsigned 32-bit 转为 signed 32-bit
  static int _s32(int x) => x >= 0x80000000 ? x - 0x100000000 : x;

  /// 32-bit 有符号乘法（模拟 Java int 溢出）
  static int _mul32(int a, int b) {
    return _u32(_s32(a) * _s32(b));
  }

  /// 32-bit 加法 + 乘法组合：Java int 语义
  /// 对应 Java: a + b * c
  static int _addMul32(int a, int b, int c) {
    return _u32(a + _s32(_u32(_s32(b) * _s32(c))));
  }

  /// 小端读 4 字节
  static int _read32LE(List<int> bytes, int offset) {
    int result = 0;
    for (int i = 0; i < 4; i++) {
      result |= (bytes[offset + i] & 0xFF) << (i * 8);
    }
    return result & 0xFFFFFFFF;
  }

  // ---- 初始化状态 ----

  void _init() {
    // Java: this.i[0] = this.k - 1640531535 - 2048144777;
    // 模拟 32-bit 有符号分步溢出
    _state[0] = _u32(_u32(_seed - 1640531535) - 2048144777);
    // Java: this.i[1] = this.k - 2048144777;
    _state[1] = _u32(_seed - 2048144777);
    // Java: this.i[2] = this.k;
    _state[2] = _u32(_seed);
    // Java: this.i[3] = this.k + 1640531535;
    _state[3] = _u32(_seed + 1640531535);
  }

  // ---- 16 字节轮 ----

  void _round(List<int> data, int offset) {
    int v0 = _state[0];
    int v1 = _state[1];
    int v2 = _state[2];
    int v3 = _state[3];

    // Java: var3 = Integer.rotateLeft(var3 + a(var1, var2) * -2048144777, 13);
    v0 = _rotl32(_addMul32(v0, _read32LE(data, offset), -2048144777), 13);
    v1 = _rotl32(_addMul32(v1, _read32LE(data, offset + 4), -2048144777), 13);
    v2 = _rotl32(_addMul32(v2, _read32LE(data, offset + 8), -2048144777), 13);
    v3 = _rotl32(_addMul32(v3, _read32LE(data, offset + 12), -2048144777), 13);

    // var3 = var3 * -1640531535;
    _state[0] = _mul32(v0, -1640531535);
    _state[1] = _mul32(v1, -1640531535);
    _state[2] = _mul32(v2, -1640531535);
    _state[3] = _mul32(v3, -1640531535);
    _bufferLen = 0;
  }

  // ---- update ----

  void update(List<int> data, int offset, int length) {
    if (length <= 0) return;
    _totalLen += length;
    final srcEnd = offset + length;

    if (_bufferLen + length < 16) {
      _buffer.setRange(_bufferLen, _bufferLen + length, data, offset);
      _bufferLen += length;
      return;
    }

    int srcPos = offset;
    if (_bufferLen > 0) {
      srcPos = 16 - _bufferLen;
      _buffer.setRange(_bufferLen, 16, data, offset);
      _round(_buffer, 0);
      srcPos += offset;
    }

    while (srcPos <= srcEnd - 16) {
      _round(data, srcPos);
      srcPos += 16;
    }

    if (srcPos < srcEnd) {
      _bufferLen = srcEnd - srcPos;
      _buffer.setRange(0, _bufferLen, data, srcPos);
    }
  }

  // ---- getValue ----

  int getValue() {
    int h;
    if (_totalLen > 16) {
      h = _u32(
        _rotl32(_state[0], 1) +
            _rotl32(_state[1], 7) +
            _rotl32(_state[2], 12) +
            _rotl32(_state[3], 18),
      );
    } else {
      h = _u32(_state[2] + 0x165667B1);
    }

    h = _u32(_totalLen + h);
    int pos = 0;

    while (pos <= _bufferLen - 4) {
      h = _mul32(
        _rotl32(_u32(h + _mul32(_read32LE(_buffer, pos), -1028477379)), 17),
        668265263,
      );
      pos += 4;
    }

    while (pos < _bufferLen) {
      h = _mul32(
        _rotl32(_u32((_buffer[pos] & 0xFF) * 0x165667B1 + h), 11),
        -1640531535,
      );
      pos++;
    }

    //  final mixing
    int result32 = h ^ (h >>> 15);
    result32 = _mul32(result32, -2048144777);
    result32 = result32 ^ (result32 >>> 13);
    result32 = _mul32(result32, -1028477379);
    return result32 ^ (result32 >>> 16);
  }
}
