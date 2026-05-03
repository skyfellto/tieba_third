import 'dart:math';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:share_plus/share_plus.dart';
import '../generated/PbPage/PbPageResponseData.pb.dart';
import '../generated/Post.pb.dart';
import '../generated/PbContent.pb.dart';
import '../generated/User.pb.dart' as usermodel;
import '../generated/SubPostList.pb.dart';
import '../network/tieba_api.dart';
import '../utils/user_manager.dart';
import '../widgets/image_viewer.dart';

class PostDetailPage extends StatefulWidget {
  final String tid;
  const PostDetailPage({super.key, required this.tid});

  @override
  State<PostDetailPage> createState() => _PostDetailPageState();
}

class _PostDetailPageState extends State<PostDetailPage> {
  PbPageResponseData? _data;
  bool _isLoading = true;
  String? _error;

  final ScrollController _scrollController = ScrollController();
  bool _showBackToTop = false;
  double _lastScrollPosition = 0;
  bool _isAnimatingToTop = false;

  bool _seeLz = false;
  int _sortType = 0; // 0=正序, 1=倒序

  // 图片排列模式（预留接口，后续可通过设置切换）
  static bool useGridImageLayout = false;

  // 分页
  int _currentPage = 1;
  bool _loadingMore = false;
  bool _hasMore = true;
  int _totalPages = 0;
  int _descRequestCount = 0;
  bool _descAutoLoading = false;

  // 已点赞的回复 pid 集合
  final Set<String> _likedReplySet = {};

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
    _loadData(refresh: true);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  bool _atBottom = false;

  void _onScroll() {
    if (_isAnimatingToTop || _loadingMore) return;
    final current = _scrollController.position.pixels;
    final maxScroll = _scrollController.position.maxScrollExtent;

    // 到底部加载更多
    if (current >= maxScroll - 100) {
      if (_atBottom) {
        _atBottom = false;
        _loadData(refresh: false);
      } else {
        _atBottom = true;
      }
    } else {
      _atBottom = false;
    }

    // 回顶按钮
    if (current < _lastScrollPosition && current > 100) {
      if (!_showBackToTop) setState(() => _showBackToTop = true);
    } else if (current > _lastScrollPosition) {
      if (_showBackToTop) setState(() => _showBackToTop = false);
    }
    _lastScrollPosition = current;
  }

  void _scrollToTop() {
    _isAnimatingToTop = true;
    if (_showBackToTop) setState(() => _showBackToTop = false);
    _scrollController.animateTo(
      0,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOutCubic,
    );
    Future.delayed(const Duration(milliseconds: 350), () {
      if (mounted) {
        _isAnimatingToTop = false;
        _lastScrollPosition = 0;
      }
    });
  }

