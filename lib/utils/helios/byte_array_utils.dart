import 'dart:typed_data';

/// 与 tiebalite ByteArrayUtils.java 一致的字节数组工具
class ByteArrayUtils {
  /// 拷贝 src 到新数组，长度为 newLength（若 newLength > src.length，多余位置零）
  static Uint8List copyArray(Uint8List src, int newLength) {
    final dest = Uint8List(newLength);
    final copyLen = src.length < newLength ? src.length : newLength;
    dest.setRange(0, copyLen, src);
    return dest;
  }

  /// 将 src 拷贝到 dest 的 destPos 处
  static void copyInto(Uint8List dest, Uint8List src, int destPos) {
    dest.setRange(destPos, destPos + src.length, src);
  }
}
