import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import '../network/tieba_api.dart';
import '../utils/user_manager.dart';
import '../utils/data_cache.dart';

/// 模拟 baiduboxapp 原生 JS bridge 的 CUID 标识
String _generateFakeCuid() {
  final now = DateTime.now().millisecondsSinceEpoch;
  return 'D0${now.toString().padLeft(15, '8')}'
      '${now.remainder(99999999).toString().padLeft(8, '0')}'
      '|${now.remainder(999).toString().padLeft(3, '0')}';
}

/// 与 tiebalite 相同的 WebView 登录页
///
/// 加载百度官方 wappass 登录页，登录成功后从 Cookie 中提取
/// BDUSS / STOKEN / BAIDUID 等凭据，然后调用 API 获取用户信息。
class WebViewLoginPage extends StatefulWidget {
  const WebViewLoginPage({super.key});

  @override
  State<WebViewLoginPage> createState() => _WebViewLoginPageState();
}

class _WebViewLoginPageState extends State<WebViewLoginPage> {
  late InAppWebViewController _controller;
  bool _isLoading = true;
  String? _errorText;
  double _progress = 0;
  bool _isProcessing = false; // 防止重复处理

  /// 百度官方 Passport 登录页（与 tiebalite 完全一致）
  static const String _loginUrl =
      'https://wappass.baidu.com/passport'
      '?login'
      '&u=https%3A%2F%2Ftieba.baidu.com%2Findex%2Ftbwise%2Fmine';

  /// 登录成功后跳转的目标前缀
  static const String _successPrefixA = 'https://tieba.baidu.com/index/tbwise/';
  static const String _successPrefixB =
      'https://tiebac.baidu.com/index/tbwise/';

