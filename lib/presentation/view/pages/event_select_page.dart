import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:m3_app/core/router/routing_path_const.dart';

class EventSelectPage extends StatelessWidget {
  const EventSelectPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                context.go(RoutingPathConst.circleList);
              },
              child: const Text('イベント選択画面テスト'),
            ),
          ],
        ),
      ),
    );
  }
}
