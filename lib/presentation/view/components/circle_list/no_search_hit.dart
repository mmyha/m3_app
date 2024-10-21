import 'package:flutter/material.dart';

class NoSearchHitPage extends StatelessWidget {
  const NoSearchHitPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('検索結果がありません'),
    );
  }
}
