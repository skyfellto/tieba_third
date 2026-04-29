# 贴吧 API 接口与 Protobuf 文件参考文档

> 基于 [tiebalite](E:\AndroidStudioProjects\tiebalite) 项目整理，适用于 [tieba_third](e:\AndroidStudioProjects\tieba_third) Flutter 项目。

---

## 目录

1. [已使用的接口](#1-已使用的接口)
2. [Protobuf 接口（推荐优先使用）](#2-protobuf-接口推荐优先使用)
3. [JSON 接口（备用方案）](#3-json-接口备用方案)
4. [公共 Protobuf 文件](#4-公共-protobuf-文件)
5. [接口与 Protobuf 依赖关系总表](#5-接口与-protobuf-依赖关系总表)

---

## 1. 已使用的接口

当前 tieba_third 已实现 2 个接口。

### 1.1 登录

| 项目 | 内容 |
|---|---|
| **接口** | `POST http://tiebac.baidu.com/c/s/login` |
| **协议** | JSON (application/x-www-form-urlencoded) |
| **签名** | MD5 参数排序 + `tiebaclient!!!` 盐值 |
| **当前状态** | ✅ 已实现（[tieba_api.dart](lib/network/tieba_api.dart)） |
| **对应 tiebalite** | `TiebaApi.loginAndGetUserInfo()` |
| **tiebalite protobuf 替代** | 无（当前无 protobuf 版登录接口） |

**请求参数：**
- `_client_version` — 客户端版本号
- `bdusstoken` — BDUSS 令牌

### 1.2 首页个性化推荐

| 项目 | 内容 |
|---|---|
| **接口** | `POST http://c.tieba.baidu.com/c/f/excellent/personalized` |
| **协议** | JSON (application/x-www-form-urlencoded) |
| **签名** | MD5 参数排序 + `tiebaclient!!!` 盐值 |
| **当前状态** | ✅ 已实现（`TiebaApi.fetchPersonalizedThreads()`） |
| **对应 tiebalite** | `ITiebaApi.personalized()`(JSON) / `personalizedProtoFlow()`(Protobuf) |

**JSON 版请求参数：** `_client_version`、`cuid_gid`、`load_type`、`need_forumlist`、`need_tags`、`page_thread_count`、`pn`、`q_type`、`scr_dip/h/w`、`sug_count`、`tag_code`

**Protobuf 替代版（推荐）：**
- 端点：`POST https://tiebac.baidu.com/c/f/excellent/personalized?cmd=309264`
- 请求：`protos/Personalized.proto` → `PersonalizedRequest`
- 响应：`protos/Personalized.proto` → `PersonalizedResponse`（含 `ThreadInfo` 列表）
- 依赖 proto：`CommonRequest.proto`、`AppPosInfo.proto`、`ThreadInfo.proto`、`Error.proto`

---

## 2. Protobuf 接口（推荐优先使用）

> 基准 URL：`https://tiebac.baidu.com`，`X-BD-DATA-TYPE: protobuf`
>
> 请求体：`multipart/form-data`，data 字段为 protobuf 二进制编码
>
> 签名方式与 JSON 版相同（参数排序 + `tiebaclient!!!` MD5）

### 2.1 首页推荐（Protobuf 版）

参见 [1.2 节](#12-首页个性化推荐)。

### 2.2 🔥 关注动态

| 项目 | 内容 |
|---|---|
| **用途** | 获取所关注吧的最新帖子动态流 |
| **端点** | `POST /c/f/concern/userlike?cmd=309474` |
| **对应页面** | [dongtai_page.dart](lib/pages/dongtai_page.dart) — 可替代当前 JSON 版个性化推荐 |
| **优先级** | ⭐⭐⭐ 高（当前页面核心功能） |

**Protobuf 文件：**
- 请求：`protos/UserLike/UserLike.proto` → `UserLikeRequest` / `UserLikeRequestData`
- 响应：`protos/UserLike/UserLike.proto` → `UserLikeResponse` / `UserLikeResponseData`
- 公共依赖：`CommonRequest.proto`、`ThreadInfo.proto`、`Page.proto`、`Error.proto`、`User.proto`

### 2.3 🔥 吧页面（帖子列表）

| 项目 | 内容 |
|---|---|
| **用途** | 获取某个吧的帖子列表 |
| **端点** | `POST /c/f/frs/page?cmd=301001` |
| **对应页面** | [tieba_page.dart](lib/pages/tieba_page.dart) — 当前为占位，需要接入 |
| **优先级** | ⭐⭐⭐ 高 |

**Protobuf 文件：**
- 请求：`protos/FrsPage/FrsPage.proto` → `FrsPageRequest` / `FrsPageRequestData`
- 响应：`protos/FrsPage/FrsPage.proto` → `FrsPageResponse` / `FrsPageResponseData`
- 子消息：`Forum`、`ForumInfo`、`Group`、`SignInfo`、`SignForum`、`SignUser`、`Manager`、`RankInfo`、`HeadImgs`、`Classify`、`NavTabInfo`、`PostTopic`、`ActivityHead`、`CoverImageColor`、`VideoImageColor`、`Size`、`AdParam`
- 公共依赖：`CommonRequest.proto`、`ThreadInfo.proto`、`User.proto`、`Error.proto`、`Page.proto`、`AppPosInfo.proto`

**也支持纯帖子列表接口：**
- 端点：`POST /c/f/frs/threadlist?cmd=301002`
- 请求：`protos/ThreadList/ThreadList.proto` → `ThreadListRequest` / `ThreadListRequestData`
- 响应：`protos/ThreadList/ThreadList.proto` → `ThreadListResponse`
- 额外依赖：`protos/ThreadList/AdParam.proto`

### 2.4 🔥 帖子详情（楼中楼）

| 项目 | 内容 |
|---|---|
| **用途** | 查看某个帖子的详细内容和回复 |
| **端点** | `POST /c/f/pb/page?cmd=302001&format=protobuf` |
| **对应页面** | 帖子详情页（尚未创建） |
| **优先级** | ⭐⭐⭐ 高 |

**Protobuf 文件：**
- 请求：`protos/PbPage/PbPage.proto` → `PbPageRequest` / `PbPageRequestData`
- 响应：`protos/PbPage/PbPage.proto` → `PbPageResponse` / `PbPageResponseData`
- 子消息：`AdParam`、`AddPost`、`AppealInfo`、`BusinessPromotInfo`、`FeedExtInfo`、`FloatingIcon`、`FloatingIconItem`、`ForumHeadlineImgInfo`、`GodCard`、`GuessLikeStruct`、`NewsInfo`、`PostBanner`、`RecommendBook`、`PbFollowTip`、`PbSortType`
- 公共依赖：`CommonRequest.proto`、`ThreadInfo.proto`、`Post.proto`、`SubPostList.proto`、`PbContent.proto`、`User.proto`、`Error.proto`、`Page.proto`、`AppPosInfo.proto`、`Agree.proto`、`VideoInfo.proto`、`SimpleForum.proto`、`ShareInfo.proto`

### 2.5 🔥 楼中楼（子回复列表）

| 项目 | 内容 |
|---|---|
| **用途** | 获取某层回复下的楼中楼回复 |
| **端点** | `POST /c/f/pb/floor?cmd=302002&format=protobuf` |
| **优先级** | ⭐⭐⭐ 高 |

**Protobuf 文件：**
- 请求：`protos/PbFloor/PbFloor.proto` → `PbFloorRequest` / `PbFloorRequestData`
- 响应：`protos/PbFloor/PbFloor.proto` → `PbFloorResponse` / `PbFloorResponseData`
- 公共依赖：`CommonRequest.proto`、`Post.proto`、`SubPostList.proto`、`PbContent.proto`、`User.proto`、`Error.proto`、`Page.proto`、`Agree.proto`、`VideoInfo.proto`

### 2.6 🔥 用户信息

| 项目 | 内容 |
|---|---|
| **用途** | 获取用户个人资料信息 |
| **端点** | `POST /c/u/user/profile?cmd=303012&format=protobuf` |
| **对应页面** | [user_detail_page.dart](lib/pages/user_detail_page.dart) — 当前占位 |
| **优先级** | ⭐⭐⭐ 高 |

**Protobuf 文件：**
- 请求：`protos/Profile/Profile.proto` → `ProfileRequest` / `ProfileRequestData`
- 响应：`protos/Profile/Profile.proto` → `ProfileResponse` / `ProfileResponseData`
- 子消息：`CommonDistance`、`CommonLocation`、`Duxiaoman`、`FinanceTab`、`FinanceTabItems`、`ForumGodDetailInfo`、`GodDetailInfo`、`MemberBlockInfo`、`Namoaixud`、`NicknameInfo`、`ReplyList`、`TAInfo`、`UserAgreeInfo`、`UserGodInfo`、`VipBanner`
- 公共依赖：`CommonRequest.proto`、`User.proto`、`Error.proto`、`Page.proto`、`SimpleForum.proto`、`Post.proto`、`PbContent.proto`、`ThreadInfo.proto`

### 2.7 🔥 用户帖子列表

| 项目 | 内容 |
|---|---|
| **用途** | 查看用户发布的主题帖或回复 |
| **端点** | `POST /c/u/feed/userpost?cmd=303002&format=protobuf` |
| **对应页面** | [user_detail_page.dart](lib/pages/user_detail_page.dart) — 底部帖子占位 |
| **优先级** | ⭐⭐⭐ 高 |

**Protobuf 文件：**
- 请求：`protos/UserPost/UserPost.proto` → `UserPostRequest` / `UserPostRequestData`
- 响应：`protos/UserPost/UserPost.proto` → `UserPostResponse` / `UserPostResponseData`
- 公共依赖：`CommonRequest.proto`、`ThreadInfo.proto`、`Post.proto`、`Error.proto`、`Page.proto`、`User.proto`

### 2.8 🔥 回帖

| 项目 | 内容 |
|---|---|
| **用途** | 回复帖子/回复楼层/回复楼中楼 |
| **端点** | `POST /c/c/post/add?cmd=309731&format=protobuf` |
| **优先级** | ⭐⭐⭐ 高 |

**Protobuf 文件：**
- 请求：`protos/AddPost/AddPost.proto` → `AddPostRequest` / `AddPostRequestData`
- 响应：`protos/AddPost/AddPost.proto` → `AddPostResponse` / `AddPostResponseData`
- 公共依赖：`CommonRequest.proto`、`Error.proto`、`Post.proto`

### 2.9 关注吧列表（Protobuf）

| 项目 | 内容 |
|---|---|
| **用途** | 获取用户关注的吧列表 |
| **端点** | `POST /c/f/forum/forumrecommend?cmd=303011` |
| **对应页面** | [tieba_page.dart](lib/pages/tieba_page.dart) — 吧列表展示 |
| **优先级** | ⭐⭐ 中 |

**Protobuf 文件：**
- 请求：`protos/ForumRecommend/ForumRecommend.proto` → `ForumRecommendRequest` / `ForumRecommendRequestData`
- 响应：`protos/ForumRecommend/ForumRecommend.proto` → `ForumRecommendResponse`
- 子消息：`protos/ForumRecommend/LikeForum.proto`
- 公共依赖：`CommonRequest.proto`、`Error.proto`

### 2.10 关注吧新接口（ForumGuide）

| 项目 | 内容 |
|---|---|
| **用途** | 新版关注吧列表（含排序、签到信息） |
| **端点** | `POST /c/f/forum/forumGuide?cmd=309683&format=protobuf` |
| **优先级** | ⭐⭐ 中 |

**Protobuf 文件：**
- 请求：`protos/ForumGuide/ForumGuide.proto` → `ForumGuideRequest` / `ForumGuideRequestData`
- 响应：`protos/ForumGuide/ForumGuide.proto` → `ForumGuideResponse` / `ForumGuideResponseData`
- 子消息：`protos/ForumGuide/LikeForum.proto`、`protos/ForumGuide/HotSearch.proto`
- 公共依赖：`CommonRequest.proto`、`Error.proto`、`SimpleForum.proto`、`User.proto`

### 2.11 🔥 热榜

| 项目 | 内容 |
|---|---|
| **用途** | 首页热门帖子榜单 |
| **端点** | `POST /c/f/forum/hotThreadList?cmd=309661` |
| **优先级** | ⭐⭐⭐ 高 |

**Protobuf 文件：**
- 请求：`protos/HotThreadList/HotThreadList.proto` → `HotThreadListRequest` / `HotThreadListRequestData`
- 响应：`protos/HotThreadList/HotThreadList.proto` → `HotThreadListResponse`
- 公共依赖：`CommonRequest.proto`、`ThreadInfo.proto`、`Error.proto`、`Page.proto`

### 2.12 话题榜

| 项目 | 内容 |
|---|---|
| **用途** | 话题榜单 |
| **端点** | `POST /c/f/recommend/topicList?cmd=309289` |
| **优先级** | ⭐⭐ 中 |

**Protobuf 文件：**
- 请求：`protos/TopicList/TopicList.proto` → `TopicListRequest` / `TopicListRequestData`
- 响应：`protos/TopicList/TopicList.proto` → `TopicListResponse`
- 公共依赖：`CommonRequest.proto`、`Error.proto`、`ThreadInfo.proto`

### 2.13 搜索联想

| 项目 | 内容 |
|---|---|
| **用途** | 搜索框输入时联想 |
| **端点** | `POST /c/s/searchSug?cmd=309438&format=protobuf` |
| **优先级** | ⭐⭐ 中 |

**Protobuf 文件：**
- 请求：`protos/SearchSug/SearchSug.proto` → `SearchSugRequest` / `SearchSugRequestData`
- 响应：`protos/SearchSug/SearchSug.proto` → `SearchSugResponse` / `SearchSugResponseData`
- 公共依赖：`CommonRequest.proto`、`Error.proto`、`User.proto`、`SimpleForum.proto`

### 2.14 吧详细信息

| 项目 | 内容 |
|---|---|
| **用途** | 获取吧的详细信息（介绍、数据等） |
| **端点** | `POST /c/f/forum/getforumdetail?cmd=303021&format=protobuf` |
| **优先级** | ⭐⭐ 中 |

**Protobuf 文件：**
- 请求：`protos/GetForumDetail/GetForumDetail.proto` → `GetForumDetailRequest` / `GetForumDetailRequestData`
- 响应：`protos/GetForumDetail/GetForumDetail.proto` → `GetForumDetailResponse` / `GetForumDetailResponseData`
- 子消息：`ApplyStatus`、`BawuAction`、`BazhuGrade`、`BazhuUniversity`、`BzApplySwitch`、`ForumDataCenter`、`ManagerElectionTab`、`UniversityInfo`、`UniversityTabInfo`
- 公共依赖：`CommonRequest.proto`、`Error.proto`、`SimpleForum.proto`

### 2.15 吧务信息

| 项目 | 内容 |
|---|---|
| **用途** | 获取吧的吧务团队信息 |
| **端点** | `POST /c/f/forum/getBawuInfo?cmd=301007&format=protobuf` |
| **优先级** | ⭐ 低 |

**Protobuf 文件：**
- 请求：`protos/GetBawuInfo/GetBawuInfo.proto` → `GetBawuInfoRequest` / `GetBawuInfoRequestData`
- 响应：`protos/GetBawuInfo/GetBawuInfo.proto` → `GetBawuInfoResponse` / `GetBawuInfoResponseData`
- 子消息：`protos/GetBawuInfo/ManagerApplyInfo.proto`
- 公共依赖：`CommonRequest.proto`、`Error.proto`、`SimpleForum.proto`、`BawuRoleDes.proto`、`BawuRoleInfoPub.proto`、`BawuTeam.proto`

### 2.16 吧等级信息

| 项目 | 内容 |
|---|---|
| **用途** | 获取用户在某吧的等级信息 |
| **端点** | `POST /c/f/forum/getLevelInfo?cmd=301005&format=protobuf` |
| **优先级** | ⭐⭐ 中（签到功能需要） |

**Protobuf 文件：**
- 请求：`protos/GetLevelInfo/GetLevelInfo.proto` → `GetLevelInfoRequest` / `GetLevelInfoRequestData`
- 响应：`protos/GetLevelInfo/GetLevelInfo.proto` → `GetLevelInfoResponse` / `GetLevelInfoResponseData`
- 公共依赖：`CommonRequest.proto`、`Error.proto`、`LevelInfo.proto`

### 2.17 吧成员信息

| 项目 | 内容 |
|---|---|
| **用途** | 获取吧成员列表/信息 |
| **端点** | `POST /c/f/forum/getMemberInfo?cmd=301004&format=protobuf` |
| **优先级** | ⭐ 低 |

**Protobuf 文件：**
- 请求：`protos/GetMemberInfo/GetMemberInfo.proto` → `GetMemberInfoRequest` / `GetMemberInfoRequestData`
- 响应：`protos/GetMemberInfo/GetMemberInfo.proto` → `GetMemberInfoResponse` / `GetMemberInfoResponseData`
- 子消息：`protos/GetMemberInfo/ManagerApplyInfo.proto`、`protos/GetMemberInfo/MemberGodInfo.proto`
- 公共依赖：`CommonRequest.proto`、`Error.proto`、`SimpleForum.proto`、`User.proto`

### 2.18 吧规

| 项目 | 内容 |
|---|---|
| **用途** | 获取吧规详情 |
| **端点** | `POST /c/f/forum/forumRuleDetail?cmd=309690&format=protobuf` |
| **优先级** | ⭐ 低 |

**Protobuf 文件：**
- 请求：`protos/ForumRuleDetail/ForumRuleDetail.proto` → `ForumRuleDetailRequest` / `ForumRuleDetailRequestData`
- 响应：`protos/ForumRuleDetail/ForumRuleDetail.proto` → `ForumRuleDetailResponse` / `ForumRuleDetailResponseData`
- 公共依赖：`CommonRequest.proto`、`Error.proto`、`ForumRule.proto`、`ForumRuleStatus.proto`

### 2.19 用户信息（GetUserInfo，与 Profile 不同）

| 项目 | 内容 |
|---|---|
| **用途** | 获取用户基本信息（头像、昵称等） |
| **端点** | `POST /c/u/user/getuserinfo?cmd=303024&format=protobuf` |
| **优先级** | ⭐⭐ 中 |

**Protobuf 文件：**
- 请求：`protos/GetUserInfo/GetUserInfo.proto` → `GetUserInfoRequest` / `GetUserInfoRequestData`
- 响应：`protos/GetUserInfo/GetUserInfo.proto` → `GetUserInfoResponse` / `GetUserInfoResponseData`
- 公共依赖：`CommonRequest.proto`、`Error.proto`、`User.proto`

### 2.20 吧浏览历史

| 项目 | 内容 |
|---|---|
| **用途** | 获取用户浏览过的吧历史 |
| **端点** | `POST /c/f/forum/gethistoryforum?cmd=309601&format=protobuf` |
| **优先级** | ⭐ 低 |

**Protobuf 文件：**
- 请求：`protos/GetHistoryForum/GetHistoryForum.proto` → `GetHistoryForumRequest` / `GetHistoryForumRequestData`
- 响应：`protos/GetHistoryForum/GetHistoryForum.proto` → `GetHistoryForumResponse` / `GetHistoryForumResponseData`
- 公共依赖：`CommonRequest.proto`、`Error.proto`、`SimpleForum.proto`、`HistoryForumInfo.proto`

---

## 3. JSON 接口（备用方案）

以下接口无 Protobuf 版本（或尚未迁移），以 JSON 表单形式调用。
基准 URL 为 `http://c.tieba.baidu.com` 或 `https://tieba.baidu.com`。

### 3.1 🔥 登录（已实现）

参见 [1.1 节](#11-登录)。

### 3.2 🔥 点赞/点踩

| 项目 | 内容 |
|---|---|
| **用途** | 对帖子/回复进行点赞或取消点赞 |
| **端点** | `POST /c/c/agree/opAgree` |
| **优先级** | ⭐⭐⭐ 高 |
| **tiebalite** | `ITiebaApi.opAgree()` / `disagree()` |

**关键参数：** `post_id`、`thread_id`、`op_type`(0=点赞,1=取消)、`obj_type`、`agree_type`

### 3.3 🔥 关注/取关用户

| 项目 | 内容 |
|---|---|
| **用途** | 关注或取关用户 |
| **端点** | `POST https://tieba.baidu.com/i/`（web 接口） |
| **优先级** | ⭐⭐⭐ 高 |

### 3.4 🔥 关注/取关吧

| 项目 | 内容 |
|---|---|
| **用途** | 关注或取关某个吧 |
| **端点** | `POST /c/f/forum/like` / `unlike` |
| **优先级** | ⭐⭐⭐ 高 |
| **参数** | `forum_id`、`forum_name`、`tbs` |

### 3.5 🔥 签到

| 项目 | 内容 |
|---|---|
| **用途** | 吧签到 / 一键签到 |
| **端点** | `POST /c/c/forum/sign` / `POST /c/c/post/mSign`（一键签到） |
| **优先级** | ⭐⭐⭐ 高 |
| **参数** | `forum_id`、`forum_name`、`tbs`（一键签到传 `forum_ids` 和 `tbs`） |

### 3.6 🔥 消息通知

| 项目 | 内容 |
|---|---|
| **用途** | 获取未读消息数 / 回复我的 / @我的 / 赞我的 |
| **端点** | `POST /c/m/msg`（消息数） |
| | `POST /c/m/replyme`（回复我的） |
| | `POST /c/m/atme`（@我的） |
| | `POST /c/m/agreeme`（赞我的） |
| **优先级** | ⭐⭐⭐ 高 |

### 3.7 🔥 发帖

| 项目 | 内容 |
|---|---|
| **用途** | 发布新主题帖 |
| **端点** | `POST /c/c/thread/add` |
| **优先级** | ⭐⭐⭐ 高 |
| **tiebalite** | `ITiebaApi.addThreadFlow()` |

### 3.8 🔥 收藏

| 项目 | 内容 |
|---|---|
| **用途** | 收藏帖子 / 查看收藏 / 取消收藏 |
| **端点** | `POST /c/f/collect/threadstore`（查看收藏列表） |
| | `POST /c/f/collect/addstore`（添加收藏） |
| | `POST /c/f/collect/removestore`（取消收藏） |
| **优先级** | ⭐⭐⭐ 高 |
| **对应页面** | [wode_page.dart](lib/pages/wode_page.dart) — "我的收藏" |

### 3.9 🔥 删帖/删回复

| 项目 | 内容 |
|---|---|
| **用途** | 删除自己的帖子或回复 |
| **端点** | `POST /c/c/thread/del`（删帖）/ `POST /c/c/post/del`（删回复） |
| **优先级** | ⭐⭐ 中 |
| **参数** | `forum_id`、`forum_name`、`thread_id`、`post_id`、`tbs` |

### 3.10 🔥 不感兴趣

| 项目 | 内容 |
|---|---|
| **用途** | 对推荐内容标记"不感兴趣" |
| **端点** | `POST /c/f/excellent/submitDislike` |
| **优先级** | ⭐⭐ 中 |

### 3.11 搜索

| 项目 | 内容 |
|---|---|
| **用途** | 搜索帖子/用户/吧 |
| **端点** | `POST /c/s/searchpost`（吧内搜索） |
| | `POST /c/s/searchuser`（搜索用户） |
| | `POST https://tieba.baidu.com/f/search/forum`（搜索吧-web） |
| | `POST https://tieba.baidu.com/mo/q/hybrid-usergrow-search/searchGlobal`（综合搜索-hybrid） |
| **优先级** | ⭐⭐ 中 |

### 3.12 举报

| 项目 | 内容 |
|---|---|
| **用途** | 获取举报页面链接 |
| **端点** | `POST /c/f/forum/checkreport` |
| **优先级** | ⭐ 低 |

### 3.13 黑名单

| 项目 | 内容 |
|---|---|
| **用途** | 拉黑/查询拉黑用户 |
| **端点** | `POST /c/c/user/setuserblack`（拉黑） |
| | `POST /c/c/user/getuserblack`（查询） |
| **优先级** | ⭐ 低 |

### 3.14 上传图片

| 项目 | 内容 |
|---|---|
| **用途** | 上传图片（发帖/回帖用） |
| **端点** | `POST https://tieba.baidu.com/c/ugc/img/upload`（web 接口） |
| **优先级** | ⭐⭐ 中 |

### 3.15 修改个人资料

| 项目 | 内容 |
|---|---|
| **用途** | 修改昵称、简介、性别、生日 |
| **端点** | `POST /c/u/profile/modify` |
| **优先级** | ⭐ 低 |

### 3.16 上传头像

| 项目 | 内容 |
|---|---|
| **用途** | 上传新头像 |
| **端点** | `POST /c/u/user/imgportrait` |
| **优先级** | ⭐ 低 |

### 3.17 同步

| 项目 | 内容 |
|---|---|
| **用途** | 同步设备信息/配置 |
| **端点** | `POST /c/c/sync` |
| **优先级** | ⭐ 低 |

---

## 4. 公共 Protobuf 文件

这些 proto 文件被多个接口共享。

| 文件名 | 路径 | 说明 | 被哪些接口引用 |
|---|---|---|---|
| **CommonRequest** | `protos/CommonRequest.proto` | 所有 Protobuf 请求的公共头部 | 全部 Protobuf 接口 |
| **Error** | `protos/Error.proto` | 统一错误响应结构 | 全部 Protobuf 接口 |
| **Page** | `protos/Page.proto` | 分页信息 | 帖子/用户列表类接口 |
| **ThreadInfo** | `protos/ThreadInfo.proto` | 帖子信息 | 首页推荐、吧页面、帖子详情、用户帖子、热榜 |
| **Post** | `protos/Post.proto` | 回复（楼层）信息 | 帖子详情、楼中楼、回帖 |
| **SubPostList** | `protos/SubPostList.proto` | 楼中楼回复列表 | 帖子详情、楼中楼 |
| **PbContent** | `protos/PbContent.proto` | 帖子/回复内容（文本、图片、链接等） | 帖子详情、楼中楼、用户资料 |
| **User** | `protos/User.proto` | 用户基本信息 | 用户资料、用户帖子、吧成员 |
| **SimpleForum** | `protos/SimpleForum.proto` | 简化版吧信息 | 关注吧、吧详情、吧务、搜索联想 |
| **Agree** | `protos/Agree.proto` | 点赞信息 | 帖子详情、楼中楼 |
| **VideoInfo** | `protos/VideoInfo.proto` | 视频信息 | 帖子详情、楼中楼 |
| **AppPosInfo** | `protos/AppPosInfo.proto` | App 位置信息 | 个性化推荐、吧页面 |
| **ShareInfo** | `protos/ShareInfo.proto` | 分享信息 | 帖子详情 |
| **LevelInfo** | `protos/LevelInfo.proto` | 等级信息 | 吧等级接口 |
| **ForumRule** | `protos/ForumRule.proto` | 吧规内容 | 吧规接口 |
| **ForumRuleStatus** | `protos/ForumRuleStatus.proto` | 吧规状态 | 吧规接口 |
| **BawuRoleDes** | `protos/BawuRoleDes.proto` | 吧务角色描述 | 吧务信息 |
| **BawuRoleInfoPub** | `protos/BawuRoleInfoPub.proto` | 吧务公开信息 | 吧务信息 |
| **BawuTeam** | `protos/BawuTeam.proto` | 吧务团队 | 吧务信息 |
| **HistoryForumInfo** | `protos/HistoryForumInfo.proto` | 浏览历史中的吧信息 | 浏览历史 |

---

## 5. 接口与 Protobuf 依赖关系总表

### 5.1 Protobuf 接口总览

| # | 接口名 | 端点 | 请求 Proto | 响应 Proto | 独有依赖文件 | 优先级 |
|---|---|---|---|---|---|---|
| 1 | **个性化推荐** | `/c/f/excellent/personalized?cmd=309264` | `Personalized.proto` | `Personalized.proto` | - | ⭐⭐ |
| 2 | **关注动态** | `/c/f/concern/userlike?cmd=309474` | `UserLike.proto` | `UserLike.proto` | - | ⭐⭐⭐ |
| 3 | **热榜** | `/c/f/forum/hotThreadList?cmd=309661` | `HotThreadList.proto` | `HotThreadList.proto` | - | ⭐⭐⭐ |
| 4 | **话题榜** | `/c/f/recommend/topicList?cmd=309289` | `TopicList.proto` | `TopicList.proto` | - | ⭐⭐ |
| 5 | **关注吧列表** | `/c/f/forum/forumrecommend?cmd=303011` | `ForumRecommend.proto` | `ForumRecommend.proto` | `LikeForum.proto` | ⭐⭐ |
| 6 | **关注吧(新)** | `/c/f/forum/forumGuide?cmd=309683` | `ForumGuide.proto` | `ForumGuide.proto` | `LikeForum.proto`、`HotSearch.proto` | ⭐⭐ |
| 7 | **吧页面** | `/c/f/frs/page?cmd=301001` | `FrsPage.proto` | `FrsPage.proto` | 见 §2.3 子消息列表 | ⭐⭐⭐ |
| 8 | **帖子列表** | `/c/f/frs/threadlist?cmd=301002` | `ThreadList.proto` | `ThreadList.proto` | `AdParam.proto` | ⭐⭐⭐ |
| 9 | **用户资料** | `/c/u/user/profile?cmd=303012` | `Profile.proto` | `Profile.proto` | 见 §2.6 子消息列表 | ⭐⭐⭐ |
| 10 | **帖子详情** | `/c/f/pb/page?cmd=302001` | `PbPage.proto` | `PbPage.proto` | 见 §2.4 子消息列表 | ⭐⭐⭐ |
| 11 | **楼中楼** | `/c/f/pb/floor?cmd=302002` | `PbFloor.proto` | `PbFloor.proto` | - | ⭐⭐⭐ |
| 12 | **回帖** | `/c/c/post/add?cmd=309731` | `AddPost.proto` | `AddPost.proto` | - | ⭐⭐⭐ |
| 13 | **搜索联想** | `/c/s/searchSug?cmd=309438` | `SearchSug.proto` | `SearchSug.proto` | - | ⭐⭐ |
| 14 | **吧详情** | `/c/f/forum/getforumdetail?cmd=303021` | `GetForumDetail.proto` | `GetForumDetail.proto` | 见 §2.14 | ⭐⭐ |
| 15 | **吧务信息** | `/c/f/forum/getBawuInfo?cmd=301007` | `GetBawuInfo.proto` | `GetBawuInfo.proto` | `ManagerApplyInfo.proto` | ⭐ |
| 16 | **吧等级** | `/c/f/forum/getLevelInfo?cmd=301005` | `GetLevelInfo.proto` | `GetLevelInfo.proto` | - | ⭐⭐ |
| 17 | **吧成员** | `/c/f/forum/getMemberInfo?cmd=301004` | `GetMemberInfo.proto` | `GetMemberInfo.proto` | `ManagerApplyInfo.proto`、`MemberGodInfo.proto` | ⭐ |
| 18 | **吧规** | `/c/f/forum/forumRuleDetail?cmd=309690` | `ForumRuleDetail.proto` | `ForumRuleDetail.proto` | - | ⭐ |
| 19 | **用户帖子** | `/c/u/feed/userpost?cmd=303002` | `UserPost.proto` | `UserPost.proto` | - | ⭐⭐⭐ |
| 20 | **用户信息** | `/c/u/user/getuserinfo?cmd=303024` | `GetUserInfo.proto` | `GetUserInfo.proto` | - | ⭐⭐ |
| 21 | **浏览历史** | `/c/f/forum/gethistoryforum?cmd=309601` | `GetHistoryForum.proto` | `GetHistoryForum.proto` | `HistoryForumInfo.proto` | ⭐ |

### 5.2 JSON 接口总览（无 Protobuf 替代）

| # | 接口 | 端点 | 优先级 |
|---|---|---|---|
| 1 | **登录** | `POST http://tiebac.baidu.com/c/s/login` | ⭐⭐⭐ |
| 2 | **点赞/踩** | `POST /c/c/agree/opAgree` | ⭐⭐⭐ |
| 3 | **关注/取关用户** | `POST /c/c/user/follow` / `unfollow` | ⭐⭐⭐ |
| 4 | **关注/取关吧** | `POST /c/f/forum/like` / `unlike` | ⭐⭐⭐ |
| 5 | **签到** | `POST /c/c/forum/sign` | ⭐⭐⭐ |
| 6 | **一键签到** | `POST /c/c/post/mSign` | ⭐⭐ |
| 7 | **消息数** | `POST /c/m/msg` | ⭐⭐⭐ |
| 8 | **回复我的** | `POST /c/m/replyme` | ⭐⭐⭐ |
| 9 | **@我的** | `POST /c/m/atme` | ⭐⭐⭐ |
| 10 | **赞我的** | `POST /c/m/agreeme` | ⭐⭐ |
| 11 | **发帖** | `POST /c/c/thread/add` | ⭐⭐⭐ |
| 12 | **收藏列表** | `POST /c/f/collect/threadstore` | ⭐⭐⭐ |
| 13 | **添加收藏** | `POST /c/f/collect/addstore` | ⭐⭐ |
| 14 | **取消收藏** | `POST /c/f/collect/removestore` | ⭐⭐ |
| 15 | **删帖** | `POST /c/c/thread/del` | ⭐⭐ |
| 16 | **删回复** | `POST /c/c/post/del` | ⭐⭐ |
| 17 | **不感兴趣** | `POST /c/f/excellent/submitDislike` | ⭐⭐ |
| 18 | **吧内搜索** | `POST /c/s/searchpost` | ⭐⭐ |
| 19 | **搜索用户** | `POST /c/s/searchuser` | ⭐⭐ |
| 20 | **搜索吧** | `POST https://tieba.baidu.com/f/search/forum` | ⭐⭐ |
| 21 | **搜索帖子** | `POST https://tieba.baidu.com/mo/q/hybrid-usergrow-search/searchGlobal` | ⭐⭐ |
| 22 | **上传图片** | `POST https://tieba.baidu.com/c/ugc/img/upload` | ⭐⭐ |
| 23 | **举报** | `POST /c/f/forum/checkreport` | ⭐ |
| 24 | **拉黑用户** | `POST /c/c/user/setuserblack` | ⭐ |
| 25 | **修改资料** | `POST /c/u/profile/modify` | ⭐ |
| 26 | **上传头像** | `POST /c/u/user/imgportrait` | ⭐ |
| 27 | **同步** | `POST /c/c/sync` | ⭐ |

---

## 6. 完整 Protobuf 文件索引

> 基础路径：`E:\AndroidStudioProjects\tiebalite\app\src\main\protos\`

### 请求/响应类（22组）

| 文件路径 | 消息 |
|---|---|
| `Personalized.proto` | `PersonalizedRequest`、`PersonalizedRequestData`、`PersonalizedResponse`、`PersonalizedResponseData` |
| `AddPost/AddPostRequest.proto`、`AddPostRequestData.proto`、`AddPostResponse.proto`、`AddPostResponseData.proto` | 发帖请求/响应 |
| `ForumGuide/ForumGuideRequest.proto`、`ForumGuideRequestData.proto`、`ForumGuideResponse.proto`、`ForumGuideResponseData.proto` | 关注吧引导 |
| `ForumRecommend/ForumRecommend.proto` | `ForumRecommendRequest`、`ForumRecommendRequestData`、`ForumRecommendResponse` |
| `ForumRuleDetail/ForumRuleDetailRequest.proto`～`Response.proto` | 吧规详情 |
| `FrsPage/FrsPage.proto` | `FrsPageRequest`、`FrsPageRequestData`、`FrsPageResponse`、`FrsPageResponseData` |
| `GetBawuInfo/GetBawuInfoRequest.proto`～`Response.proto` | 吧务信息 |
| `GetForumDetail/GetForumDetailRequest.proto`～`Response.proto` | 吧详情 |
| `GetHistoryForum/GetHistoryForumRequest.proto`～`Response.proto` | 浏览历史 |
| `GetLevelInfo/GetLevelInfoRequest.proto`～`Response.proto` | 等级信息 |
| `GetMemberInfo/GetMemberInfoRequest.proto`～`Response.proto` | 成员信息 |
| `GetUserInfo/GetUserInfoRequest.proto`～`Response.proto` | 用户信息 |
| `HotThreadList/HotThreadList.proto` | `HotThreadListRequest`、`HotThreadListRequestData`、`HotThreadListResponse` |
| `PbFloor/PbFloorRequest.proto`～`Response.proto` | 楼中楼 |
| `PbPage/PbPageRequest.proto`～`Response.proto`、`PbPageResponseData.proto` | 帖子详情 |
| `Profile/ProfileRequest.proto`～`Response.proto` | 用户资料 |
| `SearchSug/SearchSugRequest.proto`～`Response.proto` | 搜索联想 |
| `ThreadList/ThreadList.proto` | 帖子列表请求/响应 |
| `TopicList/TopicList.proto` | `TopicListRequest`、`TopicListRequestData`、`TopicListResponse` |
| `UserLike/UserLike.proto` | `UserLikeRequest`、`UserLikeRequestData`、`UserLikeResponse` |
| `UserPost/UserPostRequest.proto`～`Response.proto` | 用户帖子 |
| `ForumRecommend/ForumRecommend.proto` | 关注吧推荐 |
| `ForumRecommend/LikeForum.proto` | 关注吧子消息 |

### 数据模型类（约 130+ 文件）

| 分类 | 文件 |
|---|---|
| **公共** | `CommonRequest.proto`、`CommonReq.proto`、`Error.proto`、`Page.proto` |
| **用户** | `User.proto`、`SimpleUser.proto`、`ShortUserInfo.proto`、`UserSessionInfo.proto`、`UserDynamic.proto`、`UserPics.proto`、`BirthdayInfo.proto` |
| **帖子** | `ThreadInfo.proto`、`Post.proto`、`SubPost.proto`、`SubPostList.proto`、`PbContent.proto`、`ThreadPicList.proto`、`SimpleThreadInfo.proto`、`OriginThreadInfo.proto` |
| **吧** | `SimpleForum.proto`、`ForumInfo.proto`、`ForumMember.proto`、`ForumMemberInfo.proto`、`ForumDynamic.proto`、`LikeForumInfo.proto`、`PrivateForumInfo.proto` |
| **媒体** | `VideoInfo.proto`、`Voice.proto`、`Media.proto`、`Timgs.proto`、`Icon.proto` |
| **互动** | `Agree.proto`、`Zan.proto`、`ShareInfo.proto`、`Feedback.proto`、`Anti.proto` |
| **广告** | `AdInfo.proto`、`Advertisement.proto`、`TiebaPlusAd.proto`、`Promotion.proto`、`App.proto` |
| **其他** | `LevelInfo.proto`、`BawuRoleDes.proto`、`BawuRoleInfoPub.proto`、`BawuTeam.proto`、`BawuThrones.proto`、`VcodeInfo.proto`、`VcodeExtra.proto`、`PollInfo.proto`、`PollOption.proto`、`BubbleInfo.proto`、`SkinInfo.proto`、`Lbs.proto`、`LbsInfo.proto` |

---

## 7. 当前项目功能与 API 对照

| 页面/功能 | 当前状态 | 已用 API | 待接入 API |
|---|---|---|---|
| **登录** | ✅ 已实现 | `POST /c/s/login` (JSON) | — |
| **首页推荐（动态）** | ✅ 已实现（JSON） | `POST /c/f/excellent/personalized` (JSON) | Protobuf 版 `/c/f/excellent/personalized?cmd=309264` |
| **关注动态** | ❌ 未实现 | — | Protobuf `/c/f/concern/userlike?cmd=309474` |
| **吧页面（帖子列表）** | ❌ 占位 | — | Protobuf `/c/f/frs/page?cmd=301001` |
| **帖子详情** | ❌ 未创建 | — | Protobuf `/c/f/pb/page?cmd=302001` |
| **用户资料** | ❌ 占位 | — | Protobuf `/c/u/user/profile?cmd=303012` |
| **用户帖子列表** | ❌ 占位 | — | Protobuf `/c/u/feed/userpost?cmd=303002` |
| **我的收藏** | ❌ 占位 | — | JSON `/c/f/collect/threadstore` |
| **浏览记录** | ❌ 占位 | — | Protobuf `/c/f/forum/gethistoryforum?cmd=309601` |
| **热榜** | ❌ 未实现 | — | Protobuf `/c/f/forum/hotThreadList?cmd=309661` |
| **消息通知** | ❌ 未实现 | — | JSON `/c/m/msg`、`/c/m/replyme` |
| **签到** | ❌ 未实现 | — | JSON `/c/c/forum/sign` |
| **搜索** | ❌ 未实现 | — | Protobuf `/c/s/searchSug?cmd=309438` + JSON 搜索 |
| **发帖/回帖** | ❌ 未实现 | — | Protobuf `/c/c/post/add?cmd=309731` |
| **点赞/点踩** | ❌ 未实现 | — | JSON `/c/c/agree/opAgree` |
| **关注/取关** | ❌ 未实现 | — | JSON `/c/c/user/follow`、`/c/f/forum/like` |

---

## 附录：通用请求参数说明

### CommonRequest（Protobuf 版本 V12）

| 字段 | 值示例 | 说明 |
|---|---|---|
| `_client_type` | `2` | Android 客户端 |
| `_client_version` | `12.64.1.1` | 客户端版本号 |
| `_client_id` | `wappc_xxx` | 随机客户端 ID |
| `BDUSS` | — | 登录凭证 |
| `stoken` | — | 安全令牌 |
| `cuid` | — | 设备唯一标识 |
| `cuid_galaxy2` | — | 设备标识 2 |
| `model` | — | 设备型号 |
| `brand` | — | 设备品牌 |
| `_os_version` | — | Android 版本号 |
| `_phone_imei` | — | IMEI |
| `_timestamp` | — | 当前时间戳 ms |
| `from` | `1020031h` | 来源标识 |
| `net_type` | `1` | 网络类型（1=WiFi） |
| `scr_w/h/dip` | — | 屏幕尺寸信息 |
| `cmode` | `1` | 颜色模式 |
| `android_id` | — | Android ID |
| `oaid` | — | OAID |
| `z_id` | — | 百度 ZID |
| `user_agent` | — | UA 字符串 |

### 签名算法

```
1. 将所有参数按 key 字典序排序
2. 拼接为 key1=value1key2=value2... 格式
3. 末尾追加固定盐值 "tiebaclient!!!"
4. 计算 MD5 得到 sign
5. sign 作为额外参数加入到请求体中
```