  Future<void> _loadData({bool refresh = false}) async {
    if (!UserManager.isLogin) {
      if (mounted) setState(() { _isLoading = false; _error = "未登录"; });
      return;
    }
    if (refresh) {
      setState(() { _isLoading = true; _error = null; _currentPage = 1; _hasMore = true; _totalPages = 0; _descRequestCount = 0; });
    } else {
      if (_isLoading || _loadingMore || !_hasMore) return;
      setState(() => _loadingMore = true);
    }

    final page = _resolveDescPage(refresh);
    if (page == 0) { if (!refresh) setState(() => _loadingMore = false); return; }
    debugPrint("【详情页加载】page=$page refresh=$refresh");
    final data = await TiebaApi.fetchPostDetail(
      bduss: UserManager.bduss!, stoken: UserManager.stoken!, tbs: UserManager.tbs ?? '',
      threadId: widget.tid, page: page, seeLz: _seeLz, sortType: 0, lastPid: '0',
    );

    if (mounted) {
      if (_sortType == 1 && refresh && data != null && data.hasThread()) {
        _totalPages = (data.thread.replyNum / 15).ceil();
        // 清空旧数据，从最后一页重新开始
        _data = null;
      }
      if (_sortType == 1 && refresh && _totalPages > 1 && _descRequestCount == 0) {
        _descRequestCount = 1; _isLoading = false; _loadingMore = true;
        _loadDescLastPage();
        return;
      }
      setState(() {
        _isLoading = false; _loadingMore = false;
        if (data != null) {
          if (_sortType == 1) {
            if (_data != null) {
              final existIds = _data!.postList.map((e) => e.id.toInt()).toSet();
              for (final p in data.postList) { if (!existIds.contains(p.id.toInt())) _data!.postList.add(p); }
              for (final u in data.userList) {
                if (!_data!.userList.map((e) => e.id.toInt()).contains(u.id.toInt())) _data!.userList.add(u);
              }
            } else { _data = data; }
            _hasMore = _descRequestCount < _totalPages;
          } else {
            _currentPage = page;
            if (refresh) { _data = data; }
            else if (_data != null) {
              final existIds = _data!.postList.map((e) => e.id.toInt()).toSet();
              for (final p in data.postList) { if (!existIds.contains(p.id.toInt())) _data!.postList.add(p); }
              for (final u in data.userList) {
                if (!_data!.userList.map((e) => e.id.toInt()).contains(u.id.toInt())) _data!.userList.add(u);
              }
            }
            _hasMore = data.hasPage() && data.page.hasMore == 1;
          }
        } else { if (refresh) _error = "加载失败"; }
      });
      _descAutoLoading = false;
      // 倒序且数据太少时自动触底加载
      if (_sortType == 1 && _hasMore && !_descAutoLoading && _data != null && _data!.postList.length < 10 && mounted) {
        _descAutoLoading = true;
        _loadData(refresh: false);
      }
    }
  }

  /// 倒序：pn = totalPages - _descRequestCount + 1（totalPages, -1, -2...）
  int _resolveDescPage(bool refresh) {
    if (_sortType == 1 && _totalPages > 0) {
      if (refresh) return 1;
      _descRequestCount++;
      final pn = _totalPages - _descRequestCount + 1;
      if (pn < 1) { _hasMore = false; return 0; }
      return pn;
    }
    return refresh ? 1 : _currentPage + 1;
  }

  /// 倒序：加载最后一页（page=totalPages，最新回复）
  Future<void> _loadDescLastPage() async {
    setState(() => _loadingMore = true);
    final data = await TiebaApi.fetchPostDetail(
      bduss: UserManager.bduss!, stoken: UserManager.stoken!, tbs: UserManager.tbs ?? '',
      threadId: widget.tid, page: _totalPages, seeLz: _seeLz, sortType: 0, lastPid: '0',
    );
    if (mounted) {
      setState(() {
        _isLoading = false; _loadingMore = false;
        if (data != null) {
          if (_data != null) {
            final existIds = _data!.postList.map((e) => e.id.toInt()).toSet();
            for (final p in data.postList) { if (!existIds.contains(p.id.toInt())) _data!.postList.add(p); }
            for (final u in data.userList) {
              if (!_data!.userList.map((e) => e.id.toInt()).contains(u.id.toInt())) _data!.userList.add(u);
            }
          } else { _data = data; }
          _hasMore = _descRequestCount < _totalPages;
        } else { _error = "加载失败"; }
      });
      // 最后一页数据太少时自动触发触底加载
      if (data != null && _hasMore && !_descAutoLoading && _data != null && _data!.postList.length < 10 && mounted) {
        _loadData(refresh: false);
      }
    }
  }

  // ========== PB Content 解析工具 ==========

  /// 纯文本类型集合（对应 tiebalite PureTextType）
  static const _textTypes = {0, 9, 27, 35, 40};

