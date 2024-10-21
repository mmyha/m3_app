import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:m3_app/core/router/routing_path_const.dart';
import 'package:m3_app/presentation/view/components/common/scaffold_wish_bottom_nav_bar.dart';
import 'package:m3_app/presentation/view/pages/circle_list/circle_detail_page.dart';
import 'package:m3_app/presentation/view/pages/circle_list/circle_list_page.dart';
import 'package:m3_app/presentation/view/pages/event_select_page.dart';
import 'package:m3_app/presentation/view/pages/map/map_page.dart';
import 'package:m3_app/presentation/view/pages/wish_list/wish_list_page.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
// final _sectionNavigatorKey = GlobalKey<NavigatorState>();

final router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: RoutingPathConst.home,
  routes: <RouteBase>[
    // ホーム(イベント選択画面)
    GoRoute(
      path: RoutingPathConst.home,
      builder: (BuildContext context, GoRouterState state) {
        return const EventSelectPage();
      },
    ),
    // ボトムナビゲーションバー
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return ScaffoldWithBottomNavBar(
          navigationShell: navigationShell,
        );
      },
      branches: [
        // サークルリスト
        StatefulShellBranch(
          routes: <RouteBase>[
            GoRoute(
              path: RoutingPathConst.circleList,
              builder: (context, state) => const CircleListPage(),
              routes: <RouteBase>[
                GoRoute(
                  path: RoutingPathConst.circleDetails,
                  builder: (context, state) {
                    return const CircleDetailPage();
                  },
                ),
              ],
            ),
          ],
        ),
        // ウィッシュリスト
        StatefulShellBranch(
          routes: <RouteBase>[
            GoRoute(
              path: RoutingPathConst.wishList,
              builder: (context, state) => const WishListPage(),
            ),
          ],
        ),
        // マップ
        StatefulShellBranch(
          routes: <RouteBase>[
            GoRoute(
              path: RoutingPathConst.map,
              builder: (context, state) => const CircleMapPage(),
            ),
          ],
        ),
      ],
    ),
  ],
);
