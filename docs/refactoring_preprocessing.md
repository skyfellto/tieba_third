# 项目代码拆分预处理文档

> 生成日期：2026-05-26
> 范围：`lib/` 下所有非 `generated/` 的 Dart 文件（73 个文件，约 17774 行）

---

## 一、文件大小概览

| 行数范围 | 文件数 | 文件 |
|---------|-------|------|
| 1000+ 行 | 2 | `forum_detail_page.dart`, `post_detail_page.dart` |
| 500-999 行 | 8 | `browse_history_page.dart`, `forum_search_result_page.dart`, `floor_reply_page.dart`, `user_detail_page.dart`, `search_page.dart`, `tieba_page.dart` (另: 3 个 tieba_api part 文件) |
| 300-499 行 | 9 | 各 widget 和 dongtai_page |
| 100-299 行 | 21 | 工具类、model、小部件 |
| < 100 行 | 4 | `main.dart` 等 |

---

## 二、高优先级拆分目标

### P0：需要重大重构

#### 1. `lib/pages/forum_detail_page.dart`（1196 行）

**现状：** 贴吧详情页，包含帖子列表（两种布局：列表/双列）、置顶帖渲染、关注/点赞操作、下拉刷新 + 上拉加载、骨架屏、全屏错误页。

**可拆分部分：**

| 组件 | 行数 | 目标路径 |
|------|------|---------|
| 置顶帖卡片 (`StickyPostCard`) | ~60 | `widgets/sticky_post_card.dart` |
| 双列布局 Grid | ~80 | `widgets/forum_grid_view.dart` (与 tieba_page 共享) |
| 点赞持久化 (`_likedStorageKey`, `_initLikedSet`, `_saveLikedSet`) | ~50 | `utils/like_persistence.dart` |
| 点赞回调 (`_handleLike`) | ~80 | `utils/like_handler.dart` (跨文件共享) |
| ScrollToTop 动画控制 | ~30 | `utils/scroll_to_top_mixin.dart` (跨文件共享) |

**依赖风险：** 点赞回调在其他 4 个文件中重复实现，提取到共享 utils 需要同步修改所有调用方。

**工作量评估：** Medium，主要是提取无需改动外部接口。

---

#### 2. `lib/pages/post_detail_page.dart`（988 行）

**现状：** 帖子详情页，包含顶部信息、评论区、回复输入栏、排序切换、收藏/举报操作、浏览记录保存。

**可拆分部分：**

| 组件 | 行数 | 目标路径 |
|------|------|---------|
| 评论区列表 (`_buildCommentList`) | ~150 | `widgets/comment_list.dart` |
| 回复输入底部栏 (`_buildBottomBar`) | ~100 | `widgets/reply_input_bar.dart` |
| 排序切换条 | ~30 | `widgets/reply_sort_bar.dart` |
| 浏览记录保存 | ~20 | `utils/browse_record_saver.dart` |

**依赖风险：** 底部栏涉及键盘弹出/收起动画，提取时需注意 StatefulWidget 的生命周期。

**工作量评估：** Medium-Hard，底部栏交互复杂。

---

### P1：可以从页面中提取共享组件

#### 3. `lib/pages/browse_history_page.dart`（828 行）

**现状：** 浏览历史页面，三个 Tab（帖子、贴吧、用户），每个 Tab 独立的数据源、加载、删除模式。三套 builder 结构几乎完全一致。

| 组件 | 行数 | 目标路径 |
|------|------|---------|
| 通用时间分组列表 (`DateGroupedListView<T>`) | ~200 | `widgets/date_grouped_list_view.dart` |
| 帖子历史卡片 | ~80 | `widgets/browse_post_card.dart` |
| 贴吧/用户历史卡片 | ~80 | 合并到上者 |

**工作量评估：** Medium，三 Tab 去重涉及泛型设计。

**依赖风险：** 三个 Tab 的数据结构不同（`PostItem` vs `ForumItem` vs `UserProfileData`），需要抽象共同接口。

