import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:fixnum/fixnum.dart';
import '../generated/AgreeList.pb.dart' as agree;
import '../network/tieba_api.dart';
import '../utils/user_manager.dart';
import '../utils/post_content_parser.dart';
import '../utils/message_count_manager.dart';
import '../widgets/text_with_emoji.dart';
import '../widgets/message_error_state.dart';
import '../widgets/message_list_footer.dart';
import 'package:cached_network_image/cached_network_image.dart';

/// 点赞消息页面
class AgreeMessagePage extends StatefulWidget {
  const AgreeMessagePage({super.key});

  @override
  State<AgreeMessagePage> createState() => _AgreeMessagePageState();
}

class _AgreeMessagePageState extends State<AgreeMessagePage> {
  final List<agree.AgreeList> _messages = [];
  bool _isLoading = false;
  bool _loadingMore = false;
  bool _hasMore = true;
  bool _isError = false;
  Int64 _nextId = Int64.ZERO;
  static const int _pageSize = 20;
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
    _loadData(refresh: true);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      MessageCountManager().clearAgree();
    });
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
      final data = await TiebaApi.fetchAgreeMe(
        bduss: UserManager.bduss!,
        stoken: UserManager.stoken!,
        userId: UserManager.userId ?? '',
        id: refresh ? Int64.ZERO : _nextId,
        rn: _pageSize,
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

      final list = data.agreeList;
      final hasMore = data.hasMore == 1;

      setState(() {
        if (refresh) {
          _messages.clear();
        }
        _messages.addAll(list);
        _hasMore = hasMore;
        if (list.isNotEmpty) {
          _nextId = list.last.id;
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
    _nextId = Int64.ZERO;
    await _loadData(refresh: true);
  }

  void _onRetry() {
    _loadData(refresh: _messages.isEmpty);
  }

  String _getTypeText(int type) {
    switch (type) {
      case 1:
        return '赞了你的回复';
      case 2:
        return '赞了你的回答';
      case 3:
        return '赞了你的帖子';
      default:
        return '赞了你的帖子';
    }
  }

  String _getUserName(agree.AgreeList item) {
    if (!item.hasAgreeer()) return '百度用户';
    final u = item.agreeer;
    if (u.nameShow.isNotEmpty) return u.nameShow;
    if (u.name.isNotEmpty) return u.name;
    return '百度用户';
  }

  String _getAvatarUrl(agree.AgreeList item) {
    if (!item.hasAgreeer()) return '';
    final portrait = item.agreeer.portrait;
    if (portrait.isEmpty) return '';
    return 'https://gss0.bdstatic.com/6LZ1dD3d1sgCo2Kml5_Y_D3/sys/portrait/item/$portrait';
  }

  String? _getThreadImageUrl(agree.AgreeList item) {
    if (!item.hasThreadInfo()) return null;
    final ti = item.threadInfo;
    if (ti.media.isNotEmpty) {
      final media = ti.media.first;
      if (media.smallPic.isNotEmpty) return media.smallPic;
      if (media.bigPic.isNotEmpty) return media.bigPic;
      if (media.srcPic.isNotEmpty) return media.srcPic;
      if (media.originPic.isNotEmpty) return media.originPic;
      if (media.dynamicPic.isNotEmpty) return media.dynamicPic;
    }
    return null;
  }

  String _extractPostContent(agree.AgreeList item) {
    if (!item.hasPostInfo()) return '';
    final post = item.postInfo;
    return PostContentParser.extractText(post.content).trim();
  }

  String _getPostAuthorName(agree.AgreeList item) {
    if (!item.hasPostInfo()) return '';
    final post = item.postInfo;
    if (!post.hasAuthor()) return '';
    final author = post.author;
    if (author.nameShow.isNotEmpty) return author.nameShow;
    if (author.name.isNotEmpty) return author.name;
    return '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.pop(),
        ),
        title: const Text('点赞', style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    if (_isLoading && _messages.isEmpty) {
      return const Center(child: CircularProgressIndicator());
    }

    if (_isError && _messages.isEmpty) {
      return MessageErrorState(onRetry: _onRetry);
    }

    if (!_isLoading && _messages.isEmpty) {
      return _buildEmptyState();
    }

    return RefreshIndicator(
      onRefresh: _onRefresh,
      child: ListView.builder(
        controller: _scrollController,
        physics: const AlwaysScrollableScrollPhysics(),
        padding: const EdgeInsets.symmetric(vertical: 8),
        itemCount: _messages.length + (_loadingMore || !_hasMore ? 1 : 0),
        itemBuilder: (context, index) {
          if (index == _messages.length) {
            return MessageListFooter(isLoading: _loadingMore);
          }
          return _buildMessageItem(_messages[index]);
        },
      ),
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.favorite_border, size: 64, color: Colors.grey[300]),
          const SizedBox(height: 12),
          const Text(
            '暂无点赞消息',
            style: TextStyle(color: Colors.grey, fontSize: 14),
          ),
        ],
      ),
    );
  }

  Widget _buildMessageItem(agree.AgreeList item) {
    final type = item.type;
    final typeText = _getTypeText(type);
    final userName = _getUserName(item);
    final avatarUrl = _getAvatarUrl(item);
    final threadTitle = item.hasThreadInfo() ? item.threadInfo.title : '';
    final threadImageUrl = _getThreadImageUrl(item);
    final forumName = item.hasThreadInfo() ? item.threadInfo.forumName : '';
    final hasImage = threadImageUrl != null;

    return GestureDetector(
      onTap: () => _onItemTap(item),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 用户信息区
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
                GestureDetector(
                  onTap: () => _onUserTap(item),
                  child: Text(
                    userName,
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 6),
            // 点赞类型区
            Text(
              typeText,
              style: TextStyle(fontSize: 13, color: Colors.grey[500]),
            ),
            const SizedBox(height: 8),
            // 被点赞内容区
            type == 3
                ? _buildThreadContent(threadTitle, hasImage, threadImageUrl)
                : _buildReplyContent(
                    item,
                    threadTitle,
                    hasImage,
                    threadImageUrl,
                  ),
            const SizedBox(height: 8),
            // 所属贴吧区
            if (forumName.isNotEmpty)
              Text(
                forumName,
                style: TextStyle(fontSize: 12, color: Colors.grey[500]),
              ),
            // 分隔线
            const Divider(height: 1),
          ],
        ),
      ),
    );
  }

  Widget _buildThreadContent(String title, bool hasImage, String? imageUrl) {
    final Widget inner;
    if (hasImage && imageUrl != null) {
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
            child: TextWithEmoji(
              title,
              maxLines: 1,
              emojiSize: 16,
              style: const TextStyle(fontSize: 14),
            ),
          ),
        ],
      );
    } else {
      inner = TextWithEmoji(
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

  Widget _buildReplyContent(
    agree.AgreeList item,
    String threadTitle,
    bool hasImage,
    String? imageUrl,
  ) {
    final replyContent = _extractPostContent(item);
    final replyAuthor = _getPostAuthorName(item);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // 回复/回答内容
        Container(
          width: double.infinity,
          padding: const EdgeInsets.only(left: 10),
          decoration: BoxDecoration(
            border: Border(
              left: BorderSide(
                color: Theme.of(context).brightness == Brightness.dark
                    ? Colors.white38
                    : Colors.blue.withValues(alpha: 0.4),
                width: 3,
              ),
            ),
          ),
          child: Row(
            children: [
              if (replyAuthor.isNotEmpty)
                Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: Text(
                    "$replyAuthor ：",
                    style: TextStyle(
                      fontSize: 13,
                      color: Theme.of(context).brightness == Brightness.dark
                          ? Colors.white70
                          : Colors.grey[600],
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              Expanded(
                child: TextWithEmoji(
                  replyContent,
                  maxLines: 1,
                  emojiSize: 16,
                  style: const TextStyle(fontSize: 13),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 8),
        // 原帖信息
        _buildThreadContent(threadTitle, hasImage, imageUrl),
      ],
    );
  }

  void _onItemTap(agree.AgreeList item) {
    if (!item.hasThreadInfo()) return;
    final ti = item.threadInfo;
    final tid = ti.threadId.toInt() > 0
        ? ti.threadId.toString()
        : ti.id.toString();
    String? pid;
    int? floor;
    if (item.hasPostInfo()) {
      pid = item.postInfo.id.toInt() > 0 ? item.postInfo.id.toString() : null;
      floor = item.postInfo.hasFloor() ? item.postInfo.floor : null;
    }

    // 跳转到帖子详情，带 pid 和 floor 参数
    final queryParams = <String, String>{};
    if (pid != null) queryParams['pid'] = pid;
    if (floor != null) queryParams['floor'] = floor.toString();
    final uri = Uri(
      path: '/post/$tid',
      queryParameters: queryParams.isNotEmpty ? queryParams : null,
    );
    context.push(uri.toString());
  }

  void _onUserTap(agree.AgreeList item) {
    if (!item.hasAgreeer()) return;
    final uid = item.agreeer.id.toInt();
    if (uid > 0) {
      context.push('/user/$uid');
    }
  }
}
