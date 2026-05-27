import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import '../utils/personalization_manager.dart';
import '../widgets/confirm_dialog.dart';
import 'dart:async';

class PersonalizationPage extends StatefulWidget {
  const PersonalizationPage({super.key});

  @override
  State<PersonalizationPage> createState() => _PersonalizationPageState();
}

class _PersonalizationPageState extends State<PersonalizationPage> {
  late TextEditingController _likeCooldownController;
  late TextEditingController _browseHistoryController;
  final _likeFocus = FocusNode();
  final _browseFocus = FocusNode();
  Timer? _likeFocusTimer;
  Timer? _browseFocusTimer;
  bool _suppressFocusCallback = false;

  @override
  void initState() {
    super.initState();
    _likeCooldownController = TextEditingController(
      text: PersonalizationManager.likeCooldownMinutes.toString(),
    );
    _browseHistoryController = TextEditingController(
      text: PersonalizationManager.browseHistoryMax.toString(),
    );
    _likeFocus.addListener(() {
      if (!_likeFocus.hasFocus && !_suppressFocusCallback) {
        _likeFocusTimer?.cancel();
        _likeFocusTimer = Timer(const Duration(milliseconds: 100), () {
          _handleLikeCooldownChanged(_likeCooldownController.text);
        });
      }
    });
    _browseFocus.addListener(() {
      if (!_browseFocus.hasFocus && !_suppressFocusCallback) {
        _browseFocusTimer?.cancel();
        _browseFocusTimer = Timer(const Duration(milliseconds: 100), () {
          _handleBrowseHistoryMaxChanged(_browseHistoryController.text);
        });
      }
    });
  }

  @override
  void dispose() {
    _likeFocusTimer?.cancel();
    _browseFocusTimer?.cancel();
    _likeCooldownController.dispose();
    _browseHistoryController.dispose();
    _likeFocus.dispose();
    _browseFocus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final style = TextStyle(
      fontSize: 16,
      color: Theme.of(context).textTheme.bodyLarge?.color,
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text('个性化'),
        centerTitle: true,
        leading: BackButton(onPressed: () => context.pop()),
      ),
      body: ListView(
        children: [
          SwitchListTile(
            title: Text('导航栏悬浮', style: style),
            value: PersonalizationManager.floatingNav,
            onChanged: (v) {
              setState(() {});
              PersonalizationManager.setFloatingNav(v);
            },
            contentPadding: const EdgeInsets.symmetric(horizontal: 16),
          ),
          SwitchListTile(
            title: Text('显示最近逛的吧', style: style),
            value: PersonalizationManager.showPassedForums,
            onChanged: (v) {
              setState(() {});
              PersonalizationManager.setShowPassedForums(v);
            },
            contentPadding: const EdgeInsets.symmetric(horizontal: 16),
          ),
          ListTile(
            title: Text('点赞时间间隔（分钟）', style: style),
            trailing: SizedBox(
              width: 72,
              child: TextField(
                controller: _likeCooldownController,
                focusNode: _likeFocus,
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                decoration: const InputDecoration(
                  isDense: true,
                  contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                  border: OutlineInputBorder(),
                ),
                onSubmitted: (v) => _handleLikeCooldownChanged(v),
              ),
            ),
            contentPadding: const EdgeInsets.symmetric(horizontal: 16),
          ),
          ListTile(
            title: Text('浏览记录最大条数', style: style),
            trailing: SizedBox(
              width: 72,
              child: TextField(
                controller: _browseHistoryController,
                focusNode: _browseFocus,
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                decoration: const InputDecoration(
                  isDense: true,
                  contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                  border: OutlineInputBorder(),
                ),
                onSubmitted: (v) => _handleBrowseHistoryMaxChanged(v),
              ),
            ),
            contentPadding: const EdgeInsets.symmetric(horizontal: 16),
          ),
        ],
      ),
    );
  }

  Future<void> _handleLikeCooldownChanged(String value) async {
    _likeFocusTimer?.cancel();
    if (_suppressFocusCallback) return;
    _suppressFocusCallback = true;
    try {
      final v = int.tryParse(value);
      if (v == null) {
        _likeCooldownController.text = PersonalizationManager.likeCooldownMinutes.toString();
        return;
      }
      final clamped = v.clamp(0, 1440);
      if (clamped != v) {
        _likeCooldownController.text = clamped.toString();
      }
      if (clamped == 0) {
        final confirmed = await showConfirmDialog(
          context,
          '风险提示',
          '太过频繁的点赞会导致风控，是否设置间隔为 0 分钟？',
        );
        if (!confirmed) {
          _likeCooldownController.text = PersonalizationManager.likeCooldownMinutes.toString();
          return;
        }
      }
      PersonalizationManager.setLikeCooldownMinutes(clamped);
      setState(() {});
    } finally {
      _suppressFocusCallback = false;
    }
  }

  Future<void> _handleBrowseHistoryMaxChanged(String value) async {
    _browseFocusTimer?.cancel();
    if (_suppressFocusCallback) return;
    _suppressFocusCallback = true;
    try {
      final v = int.tryParse(value);
      if (v == null) {
        _browseHistoryController.text = PersonalizationManager.browseHistoryMax.toString();
        return;
      }
      final clamped = v.clamp(0, 10000);
      if (clamped != v) {
        _browseHistoryController.text = clamped.toString();
      }
      if (clamped == 0) {
        final confirmed = await showConfirmDialog(
          context,
          '功能关闭提示',
          '最大浏览记录数量置为 0 时会关闭浏览记录功能，是否确认？',
        );
        if (!confirmed) {
          _browseHistoryController.text = PersonalizationManager.browseHistoryMax.toString();
          return;
        }
      }
      PersonalizationManager.setBrowseHistoryMax(clamped);
      setState(() {});
    } finally {
      _suppressFocusCallback = false;
    }
  }
}