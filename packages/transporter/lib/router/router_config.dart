import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:transporter/app/transporter_scaffolding_app.dart';
import 'package:transporter/src/features/notifications/presentation/notifications_view.route.dart';
import 'package:sub_app_core/sub_app_core.dart';

import '../src/features/home/home_view.route.dart';
import '../src/features/returns/presentation/return_view.route.dart';
import '../src/features/wallet/presentation/wallet_view.route.dart';
import '../src/features/works/presentation/works_view.route.dart';

class TransporterAppRouter implements SubAppRouterConfig {
  static const String basePath = '/transporter-app';
  static const String detailPath = '$basePath/detail';
  @override
  List<RouteBase> getRoutes() {
    return [
      ShellRoute(
        // path: basePath,
        builder: (BuildContext context, GoRouterState state, Widget child) =>
            TransporterScaffoldingApp(child: child),
        routes: [
          HomeViewRoute.instance.route,
          WalletViewRoute.instance.route,
          WorksViewRoute.instance.route,
          ReturnViewRoute.instance.route,
        ],
      ),
      NotificationsViewRoute.instance.route,
    ];
  }
}

final fullScreenProvider = StateProvider.autoDispose<bool>((ref) {
  return false;
});
