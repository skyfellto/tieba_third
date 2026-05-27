import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PersonalizationPage extends StatelessWidget {
  const PersonalizationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('个性化'),
        centerTitle: true,
        leading: BackButton(onPressed: () => context.pop()),
      ),
      body: const Center(
        child: Text(
          '功能开发中，敬请期待',
          style: TextStyle(color: Colors.grey, fontSize: 15),
        ),
      ),
    );
  }
}