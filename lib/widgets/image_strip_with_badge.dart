import 'package:flutter/material.dart';
import 'image_viewer.dart';

/// 图片横向滑动条（超过2张在右下角显示剩余数量）
class ImageStripWithBadge extends StatefulWidget {
  final List<String> images;
  final List<String> allImages;
  final double imageHeight;

  const ImageStripWithBadge({
    super.key,
    required this.images,
    required this.allImages,
    this.imageHeight = 200,
  });

  @override
  State<ImageStripWithBadge> createState() => _ImageStripWithBadgeState();
}

class _ImageStripWithBadgeState extends State<ImageStripWithBadge> {
  final ScrollController _scrollController = ScrollController();
  bool _showBadge = true;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    final pos = _scrollController.position.pixels;
    if (pos <= 0 != _showBadge) {
      setState(() => _showBadge = pos <= 0);
    }
  }

  @override
  Widget build(BuildContext context) {
    final images = widget.images;
    final allImages = widget.allImages;
    final imageHeight = widget.imageHeight;
    final showBadge = _showBadge && images.length > 2;

    return SizedBox(
      height: imageHeight,
      child: Stack(
        children: [
          ListView.builder(
            scrollDirection: Axis.horizontal,
            controller: _scrollController,
            itemCount: images.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () => ImageViewer.show(
                  context,
                  allImages,
                  index: allImages.indexOf(images[index]),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    images[index],
                    width: imageHeight,
                    height: imageHeight,
                    fit: BoxFit.cover,
                    errorBuilder: (_, _, _) => Container(
                      width: imageHeight,
                      height: imageHeight,
                      color: Colors.grey[200],
                      child: Icon(Icons.broken_image, color: Colors.grey[400]),
                    ),
                  ),
                ),
              );
            },
          ),
          if (showBadge)
            Positioned(
              bottom: 8,
              right: 8,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.black.withValues(alpha: 0.55),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(
                      Icons.photo_library_outlined,
                      color: Colors.white,
                      size: 16,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      '+${images.length - 2}',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
