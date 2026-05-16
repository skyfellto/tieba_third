import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:share_plus/share_plus.dart';
import '../models/post_item.dart';
import '../network/tieba_api.dart';
import '../utils/user_manager.dart';
import '../widgets/post_card.dart';

class SearchThreadResult extends StatefulWidget {
  final String keyword;
  const SearchThreadResult({super.key, required this.keyword});

  @override
  State<SearchThreadResult> createState() => _SearchThreadResultState();
}

class _SearchThreadResultState extends State<SearchThreadResult>
    with AutomaticKeepAliveClientMixin {
  final List<PostItem> _posts = [];
  final Set<String> _likedSet = {};
  bool _isLoading = false;

  @override
  bool get wantKeepAlive => true;
  bool _loadingMore = false;
  bool _hasMore = true;
  int _page = 1;

  @override
  void initState() {
    super.initState();
    _load(refresh: true);
  }

  @override
  void didUpdateWidget(SearchThreadResult old) {
    if (old.keyword != widget.keyword) {
      _page = 1;
      _posts.clear();
      _hasMore = true;
      _load(refresh: true);
    }
    super.didUpdateWidget(old);
  }

  Future<void> _load({required bool refresh}) async {
    if (refresh) {
      setState(() => _isLoading = true);
    } else {
      if (_loadingMore || !_hasMore) return;
      setState(() => _loadingMore = true);
    }

    final data = await TiebaApi.searchThread(
      keyword: widget.keyword,
      page: refresh ? 1 : _page + 1,
      bduss: UserManager.bduss,
    );

    if (!mounted) return;
    if (data == null) {
      setState(() {
        _isLoading = false;
        _loadingMore = false;
      });
      return;
    }

    final list = data['post_list'];
    final rawItems = list is List ? list.cast<Map<String, dynamic>>() : <Map<String, dynamic>>[];
    final items = rawItems.map(_toPostItem).toList();
    final hasMore = data['has_more'] == 1;

    setState(() {
      _isLoading = false;
      _loadingMore = false;
      if (refresh) {
        _posts.clear();
        _page = 1;
      } else {
        _page++;
      }
      _posts.addAll(items);
      _hasMore = hasMore;
    });
  }

  String _extractPortraitHash(String p) {
    if (p.startsWith('http')) {
      // 从完整 URL 中提取 hash: .../sys/portrait/item/HASH
      final idx = p.indexOf('/sys/portrait/item/');
      if (idx >= 0) {
        final hash = p.substring(idx + '/sys/portrait/item/'.length);
        // 去掉尾部查询参数
        final qIdx = hash.indexOf('?');
        return qIdx >= 0 ? hash.substring(0, qIdx) : hash;
      }
      return '';
    }
    return p;
  }

  List<String> _extractImages(Map<String, dynamic> raw) {
    final media = raw['media'];
    if (media is! List) return [];
    final urls = <String>[];
    for (final m in media) {
      if (m is! Map) continue;
      final url = (m['big_pic']?.toString() ?? m['small_pic']?.toString() ?? '');
      if (url.isNotEmpty) urls.add(url);
    }
    return urls;
  }

  PostItem _toPostItem(Map<String, dynamic> raw) {
    final tid = raw['tid']?.toString() ?? '';
    final title = raw['title']?.toString() ?? '';
    final content = raw['content']?.toString() ?? '';
    final time = raw['time'] is int ? raw['time'] : 0;
    final forumName = raw['forum_name']?.toString() ?? '';
    final forumInfo = raw['forum_info'] as Map<String, dynamic>?;
    final forumAvatar = forumInfo?['avatar']?.toString() ?? '';
    final user = raw['user'] as Map<String, dynamic>?;
    final userName = user?['show_nickname']?.toString() ??
        user?['user_name']?.toString() ?? '';
    final portrait = user?['portrait']?.toString() ?? '';
    final userId = user?['user_id'] is int ? '${user!['user_id']}' : '';
    final likeNum = raw['like_num'] is int ? raw['like_num'] : 0;
    final replyNum = raw['post_num'] is int ? raw['post_num'] : 0;

    String? lastTime;
    if (time > 0) {
      final dt = DateTime.fromMillisecondsSinceEpoch(time * 1000);
      lastTime = '${dt.year}-${dt.month.toString().padLeft(2, '0')}-${dt.day.toString().padLeft(2, '0')} ${dt.hour.toString().padLeft(2, '0')}:${dt.minute.toString().padLeft(2, '0')}';
    }

    return PostItem(
      tid: tid,
      title: title,
      authorName: userName,
      authorId: userId,
      authorPortrait: _extractPortraitHash(portrait),
      forumName: forumName,
      forumAvatar: forumAvatar,
      replyNum: replyNum > 0 ? '$replyNum' : '',
      agreeNum: likeNum > 0 ? '$likeNum' : '',
      lastTime: lastTime ?? '',
      abstractText: content,
      imageUrls: _extractImages(raw),
    );
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    if (_isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    return NotificationListener<ScrollNotification>(
      onNotification: (n) {
        if (n is ScrollUpdateNotification &&
            !_loadingMore &&
            _hasMore &&
            n.metrics.pixels >= n.metrics.maxScrollExtent - 200) {
          _load(refresh: false);
        }
        return false;
      },
      child: RefreshIndicator(
        onRefresh: () => _load(refresh: true),
        child: ListView.builder(
          padding: const EdgeInsets.all(12),
          itemCount: _posts.length + (_loadingMore ? 1 : 0) + (_posts.isEmpty ? 1 : 0),
          itemBuilder: (context, index) {
            if (_posts.isEmpty) {
              return const Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 32),
                  child: Text('未找到相关帖子', style: TextStyle(color: Colors.grey)),
                ),
              );
            }
            if (index >= _posts.length) {
              return const Padding(
                padding: EdgeInsets.all(16),
                child: Center(
                  child: SizedBox(
                    width: 16, height: 16,
                    child: CircularProgressIndicator(strokeWidth: 2),
                  ),
                ),
              );
            }
            final p = _posts[index];
            final tid = p.tid;
            return PostCard(
              post: p,
              showForum: true,
              isLiked: _likedSet.contains(tid),
              onBodyTap: (_) => context.push('/post/$tid'),
              onForumTap: p.forumId.isNotEmpty
                  ? () => context.push(
                        '/forum/${p.forumId}?name=${Uri.encodeComponent(p.forumName)}&avatar=${Uri.encodeComponent(p.forumAvatar ?? '')}',
                      )
                  : null,
              onUserTap: (uid) {
                context.push('/user/$uid');
              },
              onLikeTap: (tid) async {
                if (!UserManager.isLogin) return;
                final score = await TiebaApi.likePost(
                  bduss: UserManager.bduss!,
                  stoken: UserManager.stoken!,
                  tbs: UserManager.tbs ?? '',
                  userId: UserManager.userId ?? '',
                  threadId: tid,
                );
                if (score != null && mounted) {
                  setState(() {
                    _likedSet.add(tid);
                    final i = _posts.indexWhere((x) => x.tid == tid);
                    if (i >= 0) {
                      final cur = int.tryParse(_posts[i].agreeNum) ?? 0;
                      _posts[i].agreeNum = '${cur + 1}';
                    }
                  });
                }
              },
              onShareTap: (tid) {
                SharePlus.instance.share(
                  ShareParams(
                    text: "https://tieba.baidu.com/p/$tid",
                    title: "来自百度贴吧的帖子",
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}