# tieba_third

第三方百度贴吧（百度贴吧）Flutter 客户端。通过模拟官方 Android 客户端的请求签名、设备指纹与 protobuf 序列化，与贴吧官方 API 通信。

> 版本：2.0.8+37 · 仅支持 Android

---

## 功能特性

- **推荐流**：个性化首页动态，无限滚动、点赞、分享
- **贴吧浏览**：贴吧列表、帖子列表（排序/精品筛选）、一键签到与多吧签到
- **帖子详情**：楼层回复、楼中楼、只看楼主、正/倒序切换、投票
- **视频播放**：帖子内视频封面预览 + 全屏播放（video_player + Chewie）
- **搜索**：贴吧 / 帖子 / 用户搜索，吧内搜索，搜索联想与历史
- **用户资料**：主页、发帖、回帖、点赞、粉丝/关注列表
- **消息中心**：点赞、回复、@我的 通知，未读数提醒
- **互动**：点赞（乐观更新 + 冷却）、收藏、关注贴吧、投票
- **多账号**：BDUSS/STOKEN 登录、账号切换、WebView 登录
- **个性化**：浅色/深色/跟随系统主题，每账号独立配置（悬浮导航、点赞冷却等）
- **自定义表情**：贴吧表情包内联渲染
- **浏览历史**：贴吧 / 用户浏览记录，搜索历史

---

## 技术栈

| 层次 | 选型 |
|------|------|
| 框架 | Flutter / Dart 3.11+ |
| 路由 | go_router（`StatefulShellRoute` 三 Tab 底部导航） |
| 网络 | http（贴吧 API）、dio |
| 序列化 | protobuf + fixnum（200+ 自动生成的消息类型） |
| 加密 | crypto（MD5 签名）、encrypt（Sofire AES-CBC + RC442） |
| 视频 | video_player + chewie（底层 ExoPlayer） |
| 持久化 | shared_preferences |
| 图片 | cached_network_image |
| 其他 | flutter_inappwebview（WebView 登录）、device_info_plus、share_plus |

状态管理不依赖重型框架，采用 `StatefulWidget` + `setState`、单例（`UserManager`/`AccountManager`/`DeviceInfo`）、`ValueNotifier`/`ListenableBuilder` 组合。

---

## 快速开始

```bash
# 安装依赖
flutter pub get

# 运行（连接设备 / 模拟器）
flutter run

# 构建 APK
flutter build apk

# 静态分析
flutter analyze

# 从 .proto 重新生成 protobuf Dart 代码（需全局安装 protoc + protoc-gen-dart）
protoc --dart_out=lib/generated proto/*.proto
```

---

## 架构概览

### 网络层（`lib/network/`）

`TiebaApi` 是只含静态方法的门面类，通过 Dart `part` 文件委托给各领域的私有 `_*Api` 实现类（auth、feed、post_detail、forum、search、interact、user、消息类等）。

两种请求风格并存：

1. **Form-URL-encoded + MD5 签名**：`_computeSign` 对排序后的键值对追加 `tiebaclient!!!` 再取 MD5。用于登录、sync、签到、关注等较老接口。
2. **Protobuf + MultipartRequest**：序列化 protobuf 后以 `data` 字段发送，使用 `CommonRequest` 或 `CommonReq` 作为鉴权/设备信息信封。用于动态流、帖子页、资料页等。

### 认证与账号

- **BDUSS/STOKEN** Cookie 鉴权（百度标准）
- `UserManager`：当前活跃用户凭证（静态字段 + SharedPreferences）
- `AccountManager`：多账号管理（JSON 列表存储，支持切换/登出/旧数据迁移）
- `AuthNotifier`：登录态变更通知，驱动 GoRouter 重新求值路由

### 设备模拟（`lib/utils/`）

- `DeviceInfo`：生成并缓存设备指纹（IMEI、CUID、C3AID、Android ID、品牌型号），模拟官方客户端
- `helios/`：贴吧 Helios 混淆库的 Dart 移植（RC442 流密码、XXHash、base32 变体、CUID/C3AID 生成）
- `sofire_utils.dart`：百度 Sofire 分析服务集成，获取 `z_id` 令牌（GZip → AES-CBC → RC442 混淆）

### 主要目录

```
lib/
  main.dart            # 入口与启动序列
  router/              # go_router 路由配置
  network/             # TiebaApi 门面 + part 实现
  models/              # 显示层数据模型（PostItem 等）
  pages/               # 页面（动态、贴吧、我的、详情、消息、设置等）
  widgets/             # 复用组件（PostCard、视频卡片、表情文本等）
  utils/               # 单例管理器、设备指纹、缓存、helios/
  constants/           # 主题与颜色
  generated/           # protobuf 自动生成代码
proto/                 # protobuf 定义源文件
emoticon/              # 自定义表情资源
docs/                  # 中文设计文档
```

---

## 约定

- UI 文案与代码注释均使用**简体中文**（含 Logger 标签，如 `【签到】`、`【调试】`）
- API 方法显式接收 `bduss`/`stoken` 参数，不在网络层内部读取 `UserManager`
- protobuf 数值字段使用 `Int64`（`package:fixnum`），注意 `Int64.parseInt` / `Int64()` 转换
- 设备相关信息统一通过 `DeviceInfo()` 单例获取

更详细的模块设计见 [`docs/design_doc.md`](docs/design_doc.md)，开发指引见 [`CLAUDE.md`](CLAUDE.md)。