---

#### 4. `lib/pages/floor_reply_page.dart`（550 行）

**现状：** 楼中楼回复页，包含 JSON API 和 Protobuf 两种数据路径。

| 组件 | 行数 | 目标路径 |
|------|------|---------|
| JSON 响应解析器 | ~50 | `utils/floor_parser.dart` |
| 作者头像 Map 构建 | ~30 | 内联即可 |

**工作量评估：** Easy。

---

#### 5. `lib/pages/user_detail_page.dart`（523 行）

**现状：** 用户详情页（头像背景、资料卡片、帖子列表、关注的吧）。

| 组件 | 行数 | 目标路径 |
|------|------|---------|
| 贴吧头像缓存 Map | ~30 | `utils/forum_avatar_cache.dart` |

**工作量评估：** Easy。

---

#### 6. `lib/pages/search_page.dart`（505 行） + `lib/pages/forum_search_result_page.dart`（593 行）

**现状：** 搜索页（联想 + 历史）与吧内搜索结果页。搜索栏组件高度重复。

| 组件 | 行数 | 目标路径 |
|------|------|---------|
| 搜索栏组件 | ~80 | `widgets/search_bar_widget.dart` |
| 排序/筛选栏 | ~40 | `widgets/sort_filter_bar.dart` |
| 联想条目 | ~20 | `widgets/suggestion_item.dart` |
| 搜索结果 `_toPostItem` 解析 | ~60 | `utils/search_result_parser.dart` |

**工作量评估：** Easy-Medium。

**依赖风险：** 搜索结果页有 JSON 解析逻辑，与 post_detail_page 的解析可能重复。

---

### P2：Widget 内部提取

#### 7. `lib/widgets/forum_header_delegate.dart`（458 行）

| 组件 | 行数 | 目标路径 |
|------|------|---------|
| 等级信息面板 (`LevelInfo`) | ~80 | 本文件内提取为 widget |
| 更多按钮弹出菜单 | ~30 | 本文件内提取 |
| TabBar | ~40 | 沿用 Flutter 标准 TabBar |

**工作量评估：** Easy。

---

#### 8. `lib/widgets/liked_item_card.dart`（424 行）

| 组件 | 行数 | 目标路径 |
|------|------|---------|
| 内联 emoji 渲染 (`_buildContentWithEmoji`) | ~80 | 改为复用 `PostContentParser` |
| 操作按钮 (`_actionBtn`) | ~50 | `widgets/action_icon_button.dart` |
| 回复预览 (`_buildSubContent`) | ~60 | `widgets/liked_reply_preview.dart` |

**工作量评估：** Medium，涉及 emoji 渲染逻辑统一。

---

#### 9. `lib/pages/tieba_page.dart`（499 行）

| 组件 | 行数 | 目标路径 |
|------|------|---------|
| 贴吧网格图块 (`_buildGridTile`) | ~80 | `widgets/forum_grid_tile.dart` |
| 已签到/过期吧轮播 (`PassedForumsCarousel`) | ~60 | `widgets/passed_forums_carousel.dart` |
| 一键签到逻辑 | ~50 | `services/sign_service.dart` |

**工作量评估：** Easy-Medium。

---

#### 10. `lib/widgets/vote_panel.dart`（363 行）

| 组件 | 行数 |
|------|------|
| 投票选项 Tile (`VoteOptionTile`) | ~50 |
| 投票结果进度条 (`VoteResultBar`) | ~70 |
| 投票按钮 (`VoteButton`) | ~30 |

全部可在本文件内提取为私有 widget，无需拆出文件。

**工作量评估：** Easy。

---

## 三、跨文件重复代码（最高价值去重）

### 1. 点赞回调 `_handleLike`（5 个文件，每份约 60 行）

出现在：
- `forum_detail_page.dart`（两个布局各一份）
- `dongtai_page.dart`
- `user_detail_page.dart`
- `forum_search_result_page.dart`

