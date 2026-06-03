import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../generated/ReplyMe/ReplyList.pb.dart';
import '../generated/PbContent.pb.dart' as pb_content;
import '../network/tieba_api.dart';
import '../utils/user_manager.dart';
import '../utils/emoticon_helper.dart';
import '../utils/toast_utils.dart';
import 'package:cached_network_image/cached_network_image.dart';

/// 回复消息页面
class ReplyMessagePage extends StatefulWidget {
  const ReplyMessagePage({super.key});

  @override
  State<ReplyMessagePage> createState() => _ReplyMessagePageState();
}

class _ReplyMessagePageState extends State<ReplyMessagePage> {
  final List<ReplyList> _messages = [];
  bool _isLoading = false;
  bool _loadingMore = false;
  bool _hasMore = true;
  bool _isError = false;
  int _pn = 1;
  String _ids = '0';
  final ScrollController _scrollController = ScrollController();

  static final RegExp _emojiPattern = RegExp(r'#\(([^)]+)\)|#（([^）]+)）');

  /// 已点赞的回复 postId 集合（与 hasAgree 合并判断）
  final Set<String> _likedReplySet = {};
  /// 点赞数缓存（优先使用 API 的 hasAgree / zan.num，本地覆盖）
  final Map<String, int> _likedAgreeMap = {};

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

  void _onScroll() {
    if (_scrollController.position.pixels >=
            _scrollController.position.maxScrollExtent - 100 &&
        !_loadingMore &&
        _hasMore &&
        !_isError) {
      _loadData(refresh: false);
    }
  }

  Future<void> _loadData({required bool refresh}) async {
    if (!UserManager.isLogin) return;

    if (refresh) {
      if (_isLoading) return;
      setState(() {
        _isLoading = true;
        _isError = false;
      });
    } else {
      if (_loadingMore) return;
      setState(() => _loadingMore = true);
    }

    try {
      final data = await TiebaApi.fetchReplyMe(
        bduss: UserManager.bduss!,
        stoken: UserManager.stoken!,
        userId: UserManager.userId ?? '',
        pn: refresh ? 1 : _pn,
        ids: refresh ? '0' : _ids,
        isFirst: refresh ? 1 : 0,
      );

      if (!mounted) return;

      if (data == null) {
        if (refresh) {
          setState(() {
            _isLoading = false;
            _isError = _messages.isEmpty;
          });
        } else {
          setState(() => _loadingMore = false);
        }
        return;
      }

      final list = data.replyList;
      final hasMore = data.page.hasHasMore() ? data.page.hasMore == 1 : false;

      setState(() {
        if (refresh) _messages.clear();
        _messages.addAll(list);
        _hasMore = hasMore;
        if (list.isNotEmpty) {
          final last = list.last;
          _ids = '${last.threadId},${last.postId}';
          _pn = refresh ? 2 : _pn + 1;
        }
        _isLoading = false;
        _loadingMore = false;
        _isError = false;
      });
    } catch (_) {
      if (mounted) {
        setState(() {
          _isLoading = false;
          _loadingMore = false;
          if (_messages.isEmpty) _isError = true;
        });
      }
    }
  }

  Future<void> _onRefresh() async {
    _pn = 1;
    _ids = '0';
    await _loadData(refresh: true);
  }

  void _onRetry() {
    _loadData(refresh: _messages.isEmpty);
  }

  // ───── 数据提取 ─────

  String _getUserName(ReplyList item) {
    if (!item.hasReplyer()) return '百度用户';
    final u = item.replyer;
    if (u.nameShow.isNotEmpty) return u.nameShow;
    if (u.name.isNotEmpty) return u.name;
    return '百度用户';
  }

  String _getAvatarUrl(ReplyList item) {
    if (!item.hasReplyer()) return '';
    final portrait = item.replyer.portrait;
    if (portrait.isEmpty) return '';
    return 'https://gss0.bdstatic.com/6LZ1dD3d1sgCo2Kml5_Y_D3/sys/portrait/item/$portrait';
  }