  String _extractText(List<PbContent> contents) {
    final buf = StringBuffer();
    for (final c in contents) {
      if (_textTypes.contains(c.type) && c.text.isNotEmpty) {
        if (buf.isNotEmpty) buf.write('\n');
        buf.write(c.text);
      }
      // type 1 = 链接
      if (c.type == 1 && c.text.isNotEmpty) {
        if (buf.isNotEmpty) buf.write('\n');
        buf.write(c.text);
      }
      // type 4 = @用户
      if (c.type == 4 && c.text.isNotEmpty) {
        if (buf.isNotEmpty) buf.write('\n');
        buf.write(c.text);
      }
    }
    return buf.toString();
  }

  List<String> _extractImages(List<PbContent> contents) {
    final urls = <String>[];
    for (final c in contents) {
      if (c.type == 3) {
        // type 3: 优先 bigCdnSrc > cdnSrc > src
        final url = c.bigCdnSrc.isNotEmpty
            ? c.bigCdnSrc
            : (c.cdnSrc.isNotEmpty ? c.cdnSrc : c.src);
        if (url.isNotEmpty) urls.add(url);
      } else if (c.type == 20 && c.src.isNotEmpty) {
        urls.add(c.src);
      }
    }
    return urls;
  }

  String _formatTime(int timestamp) {
    try {
      final dateTime = DateTime.fromMillisecondsSinceEpoch(timestamp * 1000);
      final now = DateTime.now();
      if (now.year == dateTime.year) {
        if (now.day == dateTime.day && now.month == dateTime.month) {
          final diff = now.difference(dateTime);
          if (!diff.isNegative && diff.inMinutes < 1) return '刚刚';
          if (!diff.isNegative && diff.inMinutes <= 40)
            return '${diff.inMinutes} 分钟前';
          return "今天 ${DateFormat('HH:mm').format(dateTime)}";
        }
        return DateFormat('MM-dd HH:mm').format(dateTime);
      } else {
        return DateFormat('yyyy-MM-dd HH:mm').format(dateTime);
      }
    } catch (_) {
      return '';
    }
  }

  String _getAuthorName(usermodel.User u) {
    return u.nameShow.isNotEmpty ? u.nameShow : u.name;
  }

