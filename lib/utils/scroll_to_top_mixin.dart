import 'package:flutter/material.dart';

/// Scroll-to-top 行为 mixin，提供回顶按钮显示/隐藏与动画控制。
///
/// 需要混入的 State 持有 [ScrollController]，并在 dispose 前调用 [disposeScrollToTop]。
mixin ScrollToTopMixin<T extends StatefulWidget> on State<T> {
  final ScrollController scrollController = ScrollController();
  bool showBackToTop = false;
  double lastScrollPosition = 0;
  bool isAnimatingToTop = false;

  /// 处理滚动通知，更新按钮可见性与触底检测。
  /// 返回 false 以保持通知冒泡。
  bool onScrollNotification(ScrollNotification notification) {
    if (isAnimatingToTop) return false;

    final currentScroll = notification.metrics.pixels;

    if (notification is ScrollUpdateNotification) {
      if (currentScroll < lastScrollPosition && currentScroll > 100) {
        if (!showBackToTop) setState(() => showBackToTop = true);
      } else if (currentScroll > lastScrollPosition) {
        if (showBackToTop) setState(() => showBackToTop = false);
      }
      lastScrollPosition = currentScroll;
    }
    return false;
  }

  /// 执行回顶动画
  void scrollToTop() {
    isAnimatingToTop = true;
    if (showBackToTop) setState(() => showBackToTop = false);
    scrollController.animateTo(
      0,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOutCubic,
    );
    Future.delayed(const Duration(milliseconds: 350), () {
      if (mounted) {
        isAnimatingToTop = false;
        lastScrollPosition = 0;
      }
    });
  }

  /// 在 State.dispose 中调用
  void disposeScrollToTop() {
    scrollController.dispose();
  }
}