  /// 回复内容索引：type=1→[2] 楼层回复, type=2→[1] 帖子回复
  List<pb_content.PbContent>? _getReplyContent(ReplyList item) {
    if (item.newFloorInfo.isEmpty) return null;
    final idx = item.type == 1 ? 2 : 1;
    if (idx >= item.newFloorInfo.length) return null;
    return item.newFloorInfo[idx].content;
  }

  /// 被回复内容（仅 type=1）
  List<pb_content.PbContent>? _getQuoteContent(ReplyList item) {
    if (item.type != 1 || item.newFloorInfo.length < 2) return null;
    return item.newFloorInfo[1].content;
  }

  /// 帖子标题
  String _getThreadTitle(ReplyList item) {
    if (item.newFloorInfo.isEmpty) return item.title;
    final c = item.newFloorInfo[0].content;
    if (c.isNotEmpty) {
      final texts = c
          .where(
            (p) =>
                (p.type == 0 || p.type == 1 || p.type == 4 || p.type == 9) &&
                p.text.isNotEmpty,
          )
          .map((p) => p.text)
          .join(' ');
      if (texts.isNotEmpty) return texts;
    }
    return item.title;
  }

  String _getQuoteUserName(ReplyList item) {
    if (!item.hasQuoteUser()) return '';
    final u = item.quoteUser;
    if (u.nameShow.isNotEmpty) return u.nameShow;
    if (u.name.isNotEmpty) return u.name;
    return '';
  }

  String? _getImageUrl(pb_content.PbContent c) {
    if (c.src.isNotEmpty) return c.src;
    if (c.bigSrc.isNotEmpty) return c.bigSrc;
    if (c.cdnSrc.isNotEmpty) return c.cdnSrc;
    return null;
  }

