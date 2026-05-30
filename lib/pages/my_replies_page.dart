import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../generated/PostInfoList.pb.dart';
import '../generated/PostInfoContent.pb.dart';
import '../network/tieba_api.dart';
import '../utils/user_manager.dart';
import '../utils/user_browse_history_manager.dart';
import '../utils/post_content_parser.dart';
import '../widgets/post_image_row.dart';
import '../utils/emoticon_helper.dart';

/// 我的回帖页面
class MyRepliesPage extends StatefulWidget {
  const MyRepliesPage({super.key});

  @override
  State<MyRepliesPage> createState() => _MyRepliesPageState();
}

class _MyRepliesPageState extends State<MyRepliesPage> {
  List<PostInfoList> _replies = [];
  bool _loading = false;
  bool _loadingMore = false;
  bool _hasMore = true;
  int _page = 1;
  bool _hasError = false;

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  Future<void> _loadData({bool refresh = false}) async {
    if (!UserManager.isLogin) return;
    if (refresh) {
      _page = 1;
      _hasMore = true;
      _hasError = false;
    }
    final isRefresh = refresh;
    if (isRefresh) {
      if (_loading) return;
      setState(() => _loading = true);
    } else {
      if (_loadingMore || !_hasMore) return;
      setState(() => _loadingMore = true);
    }

    final replies = await TiebaApi.fetchUserRepliesPb(
      bduss: UserManager.bduss!,
      stoken: UserManager.stoken!,
      uid: UserManager.userId ?? '',
      page: _page,
      rn: 20,
    );

    if (!mounted) return;
    setState(() {
      _loading = false;
      _loadingMore = false;
      if (isRefresh) {
        _replies = replies;
      } else {
        if (replies.isNotEmpty) {
          _replies.addAll(replies);
        }
      }
      if (replies.isNotEmpty) {
        _hasMore = true;
        _page++;
      } else {
        _hasMore = false;
      }
      _hasError = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('我的回帖'),
        centerTitle: true,
        backgroundColor: theme.primaryColor,
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    if (_loading && _replies.isEmpty) {
      return const Center(child: CircularProgressIndicator());
    }
    if (_hasError && _replies.isEmpty) {
      return Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('加载失败', style: TextStyle(fontSize: 16)),
            const SizedBox(height: 12),
            TextButton(
              onPressed: () => _loadData(refresh: true),
              child: const Text('重试'),
            ),
          ],
        ),
      );
    }
    if (_replies.isEmpty) {
      return const Center(
        child: Text('暂无回帖记录', style: TextStyle(color: Colors.grey, fontSize: 15)),
      );
    }
    return NotificationListener<ScrollNotification>(
      onNotification: (n) {
        if (n is ScrollUpdateNotification &&
            !_loadingMore &&
            _hasMore &&
            n.metrics.pixels >= n.metrics.maxScrollExtent - 200) {
          _loadData();
        }
        return false;
      },
      child: RefreshIndicator(
        onRefresh: () => _loadData(refresh: true),
        child: ListView.builder(
          padding: const EdgeInsets.all(12),
          itemCount: _replies.length + (_loadingMore || (!_hasMore && _replies.isNotEmpty) ? 1 : 0),
          itemBuilder: (context, index) {
            if (index >= _replies.length) {
              if (_loadingMore) {
                return const Padding(
                  padding: EdgeInsets.all(16),
                  child: Center(
                    child: SizedBox(
                      width: 16,
                      height: 16,
                      child: CircularProgressIndicator(strokeWidth: 2),
                    ),
                  ),
                );
              }
              return const Padding(
                padding: EdgeInsets.all(16),
                child: Center(
                  child: Text(
                    '没有更多了',
                    style: TextStyle(color: Colors.grey, fontSize: 13),
                  ),
                ),
              );
            }
            return _buildReplyItem(_replies[index]);
          },
        ),
      ),
    );
  }

  Widget _buildReplyItem(PostInfoList info) {
    final authorName = info.nameShow.isNotEmpty ? info.nameShow : info.userName;
    final portrait = info.userPortrait;
    final uid = info.userId.toInt().toString();
    final tid = info.threadId.toInt().toString();
    final rawTitle = info.title;
    final title = rawTitle.startsWith('回复：') ? rawTitle.substring(3) : rawTitle;
    final createTime = PostContentParser.formatTime(info.createTime);

    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 用户信息区
            GestureDetector(
              onTap: () {
                UserBrowseHistoryManager.saveRecord(
                  uid: uid,
                  userName: authorName,
                  portrait: portrait,
                );
                context.push('/user/$uid');
              },
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 16,
                    backgroundColor: Colors.grey[300],
                    backgroundImage: portrait.isNotEmpty
                        ? NetworkImage(
                            'http://tb.himg.baidu.com/sys/portrait/item/$portrait',
                            headers: UserManager.avatarHeaders,
                          )
                        : null,
                  ),
                  const SizedBox(width: 8),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        authorName,
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                      ),
                      if (createTime.isNotEmpty)
                        Text(
                          createTime,
                          style: TextStyle(
                            color: Colors.grey[400],
                            fontSize: 11,
                          ),
                        ),
                    ],
                  ),
                ],
              ),
            ),
            // 回复内容（PostInfoContent 列表）
            if (info.content.isNotEmpty) ...[
              const SizedBox(height: 10),
              ...info.content.map((pic) => _buildPostInfoContent(pic)),
            ],
            // 原帖标题
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () => context.push('/post/$tid'),
              child: Text(
                '原帖：$title',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey[500],
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPostInfoContent(PostInfoContent pic) {
    final absList = pic.postContent;
    if (absList.isEmpty) return const SizedBox.shrink();

    // 构建内联 spans（支持表情图片）
    final spans = <InlineSpan>[];
    final images = <String>[];
    for (final a in absList) {
      if ((a.type == 0 || a.type == 2) && a.text.isNotEmpty) {
        // 尝试作为表情解析
        final emojiName = EmoticonHelper.extractEmojiName(a.text);
        final imgPath = emojiName != null ? EmoticonHelper.getImagePath(emojiName) : null;
        if (imgPath != null) {
          spans.add(WidgetSpan(
            alignment: PlaceholderAlignment.middle,
            child: Image.asset(imgPath, width: 18, height: 18),
          ));
        } else {
          spans.add(TextSpan(
            text: a.text,
            style: const TextStyle(fontSize: 14, height: 1.4),
          ));
        }
      } else if (a.type == 3 && a.src.isNotEmpty) {
        images.add(a.src);
      }
    }

    final timeStr = PostContentParser.formatTime(pic.createTime.toInt());

    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (spans.isNotEmpty)
            Text.rich(
              TextSpan(children: spans),
              style: const TextStyle(fontSize: 14, height: 1.4),
            ),
          if (images.isNotEmpty) ...[
            const SizedBox(height: 6),
            PostImageRow(images: images, imageHeight: 150),
          ],
          if (timeStr.isNotEmpty)
            Padding(
              padding: const EdgeInsets.only(top: 4),
              child: Text(
                timeStr,
                style: TextStyle(color: Colors.grey[400], fontSize: 10),
              ),
            ),
        ],
      ),
    );
  }
}