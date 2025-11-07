import 'package:driver/src/app/driver_scaffolding_app.dart';
import 'package:driver/src/features/checks/presentation/checks_view.route.dart';
import 'package:driver/src/features/home_view/presentation/home_view.route.dart';
import 'package:driver/src/features/map_view/Presentation/map_view_route.dart';

import 'package:driver/src/features/notifications/presentation/notifications_view.route.dart';

import 'package:go_router/src/route.dart';
import 'package:sub_app_core/sub_app_core.dart';

class DriverAppRoute implements SubAppRouterConfig {
  @override
  List<RouteBase> getRoutes() {
    return [
      ShellRoute(
        builder: (context, state, child) => DriverScaffoldingApp(child: child),

        routes: [HomeViewRoute.instance.route, ChecksViewRoute.instance.route],
      ),

      MapViewRoute.instance.route,
      NotificationsViewRoute.instance.route,
    ];
  }
}