  // ───── UI ─────

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.pop(),
        ),
        title: const Text('回复', style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    if (_isLoading && _messages.isEmpty) {
      return const Center(child: CircularProgressIndicator());
    }
    if (_isError && _messages.isEmpty) return _buildErrorState();
    if (!_isLoading && _messages.isEmpty) return _buildEmptyState();

    return RefreshIndicator(
      onRefresh: _onRefresh,
      child: ListView.builder(
        controller: _scrollController,
        physics: const AlwaysScrollableScrollPhysics(),
        padding: const EdgeInsets.symmetric(vertical: 8),
        itemCount: _messages.length + (_loadingMore || _hasMore ? 1 : 0),
        itemBuilder: (context, index) {
          if (index == _messages.length) {
            if (_loadingMore) {
              return const Padding(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: Center(
                  child: SizedBox(
                    width: 20,
                    height: 20,
                    child: CircularProgressIndicator(strokeWidth: 2),
                  ),
                ),
              );
            }
            return const Padding(
              padding: EdgeInsets.symmetric(vertical: 12),
              child: Center(
                child: Text(
                  '没有更多了',
                  style: TextStyle(color: Colors.grey, fontSize: 13),
                ),
              ),
            );
          }
          return _buildMessageItem(_messages[index]);
        },
      ),
    );
  }

  Widget _buildErrorState() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'emoticon/image_emoticon1.webp',
              width: 80,
              height: 80,
              errorBuilder: (_, _, _) => const Icon(
                Icons.sentiment_dissatisfied,
                size: 64,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 12),
            const Text(
              '网络不给力，小稽直叹气',
              style: TextStyle(color: Colors.grey, fontSize: 14),
            ),
            const SizedBox(height: 4),
            GestureDetector(
              onTap: _onRetry,
              child: const Text(
                '戳这里重试',
                style: TextStyle(color: Color(0xFF9FB5DD), fontSize: 14),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.chat_bubble_outline, size: 64, color: Colors.grey[300]),
          const SizedBox(height: 12),
          const Text(
            '暂无回复消息',
            style: TextStyle(color: Colors.grey, fontSize: 14),
          ),
        ],
      ),
    );
  }

  Widget _buildMessageItem(ReplyList item) {
    final userName = _getUserName(item);
    final avatarUrl = _getAvatarUrl(item);
    final displayText = item.displayText;
    final forumName = item.fname;
    final type = item.type;
    final replyContent = _getReplyContent(item);
    final quoteContent = _getQuoteContent(item);
    final quoteUserName = _getQuoteUserName(item);
    final threadTitle = _getThreadTitle(item);
    final threadImgUrl = item.threadImgUrl.isNotEmpty
        ? item.threadImgUrl
        : null;

    return GestureDetector(
      onTap: () => _onItemTap(item),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ── 头部：头像 + 用户名 + displayText ──
            Row(
              children: [
                GestureDetector(
                  onTap: () => _onUserTap(item),
                  child: CircleAvatar(
                    radius: 18,
                    backgroundColor: Colors.grey[200],
                    backgroundImage: avatarUrl.isNotEmpty
                        ? NetworkImage(avatarUrl)
                        : null,
                    child: avatarUrl.isEmpty
                        ? const Icon(Icons.person, size: 18, color: Colors.grey)
                        : null,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () => _onUserTap(item),
                        child: Text(
                          userName,
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      if (displayText.isNotEmpty)
                        Padding(
                          padding: const EdgeInsets.only(top: 1),
                          child: Text(
                            displayText,
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey[500],
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),

            // ── 回复内容区 ──
            if (replyContent != null && replyContent.isNotEmpty)
              _buildRichContent(replyContent, isReply: true),

            // ── 被回复内容区（仅 type=1） ──
            if (type == 1 && quoteContent != null && quoteContent.isNotEmpty)
              Padding(
                padding: const EdgeInsets.only(top: 6),
                child: _buildQuoteContent(quoteContent, quoteUserName),
              ),

            // ── 关联帖子区 ──
            if (threadTitle.isNotEmpty || threadImgUrl != null)
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: _buildThreadSection(threadTitle, threadImgUrl),
              ),

            // ── 底部：吧名 + 点赞 ──
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Row(
                children: [
                  if (forumName.isNotEmpty)
                    Text(
                      forumName,
                      style: TextStyle(fontSize: 12, color: Colors.grey[500]),
                    ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () => _onLikeTap(item),
                    behavior: HitTestBehavior.opaque,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          _isReplyLiked(item) ? Icons.thumb_up : Icons.thumb_up_outlined,
                          size: 18,
                          color: _isReplyLiked(item) ? Colors.red : Colors.grey[400],
                        ),
                        const SizedBox(width: 4),
                        Text(
                          _isReplyLiked(item) ? '已赞' : '点赞',
                          style: TextStyle(
                            fontSize: 12,
                            color: _isReplyLiked(item) ? Colors.red : Colors.grey[400],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Divider(height: 16),
          ],
        ),
      ),
    );
  }

  /// 富文本：图片在前水平排列，文字+表情在后
  Widget _buildRichContent(
    List<pb_content.PbContent> contents, {
    bool isReply = false,
  }) {
    final images = <String>[];
    final spans = <InlineSpan>[];

    for (final c in contents) {
      // 图片（有 src 字段）
      final imgUrl = _getImageUrl(c);
      if (imgUrl != null) {
        images.add(imgUrl);
        continue;
      }
      // 表情（type=2, 名称在 c.c）
      if (c.type == 2 && c.c.isNotEmpty) {
        final imgPath = EmoticonHelper.getImagePath(c.c);
        if (imgPath != null) {
          spans.add(
            WidgetSpan(
              alignment: PlaceholderAlignment.middle,
              child: Image.asset(imgPath, width: 16, height: 16),
            ),
          );
        } else {
          spans.add(TextSpan(text: c.c, style: const TextStyle(fontSize: 13)));
        }
        continue;
      }
      // 文字（type 0, 1, 4, 9）
      if ((c.type == 0 || c.type == 1 || c.type == 4 || c.type == 9) &&
          c.text.isNotEmpty) {
        spans.add(TextSpan(text: c.text));
      }
    }

    final widgets = <Widget>[];

    // 图片在前
    if (images.isNotEmpty) {
      widgets.add(
        Padding(
          padding: const EdgeInsets.only(bottom: 6),
          child: Wrap(
            spacing: 4,
            runSpacing: 4,
            children: images
                .take(4)
                .map(
                  (url) => ClipRRect(
                    borderRadius: BorderRadius.circular(4),
                    child: CachedNetworkImage(
                      imageUrl: url,
                      width: 60,
                      height: 60,
                      fit: BoxFit.cover,
                      placeholder: (_, _) => Container(
                        color: Colors.grey[200],
                        width: 60,
                        height: 60,
                      ),
                      errorWidget: (_, _, _) => Container(
                        color: Colors.grey[200],
                        width: 60,
                        height: 60,
                        child: const Icon(
                          Icons.broken_image,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      );
    }

    // 文字 + 表情在后
    if (spans.isNotEmpty) {
      widgets.add(
        Text.rich(
          TextSpan(children: spans),
          maxLines: isReply ? 4 : 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(fontSize: 13),
        ),
      );
    }

    if (widgets.isEmpty) return const SizedBox.shrink();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: widgets,
    );
  }

  /// 被回复内容
  Widget _buildQuoteContent(
    List<pb_content.PbContent> contents,
    String quoteUserName,
  ) {
    final texts = contents
        .where(
          (c) =>
              (c.type == 0 || c.type == 1 || c.type == 2 || c.type == 4) &&
              c.text.isNotEmpty,
        )
        .map((c) => c.text)
        .join(' ');
    return Row(
      children: [
        if (quoteUserName.isNotEmpty)
          Expanded(
            child: Text(
              texts,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 12, color: Colors.grey[500]),
            ),
          ),
      ],
    );
  }

  /// 关联帖子区
  Widget _buildThreadSection(String title, String? imageUrl) {
    final hasImage = imageUrl != null && imageUrl.isNotEmpty;
    final Widget inner;
    if (hasImage) {
      inner = Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: CachedNetworkImage(
              imageUrl: imageUrl,
              width: 56,
              height: 56,
              fit: BoxFit.cover,
              placeholder: (_, _) =>
                  Container(color: Colors.grey[200], width: 56, height: 56),
              errorWidget: (_, _, _) => Container(
                color: Colors.grey[200],
                width: 56,
                height: 56,
                child: const Icon(Icons.broken_image, color: Colors.grey),
              ),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: _buildTextWithEmoji(
              title,
              maxLines: 1,
              emojiSize: 16,
              style: const TextStyle(fontSize: 14),
            ),
          ),
        ],
      );
    } else {
      inner = _buildTextWithEmoji(
        title,
        maxLines: 2,
        emojiSize: 16,
        style: const TextStyle(fontSize: 14),
      );
    }
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Theme.of(context).brightness == Brightness.dark
            ? const Color(0xFF2C2E42)
            : Colors.grey[100],
        borderRadius: BorderRadius.circular(8),
      ),
      child: inner,
    );
  }

  /// Emoji 内联渲染
  Widget _buildTextWithEmoji(
    String text, {
    int? maxLines,
    double emojiSize = 18,
    TextStyle? style,
  }) {
    if (text.isEmpty) return const SizedBox.shrink();
    final spans = <InlineSpan>[];
    int lastEnd = 0;
    for (final match in _emojiPattern.allMatches(text)) {
      if (match.start > lastEnd) {
        spans.add(TextSpan(text: text.substring(lastEnd, match.start)));
      }
      final emojiName = match.group(1) ?? match.group(2) ?? '';
      final imgPath = EmoticonHelper.getImagePath(emojiName);
      if (imgPath != null) {
        spans.add(
          WidgetSpan(
            alignment: PlaceholderAlignment.middle,
            child: Image.asset(imgPath, width: emojiSize, height: emojiSize),
          ),
        );
      } else {
        spans.add(TextSpan(text: '#($emojiName)'));
      }
      lastEnd = match.end;
    }
    if (lastEnd < text.length) {
      spans.add(TextSpan(text: text.substring(lastEnd)));
    }
    return Text.rich(
      TextSpan(children: spans),
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: style,
    );
  }

  void _onItemTap(ReplyList item) {
    final tid = item.threadId.toInt() > 0 ? item.threadId.toString() : '0';
    final pid = item.postId.toInt() > 0 ? item.postId.toString() : null;
    final queryParams = <String, String>{};
    if (pid != null) queryParams['pid'] = pid;
    final uri = Uri(
      path: '/post/$tid',
      queryParameters: queryParams.isNotEmpty ? queryParams : null,
    );
    context.push(uri.toString());
  }

  void _onUserTap(ReplyList item) {
    if (!item.hasReplyer()) return;
    final uid = item.replyer.id.toInt();
    if (uid > 0) context.push('/user/$uid');
  }

  /// 判断该回复是否已点赞（合并 API 返回 + 本地状态）
  bool _isReplyLiked(ReplyList item) {
    final pid = item.postId.toString();
    if (_likedReplySet.contains(pid)) return true;
    if (_likedReplySet.contains('-$pid')) return false;
    // 未本地覆盖时使用 API 返回的 hasAgree
    return item.hasAgree == 1 || (item.hasZan() && item.zan.isLiked == 1);
  }

  /// 获取点赞数（本地覆盖优先）
  int _getReplyLikeCount(ReplyList item) {
    final pid = item.postId.toString();
    if (_likedAgreeMap.containsKey(pid)) return _likedAgreeMap[pid]!;
    if (item.hasZan()) return item.zan.num;
    return 0;
  }

  /// 点赞 / 取消点赞
  Future<void> _onLikeTap(ReplyList item) async {
    if (!UserManager.isLogin) return;
    final pid = item.postId.toString();
    final tid = item.threadId.toInt() > 0 ? item.threadId.toString() : '';

    // 检查冷却
    if (await TiebaApi.isLikeOnCooldown()) {
      if (mounted) showLikeCooldownMessage(context);
      return;
    }

    // 暂存原始状态用于回滚
    final wasLiked = _isReplyLiked(item);
    final oldCount = _getReplyLikeCount(item);
    final newCount = wasLiked ? (oldCount > 0 ? oldCount - 1 : 0) : oldCount + 1;

    // 乐观更新
    setState(() {
      if (wasLiked) {
        _likedReplySet.remove(pid);
        _likedReplySet.add('-$pid'); // 标记已取消
      } else {
        _likedReplySet.add(pid);
      }
      _likedAgreeMap[pid] = newCount;
    });

    try {
      final result = await TiebaApi.likeAgree(
        bduss: UserManager.bduss!,
        stoken: UserManager.stoken!,
        tbs: UserManager.tbs ?? '',
        userId: UserManager.userId ?? '',
        threadId: tid,
        postId: pid,
        objType: 1, // 回复
        opType: wasLiked ? 1 : 0, // 1=取消, 0=点赞
      );
      if (result != null && mounted) {
        setState(() => _likedAgreeMap[pid] = result);
      }
    } catch (_) {
      // 回滚
      if (mounted) {
        setState(() {
          _likedReplySet.remove(pid);
          _likedReplySet.remove('-$pid');
          if (wasLiked) _likedReplySet.add(pid);
          _likedAgreeMap[pid] = oldCount;
        });
      }
    }
  }
}