**建议：** 提取为 `utils/like_handler.dart`，暴露一个静态方法或 mixin。

**风险：** 每个文件中的实现略有差异（参数、额外逻辑），需要逐个对齐。建议单独做一次 PR。

---

### 2. 点赞持久化 `_likedStorageKey` / `_initLikedSet` / `_saveLikedSet`（3 个文件）

出现在：
- `forum_detail_page.dart`
- `post_detail_page.dart`
- `floor_reply_page.dart`

**建议：** 提取为 `utils/like_persistence.dart`，统一用 `LikedPersistence` 类管理。

---

### 3. ScrollToTop 动画控制（5 个文件）

出现在：
- `forum_detail_page.dart`
- `dongtai_page.dart`
- `post_detail_page.dart`
- `user_detail_page.dart`
- `forum_search_result_page.dart`

每个文件约 20 行的样板代码（`_isAnimatingToTop`, `_showBackToTop`, `_lastScrollPosition`, `_onScroll`）。

**建议：** 提取为 `utils/scroll_to_top_mixin.dart`。

---

### 4. 搜索栏组件（2 个文件 × 约 80 行）

出现在：
- `search_page.dart`
- `forum_search_result_page.dart`

**建议：** 提取为 `widgets/search_bar_widget.dart`。

---

### 5. 等级颜色映射 `levelColor()`（2 个文件）

出现在：
- `post_reply_card.dart`（38-48 行）
- `tieba_page.dart` 的 `_buildGridTile`

**建议：** 移到 `constants/app_colors.dart`。

---

### 6. Emoji 内容渲染（2 个路径）

- `liked_item_card.dart` 的 `_buildContentWithEmoji` 是自己实现的
- `PostContentParser` / `PostContentText` 在其他地方用了

**建议：** 统一使用 `PostContentParser`。

---

## 四、低优先级/无需拆分

| 文件 | 行数 | 理由 |
|------|------|------|
| `main.dart` | 51 | 已经很小 |
| `router/app_router.dart` | 167 | 路由定义集中管理是优势，`MainScreen` 可考虑移出 |
| `utils/post_content_parser.dart` | 183 | 职责单一 |
| 所有 model 文件 | < 150 | 数据类，职责明确 |
| 所有 utils/helios/ 文件 | < 160 | 加密工具，自成一体 |
| 所有 constants/ 文件 | < 30 | 已经很小 |

---

## 五、建议执行顺序

```
第一轮（安全，纯提取，无外部影响）
├── app_colors.dart 添加 levelColor 常量
├── utils/scroll_to_top_mixin.dart
├── utils/like_persistence.dart
├── widgets/search_bar_widget.dart
├── widgets/forum_grid_tile.dart
└── widgets/action_icon_button.dart

第二轮（文件内拆分）
├── forum_detail_page.dart → widgets/sticky_post_card.dart + 布局提取
├── post_detail_page.dart → widgets/comment_list.dart + widgets/reply_input_bar.dart
├── floor_reply_page.dart → utils/floor_parser.dart
├── tieba_page.dart → widgets/passed_forums_carousel.dart + services/sign_service.dart
├── vote_panel.dart → 内部提取私有 widget
└── app_router.dart → widgets/main_screen.dart 移出

第三轮（跨文件重构，需要同步修改调用方）
├── utils/like_handler.dart（影响 5 个文件）
├── 统一 emoji 渲染（liked_item_card.dart 改用 PostContentParser）
├── browse_history_page 三 Tab 去重
└── post_reply_card 与 PostContentParser 统一
```

---

## 六、注意事项

1. **所有拆分不应改变业务逻辑** — 推荐使用提取方法/提取 widget 的重构手法
2. **导入路径统一使用相对路径或 `package:` 前缀** — 当前项目两种混用，新文件建议统一用相对路径
3. **`generated/` 目录的 protobuf 文件不要动** — 自动生成，不归入重构范围
4. **先 PR 安全提取，再 PR 跨文件重构** — 降低冲突风险