import 'dart:math';
import 'package:flutter/material.dart';
import 'image_strip_with_badge.dart';
import 'image_viewer.dart';

/// 帖子图片行布局（横向滑动 / 网格排列）
class PostImageRow extends StatelessWidget {
  final List<String> images;
  final List<String> allImages;
  final bool useGridLayout;
  final double imageHeight;

  const PostImageRow({
    super.key,
    required this.images,
    this.allImages = const [],
    this.useGridLayout = false,
    this.imageHeight = 200,
  });

  @override
  Widget build(BuildContext context) {
    if (images.isEmpty) return const SizedBox.shrink();
    final all = allImages.isEmpty ? images : allImages;

    if (useGridLayout) {
      return _buildGridImages(context, images, all);
    }
    return ImageStripWithBadge(
      images: images,
      allImages: all,
      imageHeight: imageHeight,
    );
  }

  Widget _buildGridImages(BuildContext context, List<String> images, List<String> allImages) {
    const columns = 3;
    final rows = (images.length / columns).ceil();
    final screenWidth = MediaQuery.of(context).size.width - 24;
    const spacing = 4.0;
    final imageWidth = (screenWidth - spacing * (columns - 1)) / columns;

    return Column(
      children: List.generate(rows, (row) {
        final start = row * columns;
        final end = min(start + columns, images.length);
        return Padding(
          padding: EdgeInsets.only(bottom: row < rows - 1 ? spacing : 0),
          child: Row(
            children: List.generate(end - start, (i) {
              final idx = start + i;
              return Padding(
                padding: EdgeInsets.only(
                  right: i < end - start - 1 ? spacing : 0,
                ),
                child: GestureDetector(
                  onTap: () => ImageViewer.show(
                    context,
                    allImages,
                    index: allImages.indexOf(images[idx]),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(6),
                    child: Image.network(
                      images[idx],
                      width: imageWidth,
                      height: imageWidth,
                      fit: BoxFit.cover,
                      errorBuilder: (_, _, _) => Container(
                        width: imageWidth,
                        height: imageWidth,
                        color: Colors.grey[200],
                        child: Icon(
                          Icons.broken_image,
                          color: Colors.grey[400],
                        ),
                      ),
                    ),
                  ),
                ),
              );
            }),
          ),
        );
      }),
    );
  }
}
