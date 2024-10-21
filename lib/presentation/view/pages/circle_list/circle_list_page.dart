import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:m3_app/core/router/routing_path_const.dart';

class CircleListPage extends StatelessWidget {
  const CircleListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('サークルリスト'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            context.push(
              '${RoutingPathConst.circleList}/${RoutingPathConst.circleDetails}',
            );
          },
          child: const Text('詳細遷移テスト'),
        ),
      ),
    );
  }
}
