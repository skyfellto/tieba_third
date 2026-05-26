/// RC442 — 定制版 RC4（与 tiebalite RC442.kt 一致）
class RC442 {
  int x = 0;
  int y = 0;
  final List<int> m = List<int>.generate(256, (i) => i & 0xFF);

  void setup(List<int> key) {
    int j = 0, k = 0;
    final keyLen = key.length;
    for (int i = 0; i < 256; i++) {
      if (k >= keyLen) k = 0;
      j = (j + m[i] + key[k]) & 0xFF;
      final tmp = m[i];
      m[i] = m[j];
      m[j] = tmp;
      k++;
    }
  }

  List<int> crypt(List<int> src) {
    final dst = List<int>.filled(src.length, 0);
    for (int i = 0; i < src.length; i++) {
      x = (x + 1) & 0xFF;
      final a = m[x];
      y = (y + a) & 0xFF;
      final b = m[y];
      m[x] = b;
      m[y] = a;
      dst[i] = (src[i] ^ m[(a + b) & 0xFF]) ^ 0x2A;
    }
    return dst;
  }
}

List<int> rc442Crypt(List<int> src, List<int> key) {
  final rc = RC442();
  rc.setup(key);
  return rc.crypt(src);
}