/// 与 tiebalite Base32.kt 完全一致的 Base32 编码
class Base32 {
  static const String _alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567=";

  static String encode(List<int> bytes) {
    final buf = StringBuffer();
    for (int i = 0; i < (bytes.length + 4) ~/ 5; i++) {
      final shorts = List<int>.filled(5, 0);
      final ints = List<int>.filled(8, 0);
      int i2 = 5;
      for (int i1 = 0; i1 < 5; i1++) {
        if (i * 5 + i1 < bytes.length) {
          shorts[i1] = bytes[i * 5 + i1] & 0xFF;
        } else {
          shorts[i1] = 0;
          i2--;
        }
      }
      ints[0] = (shorts[0] >> 3) & 31;
      ints[1] = ((shorts[0] & 7) << 2) | ((shorts[1] >> 6) & 3);
      ints[2] = (shorts[1] >> 1) & 31;
      ints[3] = ((shorts[1] & 1) << 4) | ((shorts[2] >> 4) & 15);
      ints[4] = ((shorts[2] & 15) << 1) | ((shorts[3] >> 7) & 1);
      ints[5] = (shorts[3] >> 2) & 31;
      ints[6] = ((shorts[3] & 3) << 3) | ((shorts[4] >> 5) & 7);
      ints[7] = shorts[4] & 31;
      for (int i1 = 0; i1 < ints.length - _transformInt(i2); i1++) {
        buf.write(_alphabet[ints[i1]]);
      }
    }
    return buf.toString();
  }

  static int _transformInt(int i) {
    switch (i) {
      case 1:
        return 6;
      case 2:
        return 4;
      case 3:
        return 3;
      case 4:
        return 1;
      case 5:
        return 0;
      default:
        return -1;
    }
  }
}
