import 'package:flutter/material.dart';

/// 全屏图片查看器（支持多张左右滑动 + 捏合缩放）
class ImageViewer extends StatefulWidget {
  final List<String> images;
  final int initialIndex;

  const ImageViewer({
    super.key,
    required this.images,
    this.initialIndex = 0,
  });

  static void show(BuildContext context, List<String> images, {int index = 0}) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => ImageViewer(images: images, initialIndex: index),
      ),
    );
  }

  @override
  State<ImageViewer> createState() => _ImageViewerState();
}

class _ImageViewerState extends State<ImageViewer> {
  late PageController _pageController;
  late int _currentIndex;
  int _pointerCount = 0;

  bool get _isScaling => _pointerCount >= 2;

  @override
  void initState() {
    super.initState();
    _currentIndex = widget.initialIndex;
    _pageController = PageController(initialPage: widget.initialIndex)
      ..addListener(() {
        final page = _pageController.page?.round();
        if (page != null && page != _currentIndex) {
          setState(() => _currentIndex = page);
        }
      });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
        title: Text(
          "${_currentIndex + 1} / ${widget.images.length}",
          style: const TextStyle(color: Colors.white, fontSize: 16),
        ),
        centerTitle: true,
      ),
      body: PageView.builder(
        controller: _pageController,
        physics: _isScaling
            ? const NeverScrollableScrollPhysics()
            : const PageScrollPhysics(),
        itemCount: widget.images.length,
        itemBuilder: (context, index) => Listener(
          onPointerDown: (_) {
            setState(() => _pointerCount++);
          },
          onPointerUp: (_) {
            setState(() => _pointerCount--);
          },
          child: InteractiveViewer(
            maxScale: 4,
            child: Center(
              child: Image.network(
                widget.images[index],
                fit: BoxFit.contain,
                errorBuilder: (_, _, _) => const Icon(Icons.broken_image,
                    color: Colors.white54, size: 64),
                loadingBuilder: (_, child, progress) {
                  if (progress == null) return child;
                  return const Center(child: CircularProgressIndicator());
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
