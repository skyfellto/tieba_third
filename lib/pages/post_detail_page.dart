import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../generated/PbPage/PbPageResponseData.pb.dart';
import '../generated/Post.pb.dart';
import '../generated/User.pb.dart' as usermodel;
import '../network/tieba_api.dart';
import '../utils/user_manager.dart';
import '../widgets/post_detail_header.dart';
import '../widgets/post_reply_card.dart';

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

  // 分页
  int _currentPage = 1;
  bool _loadingMore = false;
  bool _hasMore = true;
  int _totalPages = 0;
  int _descRequestCount = 0;
  bool _descAutoLoading = false;

  // 已点赞的回复 pid 集合
  final Set<String> _likedReplySet = {};
  int _descRetryCount = 0;

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
      if (mounted) {
        setState(() {
          _isLoading = false;
          _error = "未登录";
        });
      }
      return;
    }
    if (refresh) {
      _descRetryCount = 0;
      setState(() {
        _isLoading = true;
        _error = null;
        _currentPage = 1;
        _hasMore = true;
        _totalPages = 0;
        _descRequestCount = 0;
      });
    } else {
      if (_isLoading || _loadingMore || !_hasMore) return;
      setState(() => _loadingMore = true);
    }

    final page = _resolveDescPage(refresh);
    if (page == 0) {
      if (!refresh) setState(() => _loadingMore = false);
      return;
    }
    debugPrint("【详情页加载】page=$page refresh=$refresh");
    final data = await TiebaApi.fetchPostDetail(
      bduss: UserManager.bduss!,
      stoken: UserManager.stoken!,
      tbs: UserManager.tbs ?? '',
      threadId: widget.tid,
      page: page,
      seeLz: _seeLz,
      sortType: 0,
      lastPid: '0',
    );

    if (mounted) {
      if (_sortType == 1 && refresh && data != null && data.hasThread()) {
        _totalPages = (data.thread.replyNum / 15).ceil();
        // 保留第1页数据作为基础（含楼主帖 floor<=1），后续合并其他页
        _data = data;
      }
      if (_sortType == 1 &&
          refresh &&
          _totalPages > 1 &&
          _descRequestCount == 0) {
        _descRequestCount = 1;
        _isLoading = false;
        _loadingMore = true;
        _loadDescLastPage();
        return;
      }
      setState(() {
        _isLoading = false;
        _loadingMore = false;
        if (data != null) {
          if (_sortType == 1) {
            if (_data != null) {
              final existIds = _data!.postList.map((e) => e.id.toInt()).toSet();
              for (final p in data.postList) {
                if (!existIds.contains(p.id.toInt())) _data!.postList.add(p);
              }
              for (final u in data.userList) {
                if (!_data!.userList
                    .map((e) => e.id.toInt())
                    .contains(u.id.toInt())) {
                  _data!.userList.add(u);
                }
              }
            } else {
              _data = data;
            }
            _hasMore = _descRequestCount < _totalPages;
          } else {
            _currentPage = page;
            if (refresh) {
              _data = data;
            } else if (_data != null) {
              final existIds = _data!.postList.map((e) => e.id.toInt()).toSet();
              for (final p in data.postList) {
                if (!existIds.contains(p.id.toInt())) _data!.postList.add(p);
              }
              for (final u in data.userList) {
                if (!_data!.userList
                    .map((e) => e.id.toInt())
                    .contains(u.id.toInt())) {
                  _data!.userList.add(u);
                }
              }
            }
            _hasMore = data.hasPage() && data.page.hasMore == 1;
          }
        } else {
          if (refresh) _error = "加载失败";
        }
      });
      _descAutoLoading = false;
      // 倒序且数据太少时自动触底加载
      if (_sortType == 1 &&
          _hasMore &&
          !_descAutoLoading &&
          _data != null &&
          _data!.postList.length < 10 &&
          mounted) {
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
      if (pn < 1) {
        _hasMore = false;
        return 0;
      }
      return pn;
    }
    return refresh ? 1 : _currentPage + 1;
  }

  /// 倒序：加载最后一页（page=totalPages，最新回复）
  Future<void> _loadDescLastPage() async {
    setState(() => _loadingMore = true);

    PbPageResponseData? data = await TiebaApi.fetchPostDetail(
      bduss: UserManager.bduss!,
      stoken: UserManager.stoken!,
      tbs: UserManager.tbs ?? '',
      threadId: widget.tid,
      page: _totalPages,
      seeLz: _seeLz,
      sortType: 0,
      lastPid: '0',
    );

    // 最后一页加载失败时自动重试一次
    if (data == null && mounted) {
      debugPrint("【倒序】最后一页(${_totalPages})加载失败，自动重试...");
      data = await TiebaApi.fetchPostDetail(
        bduss: UserManager.bduss!,
        stoken: UserManager.stoken!,
        tbs: UserManager.tbs ?? '',
        threadId: widget.tid,
        page: _totalPages,
        seeLz: _seeLz,
        sortType: 0,
        lastPid: '0',
      );
    }

    // 重试仍然失败时，回退到第1页数据防止内容消失
    if (data == null && mounted) {
      debugPrint("【倒序】重试仍然失败，回退到第1页");
      data = await TiebaApi.fetchPostDetail(
        bduss: UserManager.bduss!,
        stoken: UserManager.stoken!,
        tbs: UserManager.tbs ?? '',
        threadId: widget.tid,
        page: 1,
        seeLz: _seeLz,
        sortType: 0,
        lastPid: '0',
      );
    }

    if (mounted) {
      setState(() {
        _isLoading = false;
        _loadingMore = false;
        if (data != null) {
          if (_data != null) {
            final existIds = _data!.postList.map((e) => e.id.toInt()).toSet();
            for (final p in data.postList) {
              if (!existIds.contains(p.id.toInt())) _data!.postList.add(p);
            }
            for (final u in data.userList) {
              if (!_data!.userList
                  .map((e) => e.id.toInt())
                  .contains(u.id.toInt())) {
                _data!.userList.add(u);
              }
            }
          } else {
            _data = data;
          }
          _hasMore = _descRequestCount < _totalPages;
          _descRetryCount = 0;
        } else {
          // 加载失败时，用户仍可看到第1页数据
          _hasMore = false;
          // 自动重试（最多2次）
          if (_descRetryCount < 2) {
            _descRetryCount++;
            _loadData(refresh: true);
            return;
          }
          _descRetryCount = 0;
        }
      });
      // 最后一页数据太少时自动触发触底加载
      if (data != null &&
          _hasMore &&
          !_descAutoLoading &&
          _data != null &&
          _data!.postList.length < 10 &&
          mounted) {
        _loadData(refresh: false);
      }
    }
  }

  // ========== Build ==========

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: _buildAppBar(), body: _buildBody());
  }

  // PreferredSizeWidget _buildAppBar() {
  //   final forum = _data?.forum;
  //   return AppBar(
  //     backgroundColor: Theme.of(context).primaryColor,
  //     foregroundColor: Colors.white,
  //     titleSpacing: 0,
  //     title: forum != null && forum.name.isNotEmpty
  //         ? GestureDetector(
  //             onTap: () {
  //               final fid = forum.id.toInt();
  //               if (fid > 0) {
  //                 context.push(
  //                   '/forum/$fid?name=${Uri.encodeComponent(forum.name)}&avatar=${Uri.encodeComponent(forum.avatar)}',
  //                 );
  //               }
  //             },
  //             child: Row(
  //               mainAxisAlignment: MainAxisAlignment.center,
  //               children: [
  //                 CircleAvatar(
  //                   radius: 14,
  //                   backgroundColor: Colors.white24,
  //                   backgroundImage: forum.avatar.isNotEmpty
  //                       ? NetworkImage(
  //                           forum.avatar,
  //                           headers: UserManager.avatarHeaders,
  //                         )
  //                       : null,
  //                 ),
  //                 const SizedBox(width: 8),
  //                 Text(
  //                   forum.name,
  //                   style: const TextStyle(fontSize: 15, color: Colors.white),
  //                 ),
  //                 // const SizedBox(width: 4),
  //                 // Icon(
  //                 //   Icons.chevron_right,
  //                 //   size: 16,
  //                 //   color: Colors.white.withValues(alpha: 0.6),
  //                 // ),
  //               ],
  //             ),
  //           )
  //         : const Text(
  //             '帖子详情',
  //             style: TextStyle(fontSize: 15, color: Colors.white),
  //           ),
  //     actions: [
  //       if (_showBackToTop)
  //         IconButton(
  //           icon: const Icon(Icons.arrow_upward, color: Colors.white),
  //           onPressed: _scrollToTop,
  //         ),
  //     ],
  //   );
  // }

  PreferredSizeWidget _buildAppBar() {
    final forum = _data?.forum;
    return AppBar(
      backgroundColor: Theme.of(context).primaryColor,
      foregroundColor: Colors.white,
      titleSpacing: 0,
      // 固定左侧返回箭头的宽度，保证左侧占位永远一致
      leadingWidth: 56,
      title: SizedBox(
        // 让title占满AppBar分配的全部可用宽度
        width: double.infinity,
        // 强制内容在可用宽度内绝对居中
        child: Center(
          child: forum != null && forum.name.isNotEmpty
              ? GestureDetector(
                  onTap: () {
                    final fid = forum.id.toInt();
                    if (fid > 0) {
                      context.push(
                        '/forum/$fid?name=${Uri.encodeComponent(forum.name)}&avatar=${Uri.encodeComponent(forum.avatar)}',
                      );
                    }
                  },
                  // 左右加对称padding，避免内容过长时被返回箭头/按钮遮挡
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 56),
                    child: Row(
                      // 让Row只包裹内容，不额外占宽，配合Center实现完美居中
                      mainAxisSize: MainAxisSize.min,
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
                          style: const TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              : const Text(
                  '帖子详情',
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
        ),
      ),
      // 核心修复：固定右侧actions的宽度，无论按钮是否显示，占位永远一致
      actions: [
        if (_showBackToTop)
          IconButton(
            icon: const Icon(Icons.arrow_upward, color: Colors.white),
            onPressed: _scrollToTop,
          ),
        // 按钮隐藏时，用等宽的SizedBox占位，保证右侧宽度永远固定
        if (!_showBackToTop) const SizedBox(width: 48),
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
          PostDetailHeader(
            title: data.thread.title,
            firstPost: firstPost,
            opAuthor: opAuthor,
          ),
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
          (p) => PostReplyCard(
            post: p,
            authorMap: authorMap,
            opAuthor: opAuthor,
            likedReplySet: _likedReplySet,
            tid: widget.tid,
            onLikeTap: (post) => _handleLikeReply(post),
          ),
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
                    width: 16,
                    height: 16,
                    child: CircularProgressIndicator(strokeWidth: 2),
                  ),
                  SizedBox(width: 8),
                  Text(
                    "正在加载...",
                    style: TextStyle(color: Colors.grey, fontSize: 13),
                  ),
                ],
              ),
            ),
          )
        else if (!_hasMore && replyPosts.isNotEmpty)
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Center(
              child: Text(
                "没有回复啦",
                style: TextStyle(color: Colors.grey, fontSize: 13),
              ),
            ),
          ),
        const SizedBox(height: 24),
      ],
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

