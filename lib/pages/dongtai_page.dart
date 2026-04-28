import 'package:flutter/material.dart';

class DongtaiPage extends StatefulWidget {
  const DongtaiPage({super.key});

  @override
  State<DongtaiPage> createState() => _DongtaiPageState();
}

class _DongtaiPageState extends State<DongtaiPage>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return ListView.builder(
      padding: const EdgeInsets.all(8.0),
      itemCount: 50,
      itemBuilder: (context, index) {
        return Card(
          margin: const EdgeInsets.only(bottom: 10),
          elevation: 4,
          child: SizedBox(height: 200, child: Center(child: Text('动态 $index'))),
        );
      },
    );
  }
}