  /// 响应百度 SPA 登录页的 JsPrompt 原生 bridge 调用
  String? _handleBdboxJsPrompt(String message) {
    if (!message.startsWith('BdboxApp:')) return null;
    final payload = message.substring('BdboxApp:'.length).trim();
    try {
      final json = jsonDecode(payload) as Map<String, dynamic>?;
      if (json == null) return null;
      final obj = json['obj'] as String?;
      final func = json['func'] as String?;
      if (obj == 'Bdbox_android_utils') {
        switch (func) {
          case 'getcuid':
            return '{"cuid":"${_generateFakeCuid()}"}';
          default:
            return '{}';
        }
      }
      // 其他 bridge 调用统一返回空 JSON（不影响登录）
      return '{}';
    } catch (_) {
      return '{}';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('百度账号登录'),
        backgroundColor: Colors.deepPurple,
        bottom: _isLoading
            ? PreferredSize(
                preferredSize: const Size.fromHeight(4),
                child: LinearProgressIndicator(
                  value: _progress > 0 && _progress < 1 ? _progress : null,
                  color: Colors.white,
                  backgroundColor: Colors.white24,
                ),
              )
            : null,
      ),
      body: _errorText != null
          ? Center(
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(
                      Icons.error_outline,
                      size: 48,
                      color: Colors.red,
                    ),
                    const SizedBox(height: 16),
                    Text(_errorText!, textAlign: TextAlign.center),
                    const SizedBox(height: 24),
                    FilledButton.icon(
                      onPressed: _reload,
                      icon: const Icon(Icons.refresh),
                      label: const Text('重新加载'),
                    ),
                  ],
                ),
              ),
            )
          : InAppWebView(
              initialSettings: InAppWebViewSettings(
                javaScriptEnabled: true,
                domStorageEnabled: true,
                mixedContentMode: MixedContentMode.MIXED_CONTENT_ALWAYS_ALLOW,
                supportZoom: true,
                builtInZoomControls: true,
                displayZoomControls: false,
                useWideViewPort: true,
                userAgent:
                    'Mozilla/5.0 (Linux; Android 14; Pixel 8) '
                    'AppleWebKit/537.36 (KHTML, like Gecko) '
                    'Chrome/120.0.0.0 Mobile Safari/537.36 '
                    'baiduboxapp/12.64.1.1',
                cacheMode: CacheMode.LOAD_DEFAULT,
              ),
              initialUrlRequest: URLRequest(url: WebUri(_loginUrl)),
              onWebViewCreated: (controller) {
                _controller = controller;
              },
              onProgressChanged: (controller, progress) {
                if (!mounted) return;
                setState(() => _progress = progress / 100.0);
              },
              onLoadStop: (controller, url) async {
                if (!mounted) return;
                setState(() => _isLoading = false);

                final uri = url?.toString() ?? '';
                if (_isProcessing) return; // 防止重复
                if (uri.startsWith(_successPrefixA) ||
                    uri.startsWith(_successPrefixB)) {
                  _isProcessing = true;
                  await _handleLoginSuccess(uri);
                }
              },
              onReceivedError: (controller, request, error) {
                if (!mounted) return;
                if (error.description.contains('ERR_CACHE_MISS') ||
                    error.description.contains('net::ERR_ABORTED') ||
                    error.description.contains('ERR_UNKNOWN_URL_SCHEME')) {
                  return;
                }
                setState(() {
                  _errorText = '加载失败: ${error.description}';
                  _isLoading = false;
                });
              },
              // 静默处理所有 JS dialog
              onJsAlert: (controller, jsAlertRequest) async {
                // ignore: avoid_print
                print('【WebView弹窗】Alert: ${jsAlertRequest.message}');
                return JsAlertResponse(
                  handledByClient: true,
                  action: JsAlertResponseAction.CONFIRM,
                );
              },
              onJsConfirm: (controller, jsConfirmRequest) async {
                return JsConfirmResponse(
                  handledByClient: true,
                  action: JsConfirmResponseAction.CONFIRM,
                );
              },
              onJsPrompt: (controller, jsPromptRequest) async {
                final message = jsPromptRequest.message ?? '';
                final result = _handleBdboxJsPrompt(message);
                if (result != null) {
                  return JsPromptResponse(
                    handledByClient: true,
                    action: JsPromptResponseAction.CONFIRM,
                    value: result,
                  );
                }
                return null;
              },
            ),
    );
  }

  /// 登录成功：提取 Cookie → 立即返回 → 后台获取用户信息
  Future<void> _handleLoginSuccess(String redirectUrl) async {
    if (!mounted) return;

    // 1. 像 tiebalite 一样只从当前跳转 URL 取 Cookie
    final cookieStr = await CookieManager.instance().getCookies(
      url: WebUri(redirectUrl),
    );
    final allCookies = <String, String>{};
    for (final c in cookieStr) {
      allCookies[c.name] = c.value;
    }

    final bduss = allCookies['BDUSS'];
    final stoken = allCookies['STOKEN'];

    // ignore: avoid_print
    // print('【WebView登录】Cookie keys: ${allCookies.keys.join(", ")}');
    // // ignore: invalid_null_aware_operator, avoid_print
    // print(
    //   // ignore: invalid_null_aware_operator
    //   '【WebView登录】BDUSS=${bduss?.substring(0, (bduss?.length ?? 0) > 20 ? 20 : (bduss?.length ?? 0))}...',
    // );

    if (bduss == null || stoken == null) {
      _isProcessing = false;
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('登录失败：未能获取到 BDUSS/STOKEN'),
            backgroundColor: Colors.red,
          ),
        );
      }
      return;
    }

    // 2. 先存 BDUSS/STOKEN，立即关 WebView 返回主页
    await UserManager.login(bduss: bduss, stoken: stoken);

    if (!mounted) return;
    // ignore: use_build_context_synchronously
    Navigator.of(context).pop(true);

    // 3. 后台补齐用户信息
    _fetchUserProfile(bduss, stoken, allCookies);
  }

  /// 后台补齐用户信息
  Future<void> _fetchUserProfile(
    String bduss,
    String stoken,
    Map<String, String> allCookies,
  ) async {
    final result = await TiebaApi.loginAndGetUserInfo(
      bduss: bduss,
      stoken: stoken,
    );

    if (result != null) {
      final userName = result['user']?['name']?.toString() ?? '百度用户';
      final nameShow = result['user']?['name_show']?.toString();
      final portrait = result['user']?['portrait'] as String?;
      final anti = result['anti'] as Map<String, dynamic>?;
      final tbs = anti?['tbs']?.toString();
      final userId = result['user']?['id']?.toString();

      await UserManager.login(
        bduss: bduss,
        stoken: stoken,
        userName: userName,
        nameShow: nameShow,
        portrait: portrait,
        tbs: tbs,
        userId: userId,
        rawCookie: allCookies.entries
            .map((e) => '${e.key}=${e.value}')
            .join('; '),
      );

      DataCache.preloadPosts(
        TiebaApi.fetchPersonalizedThreads(bduss: bduss, stoken: stoken),
      );
      DataCache.preloadForums(
        TiebaApi.fetchForumRecommend(bduss: bduss, stoken: stoken),
      );
    } else {
      // ignore: avoid_print
      print('【WebView登录】后台获取用户信息失败，BDUSS/STOKEN 已保存');
    }
  }

  void _reload() {
    setState(() {
      _errorText = null;
      _isLoading = true;
      _progress = 0;
    });
    try {
      _controller.loadUrl(urlRequest: URLRequest(url: WebUri(_loginUrl)));
    } catch (_) {}
  }
}
