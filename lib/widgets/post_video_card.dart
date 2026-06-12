import 'package:flutter/material.dart';
import '../pages/video_player_page.dart';

/// 视频卡片组件
///
/// 显示封面缩略图 + 居中播放按钮，点击启动全屏视频播放。
class PostVideoCard extends StatelessWidget {
  final String videoUrl;
  final String? thumbnailUrl;
  final String? bsize; // 格式 "width,height"

  const PostVideoCard({
    super.key,
    required this.videoUrl,
    this.thumbnailUrl,
    this.bsize,
  });

  /// 从 bsize 字串解析宽高比，如 "640,360" → 16:9
  double? _parseAspectRatio() {
    if (bsize == null || bsize!.isEmpty) return null;
    final parts = bsize!.split(',');
    if (parts.length != 2) return null;
    final w = double.tryParse(parts[0].trim());
    final h = double.tryParse(parts[1].trim());
    if (w == null || h == null || h == 0) return null;
    return w / h;
  }

  @override
  Widget build(BuildContext context) {
    final aspectRatio = _parseAspectRatio() ?? 16.0 / 9.0;
    final borderRadius = BorderRadius.circular(8);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: GestureDetector(
        onTap: () => VideoPlayerPage.show(
          context,
          videoUrl,
          thumbnailUrl: thumbnailUrl,
        ),
        child: ClipRRect(
          borderRadius: borderRadius,
          child: AspectRatio(
            aspectRatio: aspectRatio,
            child: Stack(
              alignment: Alignment.center,
              children: [
                // 封面缩略图
                if (thumbnailUrl != null && thumbnailUrl!.isNotEmpty)
                  Image.network(
                    thumbnailUrl!,
                    width: double.infinity,
                    height: double.infinity,
                    fit: BoxFit.cover,
                    errorBuilder: (_, _, _) => Container(
                      color: Colors.grey[300],
                      child: const Icon(Icons.broken_image, color: Colors.grey),
                    ),
                    loadingBuilder: (_, child, progress) {
                      if (progress == null) return child;
                      return Container(
                        color: Colors.grey[200],
                        child: const Center(
                          child: CircularProgressIndicator(strokeWidth: 2),
                        ),
                      );
                    },
                  )
                else
                  Container(
                    color: Colors.grey[300],
                    child: const Icon(Icons.movie, color: Colors.grey),
                  ),

                // 播放按钮覆盖层
                Container(
                  width: 52,
                  height: 52,
                  decoration: BoxDecoration(
                    color: Colors.black.withValues(alpha: 0.45),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.play_arrow,
                    color: Colors.white,
                    size: 32,
                  ),
                ),

                // 视频时长角标（如果有 then 可展示，暂时预留）
              ],
            ),
          ),
        ),
      ),
    );
  }
}