  // ========== Build ==========

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: _buildAppBar(), body: _buildBody());
  }

  PreferredSizeWidget _buildAppBar() {
    final forum = _data?.forum;
    return AppBar(
      backgroundColor: Theme.of(context).primaryColor,
      foregroundColor: Colors.white,
      titleSpacing: 0,
      title: forum != null && forum.name.isNotEmpty
          ? Row(
              children: [
                CircleAvatar(
                  radius: 14,
                  backgroundColor: Colors.white24,
                  backgroundImage: forum.avatar.isNotEmpty
                      ? NetworkImage(
                          forum.avatar,
                          headers: UserManager.avatarHeaders,
                        )
                      : null,
                ),
                const SizedBox(width: 8),
                Text(
                  forum.name,
                  style: const TextStyle(fontSize: 15, color: Colors.white),
                ),
              ],
            )
          : const Text(
              '帖子详情',
              style: TextStyle(fontSize: 15, color: Colors.white),
            ),
      actions: [
        if (_showBackToTop)
          IconButton(
            icon: const Icon(Icons.arrow_upward, color: Colors.white),
            onPressed: _scrollToTop,
          ),
      ],
    );
  }

  Widget _buildBody() {
    if (_isLoading) {
      return const Center(child: CircularProgressIndicator());
    }
    final data = _data;
    if (data == null) {
      final err = _error;
      return Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(err ?? '暂无数据', style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 12),
            TextButton(
              onPressed: () => _loadData(refresh: true),
              child: const Text('重试'),
            ),
          ],
        ),
      );
    }
    // 构建作者映射
    final authorMap = <int, usermodel.User>{};
    usermodel.User? opAuthor;
    // thread.author 是楼主
    if (data.hasThread() && data.thread.hasAuthor()) {
      opAuthor = data.thread.author;
      // ignore: unnecessary_non_null_assertion
      authorMap[opAuthor!.id.toInt()] = opAuthor;
    }
    for (final u in data.userList) {
      authorMap[u.id.toInt()] = u;
    }

    // 楼主帖子内容
    Post? firstPost;
    if (data.hasFirstFloorPost()) {
      firstPost = data.firstFloorPost;
    }
    // 回复列表（排除 floor=1 的楼主帖，楼主帖已在详情区展示）
    final replyPosts = <Post>[];
    for (final p in data.postList) {
      if (firstPost == null && p.floor <= 1) {
        firstPost = p;
      } else if (p.floor > 1) {
        replyPosts.add(p);
      }
    }
    // 按排序模式排列
    if (_sortType == 1) {
      replyPosts.sort((a, b) => b.floor.compareTo(a.floor));
    } else {
      replyPosts.sort((a, b) => a.floor.compareTo(b.floor));
    }

    return ListView(
      controller: _scrollController,
      padding: const EdgeInsets.all(12),
      children: [
        // 帖子详情区
        if (data.hasThread())
          _buildPostDetail(data.thread.title, firstPost, opAuthor),
        const Divider(height: 24),
        // 回复 Tab 栏（含楼主的总数）
        _buildReplyTabBar(
          data.hasThread() && data.thread.replyNum > 0
              ? data.thread.replyNum
              : data.postList.length,
        ),
        const SizedBox(height: 4),
        // 回复列表
        ...replyPosts.map(
          (p) => _buildReplyItem(p, authorMap, opAuthor: opAuthor),
        ),
        // 底部状态：加载中 / 没有更多回复
        if (_loadingMore)
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Center(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    width: 16, height: 16,
                    child: CircularProgressIndicator(strokeWidth: 2),
                  ),
                  SizedBox(width: 8),
                  Text("正在加载...",
                      style: TextStyle(color: Colors.grey, fontSize: 13)),
                ],
              ),
            ),
          )
        else if (!_hasMore && replyPosts.isNotEmpty)
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Center(
              child: Text("没有回复啦",
                  style: TextStyle(color: Colors.grey, fontSize: 13)),
            ),
          ),
        const SizedBox(height: 24),
      ],
    );
  }

  Widget _buildPostDetail(
    String title,
    Post? firstPost,
    usermodel.User? opAuthor,
  ) {
    // 无帖子数据时只显示标题
    if (firstPost == null || firstPost.content.isEmpty) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Text(
          title.isNotEmpty ? title : '帖子内容加载中...',
          style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
        ),
      );
    }

    final contentList = firstPost.content;
    final images = _extractImages(contentList);
    final text = _extractText(contentList);
    final timeStr = _formatTime(firstPost.time);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // 楼主信息（使用 thread.author）
        if (opAuthor != null)
          Row(
            children: [
              CircleAvatar(
                radius: 18,
                backgroundColor: Colors.grey[300],
                // ignore: unnecessary_non_null_assertion
                backgroundImage: opAuthor!.portrait.isNotEmpty
                    ? NetworkImage(
                        // ignore: unnecessary_non_null_assertion
                        'http://tb.himg.baidu.com/sys/portrait/item/${opAuthor!.portrait}',
                        headers: UserManager.avatarHeaders,
                      )
                    : null,
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          // ignore: unnecessary_non_null_assertion
                          _getAuthorName(opAuthor!),
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                        ),
                        const SizedBox(width: 6),
                        // ignore: unnecessary_non_null_assertion
                        if (opAuthor!.levelId > 0)
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 5,
                              vertical: 1,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.blue[50],
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Text(
                              // ignore: unnecessary_non_null_assertion
                              '${opAuthor!.levelId}',
                              style: TextStyle(
                                fontSize: 11,
                                color: Colors.blue[700],
                              ),
                            ),
                          ),
                        const SizedBox(width: 4),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 5,
                            vertical: 1,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.red[50],
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: const Text(
                            '楼主',
                            style: TextStyle(
                              fontSize: 11,
                              color: Colors.red,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          timeStr,
                          style: TextStyle(
                            color: Colors.grey[400],
                            fontSize: 12,
                          ),
                        ),
                        // ignore: unnecessary_null_comparison
                        if (opAuthor != null &&
                            opAuthor.ipAddress.isNotEmpty) ...[
                          const SizedBox(width: 8),
                          Text(
                            'IP属地：${opAuthor.ipAddress}',
                            style: TextStyle(
                              color: Colors.grey[400],
                              fontSize: 11,
                            ),
                          ),
                        ],
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        // 无作者信息时也显示时间
        if (opAuthor == null && timeStr.isNotEmpty)
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Text(
              timeStr,
              style: TextStyle(color: Colors.grey[400], fontSize: 12),
            ),
          ),
        const SizedBox(height: 10),
        // 标题
        if (title.isNotEmpty)
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 17),
            ),
          ),
        // 文字内容
        if (text.isNotEmpty)
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Text(
              text,
              style: const TextStyle(fontSize: 15, height: 1.5),
            ),
          ),
        // 图片区 - 横向排列，宽度尽量占满
        if (images.isNotEmpty) ...[
          const SizedBox(height: 4),
          _buildPostImageRow(images),
          const SizedBox(height: 4),
        ],
      ],
    );
  }

  Widget _buildPostImageRow(
    List<String> images, {
    List<String>? allImages,
    double imageHeight = 200,
  }) {
    if (images.isEmpty) return const SizedBox.shrink();
    final all = allImages ?? images;

    if (useGridImageLayout) {
      // 网格排列（预留，可通过设置切换）
      return _buildGridImages(images, all);
    }
    // 默认：横向滑动条，点击可放大
    return _buildHorizontalImages(images, all, imageHeight: imageHeight);
  }

  Widget _buildHorizontalImages(
    List<String> images,
    List<String> allImages, {
    double imageHeight = 200,
  }) {
    return _ImageStripWithBadge(
      images: images,
      allImages: allImages,
      imageHeight: imageHeight,
    );
  }

  Widget _buildGridImages(List<String> images, List<String> allImages) {
    final columns = 3;
    final rows = (images.length / columns).ceil();
    final screenWidth = MediaQuery.of(context).size.width - 24;
    final spacing = 4.0;
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

  // ========== 回复 Tab 栏 ==========

  Widget _buildReplyTabBar(int totalReplies) {
    return Row(
      children: [
        // "回复 N"
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor.withValues(alpha: 0.1),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Text(
            '回复 $totalReplies',
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontWeight: FontWeight.w600,
              fontSize: 13,
            ),
          ),
        ),
        const SizedBox(width: 8),
        // "只看楼主" 预留
        GestureDetector(
          onTap: () {
            // 预留回调：只看楼主
            setState(() {
              _seeLz = !_seeLz;
              _loadData(refresh: true);
            });
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
            decoration: BoxDecoration(
              color: _seeLz ? Colors.orange[50] : Colors.grey[50],
              borderRadius: BorderRadius.circular(16),
            ),
            child: Text(
              '只看楼主',
              style: TextStyle(
                color: _seeLz ? Colors.orange[700] : Colors.grey[600],
                fontSize: 13,
              ),
            ),
          ),
        ),
        const Spacer(),
        // "正序" / "倒序"
        GestureDetector(
          onTap: () {
            _sortType = _sortType == 0 ? 1 : 0;
            _loadData(refresh: true);
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
            decoration: BoxDecoration(
              color: _sortType == 0 ? Colors.blue[50] : Colors.grey[50],
              borderRadius: BorderRadius.circular(16),
            ),
            child: Text(
              _sortType == 0 ? '正序' : '倒序',
              style: TextStyle(
                color: _sortType == 0 ? Colors.blue[700] : Colors.grey[600],
                fontSize: 13,
                fontWeight: _sortType == 0 ? FontWeight.w600 : null,
              ),
            ),
          ),
        ),
      ],
    );
  }

  // ========== 单条回复 ==========

  Widget _buildReplyItem(
    Post post,
    Map<int, usermodel.User> authorMap, {
    usermodel.User? opAuthor,
  }) {
    // 从 user_list 中查找作者
    usermodel.User? author;
    final aid = post.authorId.toInt();
    if (aid > 0 && authorMap.containsKey(aid)) {
      author = authorMap[aid];
    }
    final hasAuthor = author != null;
    final contentList = post.content;
    final text = _extractText(contentList);
    final images = _extractImages(contentList);
    final timeStr = _formatTime(post.time);
    final pidStr = post.id.toString();
    final isLiked = _likedReplySet.contains(pidStr);
    final agreeNum = post.hasAgree() ? post.agree.agreeNum.toInt() : 0;
    final subPostNumber = post.subPostNumber;
    final subPostList = post.subPostList.subPostList;
    final hasSubPosts = subPostList.isNotEmpty;

    return Card(
      margin: const EdgeInsets.only(bottom: 10),
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 作者信息
            if (hasAuthor) ...[
              Row(
                children: [
                  CircleAvatar(
                    radius: 14,
                    backgroundColor: Colors.grey[300],
                    // ignore: unnecessary_non_null_assertion
                    backgroundImage: author!.portrait.isNotEmpty
                        ? NetworkImage(
                            'http://tb.himg.baidu.com/sys/portrait/item/${author.portrait}',
                            headers: UserManager.avatarHeaders,
                          )
                        : null,
                  ),
                  const SizedBox(width: 6),
                  Text(
                    _getAuthorName(author),
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                    ),
                  ),
                  if (author.levelId > 0) ...[
                    const SizedBox(width: 4),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 4,
                        vertical: 0,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.blue[50],
                        borderRadius: BorderRadius.circular(3),
                      ),
                      child: Text(
                        '${author.levelId}',
                        style: TextStyle(fontSize: 10, color: Colors.blue[700]),
                      ),
                    ),
                  ],
                  // 楼主标识
                  if (opAuthor != null && aid == opAuthor.id.toInt()) ...[
                    const SizedBox(width: 4),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 4,
                        vertical: 0,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.red[50],
                        borderRadius: BorderRadius.circular(3),
                      ),
                      child: const Text(
                        '楼主',
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.red,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ],
              ),
            ],
            // 时间 + IP 归属地
            if (timeStr.isNotEmpty ||
                (author != null && author.ipAddress.isNotEmpty))
              Padding(
                padding: EdgeInsets.only(top: hasAuthor ? 0 : 4, bottom: 4),
                child: Row(
                  children: [
                    if (timeStr.isNotEmpty)
                      Text(
                        timeStr,
                        style: TextStyle(color: Colors.grey[400], fontSize: 11),
                      ),
                    if (author != null && author.ipAddress.isNotEmpty) ...[
                      const SizedBox(width: 8),
                      Text(
                        'IP属地：${author.ipAddress}',
                        style: TextStyle(color: Colors.grey[400], fontSize: 11),
                      ),
                    ],
                  ],
                ),
              ),
            const SizedBox(height: 6),
            // 文字内容
            if (text.isNotEmpty)
              Padding(
                padding: const EdgeInsets.only(bottom: 6),
                child: Text(
                  text,
                  style: const TextStyle(fontSize: 14, height: 1.4),
                ),
              ),
            // 图片
            if (images.isNotEmpty) ...[
              _buildPostImageRow(images, imageHeight: 150),
              const SizedBox(height: 6),
            ],
            // 操作行：点赞
            Row(
              children: [
                GestureDetector(
                  onTap: () => _handleLikeReply(post),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        isLiked ? Icons.thumb_up : Icons.thumb_up_outlined,
                        size: 16,
                        color: isLiked ? Colors.red : Colors.grey[400],
                      ),
                      const SizedBox(width: 3),
                      Text(
                        agreeNum > 0 ? '$agreeNum' : '点赞',
                        style: TextStyle(
                          fontSize: 12,
                          color: isLiked ? Colors.red : Colors.grey[400],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 16),
                GestureDetector(
                  onTap: () {
                    SharePlus.instance.share(
                      ShareParams(
                        text:
                            "https://tieba.baidu.com/p/${widget.tid}?pid=$pidStr",
                        title: "来自百度贴吧的回复",
                      ),
                    );
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.share_outlined,
                        size: 16,
                        color: Colors.grey[400],
                      ),
                      const SizedBox(width: 3),
                      Text(
                        '分享',
                        style: TextStyle(fontSize: 12, color: Colors.grey[400]),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            // 楼中楼
            if (hasSubPosts) ...[
              const Divider(height: 12),
              ...subPostList
                  .take(3)
                  .map(
                    (sub) =>
                        _buildSubReplyItem(sub, authorMap, opAuthor: opAuthor),
                  ),
              if (subPostNumber > 3 || subPostList.length > 3)
                GestureDetector(
                  onTap: () {
                    // 预留回调：查看更多楼中楼
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: Text(
                      '显示全部${subPostNumber > 0 ? subPostNumber : subPostList.length}条回复',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.blue[600],
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
            ],
          ],
        ),
      ),
    );
  }

  // ========== 楼中楼 ==========

  /// 从 PbContent 中提取"回复 XXX"的目标用户（uid>0 的 type 0 文本）
  String? _extractReplyTarget(List<PbContent> contents) {
    for (final c in contents) {
      if (c.uid.toInt() > 0 && c.text.isNotEmpty) {
        return c.text.trim();
      }
    }
    return null;
  }

  /// 提取文本，跳过"回复 XXX"结构中的前缀和带 uid 的条目
  String _extractTextNoMention(List<PbContent> contents) {
    final buf = StringBuffer();
    // 先找出 replyTarget 所在的索引
    int replyStartIdx = -1;
    for (int i = 0; i < contents.length; i++) {
      if (contents[i].uid.toInt() > 0) {
        replyStartIdx = i - 1; // "回复 "前缀所在位置
        break;
      }
    }
    for (int i = 0; i < contents.length; i++) {
      final c = contents[i];
      // 跳过"回复 XXX"结构
      if (replyStartIdx >= 0 && (i == replyStartIdx || i == replyStartIdx + 1))
        // ignore: curly_braces_in_flow_control_structures
        continue;
      if (c.uid.toInt() > 0) continue; // 保险：任何带 uid 的都跳过
      if (_textTypes.contains(c.type) && c.text.isNotEmpty) {
        // 关键修复：去掉强制换行，用空格拼接，只保留原文的换行
        final cleanText = c.text.trim().replaceAll('\n', ' ');
        if (buf.isNotEmpty && cleanText.isNotEmpty) buf.write(' ');
        buf.write(cleanText);
      }
      if (c.type == 1 && c.text.isNotEmpty) {
        final cleanText = c.text.trim().replaceAll('\n', ' ');
        if (buf.isNotEmpty && cleanText.isNotEmpty) buf.write(' ');
        buf.write(cleanText);
      }
    }
    return buf.toString().trim();
  }

  Widget _buildSubReplyItem(
    SubPostList sub,
    Map<int, usermodel.User> authorMap, {
    usermodel.User? opAuthor,
  }) {
    // 查找回复作者信息（原有逻辑不变，新增匿名兜底）
    usermodel.User? author;
    if (sub.hasAuthor()) {
      author = sub.author;
    } else {
      final aid = sub.authorId.toInt();
      if (aid > 0 && authorMap.containsKey(aid)) {
        author = authorMap[aid];
      }
    }
    final String authorName = author != null
        ? _getAuthorName(author)
        : '匿名用户'; // 无作者信息兜底，避免异常显示

    final replyTarget = _extractReplyTarget(sub.content);
    final text = _extractTextNoMention(sub.content);
    final images = _extractImages(sub.content);
    final timeStr = _formatTime(sub.time);

    // 构建完整连贯的富文本流，所有内容在同一行起始，超出自动换行
    final List<InlineSpan> contentSpans = [];

    // 1. 回复者用户名
    contentSpans.add(
      TextSpan(
        text: authorName,
        style: const TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 12,
          color: Colors.blue,
        ),
      ),
    );

    // 2. 楼主标识（1:1复刻你提供的样式，WidgetSpan嵌入富文本，保证完全同行）
    if (opAuthor != null && author?.id == opAuthor.id) {
      contentSpans.add(
        WidgetSpan(
          // 垂直居中对齐，和用户名文字完美对齐，不上下错位
          alignment: PlaceholderAlignment.middle,
          // 用户名和楼主标之间的间距
          child: Padding(
            padding: const EdgeInsets.only(left: 4),
            // 1:1 完全复刻你截图里的Container样式，参数完全一致
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 0),
              decoration: BoxDecoration(
                color: Colors.red[50],
                borderRadius: BorderRadius.circular(3),
              ),
              child: const Text(
                '楼主',
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.red,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ),
      );
    }

    // 3. 回复目标用户（如果有，和前面内容完全连贯）
    if (replyTarget != null && replyTarget.isNotEmpty) {
      contentSpans.addAll([
        const TextSpan(
          text: ' 回复 ',
          style: TextStyle(fontSize: 12, color: Colors.grey),
        ),
        TextSpan(
          text: replyTarget,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 12,
            color: Colors.blueGrey,
          ),
        ),
      ]);
    }

    // 4. 冒号 + 回复正文（和前面内容完全连在一起，无分行）
    if (text.isNotEmpty) {
      contentSpans.add(
        TextSpan(
          text: '：$text',
          style: const TextStyle(
            fontSize: 12,
            color: Colors.black87,
            height: 1.3,
          ),
        ),
      );
    }

    // 最终布局
    return Container(
      width: double.infinity, // 强制占满父容器宽度，解决短内容"太短"的问题
      margin: const EdgeInsets.only(bottom: 4),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.grey[50],
        borderRadius: BorderRadius.circular(6),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          // 所有内容在同一个富文本中，保证同行起始+自动换行，无分段分行
          Text.rich(
            TextSpan(children: contentSpans),
            softWrap: true, // 允许自动换行
            overflow: TextOverflow.visible, // 超出不截断，整行换行
            maxLines: null, // 不限制行数，完整显示所有内容
          ),
          // 回复图片（原有逻辑不变）
          if (images.isNotEmpty) ...[
            const SizedBox(height: 4),
            _buildPostImageRow(images, imageHeight: 120),
          ],
          // 回复时间（放在内容下方，和贴吧原生样式一致）
          if (timeStr.isNotEmpty)
            Padding(
              padding: const EdgeInsets.only(top: 2),
              child: Text(
                timeStr,
                style: TextStyle(color: Colors.grey[400], fontSize: 10),
              ),
            ),
        ],
      ),
    );
  }

  // ========== 回复点赞 ==========

  Future<void> _handleLikeReply(Post post) async {
    if (!UserManager.isLogin) return;

    final pidStr = post.id.toString();
    final ok = await TiebaApi.likeReply(
      bduss: UserManager.bduss!,
      stoken: UserManager.stoken!,
      tbs: UserManager.tbs ?? '',
      userId: UserManager.userId ?? '',
      threadId: widget.tid,
      postId: pidStr,
    );

    if (ok && mounted) {
      setState(() {
        _likedReplySet.add(pidStr);
      });
    }
  }
}

// ========== 图片横向滑动条（超过2张在右下角显示剩余数量） ==========

class _ImageStripWithBadge extends StatefulWidget {
  final List<String> images;
  final List<String> allImages;
  final double imageHeight;
  const _ImageStripWithBadge({
    required this.images,
    required this.allImages,
    this.imageHeight = 200,
  });

  @override
  State<_ImageStripWithBadge> createState() => _ImageStripWithBadgeState();
}

class _ImageStripWithBadgeState extends State<_ImageStripWithBadge> {
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
